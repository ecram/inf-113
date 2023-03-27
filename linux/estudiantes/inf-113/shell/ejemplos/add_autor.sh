#!/bin/sh

AUTOR="Antonio Duran"
mkdir con_autor/

for file in *
do
	if [ ! -f $file ]; then
		continue
	fi
	LINES=`wc -l $file | tr -c -d [0-9]`
	let "LINES-=1"
	head -1 $file > /tmp/file.tmp
	echo "#Autor: $AUTOR" >> /tmp/file.tmp
	tail -$LINES $file >> /tmp/file.tmp
	mv /tmp/file.tmp con_autor/$file
done
