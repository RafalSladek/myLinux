#!/bin/sh
echo $'\n'$1 >> requirements.txt; pip install $1
