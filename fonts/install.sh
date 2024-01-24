#!/bin/bash

# Adapted from http://powerline.readthedocs.org/en/latest/installation/linux.html

lib_dir="$(cd "$(dirname $0)"/../lib && pwd)"
source "$lib_dir/support.sh"

if is_osx ; then
  brew tap homebrew/cask-fonts
  install_osx_packages font-hack-nerd-font font-meslo-lg-nerd-font font-monaspace-nerd-font
else
  # TODO: install some Nerd fonts instead of Powerline fonts
  # https://www.nerdfonts.com/font-downloads
  if ! [ -d "$HOME/code/github/fonts" ]
  then
    echo "Installing Powerline fonts."
    git clone https://github.com/powerline/fonts.git --depth=1 "$HOME/code/github/fonts"
    $HOME/code/github/fonts/install.sh
  fi
fi
