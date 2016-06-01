#!/usr/bin/env python
import os
import sys
from terminatorlib.config import Config
from terminatorlib.util import get_config_dir

class Opts(object):
    pass

opts = Opts()
opts.config = os.path.join(get_config_dir(), 'config')

config = Config()
config.options_set(opts)

# solarized theme colors
config['palette'] = "#073642:#dc322f:#859900:#b58900:#268bd2:#d33682:#2aa198:#eee8d5:#002b36:#cb4b16:#586e75:#657b83:#839496:#6c71c4:#93a1a1:#fdf6e3"
config['cursor_color'] = '#eee8d5'
config['foreground_color'] = '#eee8d5'
config['background_color'] = '#002b36'

# misc options
config['word_chars'] = '-A-Za-z0-9,./?%&_~'
config['scrollback_lines'] = 500000
config['scroll_on_output'] = False
config['use_system_font'] = False
config['font'] = 'Ubuntu Mono 9'

config.save()
