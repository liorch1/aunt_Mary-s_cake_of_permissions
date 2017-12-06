#!/bin/bash

 #date: 05/12/2017
 #name: lior cohen
 #homework: 4. create script that will recieve a list of folder names and with the same single command : it will create those folders and also will give them permissions of 555.

#get list of folders name
read -p "please insert folder names to be created: " folders

for i in $folders; do #create folders with 555 permissions
	mkdir -m 555 $i
done 
