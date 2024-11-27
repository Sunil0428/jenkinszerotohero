#!/bin/bash

#check whether root user or not
R="\e[31m"
N="\e[0m"

yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
systemctl start docker
systemctl enable docker
usermod -aG docker ec2-user
usermod -aG docker jenkins
systemctl restart docker
echo -e "$R Logout and Login again $N"