//una empresa de envios cobra 10 dolares por cada 5kg de peso del paquete. 
//si la distancia es mayor a 500km , hay un recargo del 15%. si el envio es internacional ,
//se añade un recargo del 20%. si el cliente elige un servicio expres y la distancia es mayor a 1000km , 
//el encargo aumenta en un 10%adicional. ademas si el peso del paquete es superior a 50kg , se cobra un encargo adicional del 5%

Algoritmo ejercicio_3_CalcularEnvio
    Definir peso, distancia Como Real
    Definir internacional, expres Como Entero
    Definir precioBase, precioFinal Como Real
    Definir bloques Como Entero
    Definir auxPeso Como Real
	
    // Entrada de datos
    Escribir "Ingrese el peso del paquete (kg): "
    Leer peso
    Escribir "Ingrese la distancia (km): "
    Leer distancia
    Escribir "¿Es envío internacional? (1=Sí, 0=No): "
    Leer internacional
    Escribir "¿Desea servicio exprés? (1=Sí, 0=No): "
    Leer expres
	
    // Cálculo del precio base: 10 dólares por cada 5 kg (redondeo hacia arriba)
    auxPeso <- peso
    bloques <- 0
    Mientras auxPeso > 0 Hacer
        bloques <- bloques + 1
        auxPeso <- auxPeso - 5
    FinMientras
    precioBase <- bloques * 10
    precioFinal <- precioBase
	
    // Recargos
    Si distancia > 500 Entonces
        precioFinal <- precioFinal * 1.15
    FinSi
	
    Si internacional = 1 Entonces
        precioFinal <- precioFinal * 1.20
    FinSi
	
    Si expres = 1 Y distancia > 1000 Entonces
        precioFinal <- precioFinal * 1.10
    FinSi
	
    Si peso > 50 Entonces
        precioFinal <- precioFinal * 1.05
    FinSi
	
    // Salida
    Escribir "El precio final del envío es: $", precioFinal
FinAlgoritmo

