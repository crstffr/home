# export PS1='athena:\w/`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)/`$ '

export PS1='$(git branch &>/dev/null; if [ $? -eq 0 ]; then \
echo "\[\e[0;32m\][GIT: \[\e[0;31m\]$(basename `pwd`); \[\e[0;33m\]$(git branch | grep ^*|sed s/\*\ //) \
$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; if [ "$?" -eq "0" ]; then \
echo "\[\e[0;32m\]clean"; else \
echo "\[\e[0;31m\]dirty"; fi)\[\e[0;32m\]] \$ "; else \
echo "\[\e[0;31m\][\w]\[\e[m\] \$ "; fi) \[\e[0m\]'

. .bashrc
