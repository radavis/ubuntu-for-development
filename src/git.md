## git

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

Add a few useful aliases to `~/.alias`.

```bash
alias ga="git add" # usage: ga filename
alias gc="git commit -m" # usage: gc "commit message"
alias gs="git status" # usage: gs
alias gr="git reset"
alias grh="git reset --hard HEAD"
```

Other `git` configuration commands:

```bash
# show current configuration
$ git config --list
# configure pager to exit if output is less than one screen
$ git config --global core.pager "less -FR"
# create a global .gitignore using gitignore.io
$ curl -L https://www.toptal.com/developers/gitignore/api/ruby,node,linux -o ~/.gitignore
$ git config --global core.excludesfile ~/.gitignore
```

If you need to manage git settings by folder, read about how to use
[Conditional Includes](https://stackoverflow.com/a/43654115/2675670)
from within your `~/.gitconfig` file.
