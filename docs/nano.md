# nano

Install the latest version of the `nano` text editor.

```bash
$ NANO_VERSION=5.4
$ curl -O https://nano-editor.org/dist/v5/nano-$NANO_VERSION.tar.gz
$ tar -zxvf nano-$NANO_VERSION.tar.gz
$ cd nano-$NANO_VERSION
$ ./configure
$ make
$ make install
```

## Configuration

To see the options available for configuration, take a look at the manual:
`man nanorc`

```
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

## Syntax Highlighting

The configuration files at
[`scopatz/nanorc`](https://github.com/scopatz/nanorc#readme)
adds syntax highlighting for many languages.

```bash
$ git clone git@github.com:scopatz/nanorc
# or
$ hub clone scopatz/nanorc
```

```
# ~/.nanorc

include ~/nanorc/*.nanorc
```
