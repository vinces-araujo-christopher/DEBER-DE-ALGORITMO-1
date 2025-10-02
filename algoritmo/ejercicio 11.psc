//Una empresa desea calcular el sueldo final de sus empleados al finalizar la semana.
//Para ello, se tiene en cuenta lo siguiente:
//? El salario base semanal del empleado.
//? Las horas trabajadas durante la semana.
//? La tarifa que se paga por cada hora normal.
//Si un empleado trabaja más de 40 horas, las horas extras se pagan con un 50% adicional
//sobre la tarifa normal.
//Además, Si el salario base supera los $2000, se aplica un impuesto del 10% sobre el salario
//bruto (salario base más horas extras); de lo contrario, el impuesto es del 5%.
//El sueldo final se calcula restando el impuesto al salario bruto.
//Se solicita: Diseñe un algoritmo que lea el salario base, las horas trabajadas y la tarifa por
//hora; calcule y muestre el sueldo final del empleado, considerando las reglas anteriores.Algoritmo sin_titulo
Algoritmo ejercisio_11_calcular_sueldo
	//Definir variables:salarioBase;horasTrabajadas;tarifaHora;horasExtras;pagoExtras;salarioBruto;impuesto;sueldoFinal
	//Pedir al usuario:salarioBase;horasTrabajadas;tarifaHora
	//Calcular horas extras:Si horasTrabajadas > 40 ? horasExtras = horasTrabajadas - 40
	//En caso contrario ? horasExtras = 0
	//Calcular pago por horas extras:pagoExtras = horasExtras * (tarifaHora * 1.5)
	//Calcular salario bruto:salarioBruto = salarioBase + pagoExtras
	//Calcular impuesto:Si salarioBase > 2000 ? impuesto = salarioBruto * 0.10;
	//En caso contrario ? impuesto = salarioBruto * 0.0
	//Calcular sueldo final:sueldoFinal = salarioBruto - impuesto
	//Mostrar en pantalla:Salario base Horas ;trabajadas;Horas extras y pago de ellas;Salario bruto;Impuesto aplicado;Sueldo final
	
	Definir sa, ht, th, su, b, hx Como Real
	Escribir "sueldo base: "
	Leer sa
	Escribir "horas trabajadas: "
	Leer ht
	Escribir "tarifa por hora: "
	Leer th
	hx<-(ht-40)*(th*1.5)
	b<-sa+hx
	Si sa>2000 Entonces
        su <- b-(b*0.1)
	SiNo
		su <- b-(b*0.05)
	Fin Si
	Escribir "el sueldo final es:",su
	
FinAlgoritmo
