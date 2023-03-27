#!/bin/bash

n=0
while [ "$n" != "fin" ]
do
	echo -n "Introduce variable (fin para terminar): "
	read n
	echo "n = $n"
done
