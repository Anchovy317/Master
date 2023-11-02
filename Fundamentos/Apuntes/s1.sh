#!bin/bash
echo "Introduce un numero"
read num
if [ $num -gt -1 ]
then
    echo "El numero es positivo"
else
    echo "El numero es negativo"
fi


