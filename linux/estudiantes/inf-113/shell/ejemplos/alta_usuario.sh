#!/bin/sh

E_PASS=`mkpasswd -S "GV" $2`
useradd $1 -g $3 -p $E_PASS -d /home/$3/$1
cp -R /etc/skel.2006 /home/$3
mv /home/$3/skel.2006 /home/$3/$1
chown -R $1:$3 /home/$3/$1
