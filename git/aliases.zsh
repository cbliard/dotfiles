# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

alias gsta='git stash push'
alias gdb='git branch --merged | egrep -v "(^\*|master)" | xargs git branch -d'

gt () {
  TOTAL_COL=$(tput cols)
  HASH_COL_END=20
  DATE_COL_END=32
  NAME_COL_END=50
  REFS_COL_SIZ=20
  MESG_COL_END=$(($TOTAL_COL-$REFS_COL_SIZ))
  REFS_COL_END=$TOTAL_COL

  HASH="%>|($HASH_COL_END,trunc)%Cblue%h"
  DATE="%<|($DATE_COL_END,trunc)%C(green)%cr"
  NAME="%<|($NAME_COL_END,trunc)%C(bold blue)%an"
  MESG="%<|($MESG_COL_END,trunc)%Creset%s"
  REFS="%<|($REFS_COL_END,trunc)%C(yellow)%d"

  git log --all --graph --pretty=tformat:"$HASH  $DATE  $NAME  $MESG  $REFS"
}

