#!/bin/bash

pip2 install powerline-shell

if [ -d /usr/local/lib/python2.7/site-packages/powerline_shell/segments ]
then
  cp database_url.py /usr/local/lib/python2.7/site-packages/powerline_shell/segments/database_url.py
fi
