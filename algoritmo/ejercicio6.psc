//Un vendedor recibe una comisión base del 5% si sus ventas superan los $2000. Si sus
//ventas superan los $5000, la comisión aumenta al 10%. 
//Si cumple con su objetivo de ventas y además consigue más de 10 nuevos clientes,recibe un premio de $500.
//Si no cumple su objetivo, pero logra más de 15 clientes, recibe un premio de $200.
Algoritmo ejercicio_6:comisiones
	//Entrada de datos;Leer el valor de las ventas.;Leer el objetivo de ventas.;Leer el número de clientes nuevos
	//.Cálculo de la comision
	//Si las ventas son > 5000 ? comisión = 10% de ventas
	//.Si las ventas son > 2000 y <= 5000 ? comisión = 5% de ventas
	//Si las ventas son <= 2000 ? comisión = 0
	//Cálculo del premio
	//Si ventas >= objetivo y clientes > 10 ? premio = $500.
	//Si ventas < objetivo y clientes > 15 ? premio = $200.
	//En cualquier otro caso ? premio = $0
	//Cálculo del pago total; Total = comisión + premio
	//.Salida de resultados; Mostrar comisión ;Mostrar premio ; Mostrar total recibido
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
