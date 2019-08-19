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
    curl -SsL -o "$bin_dir/direnv" https://github.com/direnv/direnv/releases/download/v2.20.0/direnv.linux-amd64
    if file "$bin_dir/direnv" | grep -q ELF
    then
      chmod +x "$bin_dir/direnv"
    else
      mv "$bin_dir/direnv" "$bin_dir/direnv.bad"
      echo "ERROR: download of direnv binary failed. Has been downloaded to $bin_dir/direnv.bad so you can check what is wrong"
    fi
  fi
fi
true
