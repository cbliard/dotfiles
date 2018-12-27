#!/bin/bash

lib_dir="$(cd "$(dirname $0)"/../lib && pwd)"
source "$lib_dir/support.sh"

install_linux_packages colordiff curl terminator vim zsh python3-pip
install_osx_packages curl bash zsh vim coreutils
