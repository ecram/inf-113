#!/bin/sh
#Autor: Antonio Duran
#!/bin/sh

for arg in $@
do
	echo "Elemento bucle1: $arg"
done

for arg in "$*"
do
	echo "Elemento bucle2: $arg"
done

for arg in "$@"
do
	echo "Elemento bucle3: $arg"
done
