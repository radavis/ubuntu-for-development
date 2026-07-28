# /etc/sudoers file

```bash
$ cat /etc/sudoers
$ sudo !!
# @includedir /etc/sudoers.d # at EOF
$ sudo nano /etc/sudoers.d/${USER}
```

```
your-username ALL=(ALL) NOPASSWD: ALL
```

Then, reload your terminal.

[[source](https://askubuntu.com/a/340669)]
