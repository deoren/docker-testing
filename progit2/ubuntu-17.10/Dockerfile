# Test file. I have no real idea what I am doing. :)

# References:

# https://forums.docker.com/t/how-to-run-bash-command-after-startup/21631
# https://github.com/rsyslog/rsyslog-doc/blob/master/tools/buildenv/Dockerfile
# https://github.com/rsyslog/rsyslog-docker/blob/master/appliance/alpine/Dockerfile
# https://www.ctl.io/developers/blog/post/dockerfile-entrypoint-vs-cmd/
# https://github.com/asciidoctor/docker-asciidoctor

# https://hub.docker.com/_/ubuntu/
FROM ubuntu:17.10

LABEL deoren <deoren@users.noreply.github.com>

ENV	DISTRO="ubuntu-17.10" \
    PKG_LIST="build-essential curl git-core ruby ruby-dev zlib1g-dev python python-dev python-pip" \
    UPDATE_COMMAND="apt-get update" \
    INSTALL_COMMAND="apt-get install -y"

# Need to find a way to include this in the image for all distros without
# duplicating the file.
ADD https://raw.githubusercontent.com/deoren/docker-testing/master/progit2/common/build.sh /build.sh

ENTRYPOINT ["/build.sh"]

WORKDIR /
VOLUME output /output
