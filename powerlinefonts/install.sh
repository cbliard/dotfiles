#!/bin/bash

# Adapted from http://powerline.readthedocs.org/en/latest/installation/linux.html

mkdir -p $HOME/.fonts
if ! [ -e "$HOME/.fonts/PowerlineSymbols.otf" ] ; then
  wget -O "$HOME/.fonts/PowerlineSymbols.otf" https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
  sudo fc-cache -vf ~/.fonts
fi

mkdir -p $HOME/.config/fontconfig/conf.d
if ! [ -e "$HOME/.config/fontconfig/conf.d/10-powerline-symbols.conf" ] ; then
  wget -O "$HOME/.config/fontconfig/conf.d/10-powerline-symbols.conf" https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
fi

