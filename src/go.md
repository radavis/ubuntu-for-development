# go

> [Go is] a fast, statically typed, compiled language that feels like a dynamically typed, interpreted language.

```bash
$ GO_VERSION=1.15.6
$ curl -O https://golang.org/dl/go$GO_VERSION.linux-amd64.tar.gz
$ mkdir $HOME/go-$GO_VERSION
$ tar -C $HOME/go-$GO_VERSION -xzf go$GO_VERSION.linux-amd64.tar.gz
```

Add the following to `~/.bashrc`

```bash
GO_VERSION=1.15.6
PATH="$PATH:$HOME/go-$GO_VERSION/go/bin"
```

[[documentation](https://golang.org/doc/)]
