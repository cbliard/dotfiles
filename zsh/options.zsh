# select words as in bash (for Meta-backspace and Meta-d)
autoload -U select-word-style
select-word-style bash

# can use '#' in interactive shell for comments
setopt interactivecomments

# autocd directories without need of 'cd' command
setopt autocd

# use extended globbing
setopt extendedglob

# If a pattern for filename generation has no matches, print an error,
# instead of leaving it unchanged
setopt nomatch notify

# Report the status of background jobs immediately, rather than waiting
# until just before printing a prompt
setopt notify

# no beep
unsetopt beep

# no autocorrect
unsetopt correct