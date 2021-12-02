# sshs: copy and source ~/.aliases when connecting via ssh, remove on disconnect.
#   modified from https://gist.github.com/jonahbron/5549848
sshs() {
  local bashrc_remote="/tmp/bashrc_$USER"
  ssh ${*:1} "cat > $bashrc_remote" < ~/.aliases
  ssh -t ${*:1} "bash --rcfile $bashrc_remote; rm $bashrc_remote"
}
