# docker service

install docker-ce, start the docker service

```bash
$ curl https://get.docker.com | sh
$ sudo systemctl --now enable docker
```

## Setup Docker daemon as a service

add `$USER` to the `docker` group, and verify the installation

```bash
$ sudo usermod -aG docker $USER
$ newgrp docker
$ docker run hello-world
```

## Uninstall Docker

[[source](https://docs.docker.com/engine/install/ubuntu/#uninstall-docker-engine)]

```bash
$ sudo apt-get purge docker-ce docker-ce-cli containerd.io
$ sudo rm -rf /var/lib/docker
$ sudo rm -rf /var/lib/containerd
```