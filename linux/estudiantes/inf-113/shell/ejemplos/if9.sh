#!/bin/bash

if [ -d $2 ] ; then
	RUTA=$2/$1
else
	RUTA=$2
fi

if [ -f $RUTA ] ; then
	echo -n "$RUTA existe, desea sobreescribirlo? (s/n)"
	read RESPUESTA
	if [ $RESPUESTA = 'n' -o $RESPUESTA = 'N' ] ; then
		exit 0
	fi
fi
cp $1 $2
