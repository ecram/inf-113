#!/bin/sh
#Autor: Antonio Duran

# add_nuevos_alumnos.sh
# Añade los usuarios para los alumnos nuevos
# Antonio Durán

ALU_QUOTA=30000

FILE=dist06.asc
NL=`wc -l $FILE|cut -d " " -f 1`

echo $NL
# Primero se crean las aulas
cat $FILE |cut -f 50 -d,|cut -f 2 -d\"|sort|uniq > aulas

NL=`wc -l aulas|tr -d "a-z" `
for i in `seq 1 $NL`
do
AULA=`head -$i aulas |tail -1`
echo "Creando aula ... $AULA"
mkdir /home/aulas/$AULA
groupadd $AULA
chown root:$AULA /home/aulas/$AULA
chmod 775 /home/aulas/$AULA
done

NL=`wc -l $FILE|cut -d " " -f 1`
echo $NL
for i in `seq 1 $NL`
do
inicial=`head -$i $FILE |tail -1|cut -f 3 -d,|cut -f2 -d\"|tr 'A-Z' 'a-z'|cut -b 1`
apellido=`head -$i $FILE |tail -1|cut -f 2 -d,|cut -f2 -d\"|tr 'A-Z' 'a-z'|cut -f1 -d " "`
dia=`head -$i $FILE |tail -1|cut -f 6 -d,|cut -f1 -d\/`
mes=`head -$i $FILE |tail -1|cut -f 6 -d,|cut -f2 -d\/`
USER=$inicial$apellido$dia$mes

PASS=`head -$i $FILE |tail -1|cut -f 1 -d,|tr -d '/'|cut -c 0-8`
#AULA=`head -$i $FILE |tail -1|cut -f 50 -d,|cut -f2 -d\"`
AULA=`head -$i $FILE |tail -1|cut -f 82 -d\"`

if [ ! -d /home/alumnos/$USER ]; then
echo "Creando $USER en aula $AULA ... con pass $PASS"
#E_PASS=`mkpasswd -S "GV" $PASS`
./alta_usuario.sh $USER $PASS alumnos

#Añado al alumno a su clase
usermod -G $AULA $USER
#Le pongo la cuota
setquota $USER $ALU_QUOTA $ALU_QUOTA 0 0 /home
fi
done
