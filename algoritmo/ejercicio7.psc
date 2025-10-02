//Una compañía de seguros determina el precio de una póliza según el valor del vehículo y la edad del conductor. 
//Si el vehículo cuesta más de $20,000, se añade un recargo del 10%.
//Si el conductor tiene menos de 25 años, se añade un recargo del 15%.
//Si el vehículo es un automóvil eléctrico y tiene más de 3 años de antigüedad,
//se aplica un descuento del 5%. Además, si el vehículo es de lujo (valor superior a $50,000),
//hay un recargo adicional del 20%.
Algoritmo ejercicio_7_determinacion_precio
	//Entrada de datos;Valor del vehícul;Edad del conductor;Si es eléctrico (sí/no) ;Antigüedad del vehículo.
	//Inicializar precio
	//precio <- valor del vehículo
	//Condiciones de recargo
	//Si el valor del vehículo > 20,000 ? sumar 10% al precio
	//.Si la edad del conductor < 25 ? sumar 15% al precio
	//Si el valor del vehículo > 50,000 ? sumar 20% al precio
	//Condición de descuento
	//Si es eléctrico y antigüedad > 3 años ? restar 5% al preio
	//Salida de resultados
	//Mostrar el precio final de la póliza.
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
    Escribir "Ingrese la antiguedad del vehiculo (en años): ";
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
