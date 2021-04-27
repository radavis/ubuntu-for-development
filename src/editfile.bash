# ignore gitignored files when using fzf
# https://github.com/junegunn/fzf/issues/1625
if type ag &> /dev/null; then
  export FZF_DEFAULT_COMMAND='ag -p ~/.gitignore -g ""'
fi
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files --hidden'
fi

# convience function for finding, creating, and editing files
editfile() {
  local bold=$'\e[1m'
  local end=$'\e[0m'

  if [[ "$#" -eq 0 ]]; then # zero arguments, prompt w/ fzf
    local filename=$(fzf)
  else
    local filename="$@"
  fi

  if [[ ! -f "$filename" ]]; then # filename does not exist, prompt to create
    printf "Create and edit file %s? [Y/n]: " "${bold}${filename}${end}"
    read -n 1 -r response
    printf "\n"
    if [[ "$response" =~ ^[Yy]$ ]]; then
      touch "$filename"
    fi
  fi

  if [[ -f "$filename" ]]; then # filename exists, open with $EDITOR
    "${EDITOR}" "$filename"
    printf "Exited editing %s\n" "${bold}${filename}${end}"
  fi
}
alias ef="editfile"
