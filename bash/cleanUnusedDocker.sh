#!/bin/bash
echo "remove docker containers..."
docker ps
docker ps -a
docker rm $(docker ps -qa --no-trunc --filter "status=exited")

echo "remove docker images..."
docker images
docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
docker images | grep "none"
docker rmi $(docker images | grep "none" | awk '/ / { print $3 }')

echo "delete networks..."
docker network ls  
docker network ls | grep "bridge"   
docker network rm $(docker network ls | grep "bridge" | awk '/ / { print $1 }')

echo "delete volumes..."
docker volume rm $(docker volume ls -qf dangling=true)
docker volume ls -qf dangling=true | xargs -n1 docker volume rm

echo "Resize disk space for docker vm ..."
docker-machine create --driver virtualbox --virtualbox-disk-size "40000" default