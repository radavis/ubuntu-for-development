## Gnome

Gnome is the default Desktop Environment in Ubuntu.

### Install Gnome Tweak Tool and shell integration

```
$ sudo apt install gnome-tweaks chrome-gnome-shell
```

Visit https://extensions.gnome.org/local/ and install the browser extension.

### A Selection of Useful Extensions

* [User Themes](https://extensions.gnome.org/extension/19/user-themes/)
* [GSConnect](https://extensions.gnome.org/extension/1319/gsconnect/)
* [Sound IO Device Chooser](https://extensions.gnome.org/extension/906/sound-output-device-chooser/)
* [OpenWeather](https://extensions.gnome.org/extension/750/openweather/)
* [Caffeine](https://extensions.gnome.org/extension/517/caffeine/)
* [Put Windows](https://extensions.gnome.org/extension/39/put-windows/)

### Disable the Touchpad tap-and-drag feature

When using a laptop touchpad, `tap-and-drag` doesn't work very well when
`tap-to-click` is enabled.

```bash
$ gsettings set org.gnome.desktop.peripherals.touchpad tap-and-drag false
```

[[source](https://askubuntu.com/a/1095432/917817)]
