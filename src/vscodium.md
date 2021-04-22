# VSCodium

VSCodium is VSCode stripped of Microsoft telemetry.

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

