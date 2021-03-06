#!/bin/bash

# Purpose: 
#
#     Crude script to automate the installation of 
#     the latest stable version of Docker CE for
#     Ubuntu systems.

# https://docs.docker.com/install/linux/docker-ce/ubuntu/

sudo apt-get update
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install -y docker-ce

# Run pre-flight tests ...
sudo docker run hello-world
