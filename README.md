# docker-mysql-dumper

Dump script for MySQL Docker containers.

## Requirements

- Running MySQL or MariaDB container(s)

## Usage

In `sql-dumper.sh`:

1. define `DUMP_FILE`, full dump file path inside database container. Defaults to `/var/lib/mysql/dump.sql`
2. define `PATTERN`, conventional identifier for database container, e.g. `mysql` or `db` (default)
3. Run

        $ ./sql-dumper.sh

## Licence

Copyright © 2015-2017 Ain Tohvri. Licenced under [GPL-3](LICENSE).
