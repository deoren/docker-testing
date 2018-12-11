#!/bin/sh
set -e

# Credit: https://github.com/looselytyped/practical-docker
# (who in turns gives credit to others)
# Used with the

# entrypoint.sh
if [ "$1" = 'default' ]; then
  # do default thing here
  echo "Running default"
else
  echo "Running user supplied arg"
  # if the user supplied say /bin/bash
  exec "$@"
fi
