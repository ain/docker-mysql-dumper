# docker-mysql-dumper

Dump script for (multiple) MySQL Docker container(s).

## Requirements

- Use of [official MySQL Docker repository](https://hub.docker.com/_/mysql/) image
- Running MySQL container(s)
- Container naming convention that includes _mysql_ in the name of container (see `PATTERN` in script)

## Usage

To dump all MySQL databases from running containers to `/root/tmp/mysql` (as by `DUMP_PATH` default):

```
./sql-dumper.sh
```

## Licence

Copyright © 2015 Ain Tohvri. Licenced under [GPL-3](LICENSE).
