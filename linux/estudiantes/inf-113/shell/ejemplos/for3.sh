#!/bin/sh

if [ $# -ne 1 ]; then
	echo "Uso: $0 directorio"
	exit 1
fi

if [ ! -d $1 ]; then
	echo "$1 no existe, o no es un directorio."
	exit 2
fi

for file in $1*
do
	if [ -d $file ]; then
		echo $file
	fi
done
