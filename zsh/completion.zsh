# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# adapted from http://stackoverflow.com/questions/8300687/zsh-color-partial-tab-completions
# color partial tab completion to highlight the next character
zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==00=36}:${(s.:.)LS_COLORS}")';

# Taken from https://github.com/miohtama/ztanesh/blob/master/zsh-scripts/rc/90-keybindings
# Select directory and open a ZSH tab completer
# http://zsh.sourceforge.net/Guide/zshguide06.html#l149
# http://www.refining-linux.org/archives/40/ZSH-Gem-5-Menu-selection/
# http://www.cs.elte.hu/zsh-manual/zsh_14.html#SEC52
#
# - space: advance to the directory and open it for the completion
# - backspace: undo the selection

zmodload zsh/complist
bindkey -M menuselect ' ' accept-and-infer-next-history
bindkey -M menuselect '^?' undo

# group completion matches by their type
zstyle ':completion:*:descriptions' format '%B%U%d%b%u'
zstyle ':completion:*' group-name ''

# Alt-I will toggle bin/
function vbe-add-bin-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER == bin/* ]]; then
        LBUFFER="${LBUFFER#bin/}"
    else
        LBUFFER="bin/$LBUFFER"
    fi
}
zle -N vbe-add-bin-command-line
bindkey "\ei" vbe-add-bin-command-line

# Alt-E will toggle bundle exec
function vbe-bundle-exec-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER == bundle\ exec\ * ]]; then
        LBUFFER="${LBUFFER#bundle exec }"
    else
        LBUFFER="bundle exec $LBUFFER"
    fi
}
zle -N vbe-bundle-exec-command-line
bindkey "\ee" vbe-bundle-exec-command-line

# Alt-S will toggle sudo
function vbe-sudo-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER == sudo\ * ]]; then
        LBUFFER="${LBUFFER#sudo }"
    else
        LBUFFER="sudo $LBUFFER"
    fi
}
zle -N vbe-sudo-command-line
bindkey "\es" vbe-sudo-command-line

# Expand ... to ../..
function vbe-expand-dot-to-parent-directory-path() {
  case $LBUFFER in
    (./..|* ./..) LBUFFER+='.' ;; # In Go: "go list ./..."
    (..|*[ /=]..) LBUFFER+='/..' ;;
    (*) LBUFFER+='.' ;;
  esac
}
zle -N vbe-expand-dot-to-parent-directory-path
bindkey "." vbe-expand-dot-to-parent-directory-path
bindkey -M isearch "." self-insert
