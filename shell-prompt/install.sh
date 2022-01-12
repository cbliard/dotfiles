#!/usr/bin/env bash

if [ ! -d "$HOME/.powerlevel10k" ];
then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$HOME/.powerlevel10k"
fi
