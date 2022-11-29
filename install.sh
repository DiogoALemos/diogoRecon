#!/bin/bash
sudo apt update
sudo apt install golang-go -y

mkdir Sublist3r
cd Sublist3r

git clone https://github.com/aboul3la/Sublist3r.git

cd .. 

go install -v github.com/OWASP/Amass/v3/...@master

go install -v github.com/hakluke/haktrails@latest

go install -v github.com/projectdiscovery/notify/cmd/notify@latest

sudo apt install dirsearch -y

sudo apt install dnsrecon -y

go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest



