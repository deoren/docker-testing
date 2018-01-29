# Test file. I have no real idea what I am doing. :)

# References:

# https://forums.docker.com/t/how-to-run-bash-command-after-startup/21631
# https://github.com/rsyslog/rsyslog-doc/blob/master/tools/buildenv/Dockerfile
# https://github.com/rsyslog/rsyslog-docker/blob/master/appliance/alpine/Dockerfile
# https://www.ctl.io/developers/blog/post/dockerfile-entrypoint-vs-cmd/
# https://github.com/asciidoctor/docker-asciidoctor

# https://hub.docker.com/r/asciidoctor/docker-asciidoctor/
FROM alpine:3.7

LABEL deoren <deoren@users.noreply.github.com>

COPY build.sh /build.sh

RUN echo "Run ./progit2-build-script.sh to start the build process"
RUN echo "When finished, the completed format will be placed in the /output/"
RUN echo "directory. This path is mapped to the current working directory"
RUN echo "on the Docker host."

#ENTRYPOINT /bin/sh

WORKDIR /output
VOLUME output /output
