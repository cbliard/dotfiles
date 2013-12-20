# unified diff by default, excluding .svn directories, and use colordiff if available
if [ -x "`which colordiff`" ] 
then
  alias diff='colordiff -u -x .svn'
else
  alias diff='diff -u -x .svn'
fi
