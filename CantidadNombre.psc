Algoritmo CantidadNombre
	nombre<-""
	cantidad<-0
	veces<-0
	Escribir "Ingresa el Nombre"
	Leer nombre
	Escribir "Ingresa la cantidad de veces que quieres imprimir el nombre"
	Leer cantidad
	Mientras veces < cantidad y cantidad > 0 Hacer
		Escribir nombre
		veces = veces + 1
	Fin Mientras
FinAlgoritmo