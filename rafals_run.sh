#!/bin/bash

if [ $# -lt 2 ]; then
  echo "Usage: ./run.sh priceestimation 9000"
  exit 1
fi

set -x

SERVICE_NAME=$1
MY_LOCAL_IP=$PLAY_LOCAL_SERVER_IP


CONTAINER_NAME="as24_jigsaw"
echo "Remove existing container $CONTAINER_NAME"
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME

echo "Creating new docker container $CONTAINER_NAME with ${MY_LOCAL_IP} as host IP address"
docker ps -a
docker run -d --name $SERVICE_NAME -p 8080:80 --env LOCALTEST="$SERVICE_NAME" --env LOCALIP="$MY_LOCAL_IP" --env LOCALPORT="$2" --env ACCOUNTSUBDOMAIN="a" "as24/jigsaw"

set +x
