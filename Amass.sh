#!/bin/bash

function Ama {

cd relatorio 	

echo " insira o domain que quer verificar "
read domain

amass intel -d $domain -whois -o domain.txt

echo " Subdomain do domain verificado "

amass enum -passive -d $domain -src -o subdomain.txt

}

Ama


