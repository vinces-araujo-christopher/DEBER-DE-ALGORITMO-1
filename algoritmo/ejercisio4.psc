//Un hotel ofrece tres tipos de habitación: estándar ($100), premium ($200) y suite ($300).
//Si es temporada alta (julio o diciembre), se añade un recargo del 25%. Si la estadía es
//superior a 7 días, se aplica un descuento del 10%. Si el cliente elige la suite y la estadía
//es de más de 10 días, se le ofrece un descuento adicional del 5%. Además, si el cliente
//paga con tarjeta de crédito, hay un recargo del 3%.
Algoritmo ejercicio_4_CalcularReservaHotel
    Definir tipoHabitacion Como Entero
    Definir dias, mes Como Entero
    Definir tarjetaCredito Como Entero
    Definir precioBase, precioFinal Como Real
	
    // Entrada de datos
    Escribir "Ingrese el tipo de habitacion (1=Estandar, 2=Premium, 3=Suite): "
    Leer tipoHabitacion
    Escribir "Ingrese el numero de dias de estadia: "
    Leer dias
    Escribir "Ingrese el mes (1=Enero, ..., 12=Diciembre): "
    Leer mes
    Escribir "¿Pagara con tarjeta de credito? (1=Si, 0=No): "
    Leer tarjetaCredito
	
    // Precio base por habitacion
    Segun tipoHabitacion Hacer
        1:
            precioBase <- 100
        2:
            precioBase <- 200
        3:
            precioBase <- 300
    FinSegun
	
    // Precio inicial multiplicado por los dias
    precioFinal <- precioBase * dias
	
    // Recargo por temporada alta (julio=7 o diciembre=12)
    Si mes = 7 O mes = 12 Entonces
        precioFinal <- precioFinal * 1.25
    FinSi
	
    // Descuento si estadia > 7 dias
    Si dias > 7 Entonces
        precioFinal <- precioFinal * 0.90
    FinSi
	
    // Descuento adicional si es suite y estadia > 10 dias
    Si tipoHabitacion = 3 Y dias > 10 Entonces
        precioFinal <- precioFinal * 0.95
    FinSi
	
    // Recargo por pago con tarjeta de credito
    Si tarjetaCredito = 1 Entonces
        precioFinal <- precioFinal * 1.03
    FinSi
	
    // Salida
    Escribir "El precio final de la reserva es: $", precioFinal
FinAlgoritmo
