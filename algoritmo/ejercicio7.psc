//Una compa��a de seguros determina el precio de una p�liza seg�n el valor del veh�culo y la edad del conductor. 
//Si el veh�culo cuesta m�s de $20,000, se a�ade un recargo del 10%.
//Si el conductor tiene menos de 25 a�os, se a�ade un recargo del 15%.
//Si el veh�culo es un autom�vil el�ctrico y tiene m�s de 3 a�os de antig�edad,
//se aplica un descuento del 5%. Adem�s, si el veh�culo es de lujo (valor superior a $50,000),
//hay un recargo adicional del 20%.
Algoritmo ejercicio_7_determinacion_precio
	//Entrada de datos;Valor del veh�cul;Edad del conductor;Si es el�ctrico (s�/no) ;Antig�edad del veh�culo.
	//Inicializar precio
	//precio <- valor del veh�culo
	//Condiciones de recargo
	//Si el valor del veh�culo > 20,000 ? sumar 10% al precio
	//.Si la edad del conductor < 25 ? sumar 15% al precio
	//Si el valor del veh�culo > 50,000 ? sumar 20% al precio
	//Condici�n de descuento
	//Si es el�ctrico y antig�edad > 3 a�os ? restar 5% al preio
	//Salida de resultados
	//Mostrar el precio final de la p�liza.
	Definir precio_base, valor_vehiculo, antiguedad, precio Como Real;
    Definir edad_conductor Como Entero;
    Definir es_electrico Como Logico;
	
    Escribir "Ingrese el precio base de la poliza: ";
    Leer precio_base;
    Escribir "Ingrese el valor del vehiculo: ";
    Leer valor_vehiculo;
    Escribir "Ingrese la edad del conductor: ";
    Leer edad_conductor;
    Escribir "El vehiculo es electrico? (V/F): ";
    Leer es_electrico;
    Escribir "Ingrese la antiguedad del vehiculo (en a�os): ";
    Leer antiguedad;
	
    precio <- precio_base;
	
    Si valor_vehiculo > 20000 Entonces
        precio <- precio * 1.10;
    FinSi
	
    Si edad_conductor < 25 Entonces
        precio <- precio * 1.15;
    FinSi
	
    Si valor_vehiculo > 50000 Entonces
        precio <- precio * 1.20;
    FinSi
	
    Si es_electrico = Verdadero Y antiguedad > 3 Entonces
        precio <- precio * 0.95;
    FinSi
	
    Escribir "Precio final de la poliza: ", precio;
FinAlgoritmo
