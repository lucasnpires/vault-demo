#!/bin/bash
source variables.sh

echo "Create engine and keyvalue secrets"
docker exec $container_name vault login myroot
docker exec "$container_name" vault secrets enable -version=2 -path="$enginename" kv
docker exec "$container_name" vault kv put "$enginename/$hvpath/$profileProduction" \
topsecret.user="chuck_norris" \
topsecret.password="mia" \
topsecret.car="Hummer" \
spring.data.mongodb.database="demovaultprod" \
spring.data.mongodb.host="192.168.99.100" \
spring.data.mongodb.port="28018" \
spring.data.mongodb.username="adminprod" \
spring.data.mongodb.password="pwdprod" \
spring.data.mongodb.authentication-database="admin"

docker exec "$container_name" vault kv put "$enginename/$hvpath/$profile" \
topsecret.user="bond_james_bond" \
topsecret.password="007" \
topsecret.car="Aston Martin" \
spring.data.mongodb.database="demovaultdev" \
spring.data.mongodb.host="192.168.99.100" \
spring.data.mongodb.port="28017" \
spring.data.mongodb.username="admindev" \
spring.data.mongodb.password="pwddev" \
spring.data.mongodb.authentication-database="admin"