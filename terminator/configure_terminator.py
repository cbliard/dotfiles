#!/usr/bin/env python3
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
config['scrollback_infinite'] = True
config['scrollback_lines'] = 500000
config['scroll_on_output'] = False
config['use_system_font'] = False
config['font'] = 'Meslo LG S for Powerline 9'

# editor plugin configuration
if not 'EditorPlugin' in config['enabled_plugins']:
    config['enabled_plugins'].insert(0, 'EditorPlugin')
config.plugin_set('EditorPlugin', 'command', r'code --goto {filepath}:{line}:{column}')
config.plugin_set('EditorPlugin', 'groups', 'file line column')
# previous regexp was config.plugin_set('EditorPlugin', 'match', r'([^ \t\n\r\f\v:]+?):([0-9]+):?([0-9]+)?')
# new one is /(?:[ab]\/)?((?:[^'"\[ \t\n\r\f\v:]+[\/\.])+[a-zA-Z_]+)(?::([0-9]+))?(?::([0-9]+))?/gm
# new one is /(?:[ab]\/)?((?:[~\/.a-zA-Z0-9_\-^]+[\/\.])+[a-zA-Z_-]+)(?::([0-9]+))?(?::([0-9]+))?/gm
# able to match files without line number, and the a//some/file/path displayed in git diffs
config.plugin_set('EditorPlugin', 'match', r'(?:[ab]\/)?((?:[~\/.a-zA-Z0-9_\-^]+[\/\.])+[a-zA-Z0-9_-]+)(?::([0-9]+))?(?::([0-9]+))?')

config.save()
