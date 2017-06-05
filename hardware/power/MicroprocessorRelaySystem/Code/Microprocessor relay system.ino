#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266WebServer.h>
#include <ESP8266mDNS.h>

MDNSResponder mdns;
// Replace with your network credentials
const char* ssid = "YOUR_SSID";
const char* password = "YOUR_PASSWORD";
ESP8266WebServer server(80);

String webPage = "";

int gpio0_pin = 0;
int gpio2_pin = 2;

void setup(void)
{
	webPage += "<h1>Control of the AC source </h1><p>Socket #1 <a href=\"socket1On\"><button>ON</button></a>&nbsp;<a href=\"socket1Off\"><button>OFF</button></a></p>";
 
  
	// preparing GPIOs
	//YOU CAN SELECT THE GPIO NUMBER
	pinMode(gpio0_pin, OUTPUT);
	digitalWrite(gpio0_pin, HIGH);

	//ATTEMPT TO CONNECT WITH WIFI
	delay(1000);
	Serial.begin(115200);
	WiFi.begin(ssid, password);
	Serial.println("");

	// Wait for connection
	while (WiFi.status() != WL_CONNECTED) 
	{
		delay(500);
		Serial.print(".");
	}
	Serial.println("");
	Serial.print("Connected to ");
	Serial.println(ssid);
	Serial.print("IP address: ");
	Serial.println(WiFi.localIP());
  
	if (mdns.begin("esp8266", WiFi.localIP())) 
	{
		Serial.println("MDNS responder started");
	}
  
	server.on("/", [](){server.send(200, "text/html", webPage);});



	//ON / OFF GPIO
	server.on("/socket1On", [](){
    server.send(200, "text/html", webPage);
    digitalWrite(gpio0_pin, LOW);
    delay(1000);
	});
	server.on("/socket1Off", [](){
    server.send(200, "text/html", webPage);
    digitalWrite(gpio0_pin, HIGH);
    delay(1000); 
	});




	server.begin();
	Serial.println("HTTP server started");
}
 
void loop(void)
{
	server.handleClient();
} 