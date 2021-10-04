# terminal

`gnome-terminal` is the default terminal application in Ubuntu.

## Install `oh-my-bash`

Follow the
[instructions](https://github.com/ohmybash/oh-my-bash#basic-installation)
in the `README` file.

```
# ~/.bashrc
OSH_THEME="powerline"
```

## Create a keyboard shortcut to open `gnome-terminal` full-screen

1. Press Super, type 'keyboard' or 'keyboard shortcuts', press Enter
2. Add a new Custom Shortcut.
  - Title: "Full screen terminal"
  - Command: `/usr/bin/gnome-terminal --full-screen`
3. Assign a shortcut, such as `Ctrl+Alt+t`

[[source](https://askubuntu.com/questions/142487/how-to-start-terminal-in-full-screen)]
