#!/bin/bash

# install pathogen
if ! [ -e $HOME/.vim/autoload/pathogen.vim ]; then
  echo "Vim: installing pathogen autoloading"
  mkdir -p $HOME/.vim/autoload
  curl -SLso ~/.vim/autoload/pathogen.vim \
      https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
fi

# install bundles
declare -A bundles
# Tree explorer plugin
bundles[nerdtree]='https://github.com/scrooloose/nerdtree.git'
# Easily search for, substitute, and abbreviate multiple variants of a word
# Subvertion: :S/blog{,s}/post{,s}/g => like :s but smarter
# Coercion: crs => snake_case; crc => camelCase; crm => MixedCase; cru => UPPER_CASE
bundles[vim-abolish]='https://github.com/tpope/vim-abolish.git'
# Lean & mean status/tabline for vim that's light as air
bundles[vim-airline]='https://github.com/bling/vim-airline'
# Solarized color theme
bundles[vim-colors-solarized]='https://github.com/altercation/vim-colors-solarized.git'
# Awesome git wrapper. :G<command>
bundles[vim-fugitive]='https://github.com/tpope/vim-fugitive.git'
# Shows a git diff in the gutter (sign column) and stages/reverts hunks
bundles[vim-gitgutter]='https://github.com/airblade/vim-gitgutter.git'
# Enable repeating supported plugin maps with "."
bundles[vim-repeat]='https://github.com/tpope/vim-repeat.git'
# Defaults everyone can agree on
bundles[vim-sensible]='https://github.com/tpope/vim-sensible.git'
# Heuristically set buffer options
bundles[vim-sleuth]='https://github.com/tpope/vim-sleuth.git'
# Quoting/parenthesizing made simple. cs'": change quotes ' to "
bundles[vim-surround]='https://github.com/tpope/vim-surround.git'

mkdir -p $HOME/.vim/bundle
cd $HOME/.vim/bundle
for bundle in "${!bundles[@]}"
do
  if ! [ -d $bundle ]
  then
    echo "Vim: installing bundle $bundle from ${bundles[$bundle]}"
    git clone --quiet ${bundles[$bundle]} $bundle
  fi
done

