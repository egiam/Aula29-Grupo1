#Ejercicio numero 6

Historial2=( 23500, 5960, 2300, 10200, 8900 )

sumatotal= sum(Historial2)


def frida():
    contador=0
    for i in Historial2:
            if i > 5000:
                contador = contador+1
    print(contador)
    return

resultado = frida()

print('Usted gasto ', resultado ,' veces mas de 5000 pesos, el total es ', sumatotal)