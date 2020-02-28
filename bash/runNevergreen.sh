#!/bin/bash

if [[ -z ${NEVERGREEN_AES} ]];
then
    echo "variable NEVERGREEN_AES is not set. Please put this aes key in your .bashrc or .profile"
    exit -1;
else
    docker stop nevergreen
    docker rm -f nevergreen
    docker rmi buildcanariesteam/nevergreen

    docker pull buildcanariesteam/nevergreen:5.0.1

    docker run -d \
    -p 5000:5000 \
    -e "AES_KEY=$NEVERGREEN_AES" \
    --name nevergreen \
    --restart unless-stopped \
    buildcanariesteam/nevergreen:5.0.1

    docker ps -a | grep nevergreen
fi
