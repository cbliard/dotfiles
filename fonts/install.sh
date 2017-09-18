#!/bin/bash

# Adapted from http://powerline.readthedocs.org/en/latest/installation/linux.html

script_dir=$(dirname $0)

if ! [ -d "$HOME/code/github/fonts" ]
then
  echo "Installing Powerline fonts."
  git clone https://github.com/powerline/fonts.git --depth=1 "$HOME/code/github/fonts"
  $HOME/code/github/fonts/install.sh
fi
