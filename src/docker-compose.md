## docker-compose

Install docker-compose

```bash
$ sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose
$ docker-compose --version
```

Why not try out wordpress development? 🤷‍♂️

**`filename:`** `docker-compose.yml`
[import](./docker-compose.yml)

```bash
$ docker-compose up # then open localhost:8080 in a browser
```

Peruse some of the example uses of docker created by the open-source community.

- https://docs.docker.com/samples/#sample-applications
- https://github.com/docker/awesome-compose#readme
