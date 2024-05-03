## VSCodium

VSCodium is VSCode stripped of Microsoft telemetry.

### Install via dpkg

Download `codium_$VERSION_amd64.deb`,
[here](https://github.com/VSCodium/vscodium/releases).

```bash
$ cd ~/Downloads
$ sudo dpkg -i codium_$VERSION_amd64.deb
```

### Configure Extensions Source

Create and edit `~/.config/VSCodium/product.json`

```json
{
  "extensionsGallery": {
    "serviceUrl": "https://marketplace.visualstudio.com/_apis/public/gallery",
    "cacheUrl": "https://vscode.blob.core.windows.net/gallery/index",
    "itemUrl": "https://marketplace.visualstudio.com/items",
    "controlUrl": "",
    "recommendationsUrl": ""
  }
}
```

[[source](https://github.com/VSCodium/vscodium/blob/master/DOCS.md#extensions--marketplace)]

### Other Editor Settings

```json
{
  "editor.minimap.enabled": false,
  "editor.rulers": [80],
  "files.trimTrailingWhitespace": true,
  "security.workspace.trust.untrustedFiles": "open",
  "explorer.confirmDelete": false,
  "files.trimFinalNewlines": true,
  "window.menuBarVisibility": "toggle",
  "editorconfig.generateAuto": false,
  "workbench.startupEditor": "none",
  "window.zoomLevel": 1,
  "workbench.editor.enablePreview": false,
  "explorer.autoReveal": false,
  "editor.detectIndentation": false,
  "editor.tabSize": 2,
  "editor.insertSpaces": true,
  "window.title": "${activeEditorLong}${separator}${rootName}"
}
```
