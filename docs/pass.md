# pass

A CLI password manager

Setup:

```bash
$ sudo apt install pass
$ gpg --full-generate-key
$ pass init <placeholder-gpg-id>
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

Git integration

```bash
$ pass git init
$ pass git remote add origin git@github.com:username/repository.git
$ pass git push -u origin master
```

[[source](https://cloudsavvyit.com/8817)]
