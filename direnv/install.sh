#!/bin/bash

lib_dir="$(cd "$(dirname $0)"/../lib && pwd)"
source "$lib_dir/support.sh"

if [ -d "$HOME/Christophe/bin" ]
then
  bin_dir="$HOME/Christophe/bin"
else
  bin_dir="$HOME/bin"
fi

mkdir -p "$bin_dir"

if ! type direnv &> /dev/null
then
  if is_osx
  then
    install_osx_packages direnv
  else
    curl -SsL -o "$bin_dir/direnv" https://github.com/zimbatm/direnv/releases/download/v2.6.0/direnv.linux-amd64
    chmod +x "$bin_dir/direnv"
  fi
fi
true
