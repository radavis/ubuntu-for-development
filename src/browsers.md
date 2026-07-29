# Browsers

## Chrome

```bash
cd ~/Downloads
$ wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
$ sudo dpkg -i google-chrome-stable_current_amd64.deb
$ google-chrome
```

[[source](https://askubuntu.com/a/1515132)]

## Firefox

```bash
$ which firefox
# /usr/bin/firefox
```

## LibreWolf

[[instructions](https://www.librewolf.net/installation/debian/)]

```bash
$ which extrepo
# /usr/bin/extrepo
$ extrepo search librewolf
$ sudo extrepo enable librewolf
$ sudo apt update
$ sudo apt install librewolf
```

### Browser Extensions

- [OneTab](one-tab.com)
- [uBlock Origin](ublockorigin.com)
- [ohmyguus/i-still-dont-care-about-cookies](https://github.com/ohmyguus/i-still-dont-care-about-cookies#readme)
