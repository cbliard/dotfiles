alias mv='nocorrect mv'       # no spelling correction on mv
alias cp='nocorrect cp'       # no spelling correction on cp
alias mkdir='nocorrect mkdir' # no spelling correction on mkdir
alias grep='grep --color=auto'
alias less='less --line-numbers --ignore-case --RAW-CONTROL-CHARS --jump-target=.5'
alias ack='ack-grep'
# use solarized colors for silver-searcher (ag)
alias a='/usr/bin/ag --color-line-number "0;32" --color-match "46" --color-path "0;35"'
alias ls='ls --color'
alias ll='ls -l'

alias -g G='| egrep'
alias -g L='| less'
alias -g NE="2> /dev/null"
alias -g NS='| sort -n'
alias -g S='| sort'
alias -g X='| xargs'
