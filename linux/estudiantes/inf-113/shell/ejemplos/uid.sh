#!/bin/sh

if [ $# -ne 1 ]; then
	echo "Uso: $0 usuario"
	exit 1
fi

echo -n "Usuario: $1 "
awk -F":" "/$1/"'{ print "Uid:" $3 }' /etc/passwd
