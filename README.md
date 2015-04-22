# Autoirrigate
Raspberry Pi AutoIrrigation System

# Prerequisites
* Raspberry Pi 1 or 2 Model B
* Pi Operating System (I used Raspbian but any should work) https://www.raspberrypi.org/downloads/
* Gordons Wiring Pi http://wiringpi.com/download-and-install/

#Install LAMP

* https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu

#Compile Binaries
* sprinkler/src/bin/sprinkler.cpp
* Optional(You can also compile the temperature sensor) under temp_sensor/dht11.c

#Create a Database  and setup a webpage
* create database gpio
* mysql -u(your_database_user_name) -p gpio  < sprinkler/database/gpio.sql (You will be prompted your password)
* Copy  all   your sprinkler/www/* to you webserver dir
* Change the variable on index.php to your correct username and password

#Run the sprinkler daemon
* ./sprinkler
* Access your webpage to were you installed your www file  http://localhost/autoirriagate


