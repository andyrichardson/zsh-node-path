#!/bin/zsh

CURRENT=""

function chpwd {
  CLEAN_PATH=$PATH
  if [[ -z "$CURRENT" ]]; then
    CLEAN_PATH=$(echo $PATH | sed -E -e "s|$CURRENT||")
  fi
  CURRENT="$(npm bin):"
  echo "$CURRENT$PATH"
}

chpwd
