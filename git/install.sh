#!/bin/bash

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
