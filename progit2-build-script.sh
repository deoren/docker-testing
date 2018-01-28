#!/bin/bash

# Purpose: Script that is executed upon 'ubuntu' docker image launch

# Refs:
#
# * https://gist.github.com/deoren/e089f5f0698032d43452db4e0af003fc

#BRANCH="master"
# Temp branch with Gemfile modified to use versions of gems that
# are known to generate valid epub output.
BRANCH="rework_files"

REQ_PKGS="build-essential curl git-core ruby ruby-dev zlib1g-dev ruby-bundler"

GIT_REPO="https://github.com/progit/progit2.git"

apt-get update
apt-get install -y $REQ_PKGS

git clone $GIT_REPO progit2
cd progit2

git checkout $BRANCH

bundle install --path vendor/bundle

# Build all formats
rake

# Build just epub
#bundle exec asciidoctor-epub3 progit.asc
