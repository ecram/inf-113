#!/bin/sh

for file in tsed*
do
	sed 's/Antonio Duran/Antonio Duran Terres/g' $file > file.tmp
	mv file.tmp $file
done
