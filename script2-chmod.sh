#!/bin/bash

 #date: 05/12/2017
 #name: lior cohen
 #homework: 1. ask the user if he sure about changing permissions, call the script every time chmod commend called, and summry the permissions changes in the end

#in .bashrc add alias chmod=path/to/the/./script
#ask if the user sure he want to make changes
echo "please use octal permissions"
echo "chmod on $2 to the new premissions - $1"
read -p "Are you sure you want to make these changes? Y/N: " ans

case $ans in #check user answer
	yes|y|Y)
	echo "make changes" ;;
	no|n|N|*)
	echo "exit - no changes were made"
	exit 1;
	;;
esac

chmod $1 $2; #make the chmod commend with the vars

sleep 1;

Date=$(date +%D:%H:%M) #summery the changes and print it.
echo "finish, $2 file have new permissions, on $Date user $USER "


