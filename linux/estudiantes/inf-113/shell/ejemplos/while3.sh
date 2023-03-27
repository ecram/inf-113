#!/bin/bash

n=0
while [ "$nombre" != "fin" ]
do
	echo -n "Introduce nombre DNS (fin para terminar): "
	read nombre
	host $nombre
done
