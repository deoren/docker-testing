# https://github.com/looselytyped/practical-docker

FROM ubuntu:18.10

COPY entrypoint.sh /usr/local/bin/

# Combination of ENTRYPOINT + CMD used when starting container
ENTRYPOINT ["entrypoint.sh"]
CMD ["default"]
# ./entrypoint.sh default

# If user passes a command to run then the script will run that command
# docker run <image> bash
# ./entrypoint.sh bash
