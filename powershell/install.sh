#!/bin/bash

pip2 install powerline-shell

for p in \
  "/usr/local/lib/python2.7/site-packages/powerline_shell/segments" \
  "$HOME/.local/lib/python2.7/site-packages/powerline_shell/segments"
do
  if [ -d "$p" -a -w "$p" ]
  then
    cp database_url.py "$p"
  fi
done
