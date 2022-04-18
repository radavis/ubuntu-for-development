# git latest

Clone, build, and install the latest version of git.

```bash
$ sudo apt install libcurl4-openssl-dev tcl-dev tk-dev gettext asciidoc
$ export GIT_VERSION=2.34.1
$ git clone --branch v$GIT_VERSION --depth 1 git@github.com:git/git.git git-v$GIT_VERSION
$ cd git-v$GIT_VERSION
$ make configure
$ ./configure
$ make all doc
$ sudo make install
```
