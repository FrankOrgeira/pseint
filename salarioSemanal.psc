Proceso salarioSemanal
	
	// Declaramos Variables
	Definir horasTrabajadas,salarioCobrar Como Real;
	Definir jornada,horaSueldo,horaExtra Como Entero;
	
	// Inicializar Variables
	horasTrabajadas<-0;
	jornada<-40;
	horaSueldo<-16;
	horaExtra<-20;
	
	// Capturamos las horas trabajadas por teclado
	Escribir "Ingrese la cantidad de horas trabajadas en la semana";
	Leer horasTrabajadas;
	
	// Calculamos el salario semanal a cobrar
	Si horasTrabajadas <= jornada Entonces
		salarioCobrar<-horasTrabajadas*horaSueldo;
	SiNo
		salarioCobrar<-(horaSueldo*jornada)+((horasTrabajadas-jornada)*horaExtra);
	FinSi
	
	Escribir "El salario semanal a percibir es de: ",salarioCobrar," Euros";
	
FinProceso
