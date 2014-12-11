# Change some aliases from oh-my-zsh git plugin

# Return if not sourced by oh-my-zsh
[ -n "$ZSH_CUSTOM" ] || return 0

# Change git pull and gitpush
unalias gl &> /dev/null # I often intend to do git log, but does git pull
compdef -d gl
unalias gp &> /dev/null
compdef -d gp
alias gph='git push'
compdef _git gph=git-push
alias gpl='git pull'
compdef _git gpl=git-pull
alias gl='git log'
compdef _git gl=git-log

# The rest of my fun git aliases
alias gaa='git add --all'
compdef _git gaa=git-add
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
compdef _git gs=git-status
alias grm="git status | grep deleted | awk '{\$1=\$2=\"\"; print \$0}' | \
           perl -pe 's/^[ \t]*//' | sed 's/ /\\\\ /g' | xargs git rm"
# git log diff from last pull
alias gld='git log --color --reverse --patch --stat --abbrev-commit --date=relative --decorate ORIG_HEAD.. | less --jump-target=0 "+/^commit.*$"'
