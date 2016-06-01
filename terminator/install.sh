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
  true
}

install_packages terminator

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

PYTHONPATH=/usr/share/terminator python "$SCRIPT_DIR/configure_terminator.py"

