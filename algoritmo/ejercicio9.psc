//Un estudiante recibe una nota final basada en su rendimiento académico.
//Si su rendimiento es superior a 85% y ha asistido al 90% o más de las clases, 
//recibe una bonificación del 5% sobre su nota final. Si su asistencia es inferior al 70%,
//se le penaliza con un 10% de reducción en su nota.
//Si su rendimiento es superior a 95% y su asistencia es perfecta, recibe un premio adicional de 10 puntos.
Algoritmo ejercicio_9_Cálculo_del_rendimiento
	//Ingresar datos
	//Rendimiento del estudiante (%).
	//Asistencia (%).
	//Asignar notaFinal = rendimiento
	//.¿Rendimiento > 85 y Asistencia >= 90?
	//Sí ? aplicar bonificación del +5% a notaFinal.
	//No ? seguir.
	//¿Asistencia < 70?
	//Sí ? aplicar penalización del -10% a notaFinal.
	//No ? seguir.
	//¿Rendimiento > 95 y Asistencia = 100?
	//Sí ? sumar +10 puntos a notaFinal.
	//No ? seguir.
	//¿notaFinal > 100?
	//Sí ? ajustar a 100.
	//No ? dejar como está.
	//?Mostrar la nota final del estudiante.
	Definir rendimiento, asistencia, notaFinal Como Real
	Escribir "Ingrese el rendimiento del estudiante (0 a 100): "
	Leer rendimiento
	Escribir "Ingrese el porcentaje de asistencia (0 a 100): "
	Leer asistencia
	notaFinal <- rendimiento
	Si (rendimiento > 85 Y asistencia >= 90) Entonces
		notaFinal <- notaFinal * 1.05
	FinSi
	Si (asistencia < 70) Entonces
		notaFinal <- notaFinal * 0.90
	FinSi
	Si (rendimiento > 95 Y asistencia = 100) Entonces
		notaFinal <- notaFinal + 10
	FinSi
	Si (notaFinal > 100) Entonces
		notaFinal <- 100
	FinSi
	Escribir "La nota final del estudiante es: ", notaFinal
FinProceso
