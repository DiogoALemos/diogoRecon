#!/bin/bash

sudo apt update
sudo apt upgrade
sudo apt install golang-go -y
sudo apt-get -y install python3-pip

PATH="$HOME/bin:$PATH"

mkdir Sublist3r
cd Sublist3r

git clone https://github.com/aboul3la/Sublist3r.git

sudo pip install -r requirements.txt

cd ~

sudo go install -v github.com/OWASP/Amass/v3/...@master

sudo go install -v github.com/hakluke/haktrails@latest

sudo go install -v github.com/projectdiscovery/notify/cmd/notify@latest

mkdir Dirsearch
cd Dirsearch
git clone https://github.com/maurosoria/dirsearch.git --depth 1

cd ~

sudo apt install dnsrecon -y

sudo go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest

go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

