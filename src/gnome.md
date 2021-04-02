# Gnome

Gnome is the default Desktop Environment in Ubuntu.

## Disable the Touchpad tap-and-drag feature

`tap-and-drag` doesn't work very well when `tap-to-click` is enabled.

```bash
$ gsettings set org.gnome.desktop.peripherals.touchpad tap-and-drag false
```

[[source](https://askubuntu.com/a/1095432/917817)]

## Install Gnome Tweak Tool and shell integration

```
$ sudo apt install gnome-tweak-tool chrome-gnome-shell
```

Visit https://extensions.gnome.org/local/ and install the browser extension.

## A Selection of Extensions

* [User Themes](https://extensions.gnome.org/extension/19/user-themes/)
* [GSConnect](https://github.com/GSConnect/gnome-shell-extension-gsconnect/wiki)
* [Sound IO Device Chooser](https://github.com/kgshank/gse-sound-output-device-chooser)
* [OpenWeather](https://gitlab.com/jenslody/gnome-shell-extension-openweather)
* [Caffeine](https://extensions.gnome.org/extension/517/caffeine/)
* [Put Windows](https://github.com/negesti/gnome-shell-extensions-negesti)
