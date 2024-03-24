#/bin/sh
FT_USER = "daemon"
groups $FT_USER | tr -d '\n' | sed 's/ /,/g' | sed 's/ ,$//' | tr -d '\n'
