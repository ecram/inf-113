#!/bin/bash

if [ $# -ne 3 ]; then
	echo "Uso: $0 número número número"
	exit 1
fi

if [ $1 -gt 1000 ]; then
	echo "$1 es mayor de 1000"
elif ! [ $2 -gt 0 -a $1 -gt $2 ]; then
	echo "$2 es mayor que $1, o menor que cero"
elif ! [ $3 -gt 0 -a $1 -gt $3 ]; then
	echo "$3 es mayor que $1, o menor que cero"
else
	echo "Se cumplen las condiciones"
fi
