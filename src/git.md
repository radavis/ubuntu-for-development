# git

Tell `git` who you are.

```bash
$ git config --global user.name "Ash Williams"
$ git config --global user.email "ash@s-mart.biz"
$ git config --global init.defaultBranch "main"
```

[[source](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration)]

Verify the commands above created a `~/.gitconfig` file.

```bash
$ cat ~/.gitconfig
```

Add a few useful aliases to `~/.bashrc`.

```bash
alias ga="git add"
alias gc="git commit"
alias gcm="git commit -m"
alias gs="git status"
```

Other `git` configuration commands:

```bash
# show current configuration
$ git config --list
# fast-forward (instead of rebase) when pulling code
$ git config --global pull.ff only
```
