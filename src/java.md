## Install openjdk

[[source](https://adoptopenjdk.net/installation.html#linux-pkg)]

First, determine your OS release

```bash
$ cat /etc/os-release | grep UBUNTU_CODENAME | cut -d = -f 2
xenial
```

Then, run the following

```bash
$ sudo apt-get install wget apt-transport-https gnupg
$ wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
$ # replace 'xenial' on the next line
$ echo "deb https://adoptopenjdk.jfrog.io/adoptopenjdk/deb xenial main" | sudo tee /etc/apt/sources.list.d/adoptopenjdk.list
$ sudo apt update
$ sudo apt-cache search adoptopenjdk
$ sudo apt install adoptopenjdk-11-hotspot
```

## Manage Java versions with `jenv`

If you need the ability to work with multiple releases of the Java language, `jenv` works quite well.

[[instructions](https://github.com/jenv/jenv#11-installing-jenv)]
