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
COPY greeting.txt /greeting.txt

# Display informational message upon initial launch, and then drop to a shell
CMD ["/bin/sh", "-c", "cat /greeting.txt"]

WORKDIR /
VOLUME output /output
