# aliases

An alias allows you to define a shortcut for longer commands.

```
# ~/.bashrc
alias c="clear"
alias dc="docker-compose"
alias push="git push origin HEAD"
alias t="tree"
alias x="exit"
```

After making changes to `~/.bashrc` it is necessary to load the updated
settings.

```
$ . ~/.bashrc
# or
$ source ~/.bashrc
```

Or, restart your terminal.
