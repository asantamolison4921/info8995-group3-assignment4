#!/bin/bash

# Clean and package the Maven project
mvn -f info8995-webapp/pom.xml clean package

# Run tests for the Maven project
mvn -f info8995-webapp/pom.xml test

# Stop any running Docker containers with the specified name filter
sudo docker rm -f $(sudo docker ps -q --filter "name=info8995-group3-assignment4-jenkins-")

# Start the web application using Docker Compose
sudo docker compose up -d webapp

# Get the IP address of the machine
IP_ADDRESS=$(hostname -I | awk '{print $1}')

# Display the message with the URL to access the web app
echo "Go to http://$IP_ADDRESS/info8995-webapp-1.0-SNAPSHOT/hello to see the web app"
