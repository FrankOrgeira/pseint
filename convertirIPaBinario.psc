// Programa que recibe una octeto de num en decimal y muestra su valor en Binario


// Función que valida si la num ingresada por teclado es un entero y está entre 0 y 255
Funcion valido<-validarNum(num)
	Definir valido Como Logico;
	Si (num >= 0 y num <= 255) y (num - trunc(num)=0) Entonces
		valido<-Verdadero;
	SiNo
		Limpiar Pantalla;
		Escribir "El número no es válido, ingrese un número decimal entre 0 y 255";
		Escribir "";
	FinSi
FinFuncion


// Función que inicializa el vector binario con 0 en todas sus posiciones
Funcion llenarVector(binario Por Referencia)
	Definir i Como Entero;
	Para i<-0 hasta 7 Hacer
		binario[i]<-"0";
	FinPara
FinFuncion


// Función que lee el vector binario y crea una cadena de texto con el resultado
Funcion octeto<-leerVector(binario Por Referencia)
	Definir i Como Entero;
	Definir octeto Como Caracter;
	octeto<-"";
	Para i<-0 hasta 7 Hacer
		octeto<-concatenar(octeto,binario[i]);
	FinPara
FinFuncion


// Función que asigna los valores binarios al vector
Funcion convertirDecimalBinario(num,binario Por Referencia)
	
	Definir posicion Como Entero;
	 
	// Recorro el vector descendentemente para invertir la posición de los bits (de 7 a 0)
	posicion<-7;
	
	// Llamo a la función para inicializar el vector binario con ceros
	llenarVector(binario);
	
	Repetir
		// Si el número es impar asigno 1 y divido el valor inferior a la mitad
		Si num mod 2 <> 0 Entonces
			binario[posicion]<-"1";
			num<-(num-1)/2;
		Sino
			// El número es par, dejo el vector en 0 y divido el número a la mitad
			num<-num/2;
		FinSi
		posicion<-posicion-1;
	Hasta Que num = 0;
FinFuncion


Proceso convertirIPaBinario
	
	// Defino variables
	Definir num Como Real;
	Definir i Como Entero;
	Definir ip,octetos,binario Como Caracter;
	
	// Inicializo variables
	num<-0;ip<-"";octetos<-"";
	
	// Inicializo Vector
	Dimension binario[8];
	
	Limpiar Pantalla;
	
	Para i<-1 hasta 4 Hacer
		Repetir
			Escribir "Ingrese el octeto ",i," de la IP a convertir en binario: (0 a 255)";
			Leer num;
			Escribir "";
		Hasta Que validarNum(num) = Verdadero;
		
		convertirDecimalBinario(num,binario);
		
		octetos<-Concatenar(octetos,leerVector(binario));
		ip<-Concatenar(ip,ConvertirATexto(num));
		
		Si Longitud(octetos) <= 26 Entonces
			octetos<-Concatenar(octetos," ");
			ip<-Concatenar(ip,".");
		FinSi
		
	FinPara
	
	Escribir "La IP: ",ip," en binario se representa con:";
	Escribir octetos;
	
FinProceso