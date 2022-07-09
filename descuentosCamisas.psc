// Hacer un algoritmo que calcule el total a pagar por la compra de camisas.
//Si se compran tres camisas o más se aplica un descuento del 20% sobre el
//total de la compra y si son menos de tres camisas un descuento del 10%

Proceso descuentosCamisas
	
	// Definimos las variables
	Definir cantidadCamisas Como Entero;
	Definir desc1,desc2,precioCamisa,totalPagar como Real;
	
	// Inicializamos las variables
	cantidadCamisas<-0;desc1<-0.10;desc2<-0.20;precioCamisa<-0;totalPagar<-0;
	
	// Capturo los datos por teclado
	Escribir "Ingrese la cantidad de camisas a comprar: ";
	Leer cantidadCamisas;
	Escribir "Ingrese el precio unitario de la camisa: ";
	Leer precioCamisa;
	
	// Calculo el total a pagar con su descuento respectivo
	totalPagar<-(cantidadCamisas*precioCamisa);
	Si cantidadCamisas < 3 Entonces
		totalPagar<-totalPagar-(totalPagar*desc1);
	SiNo
		totalPagar<-totalPagar-(totalPagar*desc2);
	FinSi
	
	// Muestro la información por pantalla
	Escribir "El monto total a pagar es de ",totalPagar," Euros.";
	
FinProceso