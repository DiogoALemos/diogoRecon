#!/bin/bash

function notif {

echo "insira o domain que deseja escavar"
read website
	
subfinder -d $website -o h1.txt; notify -data h1.txt

}

notif
