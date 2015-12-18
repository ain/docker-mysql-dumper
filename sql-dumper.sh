#!/bin/bash
# sql-dumper.sh dumps all defined databases from Docker containers.

# PATTERN as part of Docker container name.
# NB! regex patterns are not supported!
PATTERN='mysql'
DUMP_PATH='/root/tmp/mysql'

for id in `docker ps -q --filter "name=$PATTERN"`
do

  echo "Fetching MySQL environment from $id"
  eval `docker inspect --format='{{.Config.Env}}' $id | tail -c +2 | head -c -2`

  echo "Dumping $MYSQL_DATABASE from $id"
  docker exec -t $id bash -c "/usr/local/mysql/bin/mysqldump -u $MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE > /tmp/${MYSQL_DATABASE}.sql"

  echo "Copying ${MYSQL_DATABASE}.sql from $id to host"
  docker cp $id:/tmp/${MYSQL_DATABASE}.sql $DUMP_PATH

  echo "Removing ${MYSQL_DATABASE}.sql from $id"
  docker exec -t $id bash -c "rm /tmp/${MYSQL_DATABASE}.sql"

done

exit 0
