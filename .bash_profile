export PS1='athena:\w/`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)/`$ '

. .bashrc
