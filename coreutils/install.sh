#!/bin/bash

lib_dir="$(cd "$(dirname $0)"/../lib && pwd)"
source "$lib_dir/support.sh"

install_linux_packages colordiff curl fd-find fzf terminator vim ripgrep zsh python3-pip
install_osx_packages coreutils curl bash fzf ripgrep vim zsh
