#!/bin/sh

case $1 in
"")
	echo "Uso: $0 argumento"
	;;
-*)
	echo "El argumento es una opcion"
	;;
*)
	echo "Es un argumento normal"
	;;
esac
	
