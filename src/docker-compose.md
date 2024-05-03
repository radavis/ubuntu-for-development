## docker-compose

Install docker-compose

```bash
# add DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker} to ~/.bashrc
$ mkdir -p $DOCKER_CONFIG/cli-plugins
$ curl -SL https://github.com/docker/compose/releases/download/v2.27.0/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
$ chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose
$ docker compose version
```

Why not try out wordpress development? 🤷‍♂️

**`filename:`** `docker-compose.yml`
[import](./docker-compose.yml)

```bash
$ docker compose up # then open localhost:8080 in a browser
```

Peruse some of the example uses of docker created by the open-source community.

- https://docs.docker.com/samples/#sample-applications
- https://github.com/docker/awesome-compose#readme
