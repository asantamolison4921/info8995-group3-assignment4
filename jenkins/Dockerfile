FROM jenkins/jenkins:lts-jdk17

USER root
RUN apt-get update && apt-get install -y \
    maven \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-buildx-plugin \
    docker-compose-plugin
USER jenkins
