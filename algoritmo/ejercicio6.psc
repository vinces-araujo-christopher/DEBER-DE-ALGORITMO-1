//Un vendedor recibe una comisi�n base del 5% si sus ventas superan los $2000. Si sus
//ventas superan los $5000, la comisi�n aumenta al 10%. 
//Si cumple con su objetivo de ventas y adem�s consigue m�s de 10 nuevos clientes,recibe un premio de $500.
//Si no cumple su objetivo, pero logra m�s de 15 clientes, recibe un premio de $200.
Algoritmo ejercicio_6:comisiones
	//Entrada de datos;Leer el valor de las ventas.;Leer el objetivo de ventas.;Leer el n�mero de clientes nuevos
	//.C�lculo de la comision
	//Si las ventas son > 5000 ? comisi�n = 10% de ventas
	//.Si las ventas son > 2000 y <= 5000 ? comisi�n = 5% de ventas
	//Si las ventas son <= 2000 ? comisi�n = 0
	//C�lculo del premio
	//Si ventas >= objetivo y clientes > 10 ? premio = $500.
	//Si ventas < objetivo y clientes > 15 ? premio = $200.
	//En cualquier otro caso ? premio = $0
	//C�lculo del pago total; Total = comisi�n + premio
	//.Salida de resultados; Mostrar comisi�n ;Mostrar premio ; Mostrar total recibido
	Definir ventas, nuevos_clientes Como Real;
	Definir comision, premio, total_pago Como Real;
	Definir cumplio_objetivo Como Logico;
	
	Escribir "Ingrese el valor de las ventas: ";
	Leer ventas;
	Escribir "Cumplio el objetivo? (V/F): ";
    Leer cumplio_objetivo;
	Escribir "Ingrese el numero de nuevos clientes: ";
	Leer nuevos_clientes;
	
	comision <- 0;
    premio <- 0;
	
	Si ventas > 5000 Entonces
        comision <- ventas * 0.10;
    Sino
        Si ventas > 2000 Entonces
            comision <- ventas * 0.05;
        FinSi
    FinSi
	
    Si cumplio_objetivo = Verdadero Y nuevos_clientes > 10 Entonces
        premio <- 500;
    Sino
        Si cumplio_objetivo = Falso Y nuevos_clientes > 15 Entonces
            premio <- 200;
        FinSi
    FinSi
	
    total_pago <- comision + premio;
	
    Escribir "Comision: ", comision;
    Escribir "Premio: ", premio;
    Escribir "Total a pagar: ", total_pago;
FinAlgoritmo
