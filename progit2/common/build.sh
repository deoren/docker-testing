#!/bin/sh

# Purpose: Script that is executed upon docker image launch

# Refs:
#
# * https://gist.github.com/deoren/e089f5f0698032d43452db4e0af003fc

CONTENT_NAME="Pro Git 2nd Edition"
GIT_REPO="https://github.com/progit/progit2"

#BRANCH="master"
# Temp branch with Gemfile modified to use versions of gems that
# are known to generate valid epub output.
BRANCH="rework_files"

# Display the initial greeting upon container start
cat << HEREDOC

    1. This container is about to build $CONTENT_NAME.

    2. When finished, the completed formats will be placed in the /output/
    directory. This path is mapped to the current working directory
    on the Docker host.

HEREDOC

# If this is the first time booting wait enough for the user to read
# the message, otherwise go ahead and start the build process.
if [ ! -f '/first_boot' ]; then
    sleep 10
    touch /first_boot
fi

echo "Updating package cache ..."
sleep 1
$UPDATE_COMMAND
$INSTALL_COMMAND $PKG_LIST

if [ ! -f progit2/.git ]; then
    echo "Cloning $GIT_REPO ..."
    sleep 1
    git clone $GIT_REPO
    cd progit2/
fi

# Temp branch with Gemfile modified to use versions of gems that
# are known to generate valid epub output.
git checkout $BRANCH
git pull --ff-only

echo "Installing Ruby gems ..."
sleep 1

# Install required ruby gems
gem install bundler --no-ri --no-rdoc
bundle install --path vendor/bundle

echo "Beginning build process for $CONTENT_NAME ..."
sleep 1

# Build all formats
bundle exec rake

# Build just epub
#bundle exec asciidoctor-epub3 progit.asc

if [ $? ]; then

    echo "Build successful."
    cp -f progit.* /output/
    ls -lh /output/progit.*

else

    echo "Build FAILED. See earlier output for details."

fi

