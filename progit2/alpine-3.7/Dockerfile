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

ENV	DISTRO="alpine" \
    PKG_LIST="git ruby ruby-dev alpine-sdk libxml2-dev zlib-dev python2 py-pip" \
    UPDATE_COMMAND="apk update" \
    INSTALL_COMMAND="apk add --nocache"

# Need to find a way to include this in the image for all distros without
# duplicating the file.
ADD https://raw.githubusercontent.com/deoren/docker-testing/master/progit2/common/build.sh /build.sh

ENTRYPOINT ["/build.sh"]

WORKDIR /
VOLUME output /output
