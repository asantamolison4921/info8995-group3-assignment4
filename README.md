# info8995-group3-assignment4

# By Alfred

Run the commands below to setup and run the application. The project is making use of Docker but the environment setup is designed to run in Ubuntu machine because of scarcity of time.

Tools and technologies used in every stage
- set-sample-docker-env.sh - Bash
- envsetup.sh - Bash, Docker, Maven
- startwebapp.sh - Bash, Maven, jUnit, Mockito, Docker compose
- start_monitoring.sh - Bash, Prometheus, Grafana

Execute the below commands in order to setup the environment and run the app

```shell
    ./shellscripts/set-sample-docker-env.sh
    sudo ./shellscripts/envsetup.sh
    sudo ./shellscripts/startwebapp.sh
    sudo ./shellscripts/start_monitoring.sh
```

# By Leesa

# Ovreview: 
This project demonstrates how to build and manage x86 and ARM binaries using Docker Compose and Jenkins. The repository includes configuration files for Docker Compose and Jenkins, as well as the necessary source code to compile a simple C program.

# Files and Directories
Jenkinsfile: Defines the Jenkins pipeline for building the project. 
docker-compose.yml: Configuration file for Docker Compose to build x86 and ARM binaries. 
main.c: Simple C program to be compiled. 
README.md: Project documentation.

# To build it locally run the following command
docker-compose up --build

# To clean up docker conatiners run the following command
docker-compose down

# Configure Jenkins:
configure a jenkins pipeline and add the repository url and credentials(if needed)
It will automatically use the Jenkinsfile to define the stages
