# Installation of Home Assistant

## I. Installation

<OL>
<LI> Type in Putty's terminal: </LI>

<P> sudo apt-get update </P>

<P> sudo apt-get upgrade -y </P>

<P> sudo pip3 install homeassistant </P>

<P> Command(below) runs file configuration.yaml and Raspberry's communication with Home Assistant </P>

<P> hass </P>

</OL>

## II. Verification of installation correctness 
<OL>
<LI><P> Type in Putty's terminal: </P></LI>
<P>	hass </P>
<LI>Wait for communicate in Putty's terminal like this: </LI>

<P> INFO:homeassistant.core:Bus:Handling Event state_changed[L]:... </P>

<LI> Type in the Web browser: </LI>
<P>	http://ipaddress:8123 </P>

<P>	For example: http://192.168.1.106:8123 </P>

<LI> Press "Enter" </LI>
<P> If everything works, you should see in the Web browser screen like this: </P>
<img src="https://github.com/przemyslaw-turek/gm/blob/dev/RaspberryPi/software/HomeAssistant/homeassistant.png" alt="Pictrue" title=" " /> 

<LI>Press "Ctrl" + "c" to close Raspberry's communication with Home Assistant</LI>
</OL>

# Configuration of Home Assistant

## I. Configuration.yaml file upload

<OL>
<LI><P> Type in Putty's terminal: </P></LI>
<P> cd /home/pi/.homeassistant </P>
<P>	rm configuration.yaml </P>
<P> nano configuration.yaml </P>

<P> And now you should see picture like this: </P>
<img src="https://github.com/przemyslaw-turek/gm/blob/dev/RaspberryPi/software/HomeAssistant/nano.png" alt="Pictrue" title=" " />
	
<LI> Copy the text from "configuration.yaml" (pay attention to spaces and tabs) and paste in this black screen in Putty's terminal
It should looks like this picture (below): </LI>
<img src="https://github.com/przemyslaw-turek/gm/blob/dev/RaspberryPi/software/HomeAssistant/nano2.png" alt="Pictrue" title=" " />
 
 <LI> Change broker's IP for MQTT in configuration.yaml in the same what is using to Putty's communications  </LI>
<LI> Press "Ctrl" + "X" </LI>
<LI> Press "Y" </LI>
<LI> Press "Enter" </LI>	
<LI> Python script upload </LI>
<LI> Type in Putty's terminal: 

<P> cd /home/pi/Desktop </P>
<P> nano buttonscript.py </P> </LI>
 
<P> And now you should see picture like this (again): </P>
<img src="https://github.com/przemyslaw-turek/gm/blob/dev/RaspberryPi/software/HomeAssistant/nano3.png" alt="Pictrue" title=" " /> 
 
<LI> Copy the text and paste in this black screen in Putty's terminal </LI>
<P> It should looks like this picture (below): </P>
<img src="https://github.com/przemyslaw-turek/gm/blob/dev/RaspberryPi/software/HomeAssistant/nano4.png" alt="Pictrue" title=" " />
 
<LI> Press "Ctrl" + "X" </LI>
<LI> Press "Y" </LI>
<LI> Press "Enter" </LI>
</OL>


##  II. Running  the python script

<OL>
<LI> Type in Putty's terminal </LI>

<P> python buttonscript.py </P>

<P> hass </P>
	
<LI> Verification of installation corectness </LI>
