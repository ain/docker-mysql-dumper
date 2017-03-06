#!/bin/bash
# sql-dumper.sh dumps all defined databases from Docker containers.

count=0

dump() {

  # PATTERN as part of Docker container name.
  # NB! regex patterns are not supported!
  local readonly PATTERN='db'

  # File path inside container where to dump SQL, e.g. volume.
  local readonly DUMP_FILE='/var/lib/mysql/dump.sql'

  for id in `docker ps -q --filter "name=$PATTERN"`
  do
    echo "Processing container $id"
    docker exec -it $id bash -c "mysqldump -u \$MYSQL_USER --password=\$MYSQL_PASSWORD \$MYSQL_DATABASE > $DUMP_FILE"
    echo "  > processed."
    let "count++"
  done
}

dump

echo "Processed $count MySQL database containers."

exit 0
