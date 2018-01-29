#!/bin/sh

# Purpose: Script that is executed upon docker image launch

# Refs:
#
# * https://gist.github.com/deoren/e089f5f0698032d43452db4e0af003fc

GIT_REPO="https://github.com/progit/progit2.git"

#BRANCH="master"
# Temp branch with Gemfile modified to use versions of gems that
# are known to generate valid epub output.
BRANCH="rework_files"

REQ_PKGS="git ruby ruby-dev alpine-sdk libxml2-dev zlib-dev"

apk update
apk add --no-cache $REQ_PKGS

git clone $GIT_REPO
cd progit2/

# Temp branch with Gemfile modified to use versions of gems that
# are known to generate valid epub output.
git checkout $BRANCH

gem install bundler --no-ri --no-rdoc
gem install rake --no-ri --no-rdoc
bundle install --path vendor/bundle

# Build all formats
rake

# Build just epub
#bundle exec asciidoctor-epub3 progit.asc

# Add commands here to copy over the generated files before the
# container is shut down
copy -f progit.* /output/
