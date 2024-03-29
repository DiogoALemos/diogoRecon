#!/bin/bash



echo "Insira o website:"
read website

var=$website

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

dnsrecon -d ${var} -x /home/$USER/dnsrecon_relatorios/dnsscan.xml

cd dnsrecon_relatorios

cp dnsscan.xml /home/$USER/relatorios

}

function dirsh {

	cd ~
	cd Dirsearch
	cd dirsearch

	python3 dirsearch.py -u ${var}

}

function Sublist {

	cd ~

	cd Sublist3r

	python3 sublist3r.py -o scan.txt -d ${var}
 	
	cd relatorio_Sub

	cp scan.txt /home/$USER/relatorios

}

function dnx {
      
      	cd ~

	subfinder -silent -d ${var} | dnsx -silent -a -resp

	echo ${var} | dnsx -silent -resp-only -ptr

}


function notif {

	cd ~
		
	subfinder -d ${var} -o h1.txt; notify -data h1.txt

}

function Ama {

	cd ~

	amass intel -d ${var} -whois -o domain.txt

	amass enum -passive -d ${var} -src -o subdomain.txt
	
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


