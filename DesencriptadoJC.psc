//Jeremias Luis Alejandro Brice�o Valdes
Algoritmo Desencriptado	
	//se define las variables donde se guardaran el mensaje a convertir y la lave del mismo
	Definir mensaje,llave Como Caracter
	//se define la variable en la que se convertira la llave
	Definir llaveF Como Entero
	//se pide el mensaje a desifrar
	Escribir "ingrese mensaje a desifrar"
	Leer mensaje
	//se evalua que la longitud de el mensaje sea entre 1 a 60 caracteres
	Si (longitud(mensaje)>60 o longitud(codigo)<1) Entonces
		Escribir "Error,Ingrese una cantidad de entre 1 a 60 caracteres"
	SiNo
		//se ponen todos los caracteres en mayusculas
		mensaje <-Mayusculas(mensaje)
		//se pide la llave de desifrado
		Escribir "ingrese la clave de acceso"
		//se lee el caso
		Leer llave
		Repetir
			//se valida de que la llave este entre 3 y 10
			Si (llave <>"3" y llave <>"4" y llave <>"5" y llave <>"6" y llave <>"7" y llave <>"8" y llave <>"9" y llave <>"10") Entonces
				//si no se cumplen los requisitos vuelve a pedir la llave otra vez
				Escribir "�Error!ingrese clave de acceso,solo numeros del 3 al 10"
				//se vuelve a pedir la clave
				Leer llave
			SiNo
				//si es ingresado un numero entre 3 y 10, se procede a convertir de caracter a entero
				llave2<-ConvertirANumero(llave)
			Fin Si
			//se repite validacion hasta cumplir el rango solicitado
		Hasta Que llave2>2 y llave2<11 
		
	Fin Si
FinAlgoritmo