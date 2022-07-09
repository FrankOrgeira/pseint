Algoritmo NumerosPrimos
	Escribir "Ingrese un número: "
	Leer nro
	div <- 2
	band <- Verdadero 	         
	Si nro=1 Entonces 		            
		Escribir "Es primo" 	         
	Sino 		             
		Mientras band=Verdadero y nro>div Hacer
			Si nro MOD div = 0 Entonces
				band <- Falso
			FinSi
		    div <- div +1
		FinMientras
		si band= Verdadero Entonces
			Escribir "Es primo"
		Sino
			Escribir "No es primo"
		FinSi
	FinSi
FinAlgoritmo