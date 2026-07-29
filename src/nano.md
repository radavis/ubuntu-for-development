## nano

`nano` is an Ubuntu/Debian-provided text editor.

```bash
$ which nano
# /usr/bin/nano
$ nano --version
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
# ~/.nanorc
include /usr/share/nano/*.nanorc
include /usr/share/nano/extra/*.nanorc
```
