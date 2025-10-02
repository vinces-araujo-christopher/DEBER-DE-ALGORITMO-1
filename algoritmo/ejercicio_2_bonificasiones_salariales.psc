// Bonificaciones salariales seg�n condiciones de antig�edad y desempe�o
//Un empleado recibe un salario base de $2000. Si tiene m�s de 5 a�os en la empresa y su desempe�o es superior a 80%,
//recibe una bonificaci�n del 10%. Si su desempe�o es superior a 90% y adem�s ha trabajado m�s de 50 horas esa semana,
//recibe una bonificaci�n adicional del 5%. Si no cumple ninguna condici�n, no recibe bon///ificaci�n.
	
Algoritmo ejercicio_2_bonificasiones_salariales
	
	//Bonificacion salariales.
	
	//ingresar datos :salarioBase = 2000;salarioFinal;bonificaci�n;a�os, desempe�o, horas.
	//Pedir al usuario:a�os de antig�edad;desempe�o (%);horas trabajadas.
	//Inicializar bonificaci�n en 0.
	//Verificar condiciones:Si a�os > 5 y desempe�o > 80 ? bonificaci�n = +10% del salario base;Si desempe�o > 90 y horas > 50 ? bonificaci�n = +5% del salario base.
	//Calcular salarioFinal = salarioBase + bonificaci�n.
	//Mostrar:salario base;bonificaci�n total;salario final
	Definir salarioBase, salarioFinal, bonificacion Como Real
    Definir anios, horas Como Entero
    Definir desempeno Como Real
    
    salarioBase <- 2000
    bonificacion <- 0
    
    Escribir "Ingrese los a�os de antig�edad en la empresa: "
    Leer anios
    Escribir "Ingrese el desempe�o del empleado (en %): "
    Leer desempeno
    Escribir "Ingrese las horas trabajadas esta semana: "
    Leer horas
    
   
    Si (anios > 5) Y (desempeno > 80) Entonces
        bonificacion <- bonificacion + salarioBase * 0.10
    FinSi
    
    
    Si (desempeno > 90) Y (horas > 50) Entonces
        bonificacion <- bonificacion + salarioBase * 0.05
    FinSi
    
    salarioFinal <- salarioBase + bonificacion
    
    Escribir "Salario base: $", salarioBase
    Escribir "Bonificaci�n total: $", bonificacion
    Escribir "Salario final: $", salarioFinal
FinProceso
FinAlgoritmo
