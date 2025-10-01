//Una universidad cobra una matr�cula base de $2000.
//Si el estudiante tiene un promedio superior a 90, recibe un descuento del 15%. 
//Si tiene m�s de 2 hermanos en la universidad, recibe un descuento adicional del 10%.
//Si el estudiante paga despu�s de la fecha l�mite, se a�ade un recargo del 5%. 
//Si el estudiante est� inscrito en m�s de 5 asignaturas, recibe un descuento adicional del 5%.
Algoritmo EJERCICIO_10_Proceso_Costo_Matricula
	//.Ingresar datos : Promedio del estudiante.;N�mero de hermanos en la universidad.;N�mero de asignaturas inscritas.;Si pag� tarde o no (s�/no).
	//Asignar costoFinal = 2000 (matr�cula base).
	//�Promedio > 90?
	//S� ? aplicar 15% de descuento.
	//No ? seguir.
	//.�Hermanos > 2?
	//S� ? aplicar 10% de descuento.
	//No ? seguir.
	// �Asignaturas > 5?
	//S� ? aplicar 5% de descuento.
	//No ? seguir.
	//�Pag� despu�s de la fecha l�mite?
	//S� ? aplicar recargo del 5%.
	//No ? seguir.
	//Mostrar el costo final de la matr�cula.
	
	
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
		Escribir "Ingrese la cantidad de asignaturas en las que se inscribi�: "
		Leer asignaturas
		Escribir "�El estudiante pag� despu�s de la fecha l�mite? (V/F): "
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
