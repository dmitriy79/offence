#!/bin/bash

#Create dir for webapps
mkdir /opt/webapps

#Domain Scraping and discovery
mkdir /opt/webapps/subdomain-enum
git clone https://github.com/aboul3la/Sublist3r.git /opt/webapps/subdomain-enum/Sublist3r
git clone https://LaNMaSteR53@bitbucket.org/LaNMaSteR53/recon-ng.git /opt/webapps/subdomain-enum/recon-ng
cd /opt/webapps/subdomain-enum/recon-ng
pip install -r REQUIREMENTS
ln -s /$recon-ng_path /usr/share/recon-ng
git clone https://github.com/mandatoryprogrammer/cloudflare_enum.git /opt/webapps/subdomain-enum/cloudflare_enum


#Domain bruteforcing
mkdir /opt/webapps/subdomain-brute
git clone https://github.com/blechschmidt/massdns.git /opt/webapps/subdomain-brute/massdns
git clone https://github.com/JordyZomer/autoSubTakeover.git /opt/webapps/subdomain-brute/autoSubTakeover
git clone https://github.com/nahamsec/HostileSubBruteforcer.git /opt/webapps/subdomain-brute/HostileSubBruteforcer

#Port scanning
apt-get install -y masscan

#Visual Identification
mkdir /opt/webapps/visuals
git clone https://github.com/FortyNorthSecurity/EyeWitness.git /opt/webapps/visuals/EyeWitness

#Platform Identification
#use Builtwith
#use wappalyzer

#Content Discovery
apt-get install -y gobuster

#Parameter Discovery
mkdir /opt/webapps/parameter-discovery
git clone https://github.com/maK-/parameth.git /opt/webapps/parameter-discovery/parameth

#XSS
mkdir /opt/webapps/XSS
git clone https://github.com/Netflix-Skunkworks/sleepy-puppy.git /opt/webapps/XSS/sleepy-puppy
git clone https://github.com/mandatoryprogrammer/xsshunter.git /opt/webapps/XSS/xsshunter

#Code Injection
mkdir /opt/webapps/code-injection
git clone https://github.com/epinna/tplmap.git /opt/webapps/code-injection/tplmap
git clone https://github.com/commixproject/commix.git /opt/webapps/code-injection/commix

#Robbing Misconfigurations (git)
mkdir /opt/webapps/misconfigurations
git clone https://github.com/michenriksen/gitrob.git /opt/webapps/misconfigurations/gitrob
git clone https://github.com/dxa4481/truffleHog.git /opt/webapps/misconfigurations/truffleHog
