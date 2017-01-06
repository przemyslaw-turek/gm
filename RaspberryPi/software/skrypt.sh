#!/bin/bash
sudo wget http://repo.mosquitto.org/debian/mosquitto-repo.gpg.key
sudo apt-key add mosquitto-repo.gpg.key
cd /etc/apt/sources.list.d/
sudo wget http://repo.mosquitto.org/debian/mosquitto-wheezy.list
sudo apt-get update
sudo apt-get install mosquitto
sudo apt-get install mosquitto mosquitto-clients python-mosquitto
sudo /etc/init.d/mosquitto stop
sudo /etc/init.d/mosquitto start
sudo pip3 install paho-mqtt
sudo apt-get update
sudo apt-get upgrade -y
sudo pip3 install homeassistant
hass