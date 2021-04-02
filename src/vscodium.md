# VSCodium

VSCodium is VSCode stripped of Microsoft telemetry.

## Install via apt

```bash
$ wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | \
    gpg --dearmor | \
    sudo dd of=/etc/apt/trusted.gpg.d/vscodium.gpg
$ echo 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main' | \
    sudo tee --append /etc/apt/sources.list.d/vscodium.list
$ sudo apt update
$ sudo apt install codium
```

[[source](https://github.com/VSCodium/vscodium#vscodium)]

## Install via dpkg

Download `codium_$VERSION_amd64.deb`,
[here](https://github.com/VSCodium/vscodium/releases).

```
$ cd ~/Downloads
$ sudo dpkg -i codium_$VERSION_amd64.deb
```

## Fix remapped CapsLock & Esc keys

Edit `~/.config/VSCodium/User/settings.json`

```
"keyboard.dispatch": "keyCode"
```

[[source](https://github.com/Microsoft/vscode/issues/32037#issuecomment-322042146)]

