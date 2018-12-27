#!/bin/bash

set -u

pip3 install powerline-shell

for p in \
  "/usr/local/lib/python2.7/site-packages/powerline_shell/segments" \
  "/usr/local/lib/python3.6/site-packages/powerline_shell/segments" \
  "$HOME/.local/lib/python2.7/site-packages/powerline_shell/segments" \
  "$HOME/.local/lib/python3.6/site-packages/powerline_shell/segments"
do
  if [ -d "$p" -a -w "$p" ]
  then
    cp --verbose database_url.py "$p"
    echo "database_url segment copied!"
    copied=1
  fi
done

if [ -z "$copied" ]
then
  echo "WARNING! powerline-shell is not fully installed."
  echo "Could not copy database_url.py segment to powerline dir."
fi
