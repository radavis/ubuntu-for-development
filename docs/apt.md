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
$ touch ~/apt-packages.txt
```

[import](./apt-packages.txt)

```bash
$ cat ~/apt-packages.txt | xargs sudo apt install -y
```

## Create an alias

```bash
# ~/.bashrc
alias apti="cat $HOME/packages.txt | xargs sudo apt install -y"
```

When you need to install one or more packages, add them to `~/apt-packages.txt`
and run `apti`.
