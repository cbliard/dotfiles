#!/bin/bash

lib_dir="$(cd "$(dirname $0)"/../lib && pwd)"
source "$lib_dir/support.sh"

if is_linux
then
  install_linux_packages terminator

  SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

  PYTHONPATH=/usr/share/terminator python "$SCRIPT_DIR/configure_terminator.py"
fi
