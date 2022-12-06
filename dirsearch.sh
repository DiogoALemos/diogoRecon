#!/bin/bash

function dirsh {

cd Dirsearch
cd dirsearch

echo "insira o endreço do website que deseja escavar"
read website

python3 dirsearch.py -u $website

}

dirsh
