## lsd

First, download the Ubuntu Mono nerd-fonts.

```bash
$ cd ~/Downloads
$ curl -OL https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/UbuntuMono.zip
$ unzip UbuntuMono.zip
$ mkdir -p ~/.local/share/fonts
$ mv *.ttf ~/.local/share/fonts
$ rm UbuntuMono.zip
```

Next, download and install LSDeluxe

```bash
$ LSD_VERSION=0.20.1
$ curl -OL https://github.com/Peltoche/lsd/releases/download/${LSD_VERSION}/lsd_${LSD_VERSION}_amd64.deb
$ sudo dpkg -i lsd_${LSD_VERSION}_amd64.deb
```

Finally, replace `ls` with an alias to `lsd` (in `~/.bashrc`)

```bash
alias ls='lsd'
```
