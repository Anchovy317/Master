Virtualizacion:
 Bare Metal:
 Servidores Virtuales

 Tipos de Virtualizacion:
    1. Computo
    2. De red SDN
    3. De almacenamiento
HCI:


Contenerizacion:
app1 app2 app3
libreria
SO huesped
Hipervisor
Infrastructura


app1 app2 app3
libreria
Motor de contenedor
Sistema Operativo
Infrastructura

Codificacion de la info:
    Bits: unidad minima de almacenamiento
    valores 0-1
    Se almacenan en carga electrica:
Bytes: 8 bits= 1 octeto bytes.

Prefijos:
k = kilo
m= mega
g= giga
t= tera
p=peta
e=exa
z= zetta
y= yotta 10^24
NUMERO DECIMALES, BINARIOS, HEXADECIMAL.
hexadecimal 0,1,2,3,4,5,6,7,8,9,A,B,C,D,F

Hashes:

openssl para los hashes de las isos
echo $0 para saber el shell

Linux:
Sreams de flujos  de Entrada/Salida
sdin: Entrada -simbolo 0<
stout: salida -simbolo 1>
stderr: error estandar -simbolo2>
/dev/null
Variables de entorno:
$SHELL
$USER
$PATH
$PWD
$HOME
$LANG

Comandos:
exec
echo
env
export
PWD
set
unset

Directorios y archivos:
routa relativa:
touch
mkdir
rmdir
man(manual):
rmdir -r remove dir con ficheros

Tipos y permisos de archuvos
d Directorios
l enlace simbolicos
- Archivo convencional
p enlace archivo especial
drwx------ la primera de de tipo de archivo
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwxr-xr-x
drwx------
drwxr-xr-x
drwx------
drwx------
drwxr-xr-x
/etc/shadow es el Directorios para las passwords

Cambiar permisos
chown
chgrp
chmod
cat more less head tail
cat /etc/shadow | wc -l(para saber las lines de fichero)
grep ... cadena de texto fichero
grep -w 'error' /etc/shadow

Commandos;
groupadd
gpasswd
gpasswd
Estructura basica de Linux

ip a
systemctl
enable
status
start
enable
disable
Virtual box NAT  Modo red nat
En settings red NAT
APache

MIRAR CONEXIONES NAT EN VB

SCRIPTING:
chmod u+x archivo
chmod  g-w archivo
sh archivo
