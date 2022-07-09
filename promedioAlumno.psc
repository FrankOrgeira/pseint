Proceso promedioAlumno
	// Definimos las variables
	Definir nota1,nota2,nota3,promedio Como Real;
	// Inicializamos las variables
	nota1 <- 0; nota2 <- 0; nota3 <- 0; promedio <- 0;
	// Capturo los datos por teclado
	Escribir 'Ingrese las 3 notas del alumno:';
	Leer nota1,nota2,nota3;
	// Calculo el promedio de las notas
	promedio <- (nota1+nota2+nota3)/3;
	// Determinamos si el alumno aprobo o no
	Si promedio>=10.5 Entonces
		Escribir 'El alumno aprobó el curso con un promedio de ',promedio,' puntos.';
	SiNo
		Escribir 'El alumno suspendió el curso con un promedio de ',promedio,' puntos.';
	FinSi
FinProceso
