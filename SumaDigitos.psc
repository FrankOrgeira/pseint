Algoritmo SumaDigitos
	Escribir "Ingrese un nro: "
	Leer nro
	resul <- 0
	Mientras nro <> 0 Hacer
		resul <- resul + nro MOD 10
		nro <- trunc(nro/10)
	FinMientras
	Escribir "El resultado es: " resul
FinAlgoritmo