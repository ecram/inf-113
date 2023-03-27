#!/bin/bash

n=0
while [ "$n" -lt 10 ]
do
	echo $n
	let "n += 1"
done
