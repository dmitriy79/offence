#!/bin/bash

#This script is intended for HTB uses only. Long story short, I got tired of running the same commands over and over.

TITLE="[+]You are running this from: $HOSTNAME"
RIGHT_NOW=$(date +"%x %r %Z")
TIME_STAMP="Updated on $RIGHT_NOW by $USER"
USAGE="Usage: `basename $0` <ipaddress> <interface>"

if [ "$1" == "-h" ]; then
  echo $TITLE
  echo $RIGHT_NOW
  echo $TIME_STAMP
  echo " "
  echo $USAGE
  exit 0
fi

ipaddress=$1
interface=$2

if [[ $ipaddress =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo "[+] Enumerating $ipaddress based on your input"
  echo "[+] Everything will be saved in this current directory!"
  echo "[+] Starting masscan now"
  masscan -p1-65535,U:1-65535 $ipaddress --rate=1000 -e $interface -oL allports.txt
  echo "[+] Allports scan complete!"
  

else
  echo "[-] You did not enter a valid IPv4 Address [-]"
  echo $USAGE
fi


