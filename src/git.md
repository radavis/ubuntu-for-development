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
alias ga="git add" # usage: ga filename
alias gc="git commit -m" # usage: gc "commit message"
alias gs="git status" 3 # usage: gs
```

Other `git` configuration commands:

```bash
# show current configuration
$ git config --list
# fast-forward (instead of rebase) when pulling code
$ git config --global pull.ff only
```

If you need to manage git settings by folder, read about how to use
[Conditional Includes](https://stackoverflow.com/a/43654115/2675670)
from within your `~/.gitconfig` file.
