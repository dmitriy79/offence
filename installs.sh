#!/bin/bash

#List all apt-gets
apt-get install -y gobuster
apt-get install -y steghide
apt-get install cifs-utils
apt-get install smb4k -y
apt-get install -y proxychains
wget https://hashcat.net/files/hashcat-2.00.7z
apt-get install hashcat -y
apt-get install -y ftp
apt-get install -y libreoffice
apt-get install -y exiftool


mkdir ~/Desktop/set-up
cd ~/Desktop/set-up

mkdir networking
cd networking
git clone https://github.com/CoreSecurity/impacket.git

mkdir ~/Desktop/set-up/utils
cd ~/Desktop/set-up/utils

git clone https://github.com/skelsec/pykerberoast.git
git clone https://github.com/FuzzySecurity/PowerShell-Suite.git

#Sharepoint and much more word lists
git clone https://github.com/danielmiessler/SecLists.git

#Steg brute force stuff
git clone https://github.com/Va5c0/Steghide-Brute-Force-Tool.git
pip install progressbar
sudo curl https://raw.githubusercontent.com/Paradoxis/StegCracker/master/stegcracker > /bin/stegcracker
sudo chmod +x /bin/stegcracker

#Shells for powershell and such
git clone https://github.com/samratashok/nishang.git

#PowerSploit is a collection of Microsoft PowerShell modules that can be used to aid
#penetration testers during all phases of an assessment. PowerSploit is comprised of the
#following modules and scripts
git clone https://github.com/PowerShellMafia/PowerSploit.git


mkdir ~/Desktop/set-up/shells
cd ~/Desktop/set-up/shells
git clone https://github.com/infodox/python-pty-shells.git

mkdir ~/Desktop/set-up/priv-esc
cd ~/Desktop/set-up/priv-esc
#JAWS is PowerShell script designed to help penetration testers (and CTFers) quickly identify
#potential privilege escalation vectors on Windows systems. It is written using PowerShell 2.0 
#so 'should' run on every Windows version since Windows 7.
git clone https://github.com/411Hall/JAWS.git


mkdir ~/Desktop/set-up/exploit
cd ~/Desktop/set-up/exploit

#eternalBlue
git clone https://github.com/REPTILEHAUS/Eternal-Blue.git

#Apache Struts CVE-2018-11776
git clone https://github.com/mazen160/struts-pwn_CVE-2018-11776.git

#SMB BRUTE FORCE
git clone https://github.com/m4ll0k/smbrute.git

#SSH Username enumeration
git clone https://github.com/Rhynorater/CVE-2018-15473-Exploit

git clone https://github.com/danielmiessler/SecLists.git
#Rotten exploit for windows (After enum is done)
git clone https://github.com/decoder-it/lonelypotato

#Creating exploits unicorn.py
git clone https://github.com/trustedsec/unicorn.git

mkdir ~/Desktop/set-up/exploit/av_evasion
cd ~/Desktop/set-up/exploit/av_evasion

#Exploit encoder for AV envasion
git clone https://github.com/Genetic-Malware/Ebowla.git

mkdir ~/Desktop/set-up/enum
cd ~/Desktop/set-up/enum

git clone https://github.com/rebootuser/LinEnum.git
git clone https://github.com/sleventyeleven/linuxprivchecker.git

#SMB Enum tool
git clone https://github.com/m8r0wn/nullinux

#SSH Enumeration username
git clone https://github.com/Rhynorater/CVE-2018-15473-Exploit.git

#Framework for windows auth stuff
git clone https://github.com/SpiderLabs/Responder.git

#find Vulnerabilities using PS
git clone https://github.com/rasta-mouse/Sherlock.git

#For the bloodhounds of the world
pip install neo4j-driver
git clone https://github.com/BloodHoundAD/BloodHound.git
git clone https://github.com/BloodHoundAD/BloodHound-Tools.git

#Download and install GO: https://golang.org/doc/install
export PATH=$PATH:/usr/local/go/bin
cd ~/Desktop/set-up/
git clone https://github.com/Ne0nd0g/merlin.git
go get github.com/Ne0nd0g/merlin/pkg
go get github.com/fatih/color

#sudo ./merlinServer-Linux-x64
#GOOS=windows GOARCH=amd64 go build
#generate ssl cert for Merlin HTTPS (in /opt/merlin/data/x509
#openssl req -x509 -newkey rsa:4096 -sha256 -nodes -keyout server.key -out server.crt -subj "/CN=arod.com" -days 7

#LAST BUT NOT LEAST
cd ~/Desktop/set-up/


