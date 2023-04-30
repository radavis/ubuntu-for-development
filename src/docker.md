## docker rootless

Setup Docker daemon in rootless mode

```bash
$ curl -fsSL https://get.docker.com -o get-docker.sh
$ sudo sh get-docker.sh
```

Add yourself to the `docker` group

```bash
$ sudo usermod -aG docker $USER
```

Reboot! Then, test it out

```bash
$ docker run hello-world
```

[[source](https://docs.docker.com/engine/install/ubuntu/)]
