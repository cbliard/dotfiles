export PATH="/usr/local/bin:/usr/local/sbin:$DOTFILES/bin:$PATH"
if [ -d "$HOME/Christophe/bin" ]; then
  export PATH="$HOME/Christophe/bin:$PATH"
elif [ -d "$HOME/bin" ]; then
  export PATH="$HOME/bin:$PATH"
fi

export MANPATH="/usr/local/man:/usr/local/git/man:$MANPATH"
