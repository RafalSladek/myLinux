#!/bin/bash

if [ $# -lt 2 ]; then
  echo "Usage: $0 <jigsaw_backend_name> <local_service_port> [<another_jigsaw_backend_name> <another_local_service_port> ...]"
  echo "eg: $0 priceestimation 9000"
  echo "eg: $0 classifieddetail 9000"
  echo "eg: $0 classifiedlist 9000"
  echo "eg: $0 home 9000 contentservice 8080"
  exit 1
fi

set -x

SERVICE_NAME=$1
MY_LOCAL_IP=$PLAY_LOCAL_SERVER_IP

while [ $# -ge 2 ]; do
        if [ -z $LOCALTEST_SERVICES_AND_PORTS ] ; then
                LOCALTEST_SERVICES_AND_PORTS="$1=$2"
        else
                LOCALTEST_SERVICES_AND_PORTS="$LOCALTEST_SERVICES_AND_PORTS;$1=$2"
        fi
        shift ; shift
done

echo "Remove existing container $SERVICE_NAME"
docker stop $SERVICE_NAME
docker rm $SERVICE_NAME

echo "Creating new docker container $SERVICE_NAME with ${MY_LOCAL_IP} as host IP address"
docker run -d --name $SERVICE_NAME -p 8080:80 --env LOCALTEST="$LOCALTEST_SERVICES_AND_PORTS" --env LOCALIP="$MY_LOCAL_IP" --env ACCOUNTSUBDOMAIN="a" as24/jigsaw
docker ps -a
set +x

