#!/bin/bash

function Recon {

mkdir dnsrecon_relatorio

echo "Insira o domain que quer scanear"
read domain


dnsrecon -d $domain -x /home/$USER/dnsrecon_relatorio/dnsscan.xml

}

Recon

