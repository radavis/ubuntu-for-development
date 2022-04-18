## System Information

The following commands show you how to extract useful information about your Operating System.

Get OS Version

```bash
$ cat /etc/os-release
```

Get Linux Version

```bash
$ uname -srm
```

Get Shell Name

```bash
$ echo "$SHELL"
```

Get Desktop Name

```bash
$ echo "$XDG_CURRENT_DESKTOP"
```

Show RAM Usage

```bash
$ free -m  # in megabytes
$ htop
```

Show Disk Usage

```bash
$ df -h
```

List Running Services

```bash
$ systemctl
```

View Logs for a Service

```bash
$ journalctl -u service-name
```

Show IP Addresses

```bash
$ ip addr show
```

Get System Hardware Information

```bash
$ inxi --basic
```

Show Screen/Montior Information

```bash
$ xrandr
```
