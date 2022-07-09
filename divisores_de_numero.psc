Algoritmo divisores_de_numero
	Escribir "Ingrese Numero"
	Leer Num
	div<-1
	Mientras Div<=Num Hacer
		Si Num MOD div = 0 
			Escribir div
		Fin Si
		div<-div+1
	Fin Mientras
FinAlgoritmo