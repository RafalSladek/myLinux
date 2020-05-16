#!/bin/bash

image_name=portainer/portainer
container_name=portainer

docker stop $container_name
docker rm -f $container_name
docker rmi $image_name

docker pull $image_name:latest

echo "create $HOME/portainer dir..."
mkdir -p $HOME/portainer

docker run -d \
-p 9000:9000 \
-p 8000:8000 \
-v /var/run/docker.sock:/var/run/docker.sock \
-v $HOME/portainer:/data \
--name $container_name \
--restart unless-stopped \
$image_name:latest

docker ps -a | grep $container_name
