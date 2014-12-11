# add alias if json_pp installed
if hash -v json_pp &> /dev/null
then
  alias -g J='| json_pp'
fi
