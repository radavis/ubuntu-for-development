## cleanup packages

### snap

```bash
$ snap list --all | grep disabled$
$ sudo snap remove --revision=224 firmware-updater
```

### flatpak

```bash
$ flatpak list
$ flatpak uninstall --unused
```
