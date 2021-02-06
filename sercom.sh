#!/usr/bin/bash
#read commandToFind stringToFind
touch /tmp/myCommand.txt
vare=/tmp/myCommand.txt
# $! = command $2 string
apropos $1 | awk '{print $1}' > $vare
#vare=my.txt
sed -e 's/^/man /' -i $vare
#vare=my.txt
while read line
do
  $line | grep -A 2 -B 2 -wn $2 && grep -wn $3 | echo "$(tput setaf 4)$(tput setab 6)$line$(tput sgr0)"
done < $vare

  
