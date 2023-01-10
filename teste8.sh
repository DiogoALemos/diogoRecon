#!/bin/bash

function Recon {

mkdir dnsrecon_relatorio

echo "Insira o domain que quer scanear"
read domain


dnsrecon -d $domain -x /home/$USER/dnsrecon_relatorio/dnsscan.xml

}

function dirsh {

	cd ~
	cd Dirsearch
	cd dirsearch

	echo "insira o endreço do website que deseja escavar"
	read website

	python3 dirsearch.py -u $website

}

function Sublist {
	cd ~
	cd Sublist3r

	echo "Insira o domain que deseja analisar"
	read input

	python3 sublist3r.py -o scan.txt -d $input


}

function dnx {
        cd /go/bin
	echo "Insira o host que quer procurar"
	read host

	subfinder -silent -d $host | dnsx -silent -a -resp

	echo "insira o ip que quer verificar"
	read ip

	echo $ip | dnsx -silent -resp-only -ptr

}


function notif {
	cd /go/bin
	echo "insira o domain que deseja escavar"
	read website
		
	subfinder -d $website -o h1.txt; notify -data h1.txt

}

function Ama {
	cd ~
	cd /go/bin
	cd relatorio 	

	echo " insira o domain que quer verificar "
	read domain

	amass intel -d $domain -whois -o domain.txt

	echo " Subdomain do domain verificado "

	amass enum -passive -d $domain -src -o subdomain.txt

}

function Hakt {
	cd ~
	cd ~/go/bin 	

	echo " insira o domain que deseja procurar utilizando o haktrails "

	read domain

	echo "$domain" | haktrails subdomains

}

Sublist
Recon
dirsh
dnx
notif
Ama
Hakt
