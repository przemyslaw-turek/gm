import RPi.GPIO as GPIO #Importing GPIO module
import paho.mqtt.client as mqtt #Importing Mosquitto Module
import time #Importing time to use delays
 
 
 
GPIO.setmode(GPIO.BCM) #Deciding whether our GPIO pin numeration is BCM or BOARD
GPIO.setup(21, GPIO.IN, pull_up_down=GPIO.PUD_UP) #Declaring 21 pin as INPUT with Pullup Resistor
 
 
 
 
# The callback for when the client receives a CONNACK response from the server.
def on_connect(client, userdata, flags, rc):
    print("Connected with result code "+str(rc))
 
 
client = mqtt.Client()
client.on_connect = on_connect
 
 
client.connect("127.0.0.1", 1883, 60)
 
 
 
# The activity after the interrupt on 21 pin
def interrupt_big_red_button(pin):
    client.publish('alarm/big_red_button', 'triggered'  )
    time.sleep(1)
    client.publish('alarm/big_red_button', 'disarmed'  )
     
#Setup the interrupt on 21 pin with detection of falling edge
GPIO.add_event_detect(21, GPIO.FALLING, callback = interrupt_big_red_button)
 
# Empty loop
while True:    
    pass

# Blocking call that processes network traffic, dispatches callbacks and
# handles reconnecting.
# Other loop*() functions are available that give a threaded interface and a
# manual interface.
client.loop_forever()