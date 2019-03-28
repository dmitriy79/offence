#!/bin/bash

# MVV-AROD Toolkit

# Global variables
BLUE='\033[1;34m'
YELLOW='\033[1;33m'
NC='\033[0m'


#Updating Kali
echo -e "${BLUE}Updating Kali.${NC}"
apt-get update ; apt-get -y upgrade ; apt-get -y dist-upgrade ; apt-get -y autoremove ; apt-get -y autoclean ; echo

#List all apt-gets
echo -e "${BLUE}Adding useful tools!${NC}"
echo -e "${BLUE}\n1) gobuster\n2) steghide\n3) cifs-utils\n4) smb4k\n5) proxychains\n6) hashcat\n7) ftp\n8) libreoffice\n9) exiftool\nsnmp-mibs-downloaders\n${NC}"

apt-get install -y gobuster
apt-get install -y steghide
apt-get install cifs-utils
apt-get install smb4k -y
apt-get install -y proxychains
apt-get install hashcat -y
apt-get install -y ftp
apt-get install -y libreoffice
apt-get install -y exiftool
apt install -y snmp-mibs-downloader
gem install -r winrm
pip install pyftpdlib
apt-get install crackmapexec
apt-get install -y libssl-dev libffi-dev python-dev build-essential
pip install crackmapexec

# Making Directories
mkdir -p /opt/mvv-arod/{Recon,Utils,Frameworks,Windows/{Exploits,Enumeration},Linux{Exploits/Enumeration}}

echo -e "${YELLOW}Tools downloaded and Directories made!.${NC}"

# Passive Intelligence Gathering
echo -e "${YELLOW}Checking for recon tools.${NC}"


if [ -d /opt/mvv-arod/Recon/theHarvester/.git ]; then
     echo -e "${BLUE}Updating theHarvester.${NC}"
     cd /opt/mvv-arod/Recon/theHarvester ; git pull
     echo
else
  echo -e "${YELLOW}Downloading theHarvester.${NC}"
  git clone https://github.com/laramies/theHarvester.git /opt/mvv-arod/Reconnaissance/Passive/theHarvester
  echo
  echo -e "${YELLOW}Piping Requirements.${NC}"
  cd /opt/mvv-arod/Recon/theHarvester ; pip install -r requirements.txt
fi

if [ -d /opt/mvv-arod/Utils/nmap ]; then
     echo -e "${BLUE}Skipping the nmap stand-alone download..., file is here.${NC}"
else
  echo -e "${YELLOW}Downloading the stand-alone nmap stuff.${NC}"
  wget wget https://github.com/ZephrFish/static-tools/raw/master/nmap/nmap -O /opt/mvv-arod/Utils/nmap
  echo
fi




git clone https://github.com/CoreSecurity/impacket.git
git clone https://github.com/sshuttle/sshuttle.git

apt-get install python3-pip
git clone https://www.github.com/threat9/routersploit
cd routersploit
python3 -m pip install -r requirements.txt
# python3 rsf.py to run the module

mkdir ~/Desktop/installs/wordlist
cd ~/Desktop/installs/wordlist

#Sharepoint and much more word lists
git clone https://github.com/danielmiessler/SecLists.git

mkdir ~/Desktop/installs/steg
cd ~/Desktop/installs/steg

#Steg brute force stuff
git clone https://github.com/Va5c0/Steghide-Brute-Force-Tool.git
pip install progressbar
sudo curl https://raw.githubusercontent.com/Paradoxis/StegCracker/master/stegcracker > /bin/stegcracker
sudo chmod +x /bin/stegcracker


mkdir ~/Desktop/installs/Windows
cd ~/Desktop/installs/Windows

#Shells for powershell and such
git clone https://github.com/samratashok/nishang.git

#PowerSploit is a collection of Microsoft PowerShell modules that can be used to aid
#penetration testers during all phases of an assessment. PowerSploit is comprised of the
#following modules and scripts
git clone https://github.com/PowerShellMafia/PowerSploit.git

git clone https://github.com/skelsec/pykerberoast.git
git clone https://github.com/FuzzySecurity/PowerShell-Suite.git

mkdir ~/Desktop/installs/Windows/enum
cd ~/Desktop/installs/Windows/enum

#SMB Enum tool
git clone https://github.com/m8r0wn/nullinux

#SSH Enumeration username
git clone https://github.com/Rhynorater/CVE-2018-15473-Exploit.git

mkdir ~/Desktop/installs/Windows/priv-esc
cd ~/Desktop/installs/Windows/priv-esc

git clone https://github.com/bitsadmin/wesng.git

#JAWS is PowerShell script designed to help penetration testers (and CTFers) quickly identify
#potential privilege escalation vectors on Windows systems. It is written using PowerShell 2.0 
#so 'should' run on every Windows version since Windows 7.
git clone https://github.com/411Hall/JAWS.git

#find Vulnerabilities using PS
git clone https://github.com/rasta-mouse/Sherlock.git

#For the bloodhounds of the world
pip install neo4j-driver
git clone https://github.com/BloodHoundAD/BloodHound.git

mkdir ~/Desktop/installs/Windows/exploits
cd ~/Desktop/installs/Windows/exploits

#Rotten exploit for windows (After enum is done)
git clone https://github.com/decoder-it/lonelypotato

#eternalBlue
git clone https://github.com/REPTILEHAUS/Eternal-Blue.git


mkdir ~/Desktop/installs/shells
cd ~/Desktop/installs/shells

git clone https://github.com/infodox/python-pty-shells.git

mkdir ~/Desktop/installs/Linux
cd ~/Desktop/installs/Linux

#See process information (Good for cron jobs)
git clone https://github.com/DominicBreuker/pspy.git

mkdir ~/Desktop/installs/exploits
cd ~/Desktop/installs/exploits

#Apache Struts CVE-2018-11776
git clone https://github.com/mazen160/struts-pwn_CVE-2018-11776.git

#SMB BRUTE FORCE
git clone https://github.com/m4ll0k/smbrute.git

mkdir ~/Desktop/installs/exploits/av_evasion
cd ~/Desktop/installs/exploits/av_evasion

#Exploit encoder for AV envasion
git clone https://github.com/Genetic-Malware/Ebowla.git

mkdir ~/Desktop/installs/Linux/enum
cd ~/Desktop/installs/Linux/enum

#SSH Enumeration username
git clone https://github.com/Rhynorater/CVE-2018-15473-Exploit.git

git clone https://github.com/rebootuser/LinEnum.git
git clone https://github.com/AlessandroZ/BeRoot.git
git clone https://github.com/jondonas/linux-exploit-suggester-2.git
git clone https://github.com/sleventyeleven/linuxprivchecker.git
git clone https://github.com/trailofbits/onesixtyone

mkdir ~/Desktop/installs/C2-Frameworks
cd ~/Desktop/installs/C2-Frameworks

#Creating exploits unicorn.py
git clone https://github.com/trustedsec/unicorn.git

#Download and install GO: https://golang.org/doc/install
export PATH=$PATH:/usr/local/go/bin
git clone https://github.com/Ne0nd0g/merlin.git
go get github.com/Ne0nd0g/merlin/pkg
go get github.com/fatih/color

#sudo ./merlinServer-Linux-x64
#GOOS=windows GOARCH=amd64 go build
#generate ssl cert for Merlin HTTPS (in /opt/merlin/data/x509
#openssl req -x509 -newkey rsa:4096 -sha256 -nodes -keyout server.key -out server.crt -subj "/CN=arod.com" -days 7

#LAST BUT NOT LEAST
cd ~/Desktop/installs/


