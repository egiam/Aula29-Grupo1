# 9) Crear una tupla en Python con el nombre de “Historial5” la cual contenga los siguientes valores:

#           8520, 9510, 7530, 3570, 1590

# Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Toto”. 
# Crear una función para determinar el valor máximo de atención gastada en “Toto”.

Historial5 = (8520, 9510, 7530, 3570, 1590)

def Maximo(var):
    max = 0
    for x in range(len(var)):
        if var[x] > max:
            max = var[x]
    print("El valor maximo de atencion gastado en TOTO es de", max)
    
Maximo(Historial5)
