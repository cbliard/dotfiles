if [ ! -d "$HOME/.zsh-autosuggestions" ]
then
  git clone https://github.com/zsh-users/zsh-autosuggestions "$HOME/.zsh-autosuggestions"
fi

ZSH_AUTOSUGGEST_STRATEGY=history
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=50

source "$HOME/.zsh-autosuggestions/zsh-autosuggestions.zsh"
