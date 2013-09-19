# Directories options

setopt AUTO_CD # Try to cd if the command can't be executed
setopt AUTO_PUSHD # Make cd push the old directory onto the directory stack.
setopt CHASE_LINKS # Resolve links and dots when cd
setopt PUSHD_IGNORE_DUPS # Ignore duplicates in pushd
setopt PUSHD_MINUS # invert cd - and cd +

cd () {
  if   [[ "x$*" == "x..." ]]; then
    cd ../..
  elif [[ "x$*" == "x...." ]]; then
    cd ../../..
  elif [[ "x$*" == "x....." ]]; then
    cd ../../../..
  elif [[ "x$*" == "x......" ]]; then
    cd ../../../../..
  elif [ -d ~/.autoenv ]; then
    source ~/.autoenv/activate.sh
    autoenv_cd "$@"
  else
    builtin cd "$@"
  fi
}
