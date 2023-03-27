#! /usr/bin/env bash
languages=`echo "java javascript typescript python go c c++ c#" | tr ' ' '\n'`
coreutils=`echo "xargs find mv grep sed awk tmux man tar" | tr ' ' '\n'`

selected=`printf "$languages\n$coreutils" | fzf`

read -p "query: " query


if printf $languages | grep -qs $selected; then
  curl cht.sh/$selected/`echo $query | tr ' ' '+'`
else
  curl cht.sh/$selected~$query
fi
