Proceso VolumenAreaEsfera
	
	// Declaramos Variables
	Definir volumen Como Real;
	Definir area Como Real;
	Definir radio Como Real;
	
	// Inicializamos Variables
	volumen<-0;
	area<-0;
	radio<-0;
	
	//Leemos los datos por teclado
	Escribir "Ingrese el radio de la esfera a calcular: ";
	Leer radio;
	
	// Procesamos el Volumen
	volumen <- ((4/3)*PI)*radio^3;
	Escribir "El volumen de la esfera con radio = ",radio," es: ",volumen;
	
	// Procesamos el área
	area <- 4 * PI * radio^2;
	Escribir "El área de la esfera con radio = ",radio," es: ",area;
	
	
FinProceso
