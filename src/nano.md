## nano

Build and install `nano`.

```bash
$ cd ~
$ NANO_VERSION=7.2
$ curl -O https://nano-editor.org/dist/v7/nano-$NANO_VERSION.tar.gz
$ tar -zxvf nano-$NANO_VERSION.tar.gz
$ cd nano-$NANO_VERSION
$ ./configure
$ make
$ sudo make install
```

### Configuration

To see the options available for configuration, take a look at the manual:
`man nanorc`

```bash
# ~/.nanorc
set atblanks
set autoindent
set guidestripe 80
set linenumbers
#set mouse
#set nohelp
set softwrap
set tabsize 2
set tabstospaces
set trimblanks
```

### Syntax Highlighting

```bash
$ cd ~/nano-$NANO_VERSION/syntax
$ sudo make install
```

```bash
# ~/.nanorc
include /usr/local/share/nano/*.nanorc
include /usr/local/share/nano/extra/*.nanorc
```
