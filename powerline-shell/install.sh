#!/bin/bash

set -u

lib_dir="$(cd "$(dirname $0)"/../lib && pwd)"
source "$lib_dir/support.sh"

if is_linux
then
  release_name='powerline-go-linux-amd64'
else
  release_name='powerline-go-darwin-amd64'
fi
version='v1.13.0'

mkdir -p $HOME/bin
curl -sSL -o $HOME/bin/powerline-go "https://github.com/justjanne/powerline-go/releases/download/${version}/${release_name}"
chmod +x $HOME/bin/powerline-go
