#!/bin/bash
#Autor: Antonio Duran
#!/bin/bash

if [ -f $2 ] ; then
	echo -n "$2 existe, desea sobreescribirlo? (s/n)"
	read RESPUESTA
	if [ $RESPUESTA = 'n' -o $RESPUESTA = 'N' ] ; then
		exit 0
	fi
fi
cp $1 $2
