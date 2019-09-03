#!/bin/bash

# arod Toolkit

# Global variables
BLUE='\033[1;34m'
YELLOW='\033[1;33m'
NC='\033[0m'


#Updating Kali
echo -e "${BLUE}Updating Kali.${NC}"
apt-get update ; apt-get -y upgrade ; apt-get -y dist-upgrade ; apt-get -y autoremove ; apt-get -y autoclean ; echo

#List all apt-gets
echo -e "${BLUE}Adding useful tools!${NC}"
echo -e "${BLUE}\n1) gobuster\n2) steghide\n3) cifs-utils\n4) smb4k\n5) proxychains\n6) hashcat\n7) ftp\n8) libreoffice\n9) exiftool\nsnmp-mibs-downloaders\n10) winrm\n11)pyftpdlib \n12)crackmapexec \n13)more python stuff\n${NC}"

apt-get install -y gobuster
apt-get install -y steghide
apt-get install -y cifs-utils
apt-get install -y smb4k 
apt-get install -y proxychains
apt-get install -y hashcat 
apt-get install -y ftp
apt-get install -y rlwrap
apt-get install -y python3-pip
apt-get install -y libreoffice
apt-get install -y exiftool
apt install -y snmp-mibs-downloader
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
echo 'deb [arch=amd64] https://download.docker.com/linux/debian buster stable' > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get install -y docker-ce
gem install -r winrm
pip3 install requests
pip install pyftpdlib
apt-get install -y crackmapexec
apt-get install -y libssl-dev libffi-dev python-dev build-essential
pip install crackmapexec
npm install elasticdump -g
wget https://raw.githubusercontent.com/vulnersCom/nmap-vulners/master/vulners.nse -O /usr/share/nmap/scripts/vulners.nse

# Making Directories
mkdir -p /opt/arod/{Recon,Utils,Frameworks,Windows/{Exploits,Enumeration},Linux/{Exploits/Enumeration}}

echo -e "${YELLOW}Tools downloaded and Directories made!.${NC}"

# Passive Intelligence Gathering
echo -e "${YELLOW}Checking for recon tools.${NC}"


if [ -d /opt/arod/Recon/theHarvester/.git ]; then
     echo -e "${BLUE}Updating theHarvester.${NC}"
     cd /opt/arod/Recon/theHarvester ; git pull
     echo
else
  echo -e "${YELLOW}Downloading theHarvester.${NC}"
  git clone https://github.com/laramies/theHarvester.git /opt/arod/Reconnaissance/Passive/theHarvester
  echo
  echo -e "${YELLOW}Piping Requirements.${NC}"
  cd /opt/arod/Recon/theHarvester ; pip install -r requirements.txt
fi

if [ -d /opt/arod/Utils/nmap ]; then
     echo -e "${BLUE}Skipping the nmap stand-alone download..., file is here.${NC}"
else
  echo -e "${YELLOW}Downloading the stand-alone nmap stuff.${NC}"
  wget https://github.com/ZephrFish/static-tools/raw/master/nmap/nmap -O /opt/arod/Utils/nmap
  echo
fi


#ADD all Utilities

#java deserial
cd /opt/arod/Utils/
git clone https://github.com/thewhiteh4t/pwnedOrNot.git
git clone https://github.com/huntergregal/mimipenguin.git
git clone https://github.com/frohoff/ysoserial.git
git clone https://github.com/CoreSecurity/impacket.git
git clone https://github.com/sshuttle/sshuttle.git
git clone https://github.com/Va5c0/Steghide-Brute-Force-Tool.git
https://github.com/andrew-d/static-binaries.git
pip install progressbar
sudo curl https://raw.githubusercontent.com/Paradoxis/StegCracker/master/stegcracker > /opt/arod/Utils/stegcracker
git clone https://github.com/Rhynorater/CVE-2018-15473-Exploit.git /opt/arod/Linux/Enumeration/CVE-2018-15473-Exploit
sudo chmod +x /opt/arod/Utils/stegcracker
git clone https://www.github.com/threat9/routersploit
cd routersploit
python3 -m pip install -r requirements.txt # python3 rsf.py to run the module
git clone https://github.com/danielmiessler/SecLists.git /opt/arod/Utils/seclists

echo -e "${YELLOW}\n\nUtilities installed.... Now Windows goodness....\n\n${NC}"
#ADD the windows poloozaaa
cd /opt/arod/Windows/

git clone https://github.com/samratashok/nishang.git
git clone https://github.com/PowerShellMafia/PowerSploit.git
git clone https://github.com/skelsec/pykerberoast.git
git clone https://github.com/FuzzySecurity/PowerShell-Suite.git
git clone https://github.com/infodox/python-pty-shells.git
git clone https://github.com/Genetic-Malware/Ebowla.git
git clone https://github.com/trustedsec/unicorn.git

#Enumeration
cd /opt/arod/Windows/Enumeration

git clone https://github.com/bitsadmin/wesng.git
git clone https://github.com/411Hall/JAWS.git
git clone https://github.com/m8r0wn/nullinux
git clone https://github.com/rasta-mouse/Sherlock.git

#For the bloodhounds of the world
pip install neo4j-driver
git clone https://github.com/BloodHoundAD/BloodHound.git

#Exploits
cd /opt/arod/Windows/Exploits

git clone https://github.com/decoder-it/lonelypotato
git clone https://github.com/REPTILEHAUS/Eternal-Blue.git

echo -e "${YELLOW}\n\nWindows goodness is done... now linux.....\n\n${NC}"
#ADD the linux poloozaaa
cd /opt/arod/Linux/

git clone https://github.com/DominicBreuker/pspy.git
git clone https://github.com/itsKindred/procSpy.git

#Exploits
cd /opt/arod/Linux/Exploits

git clone https://github.com/mazen160/struts-pwn_CVE-2018-11776.git
git clone https://github.com/m4ll0k/smbrute.git

#Enumeration
cd /opt/arod/Linux/Enumeration

git clone https://github.com/rebootuser/LinEnum.git
git clone https://github.com/AlessandroZ/BeRoot.git
git clone https://github.com/jondonas/linux-exploit-suggester-2.git
git clone https://github.com/sleventyeleven/linuxprivchecker.git
git clone https://github.com/trailofbits/onesixtyone
git clone https://github.com/mzet-/linux-exploit-suggester


#Download and install GO: https://golang.org/doc/install
#export PATH=$PATH:/usr/local/go/bin
#git clone https://github.com/Ne0nd0g/merlin.git
#go get github.com/Ne0nd0g/merlin/pkg
#go get github.com/fatih/color
#sudo ./merlinServer-Linux-x64
#GOOS=windows GOARCH=amd64 go build
#generate ssl cert for Merlin HTTPS (in /opt/merlin/data/x509)
#openssl req -x509 -newkey rsa:4096 -sha256 -nodes -keyout server.key -out server.crt -subj "/CN=arod.com" -days 7



