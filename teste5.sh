#!/bin/bash

function copy {

echo "insira o nome do ficheiro de  texto que quer copiar"
read nome

echo "insira o nome do ficheiro de texto novo"
read nomecp

cp $nome.txt $nomecp.txt
}

copy

