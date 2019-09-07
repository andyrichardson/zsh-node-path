#!/bin/zsh

CURRENT=""

function chpwd {
  if [[ -z $CURRENT ]]; then
    CLEAN_PATH="$PATH"
  else
    CLEAN_PATH=$(echo $PATH | sed -E -e "s|$CURRENT||")
  fi
  CURRENT="$(npm bin):"
  export PATH="$CURRENT$CLEAN_PATH"
}

chpwd
