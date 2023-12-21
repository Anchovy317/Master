import numbers
import resource
import resource
import modulefinder
"""
Las variables son utilizadas  para almacenar datos en la memoria y poder acceder a ellos posteriormiente mediante su
nombres. Cada  variable  tiene un nombre unico que se utiliza para referirse a su valor almacenado, los tipos de datos en Python
represeta el tipo de valor que una variable puede conter, como numerosm cadenas y textos....
"""
name = "javi"
age = 25
price_product = 1
price = 19.99
pi = 3.1415

mayor_age = True
is_rainung = False

"""
Al asignar un valor a una variable en Python, el tipo de datos se infire auto, si luego le asignamos x = "HOLA", modificaras auto el
tipo de x para que ahora sea una cadena de texto, esta flexibilidad es lo que hace que Python sea muy versatil y facil de utilizar.

"""
#=========OPERADORES=========#

a = 10

b = 5

resultado = a + b
resultado = a - b
resultado = a * b
resultado = a / b
resultado = a // b #Division entera realiza la division entre dos valores y devuelve el cociente como un entero, descartando el resiiduo.
resultado = a ** b
resultado = a % b
print(resultado)

"""
Las funciones int() y Float():
    Si necesitas trasformar una variable tipo texto a numerica, debe utlizar las funciones de conversion adecuadas, las funciones mas comunes
    para realizar esta trasformacion son int() float()
"""
texto_entero = "123"
numero_entero = int(tecto_entero)
print(numero_entero)
# Si la cadena o representa un numero valido, la conversacion generara un errir, de que la cadena sea valida antes de realizar la conversion.
'''
Convertir a FlotanteL si la cadena de texto representa un numero decimal, puedes utilizar la funcion Float para convertirla en valor numerico.
'''

text_float = "3.14"
number_float = float(text_float)
print(number_float)


