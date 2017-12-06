#!/bin/bash

 #date: 05/12/2017
 #name: lior cohen
 #homework:

#validation with if run with . ./scriptname | also with chmod 700 script-name
if [[ $UID -ne 1000 ]]; then
	echo "you are not allowed to run this script"
	exit 1;
fi


#check how many file my user own.

filenum=$(find / -user lior 2>/dev/null | wc -l)
echo "you own $filenum files in the system! "

#check how many hidden files

hidden=$(find / -name ".*" 2>/dev/null | wc -l)
echo "there is $hidden files in this system!"
