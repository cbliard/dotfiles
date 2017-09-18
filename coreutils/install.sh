#!/bin/bash

lib_dir="$(cd "$(dirname $0)"/../lib && pwd)"
source "$lib_dir/support.sh"

install_linux_packages silversearcher-ag colordiff curl terminator vim zsh
install_osx_packages ag curl bash zsh vim coreutils
