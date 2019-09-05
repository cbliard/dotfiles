#!/bin/bash

lib_dir="$(cd "$(dirname $0)"/../lib && pwd)"
source "$lib_dir/support.sh"

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if is_linux
then
  install_linux_packages terminator

  mkdir -p "$HOME/.config/terminator/plugins"
  cp "$SCRIPT_DIR/editor_plugin.py" "$HOME/.config/terminator/plugins"

  PYTHONPATH=/usr/share/terminator python "$SCRIPT_DIR/configure_terminator.py"
fi
