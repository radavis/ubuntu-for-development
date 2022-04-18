## docker rootless

Setup Docker daemon in rootless mode

```bash
$ sudo apt install uidmap dbus-user-session
$ curl -fsSL https://get.docker.com/rootless | sh
```

```bash
# ~/.bashrc

# docker
export PATH=/home/rd/bin:$PATH
export DOCKER_HOST=unix:///run/user/1000/docker.sock
```

Start the daemon

```bash
$ systemctl --user enable docker
$ sudo loginctl enable-linger $(whoami)
```

[[source](https://docs.docker.com/engine/security/rootless/)]
