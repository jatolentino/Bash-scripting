#!/usr/bin/bash
#read commandToFind stringToFind
touch /tmp/myCommand.txt
vare=/tmp/myCommand.txt
# $! = command $2 string
apropos $1 | awk '{print $1}' > $vare
