# stolen from http://binfalse.de/2012/09/howto-debug-bash-scripts/
# customize trace script bash prompt
export PS4='+${BASH_SOURCE}:${LINENO}:${FUNCNAME:+$FUNCNAME[0]:} '
