#!/bin/bash

# Navigate to the monitoring directory
cd ../monitoring

# Pull the latest images for Prometheus and Grafana
docker compose pull prometheus grafana

# Start only the Prometheus and Grafana services
docker compose up -d prometheus grafana

# Wait for the containers to be fully up and running
sleep 10

# Get the current IP address
IP_ADDRESS=$(hostname -I | awk '{print $1}')

# Print the Grafana URL
echo "Grafana is available at http://$IP_ADDRESS:3000"
echo "Login with username 'admin' and password 'admin'"
