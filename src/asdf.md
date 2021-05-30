# asdf

An extensible Version Manager.

# Install via git

[[source](https://asdf-vm.com/#/core-manage-asdf)]

```bash
$ ASDF_VERSION=0.8.1
$ git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v$ASDF_VERSION
```

```bash
# ~/.bashrc
source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash
```

# Add plugins for languages, tools, and install

```bash
$ asdf plugin add nodejs
$ asdf install nodejs 16.2.0
$ asdf install nodejs 14.17.0
$ asdf plugin add yarn
$ asdf install yarn latest
...
```

Read how to
[set the current version](https://asdf-vm.com/#/core-manage-versions?id=set-current-version)
of a language with `asdf`.
