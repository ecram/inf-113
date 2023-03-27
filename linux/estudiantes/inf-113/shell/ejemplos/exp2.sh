#!/bin/bash

let "SUM=0"
for ARG in "$@"
do
	let SUM="$SUM + $ARG"
done

echo "La suma es $SUM"
