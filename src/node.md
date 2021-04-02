# node

Manage Node versions with `n`

Add the following lines to `~/.bashrc`:

```
# import executables installed at ~/bin into the path
PATH="$HOME/bin:$PATH"

# n - manage node versions
export N_PREFIX="$HOME/.node"
PATH="$HOME/.node/bin:$PATH"
```

Install `n` into the `~/bin` folder. Then, install node.

```bash
$ mkdir ~/bin
$ cd ~/bin
$ curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n
$ chmod +x n
$ n lts
```

Install `yarn`

```bash
$ n auto
$ npm install --global yarn
```

[[source](https://github.com/tj/n#specifying-node-versions)]
