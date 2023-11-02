#!/bin/zsh
#Recibir una ruta de un fichero e indicar si es un directorio o un fichero
echo "../../Test/"
read ruta

if [$ruta -e ]; then
    echo "Es un fichero"
else
    echo "No lo es"

fi
