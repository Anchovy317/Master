#!/bin/bash
#Recibir la ruta de un fichero e indicar los permisos que tiene (escritura, lectura, ejecución)
echo "/home/Anchovy/Books/Comptia.pdf"
read ruta

if [ -e $ruta ];
then
 if [ -w $ruta];
 then
     echo "El fichero tiene permido de escritura"
 fi
if [ -x $ruta];
 then
     echo "El fichero tiene permido de ejecucion"
 fi
if [ -r $ruta];
 then
     echo "El fichero tiene permido de lectura"
 fi
else
    echo "No tiene permioso"
fi
