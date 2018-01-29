# HowTo: Ubuntu-based image for Pro Git 2E

## Prep

1. `cd Desktop`
1. `git clone https://github.com/deoren/docker-testing`
1. `cd docker-testing/progit2`
1. `mkdir output`

## Build

1. `sudo docker build -t deoren/progit2:0.1 $PWD/`

## Run

1. `sudo docker run -ti -v $PWD/output:/output deoren/progit2:0.1`
