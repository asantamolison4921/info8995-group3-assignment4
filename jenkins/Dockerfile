FROM jenkins/jenkins:lts-jdk17

USER root
RUN apt-get update && apt-get install -y maven
USER jenkins

# Copy Jenkinsfile to the Jenkins home directory
#COPY Jenkinsfile /var/jenkins_home/jobs/java-app-pipeline/config.xml
