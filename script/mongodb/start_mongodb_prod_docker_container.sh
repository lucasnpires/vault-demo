#!/bin/bash
source variables.sh

echo "Stopping the vault if its already running" 
docker stop "$container_mongo_prod_name" 
echo "Force remove the vault if its presents" 
docker rm -f "$container_mongo_prod_name"

docker pull mongo:4.1
docker run --name "$container_mongo_prod_name" --restart=always -d -p 28018:27017 mongo mongod --auth