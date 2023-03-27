#!/bin/bash
#Autor: Antonio Duran
#!/bin/bash

n=0
while [ "$n" -lt 10 ]
do
	let "n += 1"
	if [ $n -eq 3 ] ; then
		continue
	fi
	echo $n
done
