#!/usr/bin/env bash

if [ ! -d ~/.asdf ];
then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf
  (
    cd ~/.asdf
    git checkout "$(git describe --abbrev=0 --tags)"
  )
fi

asdf plugin add direnv
asdf plugin add nodejs
asdf plugin add ruby

asdf install direnv latest
asdf install nodejs latest
asdf install ruby latest

asdf global direnv latest
asdf global nodejs latest
asdf global ruby latest

# install asdf direnv hook
if ! grep 'asdf direnv hook asdf' "$HOME/.config/direnv/direnvrc" ; then
  mkdir -p "$HOME/.config/direnv/"
  echo 'source "$(asdf direnv hook asdf)"' >> "$HOME/.config/direnv/direnvrc"
fi
