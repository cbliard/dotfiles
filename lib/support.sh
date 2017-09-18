# Utility functions

is_osx() {
  [ "$(uname -s)" = "Darwin" ]
}

is_linux() {
  [ "$(uname -s)" != "Darwin" ]
}

install_linux_packages() {
  is_linux || return 0
  packages=()
  for package in $* ; do
    if ! dpkg -s $package &> /dev/null ; then
      packages+=($package)
    fi
  done
  if [ ${#packages[@]} -gt 0 ] ; then
    sudo apt-get install -y --no-install-recommends ${packages[@]}
  fi
  true
}

install_osx_packages() {
  is_osx || return 0
  packages=()
  for package in $* ; do
    if ! brew list $package &> /dev/null ; then
      packages+=($package)
    fi
  done
  if [ ${#packages[@]} -gt 0 ] ; then
    brew install ${packages[@]}
  fi
  true
}
