# Test file. I have no real idea what I am doing. :)

# References:

# https://forums.docker.com/t/how-to-run-bash-command-after-startup/21631
# https://github.com/rsyslog/rsyslog-doc/blob/master/tools/buildenv/Dockerfile
# https://github.com/rsyslog/rsyslog-docker/blob/master/appliance/alpine/Dockerfile
# https://www.ctl.io/developers/blog/post/dockerfile-entrypoint-vs-cmd/

FROM ubuntu

MAINTAINER deoren <deoren@users.noreply.github.com>

COPY progit2-build-script.sh /progit2-build-script.sh

RUN echo "Run /progit2-build-script.sh to start the build process"
ENTRYPOINT /bin/bash

VOLUME /home/ubuntu/Desktop/output /output
