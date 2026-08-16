## VSCodium

VSCodium is VSCode stripped of Microsoft telemetry.

### Install via dpkg

Download `codium_$VERSION_amd64.deb`,
[here](https://github.com/VSCodium/vscodium/releases).

```bash
$ cd ~/Downloads
$ sudo dpkg -i codium_$VERSION_amd64.deb
```

### Configuration

Here are some of my configuration preferences for this editor.

File: ` ~/.config/VSCodium/User/settings.json`

```json
{
  "editor.minimap.enabled": false,
  "editor.rulers": [80],
  "explorer.confirmDelete": false,
  "files.trimFinalNewlines": true,
  "files.trimTrailingWhitespace": true,
  "keyboard.dispatch": "keyCode",
  "window.menuBarVisibility": "toggle",
  "window.title": "${activeEditorLong}${separator}${rootName}",
  "workbench.editor.enablePreview": false
}
```
