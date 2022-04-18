## fzf

A command-line fuzzy finder.

```bash
$ nano `fzf`
```

Configure `fzf` to ignore `.gitignore`d files

```bash
# ignore gitignored files when using fzf
# https://github.com/junegunn/fzf/issues/1625
if type ag &> /dev/null; then
  export FZF_DEFAULT_COMMAND='ag -p ~/.gitignore -g ""'
fi
```
