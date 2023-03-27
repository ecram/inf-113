#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Uso: $0 número número"
	exit 1
fi

if [ $1 -eq $2 ]; then
	echo "Los números son iguales"
elif [ $1 -gt $2 ]; then
	echo "$1 es mayor que $2"
else
	echo "$2 es mayor que $1"
fi
