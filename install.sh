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

echo "installing Amass"

sudo go install -v github.com/OWASP/Amass/v3/...@master

echo "Amass instalation complete"

echo "Installing haktrails"

sudo go install -v github.com/hakluke/haktrails@latest

echo "Haktrails instalation complete"

echo "Installing Notify"

sudo go install -v github.com/projectdiscovery/notify/cmd/notify@latest

echo "Notify instalation complete"

mkdir Dirsearch
cd Dirsearch
git clone https://github.com/maurosoria/dirsearch.git --depth 1

cd ~

echo "Installing DnsRecon complete"

sudo apt install dnsrecon -y

echo "DnsRecon instalation complete"

echo "Installing Dnsx"

sudo go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest

echo "Dnsx instalation complete"

echo "Installing Subfinder"
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
echo "Install of subfinder complete"

echo "installing httpx"

sudo apt install python3-httpx

echo "install of httpx complete"

