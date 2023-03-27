#!/bin/sh

for FILE in $1*
do
	if [ -r $FILE ] ; then
		echo $FILE tiene permisos de lectura
	fi
	if [ -w $FILE ] ; then
		echo $FILE tiene permisos de escritura
	fi
	if [ -x $FILE ] ; then
		echo $FILE tiene permisos de ejecucion
	fi
done
