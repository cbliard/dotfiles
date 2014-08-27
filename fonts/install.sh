#!/bin/bash

# Adapted from http://powerline.readthedocs.org/en/latest/installation/linux.html

script_dir=$(dirname $0)

mkdir -p $HOME/.fonts
cp -f "$script_dir"/*.otf $HOME/.fonts
fc-cache -vf ~/.fonts

mkdir -p $HOME/.config/fontconfig/conf.d
cp -f "$script_dir"/10-powerline-symbols.conf $HOME/.config/fontconfig/conf.d

