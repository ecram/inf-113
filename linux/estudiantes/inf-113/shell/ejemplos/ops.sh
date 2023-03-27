#!/bin/sh

groups $1 | grep $2 >/dev/null && echo "El usuario pertenece al grupo $2"
