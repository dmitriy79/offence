#!/usr/bin/bash

sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install -y solc
sudo apt-get install -y libssl-dev
sudo apt-get install -y python3-pip=9.0.1-2 python3-dev
sudo ln -s /usr/bin/python3 /usr/local/bin/python
sudo apt-get install -y pandoc
sudo apt-get install -y git
pip3 install mythril
