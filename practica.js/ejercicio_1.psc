//C�lculo de precio final con m�ltiples descuentos y recargos.
//Una tienda vende productos con precios variables.
//Si el cliente tiene membres�a Premium y su compra supera los $1000, recibe un descuento del 15%. 
//Si el cliente no tiene membres�a y paga con tarjeta de d�bito, recibe un descuento del 5%. 
//Si la compra es superior a $2000, se aplica un recargo del 2%. Si la compra se realiza en viernes, se aplica un descuento adicional del 3%.  
	
Algoritmo ejercicio_1_calculo_de_precio_final

	//calculo de precio final 
	
	// definir variables: precio, descuento, recargo, total Como Real
	//Definir  Premium , pagoDebito , viernes , como logico
	//  escribir ingrese precio de la compra , �Tiene membres�a Premium? (V/F) , �Pagar� con tarjeta de d�bito? (V/F)  , �La compra es en viernes? (V/F)   Leer 
	//Si Premium y compra > 1000 ? 15% descuento.
	//Si NO Premium y paga con d�bito ? 5% descuento.
	//Si compra > 2000 ? 2% recargo.
	//Si es viernes ? 3% descuento adicional.
	//Calcular descuentos acumulados seg�n las condiciones.
	//Calcular recargos si corresponde.
	//Aplicar la f�rmula final:
	// Mostrar Subtotal (precio original). Total de descuentos ,Total de recargos. , Precio final a pagar.
	Definir precio, descuento, recargo, total Como Real
	Definir premium Como Logico
	Definir pagoDebito Como Logico
	Definir viernes Como Logico
	Escribir "ingrese precio de la compra:"
	Leer precio
	Escribir "�Tiene membres�a Premium? (V/F):"
	Leer premium
	Escribir "�pagara con tarjeta de debito?(V/F)"
	Leer pagoDebito
	Escribir "�La compra es en viernes?(V/F)"
	Leer viernes
	descuento <-0
	recargo <-0
	si premium =  Verdadero y precio > 1000 Entonces
		descuento <- descuento + (precio*0.15)
	FinSi
	
		si premium =Falso y pagoDebito=Verdadero Entonces
			descuentos <- recargo +(precio*0.5)
		FinSi
		si precio>2000 Entonces
			recargo <-descuento+(precio*0.2)
		FinSi
		si viernes=Verdadero Entonces
			descuento <- descuento+(precio*0.3)
		FinSi
		total <-precio+descuento+cargo
		
		Escribir "Precio final: $", total
		
	
	
	
FinAlgoritmo
