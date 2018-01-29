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

# Not 100% sure that 'python-pip' is needed.
REQ_PKGS="build-essential curl git-core ruby ruby-dev zlib1g-dev python python-dev python-pip"




apt-get update

# Upgrade existing packages
apt-get dist-upgrade -y

# Install dependencies
apt-get install -y $REQ_PKGS

# Toss downloaded archive files
apt-get clean

git clone $GIT_REPO
cd progit2/

# Temp branch with Gemfile modified to use versions of gems that
# are known to generate valid epub output.
git checkout $BRANCH

# Install required ruby gem needed to install gem dependencies
gem install bundler --no-ri --no-rdoc

bundle install --path vendor/bundle

# Build all formats
bundle exec rake

# Build just epub
#bundle exec asciidoctor-epub3 progit.asc

# Copy over the generated files before the container is shut down
cp -f progit.* /output/
