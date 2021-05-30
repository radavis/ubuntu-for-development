# apt

The `apt` command allows us to manage the applications, tools, and libraries installed on Ubuntu.

## Upgrade Packages

```bash
$ sudo apt update
$ apt list --upgradable
$ sudo apt upgrade
```

## List Installed Pacakges

```bash
$ apt list --installed
$ apt list --installed | grep --invert-match automatic
```

## Install a List of Packages

I find it helpful to maintain a plain-text file of packages I regularly use.

```bash
$ touch ~/Aptfile
```

[import](./Aptfile)

```bash
$ cat ~/Aptfile | xargs sudo apt install -y
```

## Create an alias

```bash
# ~/.bashrc
alias apti="cat $HOME/Aptfile | xargs sudo apt install -y"
```

When you need to install one or more packages, add them to `~/Aptfile`
and run `apti`.
