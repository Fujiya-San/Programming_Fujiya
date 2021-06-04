(echo ./ \(`pwd`/\) ;
   find . -type d -name '.git' -prune -or -type d -exec echo {}\.\~ \; -or -type f -print |
   sort |
   sed '1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/|  /g' |
   sed 's/\.\~$/\//')  