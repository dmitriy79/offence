#!/bin/bash

#Simple Process monitoring script. 
#Usage ./procmon.sh
#By:mvv-arod

#last update: 5MAR2019

#Loop by lines
IFS=#'\n'

echo "Monitoring incoming processes..."

old_process=$(ps -eo command)

while true; do 
	new_process=$(ps -eo command)
	diff <(echo "$old_process") <(echo "$new_process") | grep [\<\>]
	sleep 1
	old_process=$new_process
done
