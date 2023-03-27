#!/bin/bash
#Autor: Antonio Duran
#!/bin/bash

if [ $# != 1 ];then
	echo "Uso: $0 numero"
	exit 1
fi

N=$1
F=1
while [ $N -gt 0 ]
do
	let "F = $F * $N"
	let "N-=1"
done
echo "El factorial es $F"
