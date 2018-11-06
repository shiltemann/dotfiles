# RVM configuration
sandbox_init_rvm() {
  if [ -f /usr/share/rvm/scripts/rvm ]; then
     source /usr/share/rvm/scripts/rvm
  fi
}
sandbox_hook rvm rvm
sandbox_hook rvm eyaml
