#!/bin/bash
###############################################################################################################

sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install curl -y
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs python nginx bind9 isc-dhcp-server
sudo apt-get install -y hostapd dmidecode build-essential openssh-server python-pip unzip bridge-utils
wget -O /tmp/adopisoft-5.1.1-amd64-node-v16.4.0.deb https://github.com/AdoPiSoft/Releases/releases/download/v5.1.1/adopisoft-5.1.1-amd64-node-v16.4.0.deb
sudo apt-get install /tmp/adopisoft-5.1.1-amd64-node-v16.4.0.deb

echo "Create posgressql account:"
wget -O ado-psql-script.sh https://gist.githubusercontent.com/alenteria/791dbe32175a01d1f1b602b25489ad22/raw/9a5aa879ac70d24bd9a7dd7f8ed97d7fe2c2f597/ado-psql-script.sh 
sudo chmod a+x ./ado-psql-script.sh
sudo ./ado-psql-script.sh


sudo systemctl enable adopisoft
sudo systemctl start adopisoft
ip addr
