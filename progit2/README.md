# HowTo: Use Docker image to build Pro Git 2E

## Prep

1. `cd Desktop`
1. `git clone https://github.com/deoren/docker-testing`
1. `cd docker-testing/progit2`

## Build

1. `sudo docker build -t progit2-build:0.1 $PWD/`

## Run

1. `sudo docker run -ti progit2-build:0.1`
