## pass

A CLI password manager

Setup:

```bash
$ sudo apt install pass
# specify 4096 bits and username in next step
$ gpg --full-generate-key
$ pass init username
```

Add password

```bash
$ pass insert service/username
```

Generate password

```bash
$ pass generate service/username 32 --no-symbols
```

List passwords

```bash
$ pass
```

Retrieve password

```bash
$ pass service/username
```

Copy password to clipboard

```bash
$ pass --clip service/username
```

Git integration

```bash
$ pass git init
# create a private git repository
$ pass git remote add origin git@git-server.com:username/repository.git
$ pass git push -u origin master
```

[[source](https://www.cloudsavvyit.com/8817/how-to-use-pass-a-command-line-password-manager-for-linux-systems/)]

### gpg

List keys

```bash
$ gpg --list-keys
```

Export keys. Keep your keys safe.

```bash
$ mkdir ~/gpg
$ gpg --export --armor "User Name" > ~/gpg/public.key
$ gpg --export-secret-keys "User Name" > ~/gpg/private.key
```

Import a key

```bash
$ gpg --import /path/to/key
```

It may be necessary to
[set the trust level of the keys](https://stackoverflow.com/a/34132924/2675670),
after importing.
