#!/bin/bash

# #check whether root user or not
# R="\e[31m"
# N="\e[0m"

# sudo curl -o /etc/yum.repos.d/jenkins.repo \
#     https://pkg.jenkins.io/redhat-stable/jenkins.repo
# sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
# # Add required dependencies for the jenkins package
# sudo yum install fontconfig java-17-openjdk
# sudo yum install jenkins
# sudo systemctl daemon-reload


sudo apt update
sudo apt install openjdk-17-jre
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins