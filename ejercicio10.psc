Proceso ejercicio10
	
	// Declaramos Variables
	Definir promedio Como Real;
	Definir notas,n,i Como Numeros;
	
	// Inicializar Variables
	promedio<-0;
	n<-3; // Cantidad de parciales
	
	// Inicializar Arreglo igual a n (PSeInt no acepta variables para crear arreglos)
	Dimension notas[5];
	
	// Lectura de datos (notas)
	Para i<-0 Hasta n-1 Hacer
		Escribir "Ingrese la nota del parcial ",i+1,":";
		Leer notas[i];
	FinPara
	Escribir "Ingrese la nota del examen final:";
	Leer notas[3];
	Escribir "Ingrese la nota del trabajo final:";
	Leer notas[4];
	
	// Calculamos la notas
	Para i<-0 Hasta n-1 Hacer
		promedio<-promedio+notas[i];
	FinPara
	promedio<-(promedio/3)*.55; // Calculamos el 55% de los 3 parciales
	promedio<-promedio+(notas[3]*.30); // Calculamos el 30% del examen final y añadimos al promedio
	promedio<-promedio+(notas[4]*.15); // Calculamos el 15% del trabajo final y añadimos al promedio
	
	// Imprimimos la calificación por pantalla
	Escribir "La calificación final es: ",promedio;
	
FinProceso