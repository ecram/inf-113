#!/bin/bash
#Autor: Antonio Duran
#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Uso: $0 fichero accion"
	exit 1
fi

case $2 in
mostrar)
	cat $1
	;;
estadisticas)
	stat $1
	;;
tipo)
	file $1
	;;
*)
	echo "Error: accion no soportada"
	;;
esac
