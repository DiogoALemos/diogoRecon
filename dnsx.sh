#!/bin/bash

function dnx {

echo "Insira o host que quer procurar"
read host

subfinder -silent -d $host | dnsx -silent -a -resp

echo "insira o ip que quer verificar"
read ip

echo $ip | dnsx -silent -resp-only -ptr

}

dnx


