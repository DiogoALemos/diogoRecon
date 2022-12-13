#!/bin/bash

function Hakt {

cd ~/go/bin 	

echo " insira o domain que deseja procurar utilizando o haktrails "

read domain

echo "$domain" | haktrails subdomains

}

Hakt

