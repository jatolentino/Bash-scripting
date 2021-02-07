#!/usr/bin/bash
#read commandToFind stringToFind
touch /tmp/myCommand.txt
vare=/tmp/myCommand.txt
# $1 command $2 string $3 2nd priority string
apropos $1 | awk '{print $1}' > $vare
#vare=my.txt
sed -e 's/^/man /' -i $vare
#vare=my.txt
while read line
do
  $line | grep -A 2 -B 2 -wn $2 && grep -wn $3 | echo "$(tput setaf 4)$(tput setab 6)$line$(tput sgr0)"
done < $vare

# Give executable permissions 
# $ sudo chmod u+x sercom.sh 
# Run as:
# $ ./sercom.sh command 1ststring 2ndstring
# e.g: ./sercom.sh selinux port tcp




#$line | grep -wn $2 | grep -wn $3 && echo "$(tput setaf 4)$(tput setab 6)$line$(tput sgr0)"
  #$line | grep -A 2 -B 2 -wn $2 && echo "$(tput setaf 4)$(tput setab 6)$line$(tput sgr0)"
  #$line | grep -A 2 -B 2 '$2' && grep :'$3.\*$2' && echo "$(tput setaf 4)$(tput setab 6)$line$(tput sgr0)"
  #if [-z `($line | grep -wn $2)` ] then
  #       echo "yes"
  #else
  #       echo "no"
  #fi
  #$line | grep -A 2 -B 2 -wn $2 && grep -wn $3 | echo "$(tput setaf 4)$(tput setab 6)$line$(tput sgr0)"
  #$line | grep -wne $2 -e $3 && echo "$(tput setaf 4)$(tput setab 6)$line$(tput sgr0)"
