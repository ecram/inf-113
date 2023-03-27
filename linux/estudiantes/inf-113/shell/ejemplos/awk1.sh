#!/bin/sh

VAR=`echo $1 | awk '/^([0-9])+$/'`
if [ -z $VAR ]; then
	echo "No es un numero"
else
	echo "Es un numero"
fi
