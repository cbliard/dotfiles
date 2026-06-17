# When installing pip packages with --user option, binaries
# are stored in ~/.local/bin. This must be added to PATH

if [ -d "$HOME/.local/bin" ]; then
  export PATH=$PATH:$HOME/.local/bin
fi

:
