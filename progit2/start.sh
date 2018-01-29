#!/bin/bash

# Purpose: 
#
# Crude script to "wrap" the docker command to boot and execute script to build progit2 files

# Refs:
#
# * https://docs.docker.com/engine/reference/commandline/run/#options
# * https://docs.docker.com/install/linux/docker-ce/ubuntu/

# Host: Ubuntu 17.10 x64 VM

cd Desktop

sudo docker run -ti \
    -v $PWD/output:/output \
    -v $PWD/progit2-build-script.sh:/progit2-build-script.sh \
    --entrypoint "/progit2-build-script.sh" \
    ubuntu
