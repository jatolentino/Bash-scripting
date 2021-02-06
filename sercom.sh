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
  #$line | grep -wn $2 | grep -wn $3 && echo "$(tput setaf 4)$(tput setab 6)$line$(tput sgr0)"
  #$line | grep -A 2 -B 2 -wn $2 && echo "$(tput setaf 4)$(tput setab 6)$line$(tput sgr0)"
  #$line | grep -A 2 -B 2 '$2' && grep :'$3.\*$2' && echo "$(tput setaf 4)$(tput setab 6)$line$(tput sgr0)"
  #if [-z `($line | grep -wn $2)` ] then
  #       echo "yes"
  #else
  #       echo "no"
  #fi
  $line | grep -A 2 -B 2 -wn $2 && grep -wn $3 | echo "$(tput setaf 4)$(tput setab 6)$line$(tput sgr0)"
  #$line | grep -wne $2 -e $3 && echo "$(tput setaf 4)$(tput setab 6)$line$(tput sgr0)"
#$sgr0
#line | grep -wn $2 && echo "$line"
#$line | grep -l port
done < $vare
#sed -i 's/man //' -i $vare


  
