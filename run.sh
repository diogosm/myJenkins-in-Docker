#!/bin/bash

# removing containers
docker rm jenkins

# building docker 
docker build -t jenkins .

# running docker
docker run --name jenkins -p 8080:8080 -p 50000:50000 -v /opt/volumes/jenkins:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock jenkins 
