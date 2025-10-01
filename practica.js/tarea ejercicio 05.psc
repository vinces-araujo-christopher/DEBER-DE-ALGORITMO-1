//Un empleado recibe un salario bruto mensual. Si el salario es menor a $2000,
//se le aplica un impuesto del 10%. Si el salario está entre $2000 y $5000,
//el impuesto es del 20%. Si supera los $5000, el impuesto es del 30%.
//Si tiene más de 2 hijos, recibe una deducción de $100 por cada hijo.

Algoritmo Ejercicio05_salario_neto
//Definir variables:salarioBruto;impuesto;deduccion;salarioNeto;hijos
//Pedir al usuario:salarioBruto mensual;número de hijos
//Determinar el impuesto según el salario:
//Calcular el valor de impuesto:
//impuestoCalculado = salarioBruto * (porcentaje impuesto)
//Verificar deducción por hijos:
//Si hijos > 2 ? deduccion = hijos * 100
//En caso contrario ? deduccion = 0
//Calcular salarioNeto = salarioBruto - impuestoCalculado + deduccion
//Mostrar en pantalla:Salario Bruto;Impuesto aplicado;Deducción por hijos;Salario Neto
	Definir b, h, s Como Real 
	Escribir "salario bruto: "
	Leer b
	Escribir "numero de hijos: "
	Leer h
	Si b<2000 Entonces
		b <- b-(b*0.1)
	SiNo
		Si b>5000 Entonces
			b <- b-(b*0.3)
		SiNo
			b <- b-(b*0.2)
		Fin Si
	Fin Si
	h <- h*100
	s <- b+h
	Escribir  "sueldo final: ",s
FinAlgoritmo
