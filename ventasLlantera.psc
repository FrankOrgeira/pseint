// Ejercicio 11.- Calcular el total que una persona debe pagar en una llantera,
// si el precio de cada llanta es de $800 si se compran menos de 5 llantas y
// de $700 si se compran 5 o más.

Proceso ventasLlantera
	
	// Definimos las variables
	Definir cantidadLlantas Como Entero;
	Definir precio1,precio2,precioLlanta,totalPagar como Real;
	
	// Inicializamos las variables
	cantidadLlantas<-0;precio1<-800;precio2<-700;precioLlanta<-0;totalPagar<-0;
	
	// Capturo los datos por teclado
	Escribir "Ingrese la cantidad de llantas a comprar: ";
	Leer cantidadLlantas;
	
	// Calculo el total a pagar dependiendo de la cantidad de llantas
	Si cantidadLlantas < 5 Entonces
		totalPagar<-(cantidadLlantas*precio1);
	SiNo
		totalPagar<-(cantidadLlantas*precio2);
	FinSi
	
	// Muestro la información por pantalla
	Escribir "El monto total a pagar es de ",totalPagar," Euros.";
	
	
FinProceso