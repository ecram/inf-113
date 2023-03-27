#!/bin/sh
#Autor: Antonio Duran
# Ejemplo de scripts con argumentos

echo $1 $2 $3 $4 $5
echo $0
echo $*
echo $#
shift
echo $1 $2 $3 $4 $5
