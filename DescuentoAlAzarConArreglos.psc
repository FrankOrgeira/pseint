Proceso DescuentoAlAzarConArreglos
	
	// Declaro Variables
	Definir monto Como Real;
	Definir colores Como Caracter;
	Definir descuentos,suerte,n,i Como Numeros;
	
	// Inicializar Variables
	monto<-0;n<-4;i<-0;
		
	// Declaro los arreglos
	Dimension descuentos[5];
	Dimension colores[5];
	
	// Inicializo los arreglos
	descuentos[0]<-0;descuentos[1]<-10;descuentos[2]<-25;descuentos[3]<-50;descuentos[4]<-100;
	colores[0]<-"Blanca";colores[1]<-"Verde";colores[2]<-"Amarilla";colores[3]<-"Azul";colores[4]<-"Roja";
	
	// Capturo el monto de la compra por teclado
	Escribir "Ingrese el monto total de la compra: ";
	Leer monto;
	
	// Seleccionamos al azar una bolita para el descuento
	suerte<-azar(5);
	
	// Montramos la bolita obtenida con el monto a pagar según el descuentos
	Escribir "Usted sacó la bolita ",colores[suerte]," y obtuvo un descuento del ",descuentos[suerte],"%";
	Escribir "El monto total a pagar es de: ",monto-(monto*descuentos[suerte]/100);
	
FinProceso
