lib_dir="$(cd "$(dirname $0)"/../lib && pwd)"
source "$lib_dir/support.sh"

alias mv='nocorrect mv'       # no spelling correction on mv
alias cp='nocorrect cp'       # no spelling correction on cp
alias mkdir='nocorrect mkdir' # no spelling correction on mkdir
alias grep='grep --color=auto'
alias less='less --line-numbers --ignore-case --RAW-CONTROL-CHARS --jump-target=.5'
# use colors for ls
if (( ${+commands[dircolors]} )) then
  eval $(dircolors "$lib_dir/../coreutils/LS_COLORS")
fi
if (( ${+commands[gls]} ))
then
  eval $(gdircolors "$lib_dir/../coreutils/LS_COLORS")
  alias ls='gls --color=auto -F'
else
  eval $(dircolors "$lib_dir/../coreutils/LS_COLORS")
  alias ls='ls --color=auto -F'
fi
alias ll='ls -l'
alias rg='rg --vimgrep'
alias pandoct='pandoc -t plain'
alias wip="ip a | grep --perl-regexp --color=never --only-matching '192.*(?=/24)'"
if (( ${+commands[fdfind]} ))
then
  alias fd=fdfind
fi
if (( ${+commands[ghead]} ))
then
  # prefer gnu variants of tail and head
  # `ghead file.txt -n 10` works while macos `head file.txt -n 10` does not (should be `head -n 10 file.txt`)
  alias head='ghead'
  alias tail='gtail'
fi
if (( ${+commands[grm]} ))
then
  # prefer gnu variant of rm
  # `grm somedir/ -rf` works while macos `rm somedir/ -rf` does not (should be `rm -rf somedir/`)
  alias rm='/opt/homebrew/bin/grm'
fi
if (( ${+commands[prettyping]} ))
then
  alias ping='prettyping --nolegend'
fi

alias -g C='| cat'
alias -g G='| egrep'
alias -g GI='| egrep -i'
alias -g B64='| base64 -d'
alias -g H='| head'
alias -g T='| tail'
alias -g L='| less'
alias -g NO="> /dev/null"
alias -g NE="2> /dev/null"
alias -g NS='| sort -n'
alias -g S='| sort'
alias -g X='| xargs --no-run-if-empty'
alias -g A1='| awk '\''{print $1}'\'
alias -g A2='| awk '\''{print $2}'\'
alias -g A3='| awk '\''{print $3}'\'
alias -g NC='| sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"'  # remove color
alias -g NC='| sed -r "s/(\\\u001b|\x1B)\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"'  # remove color
