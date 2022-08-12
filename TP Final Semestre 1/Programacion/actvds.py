
# 2)   Crear una lista en Python denominada “Dueno2”  y recorrerla con un bucle  mostrando sus elementos por pantalla con excepción del DNI y el apellido. Los elementos de la lista son:

#            23546987,  “Maria”,  “Perez”, 4789689,  “Pueyrredon  811”

Dueno2 = [23546987, "Maria", "Perez", 4789689, "Pueyrredon 811"]

#  que representan los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección) 

# 4)      Crear un lista en Python denominado “Perro2” que contenga los siguientes valores:

#       14,  Fido,  12/12/2012 , Macho, 23546987

Perro2 = [14, "Fido", "12/12/2012", "Macho", 23546987]

# Recorrer la lista “Perro” con un bucle y mostrar sus elementos por pantalla , comenzando desde el último hasta el primero.

def Recorrer(var):
    for x in range(len(var)):
        print(var[len(var)-1-x])

Recorrer(Perro)


# 5)      Crear una tupla en Python con el nombre de “Historial” la cual contenga los siguientes valores:

#           2350, 5960, 23000, 1000, 8900

Historial = (2350, 5960, 23000, 1000, 8900)

# Recorrer la tupla es el nombre de “Historial” para adicionar seja

# Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Puppy”. Calcular el monto total gastado a lo largo del tiempo por atención de “Puppy”. Si el gasto efectuado es menor a 30000, mostrar en pantalla dicho resultado, caso contrario mostrar el mensaje “Gastos por encima de lo presupuestado”.

def Monto(var):
    total = 0
    for x in range(len(var)):
        total += var[x]
    if total < 30000:
        print("El monto total gastado a lo largo del tiempo por atención de Puppy es de", total)
    else:
        print("Gastos por encima de lo presupuestado")

Monto(Historial)

# 7)  Crear una tupla en Python con el nombre de “Historial3” la cual contenga los siguientes valores:

#           9530, 4120, 4580, 1500, 890,7516,426

Historial3 = (9530, 4120, 4580, 1500, 890,7516,426)

# Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Lennon”. Calcular el promedio de gasto en pesos por atención de “Lennon” mostrándolo en pantalla. Si el promedio es mayor a 4500 indicar con un mensaje “Se ha excedido del gasto promedio para su mascota”.

def Promedio(var):
    total = 0
    for x in range(len(var)):
        total += var[x]
    promedio = total/len(var)
    if promedio > 4500:
        print("Se ha excedido del gasto promedio para su mascota")
    else:
        print("El promedio de gasto en pesos por atención de Lennon es de", promedio)

Promedio(Historial3)

# 8) Crear una tupla en Python con el nombre de “Historial4” la cual contenga los siguientes valores:

#           7510, 7960, 76180, 800, 4100

Historial4 = (7510, 7960, 76180, 800, 4100)

# Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Olivia”. Cree una función para determinar el valor mínimo de atención gastada en “Olivia”  mostrándolo en pantalla.

def Minimo(var):
    total = 0
    for x in range(len(var)):
        total += var[x]
    print("El valor mínimo de atención gastada en Olivia es de", min(var))

Minimo(Historial4)

# 9) Crear una tupla en Python con el nombre de “Historial5” la cual contenga los siguientes valores:

#           8520, 9510, 7530, 3570, 1590

Historial5 = (8520, 9510, 7530, 3570, 1590)

# Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Toto”. Crear una función para determinar el valor máximo de atención gastada en “Toto”.

def Maximo(var):
    total = 0
    for x in range(len(var)):
        total += var[x]
    print("El valor máximo de atención gastada en Toto es de", max(var))

Maximo(Historial5)

# 10) Crear una lista denominada “Clientes” con los nombres de los diferentes  dueños de perros.

#           Juan,  Mario,  Ariel,  Josefina,  Marianella.

Clientes = ["Juan", "Mario", "Ariel", "Josefina", "Marianella"]

# Ordenarla alfabéticamente y mostrarla por pantalla.

def Ordenar(var):
    var.sort()
    print(var)

Ordenar(Clientes)
