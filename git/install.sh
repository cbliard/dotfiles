#!/bin/bash

git config --global user.name "Christophe Bliard"
git config --global color.branch auto
git config --global color.diff auto
git config --global color.status auto
git config --global color.ui true
git config --global core.editor vim
git config --global core.excludesfile $HOME/.gitignore
git config --global fetch.prune true
git config --global log.abbrevCommit true
git config --global pull.rebase true
git config --global push.default simple

# Three ways diff, so we have the common text
git config --global merge.conflict diff3
