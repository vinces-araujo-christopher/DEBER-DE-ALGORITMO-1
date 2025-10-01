// Bonificaciones salariales según condiciones de antigüedad y desempeño
//Un empleado recibe un salario base de $2000. Si tiene más de 5 años en la empresa y su desempeño es superior a 80%,
//recibe una bonificación del 10%. Si su desempeño es superior a 90% y además ha trabajado más de 50 horas esa semana,
//recibe una bonificación adicional del 5%. Si no cumple ninguna condición, no recibe bon///ificación.
	
Algoritmo ejercicio_2_bonificasiones_salariales
	
	//Bonificacion salariales.
	
	//ingresar datos :salarioBase = 2000;salarioFinal;bonificación;años, desempeño, horas.
	//Pedir al usuario:años de antigüedad;desempeño (%);horas trabajadas.
	//Inicializar bonificación en 0.
	//Verificar condiciones:Si años > 5 y desempeño > 80 ? bonificación = +10% del salario base;Si desempeño > 90 y horas > 50 ? bonificación = +5% del salario base.
	//Calcular salarioFinal = salarioBase + bonificación.
	//Mostrar:salario base;bonificación total;salario final
	Definir salarioBase, salarioFinal, bonificacion Como Real
    Definir anios, horas Como Entero
    Definir desempeno Como Real
    
    salarioBase <- 2000
    bonificacion <- 0
    
    Escribir "Ingrese los años de antigüedad en la empresa: "
    Leer anios
    Escribir "Ingrese el desempeño del empleado (en %): "
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
    Escribir "Bonificación total: $", bonificacion
    Escribir "Salario final: $", salarioFinal
FinProceso
FinAlgoritmo
