## remap capslock

I prefer to remap the CapsLock key as the Escape key. There are
[other ways](https://askubuntu.com/questions/363346/how-to-permanently-switch-caps-lock-and-esc)
to achieve the same results. However, I find this process the most straightforward:

```bash
$ sudo nano /etc/default/keyboard
```

Set `XKBOPTIONS="caps:swapescape"`, `Ctrl+x`, save, and reboot.

[[source](https://askubuntu.com/a/1082423/917817)]
