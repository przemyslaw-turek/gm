#include <ESP8266WiFi.h>
#include <PubSubClient.h>
#include <DHT.h>
#include <Adafruit_Sensor.h>
#include <DHT_u.h>
#include <OneWire.h>
#include <DallasTemperature.h>

// Here user can modify parameters
#define debug                                // If defined debug mode
#define DHTtime     10                           // In seconds
#define DStime      5
#define Motiontime  15

#define DHT_11                  `
#define DS_18B20         
#define PIR            
#define REEDRELAY      
#define MQ2            

#define mqtt_user "admin"                    // MQTT user ID
#define mqtt_password "admin"                // MQTT password

#define DHTTYPE                 DHT11				 // DHT 11 (type of sensor)
#define DHTPIN                  5					 // PIN connected to  DHT sensor (temperature and humidity)
#define MSPIN                   4					 // PIN connected to  motion sensor
#define MQ2PIN                  14				 // PIN connected to  MQ-2 sensor (gas sensor)
#define REEDPIN                 0
#define REEDOUT                 13 
#define ONE_WIRE_BUS            12
#define TEMPERATURE_PRECISION   9

const char* ssid = "ssid";           // your WIFI SSID (name)
const char* password = "password";         // your WIFI password
const char* mqtt_server = "192.168.0.101";   // your broker's IP (Raspberry PI 3)

//Do not modify:

// Topic's names
const char* outTopic1 = "DHT11_temperature";
const char* outTopic2 = "DHT11_humidity";
const char* outTopic3 = "PIR_motion";
const char* outTopic4 = "MQ2_gas";
const char* outTopic5 = "Reedrelay_doors";
const char* outTopic6 = "DS18B20_temperature";

float temperature;
float humidity;
int flag_th=0;
int flag_reed=0;
int flag_ds=0;
int flag_motion=0;


int state_MS;
int prev_state_MS=LOW; 	

int state_MQ2;
int prev_state_MQ2; 

int reed_counter=0;

float temp;


WiFiClient espClient;
PubSubClient client(espClient);
DHT_Unified dht(DHTPIN, DHTTYPE);
OneWire oneWire(ONE_WIRE_BUS);
DallasTemperature DS18B20(&oneWire);


void timer_interrupt (void)
{
       timer0_write(ESP.getCycleCount() + 80000000);
       flag_th++;;
       flag_reed++;
       flag_ds++;
       flag_motion++;
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

void temp_ds () 
{
  if (flag_ds==DStime)
  {
    DS18B20.requestTemperatures(); 
    temp = DS18B20.getTempCByIndex(0);
    #ifdef debug
    Serial.print("Temperature DS18B20: ");
    Serial.println(temp);
    #endif
    
    char buffer[10];
    dtostrf(temp,0, 0, buffer);
    client.publish(outTopic6,buffer);
    
    
    flag_ds=0;
  }
}

void temp_hum()
{
  if (flag_th==DHTtime)
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
                Serial.print("Temperature DHT11: ");
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
                Serial.print("Humidity DHT11: ");
                Serial.println(humidity);
                #endif
	}

    //Float to char conversion and sending massage to MQTT broker
    char buffer[10];
    dtostrf(temperature,0, 0, buffer);
    client.publish(outTopic1,buffer);
    dtostrf(humidity,0, 0, buffer);
    client.publish(outTopic2,buffer);
    flag_th=0;
  }
}
        
void motionsensor()
    {
      state_MS=digitalRead(MSPIN);
	if (state_MS==HIGH && prev_state_MS==LOW)
	{
		#ifdef debug
		Serial.println("motion");
		#endif
		client.publish(outTopic3,"triggered");
	}
        else 
        {
          if (flag_motion==Motiontime)
          {
            Serial.println("motionDISARMED");
            client.publish(outTopic3,"disarmed");
            flag_motion=0;
          }
        }
	prev_state_MS=state_MS;
    }

void MQ2alarm()
    {
      state_MQ2 = digitalRead(MQ2PIN);
	if (state_MQ2==HIGH && prev_state_MQ2==LOW)
	{
		#ifdef debug
		Serial.println("ALARM");
		#endif
		client.publish(outTopic4,"triggered");
	}
prev_state_MQ2=state_MQ2;
    }
      
      
void reed ()
    {
      if (digitalRead (REEDPIN) && flag_reed)
        {
          reed_counter++;
           
          if (reed_counter==2)
          {
            client.publish(outTopic5,"triggered");
            #ifdef debug
            Serial.println("doors open");
            #endif
            reed_counter=0;
             }
          flag_reed=0;
        }
        else if (!digitalRead (REEDPIN))
        {
          
          client.publish(outTopic5,"disarmed");
            #ifdef debug
            Serial.println("doors closed");
            #endif
          reed_counter=0;
          
        }
    }
void setup()
{
        delay(10);
	noInterrupts();

	//Baud rate
	Serial.begin(115200);

	//Configuring mqtt server (ip, port)
	client.setServer(mqtt_server, 1883);

	//PIN configuration
	pinMode(DHTPIN,INPUT);
	pinMode(MSPIN,INPUT);
	pinMode(MQ2PIN,INPUT);
        pinMode(REEDPIN,INPUT);
        pinMode(REEDOUT,OUTPUT);
        digitalWrite(REEDOUT, LOW);

        prev_state_MQ2 = !digitalRead(MQ2PIN);
        
	//Wifi setup
	//setup_wifi();

	//Configuration of DHT sensor
	dht.begin();

	//Interrupt configuration
	timer0_isr_init();
	timer0_attachInterrupt(timer_interrupt);
	timer0_write(ESP.getCycleCount() + 80000000);

	interrupts();
}

void loop()
{
  	
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

        #ifdef DHT_11
        temp_hum();
        #endif
        
        #ifdef DS_18B20
        temp_ds();
        #endif
         
        #ifdef PIR 
        motionsensor();
        #endif
        
        #ifdef MQ2
        MQ2alarm();
        #endif
         
        #ifdef REEDRELAY 
        reed();
        #endif
                    
}


