## tmux

Install tmux

```bash
$ sudo apt install tmux
```

### Configuration

[import](./tmux.conf)

### Auto-load

Auto-load tmux when loading the terminal.
[[source](https://unix.stackexchange.com/questions/43601/how-can-i-set-my-default-shell-to-start-up-tmux)]

```bash
# autoload tmux
# if shell is interactive, and TMUX var is set...
if [[ $- == *i* ]] && [[ -z "${TMUX}" ]]; then
  tmux attach || exec tmux new-session && exit;
fi
```
