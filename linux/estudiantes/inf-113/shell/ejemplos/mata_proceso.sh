#!/bin/sh

ps -e|tr -s " "|grep $1$|cut -f 2 -d " "|xargs kill
