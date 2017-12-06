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
x="0"

echo "counting file own by you!"

for i in $(find / -user lior 2> /dev/null); do
	if [[ -O $i ]]; then
	 let x++ ;
fi
done

echo "you own $x files in the system!"

# count hidden files in the system
y="0"
echo "counting hidden files in the system.. "
for i in $(find / -name ".*" 2>/dev/null); do
	let y++ ;
done

echo "there is $y hidden files in your system!"
