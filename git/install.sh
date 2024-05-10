#!/bin/bash

install_osx_packages diff-so-fancy

git config --global user.name "Christophe Bliard"
git config --global color.branch auto
git config --global color.diff auto
git config --global color.status auto
git config --global color.ui true
git config --global core.editor "code --wait"
git config --global core.excludesfile $HOME/.gitignore
git config --global fetch.prune true
git config --global log.abbrevCommit true
git config --global pull.rebase true
git config --global push.default simple

# Added after seeing "So you think you know git" FOSDEM 2024 talk
# (https://www.youtube.com/watch?v=aolI_Rz0ZqY)
git config --global rerere.enabled true
git config --global column.ui auto
git config --global branch.sort -committerdate

# Added after seeing "So you think you know git part 2" DevWorld 2024 talk
# (https://www.youtube.com/watch?v=Md44rcw13k4)
git config --global rebase.updateRefs true

# Three ways diff, so we have the common text
git config --global merge.conflict diff3

# Recommended default colors for diff-so-fancy
# --------------------------------------------
git config --global color.ui true

git config --global color.diff-highlight.oldNormal    "red bold"
git config --global color.diff-highlight.oldHighlight "white bold 52"
git config --global color.diff-highlight.newNormal    "green bold"
git config --global color.diff-highlight.newHighlight "white bold 22"

git config --global color.diff.meta       "yellow"
git config --global color.diff.frag       "magenta bold"
git config --global color.diff.commit     "yellow bold"
git config --global color.diff.old        "red bold"
git config --global color.diff.new        "green bold"
git config --global color.diff.whitespace "red reverse"

git config --global core.pager "diff-so-fancy | less --tabs=4 -RXg"
git config --global interactive.diffFilter "diff-so-fancy --patch"
