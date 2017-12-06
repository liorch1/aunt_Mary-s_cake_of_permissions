#!/bin/bash

 #date: 05/12/2017
 #name: lior cohen
 #homework: 

read -ap  "which groups would you like to be added? " grps

echo "${#grps[@]}" #check array
if [[ ${#grps[@]} -lt 4 ]]; then
	exit 1
fi

