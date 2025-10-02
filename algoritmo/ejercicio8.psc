//Un sistema de transporte cobra $1 por cada kilómetro recorrido. 
//Si el viaje se realiza en horario punta (entre las 7:00 AM y las 9:00 AM, o entre las 5:00 PM y las 7:00 PM), 
//se aplica un recargo del 20%. Si el usuario tiene más de 65 años,
//recibe un descuento del 50%. Si recorre más de 30 km, se aplica un descuento adicional del 10%.
Algoritmo ejercicio_8_calculo_tarifa
    Definir distancia, precio Como Real;
    Definir edad Como Entero;
    Definir hora Como Real;   // Hora expresada en formato 24h (ej. 7.30 para 07:30)
	
    Escribir "Ingrese la distancia recorrida en km: ";
    Leer distancia;
    Escribir "Ingrese la hora del viaje (ejemplo 7.5 para 7:30): ";
    Leer hora;
    Escribir "Ingrese la edad del usuario: ";
    Leer edad;
	
    precio <- distancia * 1;
	
    Si (hora >= 7 Y hora <= 9) O (hora >= 17 Y hora <= 19) Entonces
        precio <- precio * 1.20;
    FinSi
	
    Si edad > 65 Entonces
        precio <- precio * 0.50;
    FinSi
	
    Si distancia > 30 Entonces
        precio <- precio * 0.90;
    FinSi
	
    Escribir "Precio final del pasaje: ", precio;
FinAlgoritmo
