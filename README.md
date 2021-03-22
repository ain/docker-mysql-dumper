# docker-mysql-dumper

Dump script for MySQL Docker containers.

## Requirements

- Running MySQL or MariaDB container(s)

## Usage

In `sql-dumper.sh`:

1. define `DUMP_FILE`, full dump file path inside database container
2. define `PATTERN`, container service name, e.g. `db` in `my_app_db` as per Docker Compose setup
3. Run

        $ ./sql-dumper.sh

## Licence

Copyright © 2015-2021 Ain Tohvri. Licenced under [GPL-3](LICENSE).
