# add alias if json_pp installed
if hash -v json_pp 2> /dev/null
then
  alias -g J='| json_pp'
fi
