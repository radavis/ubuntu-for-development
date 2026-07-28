## postgres

Use docker-compose to manage a postgres service

```bash
$ cd
$ mkdir postgres && cd postgres
$ touch .env docker-compose.yml
```

```
# .env
POSTGRES_VERSION=18.4
POSTGRES_PASSWORD=p0stgr3s
```

```
# docker-compose.yml
services:
  db:
    image: postgres:${POSTGRES_VERSION}
    ports:
      - "54321:5432"
    env_file:
      - .env
```

```bash
$ docker-compose up
$ sudo apt install postgresql-client-18
$ psql postgres://postgres:p0stgr3s@localhost:54321
```
