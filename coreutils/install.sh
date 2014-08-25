#!/bin/bash

packages=()

install_packages() {
  for package in $* ; do
    if ! dpkg -s $package &> /dev/null ; then
      packages+=($package)
    fi
  done
  if [ ${#packages[@]} -gt 0 ] ; then
    sudo apt-get install ${packages[@]}
  fi
}

install_packages ack-grep colordiff curl terminator vim zsh

