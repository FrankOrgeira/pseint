Proceso calculadora
	
	// Declaramos Variables
	Definir num1 Como Real;
	Definir num2 Como Real;
	Definir resultado Como Real;
	Definir operacion Como Caracter;
	Definir entrada Como Caracter;
	Definir continuar Como Logico;
	
	// Inicializar Variables
	num1<-0;
	num2<-0;
	resultado<-0;
	operacion<-"";
	entrada<-"";
	continuar<-Verdadero;
	
	// Ingreso de Datos mientras continuar sea S
	Mientras continuar = Verdadero Hacer
		Escribir "Ingrese el tipo de operación:";
		Escribir "(S)umar - (R)estar - (M)ultiplicar - (D)ividir - Otra para Salir";
		Leer operacion;
		
		// Validación de entrada por teclado que sea una opción valida
		Si operacion = "S" o operacion = "s" o operacion = "R" o operacion = "r" o operacion = "M" o operacion = "m" o operacion = "D" o operacion = "d" Entonces
			Escribir "Ingrese el primer número";
			Leer num1;
			Escribir "Ingrese el segundo número";
			Leer num2;
			
			// Selección y Proceso de la Operación
			Si operacion = "S" o operacion = "s" Entonces
				resultado <- num1 + num2;
			Sino
				Si operacion = "R" o operacion = "r" Entonces
					resultado <- num1 - num2;
				SiNo
					Si operacion = "M" o operacion = "m" Entonces
						resultado <- num1 * num2;
					SiNo
						Si operacion = "D" o operacion = "d" Entonces
							resultado <- num1 / num2;
						FinSi
					FinSi
				FinSi
			FinSi
			
			// Salida de resultados por Pantalla
			Escribir "El Resultado de la operación es: ",resultado;
		FinSi
		
		// Preguntar si desea otra operación
		Escribir "¿Desea hacer otro cálculo? (S/N)";
		Leer entrada;
		Si entrada <> "S" y entrada <> "s" Entonces
			continuar <- Falso;
		FinSi
		
	FinMientras
	
FinProceso