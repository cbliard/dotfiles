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

# misc options
config['word_chars'] = '-A-Za-z0-9,./?%&_~'
config['scrollback_lines'] = 500000
config['scroll_on_output'] = False
config['use_system_font'] = False
config['font'] = 'Ubuntu Mono 9'

config.save()
