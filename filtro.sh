#!/bin/bash

function filtro {

echo "insira o ficheiro para ser filtrado"	

read nome

sort $nome.txt | uniq -c

}



function fich {

echo "insira o ficheiro para ser lido"

read nome

cat $nome.txt 


}

fich

filtro

