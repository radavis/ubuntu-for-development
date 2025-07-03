## aliases

An alias allows you to define a shortcut for longer commands.

```bash
# ~/.alias
alias c="clear"  # or ctrl+l
alias dc="docker compose"
alias push="git push origin HEAD"
alias t="tree"
alias x="exit"  # or ctrl+d
```

Load these aliases automatically when your terminal loads.

```bash
# ~/.bashrc
source "$HOME/.alias"
```

After making changes to `~/.alias` it is necessary to load the updated
settings.

```bash
$ . ~/.bashrc
# or
$ source ~/.bashrc
```

Or, restart your terminal.
