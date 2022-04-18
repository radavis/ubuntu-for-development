## tmux

Install tmux

```bash
$ sudo apt install tmux
```

Install the self-contained [`gpakosz/.tmux`](https://github.com/gpakosz/.tmux#installation) configuration file.

Change the following settings

```bash
# ~/.tmux.conf.local
tmux_conf_copy_to_os_clipboard=true
set -g mouse on
```

Auto-load tmux when loading the terminal
[[source](https://unix.stackexchange.com/questions/43601/how-can-i-set-my-default-shell-to-start-up-tmux)]

```bash
# autoload tmux - place at EOF (end-of-file) within ~/.bashrc
# if shell is interactive, and TMUX var is set...
if [[ $- == *i* ]] && [[ -z "${TMUX}" ]]; then
  tmux attach || exec tmux new-session && exit;
fi
```
