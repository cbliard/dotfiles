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
bundles[vim-colors-solarized]='git://github.com/altercation/vim-colors-solarized.git'

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

