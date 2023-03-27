#!/bin/bash

if [ -z $1 ] ; then
	echo "Uso: $0 directorio"
	exit 1
fi

if [ $1 -ef "$PWD" ]; then
	echo "Ya esta en el directorio $PWD" #mejor usar -ef para que compare ficheros y no cadenas
	exit 2
fi

if [ ! -d $1 ]; then
	echo "$1 no es un directorio válido"
	exit 3
fi

if [ ! -x $1 ]; then
	echo "No tienes permisos para entrar en $1"
	exit 4
fi

OLDPWD=$PWD
cd $1
echo "Cambiando de $OLDPWD a $PWD"
