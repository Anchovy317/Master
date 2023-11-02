#!/bin/bash
#Realiza un programa que solicite un número y compruebe si dicho número se encuentra dentro de enun archivo llamado numeros.txt

echo "Comprobacion de fichero"
read num
for i in 'cat /home/Anchovy/numero.txt'
do
    if [ $num -eq $1 ];
    then
     echo "Hay numero en el fichero"
     exit 0
    fi
done
    echo "No hay numero "
