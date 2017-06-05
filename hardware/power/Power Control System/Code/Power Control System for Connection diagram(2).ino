#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266WebServer.h>
#include <ESP8266mDNS.h>


//You can select a port number
int gpio14_pin = 14;
int gpio12_pin = 12;
//adc inicialize
ADC_MODE(ADC_VCC);

void setup(void)
{
  
  
	//preparing GPIOs
	pinMode(gpio14_pin, OUTPUT);
	digitalWrite(gpio14_pin, HIGH);
	pinMode(gpio12_pin, OUTPUT);
	digitalWrite(gpio12_pin, HIGH);
	//waiting:
	delay(100);
}
 
void loop(void)
{
	//Adc measurement and math operations	
	float voltaje = ESP.getVcc();
	float wartosc=0.462*((voltaje/102.40f)-25.14);
	Serial.print("Voltage:   ");
	Serial.print(wartosc);
	
	//Switching sources:
	if(wartosc>=0.70)
	{
		digitalWrite(gpio12_pin, HIGH);
		digitalWrite(gpio14_pin, LOW);
	}
	else 
	{
	digitalWrite(gpio12_pin, LOW);
	digitalWrite(gpio14_pin, HIGH);
	}
}

