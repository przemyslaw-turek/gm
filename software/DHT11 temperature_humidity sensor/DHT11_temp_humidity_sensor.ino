/*Copy this code to add DHT11 - temperature and humidity sensor to your project
You need to paste the code in proper places to make everything work 
for example, in void loop() wifi and mqtt functions must be above the temp_hum() function
remember to add all necessary libraries*/

#include <DHT.h>
#include <Adafruit_Sensor.h>
#include <DHT_u.h>


bool toggle = false;
int flag=0;
int z=0;
      void timer0_ISR (void) {
if (toggle) {
 toggle = false;
 z++;
 if (z==4){  //8 seconds delay between measurements
 flag=1;
 z=0;}} 
else {
  toggle = true;
  flag=0;}
timer0_write(ESP.getCycleCount() + 80000000L); // 80MHz == 1sec
}
float t,h;
// Topic's name where data is send
const char* outTopic1 = "temperature";
const char* outTopic2 = "humidity";

#define DHTPIN            5         // Pin which is connected to the DHT sensor.
#define DHTTYPE           DHT11     // DHT 11 (type of sensor)
DHT_Unified dht(DHTPIN, DHTTYPE);
uint32_t delayMS;

    void temp_hum(){ //function to get temperature and humidity
  sensors_event_t event;  
  dht.temperature().getEvent(&event);
  if (isnan(event.temperature)) {
   Serial.println("Error reading temperature!");}
  else {
   t=event.temperature;}
  dht.humidity().getEvent(&event);
  if (isnan(event.relative_humidity)) {
   Serial.println("Error reading humidity!");}
  else { h=event.relative_humidity;}
  //float to char conversion
 char buffer[10];
  dtostrf(t,0, 0, buffer);
  client.publish(outTopic1,buffer);  
  dtostrf(h,0, 0, buffer);
  client.publish(outTopic2,buffer);}
  
      void setup() {
  noInterrupts();
timer0_isr_init();
timer0_attachInterrupt(timer0_ISR);
timer0_write(ESP.getCycleCount() + 80000000L); // 80MHz == 1sec
interrupts();
pinMode(5,INPUT);
dht.begin();
delayMS =8000;}

    void loop() {
 if (flag==1){
  temp_hum();
  flag=0;

}
