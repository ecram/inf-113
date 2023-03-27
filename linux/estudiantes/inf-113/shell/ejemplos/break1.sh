#!/bin/bash

n=0
while [ "$n" != "fin" ]
do
	echo -n "Introduce variable (fin para terminar): "
	read n
	if [ $n = "fin" ]; then
		break
	fi
	echo "n = $n"
done
