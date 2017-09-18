lib_dir="$(cd "$(dirname $0)"/../lib && pwd)"
source "$lib_dir/support.sh"

if is_osx
then
  eval `gdircolors --bourne-shell $DOTFILES/solarized/dircolors.ansi-dark`
else
  eval `dircolors --bourne-shell $DOTFILES/solarized/dircolors.ansi-dark`
fi
