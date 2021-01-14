# node

## Manage Node versions with `n`

Add the following lines to `~/.bashrc`:

```
export N_PREFIX="$HOME/.node"
PATH="$HOME/bin:$HOME/.node/bin:$PATH"
```

Manage node versions with `n`.

```bash
$ mkdir ~/bin && cd ~/bin
$ curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n
$ chmod +x n
$ n lts
```

[[source](https://github.com/tj/n#specifying-node-versions)]
