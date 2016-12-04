<html>
<h1>#ESP8266 configuration</h1>
<li>If you are using ESP8266 with NodeMcu dev board just plug in to USB using micro USB (there is already USB to UART RS232 converter on board). If yours computer didn’t see ESP you may need to install CH340 Driver </li>
<img src="https://github.com/przemyslaw-turek/gm/blob/dev/ESP8266/espnodemcu.png" alt="ESP with NodeMcu board">
<li>For ESP8266 without dev board u need to use USB to UART RS232 converter</li>
•	Connect TxD on the board to RxD on converter <br>
•	RxD on the board to TxD on the adapter<br>
•	Connect Vcc to CH_PD to enable the chip<br>
•	Connect GPI0 to GND to enable flash reprogramming<br>
•	Vcc to Vcc, Gnd to Gnd<br><br>
<img src="https://github.com/przemyslaw-turek/gm/blob/dev/ESP8266/esp.png" alt="ESP without NodeMcu board"><br>
<br>
Now you need to install firmware, you need to download espflasher: <br>
<a href="https://github.com/nodemcu/nodemcu-flasher">Espflasher</a><br><br>
Its installing default 0.9.5 firmware. In config you need to change baud rate to 115200, select COM and just click FLASH.<br><br>
After that download and install Arduino IDE (at least 1.6.4 version).<br>
Create subfolder “portable” in Arduino folder. Then open File->Preferences , in Additional Boards Manager URL’s paste: <b>http://arduino.esp8266.com/stable/package_esp8266com_index.json</b><br><br>
<img src="https://github.com/przemyslaw-turek/gm/blob/dev/ESP8266/url.png" alt="boardmanager"><br>
<br>
Then in Tools->Board->Boards Manager install esp8266 package<br>

<img src="https://github.com/przemyslaw-turek/gm/blob/dev/ESP8266/package.png" alt="package"><br>
<br>
To add libraries in Arduino IDE: Sketch -> Include library ->Manage libraries type the library you need and add it.<br><br>

To upload program in Arduino  in Tools you need to choose Board (depends on ESP version, for example Generic ESP module), upload speed 115200.<br><br>

To check your connection with raspberry pi (broker) upload code from ESP8266_wifi_mqtt.ino.  <br>
For debug you can use serial monitor (Tools -> Serial monitor).

