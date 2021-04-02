# docker

## Install docker-ce and docker-compose

```bash
$ sudo apt update
$ sudo apt install apt-transport-https ca-certificates curl software-properties-common
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
$ source /etc/os-release
$ echo "$VERSION_CODENAME"
$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $VERSION_CODENAME stable"
$ sudo apt update
$ apt-cache policy docker-ce
$ sudo apt install docker-ce docker-compose
$ sudo systemctl status docker
```

## Add `${USER}` to the `docker` group

So you don't have to `sudo docker` all the time.

```bash
$ sudo usermod -aG docker ${USER}
# logout, then login
$ id -nG
```

## Verify

```bash
$ docker run hello-world
```

[[source](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04)]
