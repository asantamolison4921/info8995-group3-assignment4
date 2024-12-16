#!/bin/bash

echo "This script will create a sample .env file to proceed with demo"

# Navigate to the directory containing the .env-example file
cd ..

# Rename .env-example to .env
mv .env-example .env

# Replace all instances of "mention_password" with "password"
sed -i 's/mention_password/password/g' .env

# Print a success message
echo ".env file has been set up successfully."
