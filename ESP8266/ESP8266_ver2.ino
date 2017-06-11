#include <ESP8266WiFi.h>
#include <PubSubClient.h>
#include <DHT.h>
#include <Adafruit_Sensor.h>
#include <DHT_u.h>

#define debug                                // If defined debug mode
#define time 10                              // In seconds
#define mqtt_user "jakub"                    // MQTT user ID
#define mqtt_password "admin"                // MQTT password

#define DHTTYPE           DHT11         // DHT 11 (type of sensor)
#define DHTPIN            5          // PIN connected to  DHT sensor (temperature and humidity)
#define MSPIN             4          // PIN connected to  motion sensor
#define MQ2PIN            14         // PIN connected to  MQ-2 sensor (gas sensor)


const char* ssid = "wifi";           // your WIFI SSID (name)
const char* password = "password";         // your WIFI password
const char* mqtt_server = "192.168.0.111";   // your broker's IP (Raspberry PI 3)

// Topic's names
const char* outTopic1 = "temperature";
const char* outTopic2 = "humidity";
const char* outTopic3 = "MS";
const char* outTopic4 = "MQ2";

float temperature;
float humidity;
int flag_th=0;
int rest=0;

int state_MS;
int prev_state_MS;  //robocze MS

int state_MQ2;
int prev_state_MQ2; //Robocze mq2


WiFiClient espClient;
PubSubClient client(espClient);
DHT_Unified dht(DHTPIN, DHTTYPE);


void timer_interrupt (void)
{
  timer0_write(ESP.getCycleCount() + 80000000*time);
  flag_th=1;
  rest=rest+1;
}

void setup_wifi()
{
  delay(10);
  // Connecting to a WiFi network

  #ifdef debug
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);
  #endif
  
  WiFi.begin(ssid, password);
  
  while (WiFi.status() != WL_CONNECTED)
  {
    #ifdef debug
    Serial.print(".");
    delay (100);
    #endif
  }
  
  #ifdef debug
  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
  #endif
}

void mqttconnection()
{
  // Loop until we're reconnected
  while (!client.connected())
  {
    #ifdef debug
    Serial.print("Attempting MQTT connection...");
    // Attempt to connect
    #endif
	
    if (client.connect("ESP8266Client", mqtt_user, mqtt_password))
    {
      #ifdef debug
      Serial.println("connected");
      #endif
    }
    else
    {
      #ifdef debug
      Serial.print("Failed to connect, rc=");
      Serial.print(client.state());
      delay(2000);
      #endif
    }
  }
}

void temp_hum()
{
  sensors_event_t event;
  dht.temperature().getEvent(&event);

  if (isnan(event.temperature))
  {
    #ifdef debug
    Serial.println("Error reading temperature!");
    #endif
  }
  else
  {
    temperature=event.temperature;
	
    #ifdef debug
    Serial.println(temperature);
    #endif
  }

  dht.humidity().getEvent(&event);

  if (isnan(event.relative_humidity))
  {
    #ifdef debug
    Serial.println("Error reading humidity!");
    #endif
  }
  else
  {
    humidity=event.relative_humidity;
	
    #ifdef debug
    Serial.println(humidity);
    #endif
  }

  //Float to char conversion and sending massage to MQTT broker
  char buffer[10];
  dtostrf(temperature,0, 0, buffer);
  client.publish(outTopic1,buffer);
  dtostrf(humidity,0, 0, buffer);
  client.publish(outTopic2,buffer);}



void setup()
{
  noInterrupts();

  //Baud rate
  Serial.begin(115200);

  //Configuring mqtt server (ip, port)
  client.setServer(mqtt_server, 1883);

  //PIN configuration
  pinMode(DHTPIN,INPUT);
  pinMode(MSPIN,INPUT);
  pinMode(MQ2PIN,INPUT);

  prev_state_MQ2 = !digitalRead(MQ2PIN);
        
  //Wifi setup
  setup_wifi();

  //Configuration of DHT sensor
  dht.begin();


  //Interrupt configuration
  timer0_isr_init();
  timer0_attachInterrupt(timer_interrupt);
  timer0_write(ESP.getCycleCount() + 80000000*time);


  interrupts();
}

void loop()
{
  //Restart the processor:
  if(rest==200)
  {
	ESP.restart();
	rest=0;
  }
  
  //Keeping Wifi connection
  if (WiFi.status() != WL_CONNECTED)
  {
    setup_wifi();
  }
  
  //keeping MQTT connection
  if (!client.connected())
  {
    mqttconnection();
  }

  //Motion Sensor
  state_MS=digitalRead(MSPIN);
  
  if (state_MS==HIGH && prev_state_MS==LOW)
  {
    #ifdef debug
    Serial.println("Motion detected");
    #endif
    client.publish(outTopic3,"Motion detected");
  }
  
  prev_state_MS=state_MS;
  delay (300);


  //MQ 2
  state_MQ2 = !digitalRead(MQ2PIN);
  
  if (state_MQ2==HIGH && prev_state_MQ2==LOW)
  {
    #ifdef debug
    Serial.println("ALARM");
    #endif
    client.publish(outTopic4,"GASALARM");
  }
  
  prev_state_MQ2=state_MQ2;
  delay(500);

  if (flag_th==1)
  {
    temp_hum();
    flag_th=0;
  }
}