#!/bin/bash
#Autor: Antonio Duran
#!/bin/bash

if [ $# -ne 1 ] ; then
	echo "Uso: $0 numero"
	exit 1
fi

let MOD="$1 % 2"
if [ $MOD -eq 1 ] ; then
	echo "$1 es impar"
else
	echo "$1 es par"
fi
