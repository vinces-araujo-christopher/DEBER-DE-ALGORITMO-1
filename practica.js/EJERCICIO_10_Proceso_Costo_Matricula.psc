//Una universidad cobra una matrícula base de $2000.
//Si el estudiante tiene un promedio superior a 90, recibe un descuento del 15%. 
//Si tiene más de 2 hermanos en la universidad, recibe un descuento adicional del 10%.
//Si el estudiante paga después de la fecha límite, se añade un recargo del 5%. 
//Si el estudiante está inscrito en más de 5 asignaturas, recibe un descuento adicional del 5%.
Algoritmo EJERCICIO_10_Proceso_Costo_Matricula
	//.Ingresar datos : Promedio del estudiante.;Número de hermanos en la universidad.;Número de asignaturas inscritas.;Si pagó tarde o no (sí/no).
	//Asignar costoFinal = 2000 (matrícula base).
	//¿Promedio > 90?
	//Sí ? aplicar 15% de descuento.
	//No ? seguir.
	//.¿Hermanos > 2?
	//Sí ? aplicar 10% de descuento.
	//No ? seguir.
	// ¿Asignaturas > 5?
	//Sí ? aplicar 5% de descuento.
	//No ? seguir.
	//¿Pagó después de la fecha límite?
	//Sí ? aplicar recargo del 5%.
	//No ? seguir.
	//Mostrar el costo final de la matrícula.
	
	
		Definir promedio Como Real
		Definir hermanos, asignaturas Como Entero
		Definir pagaTarde Como Logico
		Definir matriculaBase, costoFinal Como Real
		matriculaBase <- 2000
		costoFinal <- matriculaBase
		Escribir "Ingrese el promedio del estudiante (0 a 100): "
		Leer promedio
		Escribir "Ingrese la cantidad de hermanos del estudiante en la universidad: "
		Leer hermanos
		Escribir "Ingrese la cantidad de asignaturas en las que se inscribió: "
		Leer asignaturas
		Escribir "¿El estudiante pagó después de la fecha límite? (V/F): "
		Leer pagaTarde
		Si (promedio > 90) Entonces
			costoFinal <- costoFinal * 0.85
		FinSi
		Si (hermanos > 2) Entonces
			costoFinal <- costoFinal * 0.90
		FinSi
		Si (asignaturas > 5) Entonces
			costoFinal <- costoFinal * 0.95
		FinSi
		
		Si (pagaTarde = Verdadero) Entonces
			costoFinal <- costoFinal * 1.05
		FinSi
	
FinAlgoritmo
