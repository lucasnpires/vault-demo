#!/bin/bash
source variables.sh

docker exec -i -t "$container_mongo_dev_name" bash

mongo

use admin
db.createUser({user:"admindev",pwd:"pwddev",roles:[{role:"root",db:"admin"}]})

exit
exit