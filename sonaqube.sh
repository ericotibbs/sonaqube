#!/bin/bash

    #Author : Eric Tembe
        #Date : 02-Feb-2022

	## ---------- script that install SonaQube -----------------
	echo "please wait while SonaQube is being installed"
	sleep 3
	echo "installing prerequisite"
	sleep 2
	echo "java 11 installation in progress"
	$ sudo yum update -y
	$ sudo yum install java-11-openjdk-devel -y
	$ sudo yum install java-11-openjdk -y
	echo "installing SonaQube latest version"
	$ cd /opt  
	$ sudo yum install wget -y  
	$ sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
	sleep 2
	echo "Extracting packages"
	$ sudo yum install unzip -y 
	$ sudo unzip /opt/sonarqube-9.3.0.51899.zip
	sleep 2
	echo "Changing ownership to Vagrant"
	sleep 1
	$ sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
	echo "Switching to Linux Binary directory"
	sleep 1
	$ cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
	echo "Starting SonaQube"
	sleep 2
	$ ./sonar.sh start
	echo "Installation successful"  
