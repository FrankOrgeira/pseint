// Crear un programa que permita saber la cantidad de propina que le corresponde
// a cada trabajador de una empresa, teniendo en cuenta los siguientes parámetros.
// la propina se dividira entre 30 trabajadores mediante un sistema de puntos de la siguiete manera:
// 14 empleados tienes 5pts
// 7 empleados tienen 20pts
// 9 empleados tienen 40pts
// La empresa se queda con el 75 MOD  de la propina, el 25 MOD  se reparte entre los trabajadores.

Proceso calculoPropinas
	
	// Declarar variables
	Definir totalPropinas,totalCasino,totalEmpleados Como Real;
	Definir porcentajeCasino,i,topePuntos,categorias Como Entero;
	Definir datosEmpleados Como Real;
	
	// Inicializar variables 
	porcentajeCasino <- 0; topePuntos <- 0; categorias <- 3;
	
	// Declarar arreglo
	Dimension datosEmpleados[3,3]; // La matriz se declara bidimensional [cantidad de datos,cantidad de categorias]
	
	// Inicializar arreglo con la cantidad de empleados y sus puntos
	datosEmpleados[0,0]<-14; datosEmpleados[0,1]<-7; datosEmpleados[0,2]<-9; // Cantidad de empleados de cada categoría
	datosEmpleados[1,0]<-5; datosEmpleados[1,1]<-20; datosEmpleados[1,2]<-40; // Puntos por categoría
	datosEmpleados[2,0]<-0; datosEmpleados[2,1]<-0; datosEmpleados[2,2]<-0; // Almacenará porcentaje de cada categoría
	
	// Capturo datos del usuario
	Escribir 'Ingrese el porcentaje que le corresponde a la Empresa: ';
	Leer porcentajeCasino;
	Escribir 'Ingrese el monto total de las propinas a repartir: ';
	Leer totalPropinas;
	
	// Calculo los montos a repartir
	totalCasino <- (totalPropinas*porcentajeCasino)/100;
	totalEmpleados <- (totalPropinas*(100-porcentajeCasino))/100;
	
	// Calculo el tope máximo de puntos a repartir entre todas las categorías
	Para i<-0 Hasta 2 Hacer
		topePuntos <- topePuntos+datosEmpleados[1,i];
	FinPara
	
	// Calculo y asigno el porcentaje correspondiente a cada grupo de empleados según sus puntos
	Para i<-0 Hasta 2 Hacer
		datosEmpleados[2,i]<-(datosEmpleados[1,i]*100)/topePuntos;
	FinPara
	
	// Muestro la información por pantalla
	Escribir '=====================================================';
	Escribir 'El ',porcentajeCasino,'% de la Empresa es: ',totalCasino,' Euros';
	Escribir '';
	Escribir 'El ',(100-porcentajeCasino),'% de los Empleados es: ',totalEmpleados,' Euros';
	Escribir '';
	Escribir 'y corresponde según sus puntos de la siguiente manera:';
	Escribir '';
	Para i<-0 Hasta 2 Hacer
		Escribir 'Hay ',datosEmpleados[0,i],' empleados con ',datosEmpleados[1,i],' puntos';
		Escribir 'a cada uno de estos empleados le corresponde: ',redon(((totalEmpleados*datosEmpleados[2,i])/100)/datosEmpleados[0,i]),' Euros';
		Escribir '';
	FinPara
	
FinProceso