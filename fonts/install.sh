#!/bin/bash

# Adapted from http://powerline.readthedocs.org/en/latest/installation/linux.html

mkdir -p $HOME/.fonts
cp -f *.otf $HOME/.fonts
fc-cache -vf ~/.fonts

mkdir -p $HOME/.config/fontconfig/conf.d
cp -f 10-powerline-symbols.conf $HOME/.config/fontconfig/conf.d

