#!/bin/bash
#Autor: Antonio Duran
#!/bin/bash
OF=/tmp/mi-backup-$(date +%Y%m%d).tgz
tar -zcf $OF ~/ 2>/tmp/errores.txt
echo "Copia de seguridad realizada"
