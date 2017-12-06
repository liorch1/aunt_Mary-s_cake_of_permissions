#!/bin/bash

 #date: 05/12/2017
 #name: lior cohen
 #homework: 3.a.create a script that will receive a list of users. name of group  and list of aliases that they need and then will  created them.
#3.b if the script will be run with other user than root, it should be notified to user and also kept in a log file that should be created in "/tmp" folder under a name of the script with ".log" suffix 
#(for example: script_name.log)

#only root can run this script and send to log file
if [[ $(id -u) -ne 0 ]]; then
	echo "This script must be run as root, you will be reported!";
	echo "warning - $USER tried to run the script at $(date)" >> /tmp/script3.log ; 
	exit 1;
fi

#get list of users
read -p "please insert user names to be created: " users

for i in $users ; do
	if [[ $(id $i) ]]; then #check if exist
	echo "$i exist, continue" >> /tmp/script3.log ;
else 
	echo "create $i"; sleep 1; #create user if not exist and send to log file
	useradd -m $i  >> /tmp/script3.log;
	echo "$i created" >> /tmp/script3.log;
fi
done

echo "done"
