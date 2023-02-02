#!/bin/bash

function pastarela {

if [ -d "/home/$USER/relatorios" ];
then
	echo "Pasta de relatorios já criada, continuado o script"	
else
	mkdir relatorios

fi

}

function Recon {
cd ~

if [ -d "/home/$USER/dnsrecon_relatorios" ];
then
	echo "copiando resultados para pasta relatorios"
else
mkdir dnsrecon_relatorios
fi

echo "Insira o domain que quer scanear"
read domain


dnsrecon -d $domain -x /home/$USER/dnsrecon_relatorios/dnsscan.xml

cd dnsrecon_relatorios

cp dnsscan.xml /home/$USER/relatorios

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
 	
	cd relatorio_Sub

	cp scan.txt /home/$USER/relatorios

}

function dnx {
      
      	cd ~
	echo "Insira o host que quer procurar"
	read host

	subfinder -silent -d $host | dnsx -silent -a -resp

	echo "insira o ip que quer verificar"
	read ip

	echo $ip | dnsx -silent -resp-only -ptr

}


function notif {

	cd ~
	echo "insira o domain que deseja escavar"
	read website
		
	subfinder -d $website -o h1.txt; notify -data h1.txt

}

function Ama {

	cd ~

	echo " insira o domain que quer verificar "
	read domain

	amass intel -d $domain -whois -o domain.txt

	echo " Subdomain do domain verificado "

	amass enum -passive -d $domain -src -o subdomain.txt
	
	cp domain.txt /home/$USER/relatorios
	cp subdomain.txt /home/$USER/relatorios

}

function Hakt {

	cd ~ 	

	echo "Para o haktrails correr corretamente tem que existir um ficheiro chamado domains.txt com os domains que se quer verificar. "

	cat domains.txt | haktrails subdomains

	cat domains.txt | haktrails associatedips

	cat domains.txt | haktrails historicalwhois

}

pastarela

Sublist

Recon

dirsh

Ama

notif

dnx

Hakt


