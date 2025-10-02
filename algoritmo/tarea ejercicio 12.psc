//Desarrolle un algoritmo para determinar si un año leído por teclado es o no bisiesto.
//Nota: Un año bisiesto es aquel múltiplo de 4 pero no de 100 o si es múltiplo de 400.
//Un año es bisiesto si cumple las siguientes condiciones:
//Es divisible entre 4, Y(AND) no entre 100
//Ejemplo:
//2024 ? divisible entre 4 y(AND) no entre 100 ? ? bisiesto
//1900 ? divisible entre 4 y entre 100 ? ? no es bisiesto
//O (OR) es divisible entre 400
//Ejemplo:
//2000 ? divisible entre 400 ? ? bisiesto
//2100 ? divisible entre 100 pero no entre 400 ? ? no es bisiesto
Algoritmo Ejercicio12
//Definir variable:anio (entero)
//Pedir al usuario ingresar el año.
//Verificar condiciones:
//Si el año es divisible entre 4 y no es divisible entre 100 ? bisiesto
//si el año es divisible entre 400 ? bisiesto
//En caso contrario ? no bisiesto
//Mostrar resultado en pantalla.
    Definir a Como Entero

    Escribir "Ingrese un año:"
    Leer a

    Si (a % 4 = 0 Y a % 100 <> 0) O (a % 400 = 0) Entonces
        Escribir "Bisiesto"
    SiNo
        Escribir "No es bisiesto"
    FinSi
FinAlgoritmo
