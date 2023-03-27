#!/bin/bash
#Autor: Antonio Duran
#!/bin/bash

n=0
until [ "$n" -ge 10 ]
do
	echo $n
	let "n += 1"
done
