# nano

Install the latest version of the `nano` text editor.

```bash
$ curl -O https://nano-editor.org/dist/v5/nano-5.4.tar.gz
$ tar zxvf nano-5.4.tar.gz
$ cd nano-5.4
$ ./configure
$ make
$ make install
```

## Configuration

To see the options available for configuration, take a look at the manual:
`man nanorc`

```no-highlight
# ~/.nanorc

set guidestripe 80
set linenumbers
#set nohelp
set softwrap
set tabsize 2
set tabstospaces
set trimblanks
```

## Syntax Highlighting

The configuration files at
`[scopatz/nanorc](https://github.com/scopatz/nanorc#readme)`
adds syntax highlighting to nano for many languages.

```bash
$ git clone git@github.com:scopatz/nanorc
# or
$ hub clone scopatz/nanorc
```

```no-highlight
# ~/.nanorc

include ~/nanorc/*.nanorc
```
