# ignore gitignored files when using fzf
# https://github.com/junegunn/fzf/issues/1625
if type ag &> /dev/null; then
  export FZF_DEFAULT_COMMAND='ag -p ~/.gitignore -g ""'
fi

# ef - convience function for finding, creating, and editing files
editfile() {
  local bold=$'\e[1m'
  local end=$'\e[0m'

  if [[ "$#" -eq 0 ]]; then # zero arguments, prompt w/ fzf
    local filename=$(fzf)
    [[ -z "$filename" ]] && return -1 # quit when no file selected
  else # filename provided via arguments
    local filename="$@"
  fi

  if [[ ! -f "$filename" ]]; then # file does not exist, prompt to create
    printf "Create and edit file %s? [Y/n]: " "${bold}${filename}${end}"
    read -n 1 -r response
    printf "\n"
    [[ "$response" =~ ^[Yy]$ ]] && touch "$filename"
  fi

  if [[ -z $EDITOR ]]; then
    printf "Please set the ${bold}\$EDITOR${end} variable and try again.\n"
    return -1
  fi

  if [[ -f "$filename" ]]; then # file exists, open with $EDITOR
    "${EDITOR}" "$filename"
    printf "Exited editing %s\n" "${bold}${filename}${end}"
  fi
}
alias ef="editfile"
