# grub

```bash
$ sudo nano /etc/default/grub
```

set `GRUB_TIMEOUT=2`, `GRUB_RECORDFAIL_TIMEOUT=${GRUB_TIMEOUT}`

```bash
$ sudo update-grub
```

See:

  - [grub configuration](https://www.gnu.org/software/grub/manual/grub/html_node/Simple-configuration.html)
  - [`GRUB_INIT_TUNE`](https://askubuntu.com/questions/76309/play-a-sound-before-or-after-grub-loads)
