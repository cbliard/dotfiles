lib_dir="$(cd "$(dirname $0)"/../lib && pwd)"
source "$lib_dir/support.sh"

alias mv='nocorrect mv'       # no spelling correction on mv
alias cp='nocorrect cp'       # no spelling correction on cp
alias mkdir='nocorrect mkdir' # no spelling correction on mkdir
alias grep='grep --color=auto'
alias less='less --line-numbers --ignore-case --RAW-CONTROL-CHARS --jump-target=.5'
# use colors for ls
eval $(dircolors "$lib_dir/../coreutils/LS_COLORS")
if (( ${+commands[gls]} ))
then
  alias ls='gls --color=auto -F'
else
  alias ls='ls --color=auto -F'
fi
alias ll='ls -l'
alias pandoct='pandoc -t plain'
alias wip="ip a | grep --perl-regexp --color=never --only-matching '192.*(?=/24)'"
if (( ${+commands[fdfind]} ))
then
  alias fd=fdfind
fi

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
