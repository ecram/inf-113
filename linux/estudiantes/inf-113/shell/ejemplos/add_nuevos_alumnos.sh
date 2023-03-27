#!/bin/sh

# add_nuevos_alumnos.sh
# Añade los usuarios para los alumnos nuevos
# Antonio Durán

ALU_QUOTA=30000

FILE=dist06.asc # Fichero a procesar
NL=`wc -l $FILE|cut -d " " -f 1` # Num de lineas del fichero

echo $NL
# Primero se crean las aulas
cat $FILE |cut -f 50 -d,|cut -f 2 -d\"|sort|uniq > aulas # Creamos un fichero con los nombres de aulas

NL=`wc -l aulas|tr -d "a-z" ` # num de aulas
for i in `seq 1 $NL` 
do
AULA=`head -$i aulas |tail -1`
echo "Creando aula ... $AULA" # Para cada aula, se crea su dir
mkdir /home/aulas/$AULA	
groupadd $AULA			# y su grupo
chown root:$AULA /home/aulas/$AULA
chmod 775 /home/aulas/$AULA # y se asignan los permisos
done

NL=`wc -l $FILE|cut -d " " -f 1`
echo $NL
for i in `seq 1 $NL` # procesamos linea a linea el fichero de alumnos
do
inicial=`head -$i $FILE |tail -1|cut -f 3 -d,|cut -f2 -d\"|tr 'A-Z' 'a-z'|cut -b 1` # Sacamos la nicial del nombre, pasandola a minusculas
apellido=`head -$i $FILE |tail -1|cut -f 2 -d,|cut -f2 -d\"|tr 'A-Z' 'a-z'|cut -f1 -d " "` # el primer apellido
dia=`head -$i $FILE |tail -1|cut -f 6 -d,|cut -f1 -d\/`  # el dia de nacimiento
mes=`head -$i $FILE |tail -1|cut -f 6 -d,|cut -f2 -d\/` # el mes de nacimiento
USER=$inicial$apellido$dia$mes # las juntamos para obtener el nombre de usuario

PASS=`head -$i $FILE |tail -1|cut -f 1 -d,|tr -d '/'|cut -c 0-8` # Obtenemos la contraseña
#AULA=`head -$i $FILE |tail -1|cut -f 50 -d,|cut -f2 -d\"`
AULA=`head -$i $FILE |tail -1|cut -f 82 -d\"` # obtenemos su aula

if [ ! -d /home/alumnos/$USER ]; then
echo "Creando $USER en aula $AULA ... con pass $PASS"
./alta_usuario.sh $USER $PASS alumnos # Creamos el usuario

#Añado al alumno a su clase
usermod -G $AULA $USER
#Le pongo la cuota
setquota $USER $ALU_QUOTA $ALU_QUOTA 0 0 /home
fi
done
