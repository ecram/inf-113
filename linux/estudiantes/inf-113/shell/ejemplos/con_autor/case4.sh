#!/bin/sh
#Autor: Antonio Duran
#!/bin/sh

case $1 in
"")
	echo "Uso: $0 caracter"
	;;
[0-9]*)
	echo "El argumento es un numero"
	;;
[a-z])
	echo "El argumento es una letra minuscula"
	;;
[A-Z])
	echo "El argumento es una letra mayuscula"
	;;
*)
	echo "El argumento es un simbolo de puntuacion, un espacio u otro"
	;;
esac
	
