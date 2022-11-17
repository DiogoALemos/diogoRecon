#!/bin/bash

function nmapfunc {

echo " escreva o ip para o nmap dar scan"

read ip

nmap -p -65535 $ip

}

nmapfunc


