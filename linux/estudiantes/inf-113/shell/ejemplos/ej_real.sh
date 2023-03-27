#!/bin/bash
#Este script cambia la pagina de inicio de todos los usuarios
#Para ello localiza todos los perfiles de firefox y cambia las lineas
#del fichero prefs.js para todos los usuarios, de forma que se cambia
#la pagina de inicio.
#
# Francisco Mora
#
####################################################################################

PAGINA_INICIO="http://ieselbrocense.juntaextremadura.net"

cd /home
for i in `ls /home/profesor` 	# Para cada usuario profesor
    do    
        if [ -d /home/profesor/$i ]; then	# Se comprueba que existe el directorio	
		prefs=`cat /home/profesor/$i/.mozilla/firefox/profiles.ini | grep Path`		# Se obtiene la linea path del fichero de configuracion
		for ficheroconpath in $prefs
		do
			aux=${ficheroconpath:5}	# Nos quedamos con el final de la cadena, a partir de la pos 5 (para saltar Path=), para tener el directorio
			directorio="/home/profesor/$i/.mozilla/firefox/$aux" 	#guardamos el nombre del directorio
			fichero="/home/profesor/$i/.mozilla/firefox/$aux/prefs.js" 	#guardamos el nombre del fichero
			if [ -f $fichero ]; then			# si existe el fichero
				grep -v -e 'user_pref("browser.startup.homepage"' $fichero > $directorio/prefs.jss # eliminamos la linea de la pag de inicio
				echo "user_pref(\"browser.startup.homepage\",\"$PAGINA_INICIO\");" >> $directorio/prefs.jss #añadimos una nueva pag de inicio
				mv $fichero $directorio/prefs.js.original # se guarda una copia del fichero original
 				mv $directorio/prefs.jss $fichero # se mueve el nuevo fichero, para que haga efecto
			else
                                echo "user_pref(\"browser.startup.homepage\",\"$PAGINA_INICIO\");" > $directorio/prefs.js # si no existe el fichero, se crea con la linea
			fi
		uid=`stat -c%u profesor/$i` # se obtiene el uid del usuario
		chown $uid:$uid $fichero  # se da propiedad del nuevo archivo al usuario
		done
	        echo "instalado profesor "$i # muestra el progreso
   	  
        fi
    done
