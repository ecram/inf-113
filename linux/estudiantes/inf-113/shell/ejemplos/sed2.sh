#!/bin/sh

for USER in `ls /home`
do
	sed "s/USUARIO/$USER/g" mensaje.txt > /tmp/mensaje_$USER.txt
done
