/*Copy this code to add DHT11 - temperature and humidity sensor to your project
You need to paste the code in proper places to make everything work 
for example, in void loop() wifi and mqtt functions must be above the temp_hum() function
remember to add all necessary libraries*/

#include <DHT.h>
#include <Adafruit_Sensor.h>
#include <DHT_u.h>

#define DHTTYPE           DHT11				 // DHT 11 (type of sensor)
#define DHTPIN            5					 // PIN connected to  DHT sensor (temperature and humidity)

const char* outTopic1 = "temperature";
const char* outTopic2 = "humidity";

float temperature;
float humidity;
int flag_th=0;

DHT_Unified dht(DHTPIN, DHTTYPE);

void timer_interrupt (void)
    {
	timer0_write(ESP.getCycleCount() + 80000000*time);
	flag_th=1;
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
	client.publish(outTopic2,buffer);
    }
    
oid setup()
  {
	noInterrupts();

	//Baud rate
	Serial.begin(115200);

	//PIN configuration
	pinMode(DHTPIN,INPUT);
	
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
         if (flag_th==1)
        {
                temp_hum();
                flag_th=0;
	}
   }
