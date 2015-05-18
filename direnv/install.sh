#!/bin/bash

if [ -d "$HOME/Christophe/bin" ]; then
  bin_dir="$HOME/Christophe/bin"
else
  bin_dir="$HOME/bin"
fi

if ! [ -x "$bin_dir/direnv" ]; then
  wget -O "$bin_dir/direnv" https://github.com/zimbatm/direnv/releases/download/v2.6.0/direnv.linux-amd64
  chmod +x "$bin_dir/direnv"
fi
