/*This code is only connecting ESP8266 to raspberrypie using WIFI and MQTT 
To add modules you need to copy specific code for sensor in proper places */
#include <ESP8266WiFi.h>
#include <PubSubClient.h>

WiFiClient espClient;
PubSubClient client(espClient);

const char* ssid = "ssid";                  // your WIFI SSID (name)
const char* password = "password";          // your WIFI password
const char* mqtt_server = "brokers'ip";  // your broker's IP (raspberrypi)
#define mqtt_user "user"
#define mqtt_password "password"

/*Use this function to send a message to broker
const char* outTopic1 = "topic's name";
client.publish(outTopic1,"message"); */

      void setup_wifi() {
   delay(10);
  // We start by connecting to a WiFi network
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
  Serial.print(".");
    delay (100);}
  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());}
  
     void mqttconnection() {
  // Loop until we're reconnected
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // Attempt to connect
    if (client.connect("ESP8266Client", mqtt_user, mqtt_password)) {
     Serial.println("connected");} else {
      Serial.print("Failed to connect, rc=");
      Serial.print(client.state());
      delay(2000);}}}
  
  //Here is place to paste functions or variables from other modules//
      
      void setup() {
  Serial.begin(115200); 
  client.setServer(mqtt_server, 1883);   //configuring mqtt server (ip, port)
}
      void loop() {
 //keeping WIFI connection
  if (WiFi.status() != WL_CONNECTED) {
    setup_wifi();}
  //keeping MQTT connection
 if (!client.connected()) {   
 mqttconnection();}
 //Here is place to call functions for sensors//
 }
