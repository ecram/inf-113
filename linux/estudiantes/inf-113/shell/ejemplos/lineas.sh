#!/bin/sh

if [ $# -ne 3 ]; then
	echo "Uso: $0 linea_inicial linea_final fichero"
	exit 1
fi

awk -v min=$1 -v max=$2 -f lineas.awk $3
