#!/bin/bash

if [ -z $1 ]; then
	echo "Uso: $0 cadena"
	exit 1
fi

if [ $1 = "hola" ]; then
	echo "Las cadenas son iguales"
else
	echo "Las cadenas son distintas"
fi
