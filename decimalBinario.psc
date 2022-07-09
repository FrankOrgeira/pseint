// Programa que recibe un n�mero decimal y lo convierte a Binario


// Funci�n que valida si la IP ingresada por teclado es un entero y est� entre 0 y 255
Funcion validar<-validarIP(ip)
	Definir validar Como Logico;
	Si (ip >= 0 y ip <= 255) y (ip - trunc(ip)=0) Entonces
		validar<-Verdadero;
	SiNo
		Limpiar Pantalla;
		Escribir "El n�mero no es v�lido, ingrese un n�mero decimal entre 0 y 255";
		Escribir "";
	FinSi
FinFuncion


// Funci�n que inicializa el vector binario con 0 en todas sus posiciones
Funcion llenarVector(binario Por Referencia)
	Definir i Como Entero;
	Para i<-0 hasta 7 Hacer
		binario[i]<-"0";
	FinPara
FinFuncion


// Funci�n que lee el vector binario y crea una cadena de texto con el resultado
Funcion octeto<-leerVector(binario Por Referencia)
	Definir i Como Entero;
	Definir octeto Como Caracter;
	octeto<-"";
	Para i<-0 hasta 7 Hacer
		octeto<-concatenar(octeto,binario[i]);
	FinPara
FinFuncion


// Funci�n que asigna los valores binarios al vector
Funcion convertirDecimalBinario(ip,binario Por Referencia)
	
	Definir posicion Como Entero;
	 
	// Recorro el vector descendentemente para invertir la posici�n de los bits (de 7 a 0)
	posicion<-7;
	
	// Llamo a la funci�n para inicializar el vector binario a ceros
	llenarVector(binario);
	
	Repetir
		// Si el n�mero es impar asigno 1 y divido el valor inferior a la mitad
		Si ip mod 2 <> 0 Entonces
			binario[posicion]<-"1";
			ip<-(ip-1)/2;
		Sino
			// El n�mero es par, dejo el vector en 0 y divido el n�mero a la mitad
			ip<-ip/2;
		FinSi
		posicion<-posicion-1;
	Hasta Que ip = 0;
FinFuncion


Proceso convertirIPaBinario
	
	// Defino variables
	Definir ip Como Real;
	Definir binario Como Caracter;
	
	// Inicializo variables
	ip<-0;
	
	// Inicializo Vector
	Dimension binario[8];
	
	Limpiar Pantalla;
	
	Repetir
		Escribir "Ingrese la IP a convertir en binario: (0 a 255)";
		Leer ip;
		Escribir "";
	Hasta Que validarIP(ip) = Verdadero;
	
	convertirDecimalBinario(ip,binario);
	
	Escribir "La IP ",ip," es ",leerVector(binario)," en binario";
	
FinProceso