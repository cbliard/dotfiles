# Change some aliases from oh-my-zsh git plugin

# Return if not sourced by oh-my-zsh
[ -n "$ZSH_CUSTOM" ] || return 0

# gdc alias was renamed as gdca, but I prefer the shorter version, even if
# it conflicts with GCC D compiler.
# See https://github.com/robbyrussell/oh-my-zsh/pull/3977
alias gdc='git diff --cached'

# Change git pull and gitpush
unalias gl &> /dev/null # I often intend to do git log, but does git pull
unalias gp &> /dev/null
alias gph='git push'
alias gpl='git pull'
alias gl='git log'

# The rest of my fun git aliases
alias gaa='git add --all'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{\$1=\$2=\"\"; print \$0}' | \
           perl -pe 's/^[ \t]*//' | sed 's/ /\\\\ /g' | xargs git rm"
# git log diff from last pull
alias gld='git log --color --reverse --patch --stat --abbrev-commit --date=relative --decorate ORIG_HEAD.. | less --jump-target=0 "+/^commit.*$"'
