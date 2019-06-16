#!/bin/bash
source variables.sh

docker exec -i -t "$container_mongo_prod_name" bash

mongo

use admin
db.createUser({user:"adminprod",pwd:"pwdprod",roles:[{role:"root",db:"admin"}]})

exit
exit