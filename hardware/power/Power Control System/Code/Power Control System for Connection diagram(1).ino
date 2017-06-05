
#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266WebServer.h>
#include <ESP8266mDNS.h>

//You can select a port number
int gpio14_pin = 14;
//adc inicialize
ADC_MODE(ADC_VCC);

void setup(void)
{ 
	//preparing GPIOs
	pinMode(gpio14_pin, OUTPUT);
	digitalWrite(gpio14_pin, HIGH);
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
		digitalWrite(gpio14_pin, LOW);
	}
	else 
	{
		digitalWrite(gpio14_pin, HIGH);
	}
}

