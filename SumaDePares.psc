Algoritmo SumaDePares
	suma <- 0
	nro <- 2
	Mientras nro<=100 hacer
		si nro mod 2 = 0 Entonces
			suma= suma+nro			
		FinSi
		nro=nro+1
	FinMientras
	Escribir "la suma de los pares entre 2 y 100 es " suma
FinAlgoritmo