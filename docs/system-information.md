# System Information

The following commands show you how to extract useful information about your Operating System.

## Get OS Version

```bash
$ cat /etc/os-release
```

## Get Linux Version

```bash
$ uname -srm
```

## Get Shell Name

```bash
$ echo "$SHELL"
```

## Get Desktop Name

```bash
$ echo $XDG_CURRENT_DESKTOP"
```

## Show RAM Usage

```bash
$ free -m  # in megabytes
$ htop
```

## Show Disk Usage

```bash
$ df -h
```

## List Running Services

```bash
$ service --status-all
```

## Show IP Addresses

```bash
$ ip addr show
```
