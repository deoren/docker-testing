# HowTo: Use Docker image to build Pro Git 2E

## Status

This entire repo is intended as a test platform for my studies in Docker.
While some of the images *may* be useful, therei s no guarantee that they
will be.

## Directions

1. `cd Desktop`
1. `git clone https://github.com/deoren/docker-testing`
1. Pick a base image
    - ubuntu-16.04
    - ubuntu-17.10
    - alpine-3.7
1. Change current working directory to your image choice
    - `cd docker-testing/progit2/IMAGE_CHOICE`
1. Build image
    - `sudo docker build -t progit2-build:0.1 $PWD/`
1. Run container based on the new image
    1. `mkdir -p output`
    1. `sudo docker run -ti -v $PWD/output:/output progit2-build:0.1`

When the container finishes building the content the files will be placed
in the `/output` directory within the container. That directory was mapped
to `output` directory within your current working directory when you
ran `sudo docker run`. Look there for the newly generated files.
