#!/bin/bash
#Autor: Antonio Duran
#!/bin/bash

if [ ! -d /tmp ] ; then
	echo "No existe el directorio /tmp"
	exit 1
fi

if [ ! -f /tmp/xx ] ; then
	touch /tmp/xx
	echo "Se crea el nuevo fichero"
else
	echo "El fichero ya existe"
fi
