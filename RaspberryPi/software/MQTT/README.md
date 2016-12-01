# Installation of MQ Telemetry Transport (MQTT)
## I. Installation

<OL>
<LI><P> Type these commands (below) - use Putty's terminal</P>
       <P> (If terminal asks you about something and you have to answer: Yes or No (Y/n), type "Y" and press "Enter")</P></LI>

<P> sudo wget http://repo.mosquitto.org/debian/mosquitto-repo.gpg.key </P> 

<P> sudo apt-key add mosquitto-repo.gpg.key </P>

<P> cd /etc/apt/sources.list.d/ </P>

<P> sudo wget http://repo.mosquitto.org/debian/mosquitto-wheezy.list </P>

<P> sudo apt-get update </P>

<P> sudo apt-get install mosquitto </P>

<P> sudo apt-get install mosquitto mosquitto-clients python-mosquitto </P>

<P> sudo /etc/init.d/mosquitto stop </P>

<P> sudo /etc/init.d/mosquitto start </P>
</OL>

## II. Verification of installation correctness

<OL>
<LI> Open second Putty's terminal </LI>
	    (don't close Putty and repeat points from 2.2.9. to 2.2.11.)
<LI> In the first terminal type: mosquitto_sub -d -t hello/world </LI>
<LI> In second terminal type: </LI> 
	    mosquitto_pub -d -t hello/world -m "Hello from Terminal  window 2!"   
      (It doesn't matter which terminal you choose as first or second)
<LI> Now you should see this message in the first terminal: </LI>
	    "Hello from Terminal  window 2!"
</OL>

## III. paho.mqtt installation

<OL>
<LI><P>  Type: </P> </LI>
      <P> cd / </P>
	    <P> sudo pip3 install paho-mqtt</P>