#!/bin/bash

# install pathogen
if ! [ -e $HOME/.vim/autoload/pathogen.vim ]
then
  echo "Vim: installing pathogen autoloading"
  mkdir -p $HOME/.vim/autoload
  curl -SLso ~/.vim/autoload/pathogen.vim \
      https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
fi

# install bundles
bundles=()
# Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
bundles+=('https://github.com/ctrlpvim/ctrlp.vim.git')
# Tree explorer plugin
bundles+=('https://github.com/scrooloose/nerdtree.git')
# Easily search for, substitute, and abbreviate multiple variants of a word
# Subvertion: :S/blog{,s}/post{,s}/g => like :s but smarter
# Coercion: crs => snake_case; crc => camelCase; crm => MixedCase; cru => UPPER_CASE
bundles+=('https://github.com/tpope/vim-abolish.git')
# Lean & mean status/tabline for vim that's light as air
bundles+=('https://github.com/vim-airline/vim-airline')
# A collection of themes for vim-airline
bundles+=('https://github.com/vim-airline/vim-airline-themes')
# Vim motions on speed!
bundles+=('https://github.com/Lokaltog/vim-easymotion')
# Awesome git wrapper. :G<command>
bundles+=('https://github.com/tpope/vim-fugitive.git')
# Shows a git diff in the gutter (sign column) and stages/reverts hunks
bundles+=('https://github.com/airblade/vim-gitgutter.git')
# Enable repeating supported plugin maps with "."
bundles+=('https://github.com/tpope/vim-repeat.git')
# Defaults everyone can agree on
bundles+=('https://github.com/tpope/vim-sensible.git')
# Heuristically set buffer options
bundles+=('https://github.com/tpope/vim-sleuth.git')
# Quoting/parenthesizing made simple. cs'": change quotes ' to "
bundles+=('https://github.com/tpope/vim-surround.git')

mkdir -p $HOME/.vim/bundle
cd $HOME/.vim/bundle
for bundle in "${bundles[@]}"
do
  name="${bundle##*/}"
  name="${name%%.*}"

  if ! [ -d $bundle ]
  then
    echo "Vim: installing bundle $name from $bundle"
    git clone --quiet $bundle $name
  fi
done
