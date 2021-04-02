# fzf

A command-line fuzzy finder.

```bash
$ nano `fzf`
```

```bash
# ~/.bashrc

# ignore gitignored files when using fzf
# https://github.com/junegunn/fzf/issues/1625
if type ag &> /dev/null; then
  export FZF_DEFAULT_COMMAND='ag -p ~/.gitignore -g ""'
fi
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files --hidden'
fi
```

## nanoo

Combine `nano` and `fzf` to easily find and edit files.

```bash
# ~/.bashrc

nanoo() {
  local filename=$(fzf)
  [[ -f "$filename" ]] && nano "$filename"
  local bold=$'\e[1m'
  local end=$'\e[0m'
  printf "Exited editing %s\n" "${bold}${filename}${end}"
}
```
