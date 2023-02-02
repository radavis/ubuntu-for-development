## aliases

An alias allows you to define a shortcut for longer commands.

```bash
# ~/.bashrc
alias c="clear"  # or ctrl+l
alias dc="docker-compose"
alias push="git push origin HEAD"
alias t="tree"
alias x="exit"
```

After making changes to `~/.bashrc` it is necessary to load the updated
settings.

```bash
$ . ~/.bashrc
# or
$ source ~/.bashrc
```

Or, restart your terminal.
