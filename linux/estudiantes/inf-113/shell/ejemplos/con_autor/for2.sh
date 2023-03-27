#!/bin/sh
#Autor: Antonio Duran
#!/bin/sh

if [ ! -d /tmp/ ]; then
	echo "/tmp no existe, o no es un directorio"
fi

for num in 1 2 3 4 5 6 7 8 9
do
	touch /tmp/f$num.txt
done
