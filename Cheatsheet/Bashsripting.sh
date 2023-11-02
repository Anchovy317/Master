#!/bin/zsh




#String quotes
name="Brais"
echo "Hi $name" #==> Hi Brais
#Shell execution
echo "I' un $(pwd)"
echo "I'm in 'pwd'" #obsolescent
#Same

#Variables:
name="Brais"
echo $name #see below
echo "$name"
echo "${name}"
wildcard="*.txt"
options="iv"
cp -$options $wildcard /tmp

:'
name="John": En esta línea, se crea una variable llamada name y se le asigna el valor "John". No hay comillas alrededor del valor, lo que es
aperfectamente válido ya que no contiene espacios ni caracteres especiales.

#echo $name: Aquí se muestra el contenido de la variable name. En este caso, como el valor no contiene espacios ni caracteres especiales,
#no es necesario usar comillas. Esto mostrará "John" en la pantalla.

#echo "$name": En esta línea, el valor de la variable name se muestra entre comillas dobles. Usar comillas dobles es útil cuando
#el valor de la variable podría contener espacios u otros caracteres especiales. En este caso, mostrará "John" de la misma manera que la línea anterior.

#echo "${name}!": Esta línea muestra el contenido de la variable name seguido por un signo de exclamación. Las llaves {} se utilizan
#para delimitar el nombre de la variable y garantizar que se interprete correctamente. Mostrará "John!" en la pantalla.

#Luego, el comentario proporciona una recomendación general en cuanto a cuándo usar comillas alrededor de variables. Específicamente,
#se sugiere citar las variables a menos que contengan wildcards (como * o ?) o fragmentos de comandos que necesiten ser expandidos. Las comillas ayudan a evitar
#problemas de interpretación incorrecta, especialmente cuando se trata de valores con espacios o caracteres especiales.
#El siguiente bloque de código muestra cómo se pueden utilizar comillas en un contexto diferente:

#wildcard="*.txt": Aquí, se asigna el valor "*.txt" a la variable wildcard. Este valor contiene un asterisco (*), que es un carácter comodín que se utilizará para
#coincidir con múltiples archivos en un contexto de comandos.

#options="iv": En esta línea, se crea la variable options y se le asigna el valor "iv".
#cp -$options $wildcard /tmp: En esta línea, se utiliza la variable options para especificar opciones para el comando cp y la variable wildcard para representar un
#conjunto de archivos que coinciden con el patrón "*.txt". En este caso, no se utilizan comillas alrededor de $options ni $wildcard porque se espera que se expandan correctamente en este contexto.
'

#Conditional execution
git commit && git push
git commit || echo "Commit failed"

#Conditionals
if [{ -z $String}]; then
    echo "String empty"
elif [[ -n "$String"]]; then
    echo "String is not empty"
fi

#Conditions
[[ -z String ]] #empty String
[[ -n String ]] #Not empty String
[[ String == String ]] #Equal
[[ String != String ]] #Not Equal
[[ NUM -eq NUM ]] #Equal
[[ NUM -nea NUM ]] #notEqual
[[ NUM -lt NUM ]] #less than
[[ NUM -le NUM ]] #les than  or Equal
[[ NUM -gt NUM ]] #Greater than
[[ NUM -ge NUM ]] #Greater than or equal
[[ String =~ String ]] #Regexp
[[ -o noclobber ]] #id OPtionname is enable
El uso de [[ -o OPTIONNAME ]] en Bash es para verificar si una opción específica de Bash está habilitada. Las opciones en Bash se pueden habilitar o
deshabilitar según tus necesidades, y puedes verificar su estado utilizando [[ -o OPTIONNAME ]]. "OPTIONNAME" se reemplaza por el nombre de la opción específica que deseas verificar.
Example:
if [[ -o nounset]]; then
    echo "La opcion nounset (set -u) esta habilitada"
else
    echo "La opcion nounset (set -u) no esta habilitada"

Example:
    if [["$name =~ ^[0-9]+$"]]; then
        echo "La variable contiene un digito"
    else
        echo "La variable no contiene solo digitos"
    fi

[[ NUM < NUM ]] #Numeric condition
    Example:
    a=1
    b=3

    if (( a < b)); then
        echo "a es menor que b."
    else
        echo "a no es menor que b."

    fi

#File conditions:
[[ -e FILE]] #Exist
[[ -r FILE]] #Readable#
[[ -h FILE]] #Symlink enlace simbolico
[[ -d FILE]] #Directory
[[ -w FILE]] #Writeable
[[ -s FILE]] #Size is > 0 bytes
[[ -f FILE]] #File
[[ -x FILE]] #Executable
[[ FILE1 -nt FILE2 ]] #1 is more recent than 2
[[ FILE1 -ot FILE2 ]] #2 is more recent than 1
[[ FILE1 -of FILE2 ]] #same files


#Funtions:

get_name(){
    echo "brais"
}
echo "You are $(get_name)"
#Defining a funtions:
myfun(){
    echo "Hello $1"
}
#Returning Funtions:
myfun(){
    local myresult='some value'
    echo "$myresult'"
}
result=$(myfun)

#Arguments:
$# Number of arguments
# Supongamos que ejecutamos el script con 3 argumentos: script.sh arg1 arg2 arg3
echo "Número de argumentos pasados: $#"
# Esto imprimirá "Número de argumentos pasados: 3"

$* ALL positional arguments(as a single words)
# Supongamos que ejecutamos el script con 3 argumentos: script.sh arg1 arg2 arg3
echo "Todos los argumentos como una sola cadena: $*"
# Esto imprimirá "Todos los argumentos como una sola cadena: arg1 arg2 arg3"

$@ All positional arguments(as separate strings)
# Supongamos que ejecutamos el script con 3 argumentos: script.sh arg1 arg2 arg3
echo "Todos los argumentos como cadenas separadas: $@"
# Esto imprimirá "Todos los argumentos como cadenas separadas: arg1 arg2 arg3"

$1 First argument
# Supongamos que ejecutamos el script con el argumento "apple": script.sh apple
echo "El primer argumento es: $1"
# Esto imprimirá "El primer argumento es: apple"

$_ Last argument
# Supongamos que ejecutamos el comando "ls -l archivo.txt"
echo "El último argumento del comando anterior es: $_"
# Esto imprimirá "El último argumento del comando anterior es: archivo.txt"
#(Special parametres(https://web.archive.org/web/20230318164746/https://wiki.bash-hackers.org/syntax/shellvars#special_parameters_and_shell_variables) )


#Brace Expansion: expansion en llaves sirve para generar palabras y valores al especificar patrones con llaves
echo "{A,B}.js" Same as A B
{A,B}.js same as  A.js B.js
{1..5} same as 1 2 3 4 5
echo file.{txt,html,pdf}
file.txt file.html file.pdf

#Strict mode: Es una tecnica que permite mejorar la robustez y la depuracion de los script.
set -euo pipefail
IFS=$'\n\t'
    set -euo pipefail:

        set -e (o set -o errexit): Esta opción activa el modo "errexit" o "exit on error". Hace que el script falle inmediatamente si un comando devuelve un código de retorno distinto de cero. Esto es útil para detectar errores temprano y evitar que el script continúe ejecutándose cuando algo sale mal.

        set -u (o set -o nounset): Esta opción activa el modo "nounset" o "uninitialized variables". Si intentas utilizar una variable no definida, el script fallará. Ayuda a evitar problemas al referirse a variables que no existen.

        set -o pipefail: Esta opción asegura que si un comando en una tubería (|) devuelve un código de retorno distinto de cero, el script también fallará. De esta manera, si alguno de los comandos en una tubería no tiene éxito, se detectará.

    IFS=$'\n\t':
        IFS (Internal Field Separator): Esta variable de entorno determina cómo Bash divide las cadenas en palabras o campos. En este caso, se establece IFS para que los caracteres de nueva línea (\n) y tabulación (\t) se utilicen como separadores. Esto es útil cuando se trabaja con datos que contienen estos caracteres y se desea dividirlos en palabras en función de estos teparadores.

#Parametrs expansions
name="Brais"
echo "${name}"
echo "${name /B/b}" #==> brais(subsitution)
echo "${name:0:2}" #==> br (slicing)
echo "${name::2}" #==> br (slicing)
echo "${name::-1}" #==> bra (slicing)
echo "${name:(-1)}" #==> s (slicing from rigth)
echo "${name:(-2):1}" #==> s (slicing from rigth)
echo "${name:0:2}" #==> br (slicing)
echo "${food :- Cake}" #==> food or cake
length=2 #se define la variable length y luego se utiliza para cortar los dos caracteres
echo "${name:0:length}" #==> Br

str="/path/to/foo.cpp"
echo "${str%.cpp}" # /path/to/foo
echo "${str%.cpp}.o" # /path/to/foo.o
echo "${str%/*}" # /path/to
echo "${str##*.}" # cpp estension
echo "${str##*/}" # foo.cpp basepath
echo "${str#*/}" # /path/to/foo.cpp
echo "${str##*/}" # foo.cpp o
echo "${str/foo/bar}" # /path/to/bar.cpp

str="Hello World"
echo "${str:6:5}" #world
echo "${str: -5:5}" # world

src="/path/to/foo.cpp"
base=${src##*/} #foo.cpp basepath
dir=${src%base} #path/to dir path

#subsitution:
${foo%suffix} #remove suffix
${foo#prefix} #remove prefix
${foo%%suffix} #Remove long suffix
${foo/%suffix} #Remove long suffix
${foo##prefix} #Remove long prefex
${foo/#prefix} #Remove long prefix
${foo/from/to} #Remplace First match
${foo//from/to} #Remplace all
${foo/%from/to} #Remplace suffix
${foo/#from/to} #Remplace prefix

#Comments:
#Single line
:'This is a
multiple line
Comment
'
#Substrings:
${foo:0:3} # Sustring(position, length)
echo "${foo:0:3}"  # Salida: "exa"

${foo:(-3):3} #Substrings from the rigth
echo "${foo:(-3):3}"  # Salida: "ple"

#length
${#foo} #length of $foo

#Default values
${foo:-val} # $foo, or val if unset (or null)
${foo:=val} #Set $foo to val if unset (or null)
${foo:+val} #val if $foo is set (and not null)
${foo:?message} #Show error message and exit if $foo is unset (or null)

#Loops:

#Basic Loop
for i in /etc/rc.*; do
    echo "$1"
done

#Ranges
for i in {1..5}; do
    echo "Welcome $1"

done
#With step side:
for i in {5..10..20}; do
    echo "Welcome $1"

done

#C-like for loop:
for ((i = 0 ; 1 < 100 ; i ++)); do
    echo "$1"

done

#Reading line:

while read -r line; do
    echo "$1"

done <file.txt

#Forever:

while true; do

done
