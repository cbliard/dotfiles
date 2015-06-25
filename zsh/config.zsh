if [[ -n $SSH_CONNECTION ]]; then
  export PS1='%m:%3~$(git_info_for_prompt)%# '
else
  export PS1='%3~$(git_info_for_prompt)%# '
fi

export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

fpath=($DOTFILES/functions $fpath)

autoload -U $DOTFILES/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt COMPLETE_IN_WORD

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

setopt interactivecomments  # can use '#' in interactive shell for comments
setopt autocd  # autocd directories without need of 'cd' command
setopt extendedglob  # use extended globbing
setopt nomatch  # error if filename pattern has no matches
setopt notify  # report status of background jobs immediately

unsetopt beep # no beep
unsetopt histreduceblanks # buggy for me, see thread http://www.zsh.org/mla/users/2013/msg00456.html

# select words as in bash (for Meta-backspace)
autoload -U select-word-style
select-word-style bash

zle -N newtab

# Emacs key bindings by default
bindkey -e

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char
bindkey '^U' backward-kill-line

bindkey ";5C" forward-word  # Ctrl-left
bindkey ";5D" backward-word  # Ctrl-right
