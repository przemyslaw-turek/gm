<html>
<h1>#ESP8266 configuration</h1>
<li>If you are using ESP8266 with NodeMcu dev board just plug in to USB using micro USB (there is already USB to UART RS232 converter on board). If yours computer didn’t see ESP you may need to install CH340 Driver </li>
<img src="https://github.com/przemyslaw-turek/gm/blob/dev/ESP8266/espnodemcu.png" alt="ESP with NodeMcu board">
After that download and install Arduino IDE (at least 1.6.4 version).<br>
Create subfolder “portable” in Arduino folder. Then open File->Preferences , in Additional Boards Manager URL’s paste: <b>http://arduino.esp8266.com/stable/package_esp8266com_index.json</b><br><br>
<img src="https://github.com/przemyslaw-turek/gm/blob/dev/ESP8266/url.png" alt="boardmanager"><br>
<br>
Then in Tools->Board->Boards Manager install esp8266 package<br>

<img src="https://github.com/przemyslaw-turek/gm/blob/dev/ESP8266/package.png" alt="package"><br>
<br>
To add libraries in Arduino IDE: Sketch -> Include library ->Manage libraries type the library you need and add it.<br><br>

Libraries used in project: <br>
-Adafruit<br>
-DHT<br>
-DHT_U<br>
-ESP8266WiFi<br>
-PubSubClient<br>
<br>
It is not possible to add Adafruit library to libraries in Arduino. It is need to download this library direct from Github repository. 

To upload program in Arduino  in Tools you need to choose Board (depends on ESP version, for example Generic ESP module), upload speed 115200.<br><br>

To check your connection with raspberry pi (broker) upload code from ESP8266_wifi_mqtt.ino.  <br>
For debug you can use serial monitor (Tools -> Serial monitor).

