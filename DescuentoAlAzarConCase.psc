Proceso DescuentoAlAzarConCase
	
	// Declaro Variables
	Definir monto,total Como Real;
	Definir color Como Caracter;
	Definir descuento,suerte Como Enteros;
	
	// Inicializar Variables
	monto<-0;color<-"";descuento<-0;suerte<-0;total<-0;
	
	// Capturo el monto de la compra por teclado
	Escribir "Ingrese el monto total de la compra: ";
	Leer monto;
	
	// Seleccionamos al azar una bolita para el descuento
	suerte<-azar(5);
	
	// Asignamos bolita y descuento según lo obtenido al azar
	Segun suerte Hacer
		0:
			color<-"Blanco";descuento<-0;
		1:
			color<-"Verde";descuento<-10;
		2:
			color<-"Amarillo";descuento<-25;
		3:
			color<-"Azul";descuento<-75;
		De Otro Modo:
			color<-"Roja";descuento<-100;
	FinSegun
	
	// Montramos la bolita obtenida con el monto a pagar según el descuento
	Escribir "Usted sacó la bolita ",color," y obtuvo un descuento del ",descuento,"%";
	Escribir "El monto total a pagar es de: ",monto-(monto*descuento/100);
	
FinProceso
