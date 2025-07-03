## asdf

An extensible Version Manager.

### Install via git

[[source](https://asdf-vm.com/#/core-manage-asdf)]

```bash
$ ASDF_VERSION=0.14.0
$ git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v$ASDF_VERSION
```

```bash
# ~/.bashrc
source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash
```

### Add plugins for languages, tools, and install

```bash
$ asdf plugin add nodejs
$ asdf install nodejs latest
$ asdf global nodejs latest
$ node --version
```

Read how to
[set the current version](https://asdf-vm.com/#/core-manage-versions?id=set-current-version)
of a language with `asdf`.
