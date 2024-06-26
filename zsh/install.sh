#!/bin/bash

if [ ! -d "$HOME/.oh-my-zsh" ]
then
  git clone git@github.com:robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh"
fi

if [ ! -d "$DOTFILES/zsh/oh-my-zsh-custom/plugins/zsh-completions" ]
then
  git clone https://github.com/zsh-users/zsh-completions "$DOTFILES/zsh/oh-my-zsh-custom/plugins/zsh-completions"
fi

current_dir="$(cd "$(dirname $0)" && pwd)"
mkdir -p ~/bin
cp "$current_dir/trim_comments" ~/bin/trim_comments
