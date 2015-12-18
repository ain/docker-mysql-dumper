# docker-mysql-dumper

SQL dump script for multiple MySQL Docker containers.

## Requirements

- Use of [official MySQL Docker repository](https://hub.docker.com/_/mysql/) image
- Running MySQL container(s)

## Usage

To dump all MySQL databases from running MySQL containers to `/root/tmp/mysql` (as by `DUMP_PATH` default):

```
./sql-dumper.sh
```

## Licence

Copyright © 2015 Ain Tohvri. Licenced under [GPL-3](LICENSE).
