#!/bin/sh

if [ $# -ne 1 ]; then
	echo "Uso: $0 fichero"
	exit 1
fi

function legible ()
{
	if [ -r $1 ]; then
		return 1
	else
		return 0
	fi
}

legible $1
if [ $? -eq 1 ]; then
	echo "El archivo es legible"
else
	echo "El archivo no es legible"
fi

