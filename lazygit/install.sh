#!/bin/bash

lib_dir="$(cd "$(dirname $0)"/../lib && pwd)"
source "$lib_dir/support.sh"

install_osx_packages lazygit
