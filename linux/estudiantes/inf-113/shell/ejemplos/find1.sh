#!/bin/sh

if [ $# -ne 1 ]; then
	echo "Uso: $0 usuario"
	exit 1
fi

DIR_COPIA=/tmp/copia.$1
mkdir $DIR_COPIA

find / -type f -user $1 -exec cp {} $DIR_COPIA \; 2>/dev/null
