//Jeremias Luis Alejandro Briceño Valdes
Algoritmo Desencriptado	
	//se define las variables donde se guardaran el mensaje a convertir y la lave del mismo
	Definir codigo,llave Como Caracter
	//se define la variable en la que se convertira la llave
	Definir llave2 Como Entero
	//se pide el mensaje a desifrar
	Escribir "ingrese mensaje encriptado"
	Leer codigo
	//se evalua que la longitud de el mensaje sea entre 1 a 60 caracteres por linea 
	Si (longitud(codigo)>600 o longitud(codigo)<1) Entonces
		Escribir "Error,Ingrese solo numeros"
	SiNo
		//se ponen todos los caracteres en mayusculas
		codigo <-Mayusculas(codigo)
		//se pide la llave de desifrado
		Escribir "ingrese la clave de acceso"
		//se lee el caso
		Leer llave
		Repetir
			//se valida de que la llave este entre 1 y 50
			Si (llave <>"1" y llave <>"2" y llave <>"3" y llave <>"4" y llave <>"5" y llave <>"6" y llave <>"7" y llave <>"8" y llave <>"9" y llave <>"10"y llave <>"11" y llave <>"12" y llave <>"13" y llave <>"14" y llave <>"15" y llave <>"16" y llave <>"17" y llave <>"18"y llave <>"19" y llave <>"20" y llave <>"21" y llave <>"22" y llave <>"23" y llave <>"24" y llave <>"25" y llave <>"26" y llave <>"27" y llave <>"28" y llave <>"29" y llave <>"30" y llave <>"31" y llave <>"32" y llave <>"33" y llave <>"34" y llave <>"35" y llave <>"36" y llave <>"37" y llave <>"38" y llave <>"39" y llave <>"40" y llave <>"41" y llave <>"42" y llave <>"43" y llave <>"44" y llave <>"45" y llave <>"46" y llave <>"47" y llave <>"48" y llave <>"49" y llave <>"50" ) Entonces
				//si no se cumplen los requisitos vuelve a pedir la llave otra vez
				Escribir "¡Error!ingrese clave de acceso,solo numeros del 1 al 50"
				//se vuelve a pedir la clave
				Leer llave
			SiNo
				//si es ingresado un numero entre 3 y 10, se procede a convertir de caracter a entero
				llave2<-ConvertirANumero(llave)
			Fin Si
			//se repite validacion hasta cumplir el rango solicitado
		Hasta Que llave2>1 y llave2<50 
		//se muestra el codigo en mayusculas
		Escribir "Codigo Original: ",Mayusculas(codigo)
		//se invoca funcion incluyendo los valores solicitados y paso el mensaje desifrado en minuscula
		Escribir "El Mensaje es: "  ,Minusculas(clave(codigo,llave2))
	Fin Si
FinAlgoritmo
//se crea funsion que recibe los valores solicitados y devolviendo el mensaje desencriptado
Funcion  mensaje <- clave(texto1,numero2)
	//se define las variables que contienen las letras y el mensaje
	Definir abcdario,mensaje Como Caracter
	//se define tipo de numero para convertir con el codigo cesar
	Definir indicador1,indicador2,inidcador3 Como Entero
	//inicio de variable mensaje
	mensaje=''
	//se dimenciona el abcdario y se rellena con las letras
	Dimension abcdario[27]
	abcdario[1]=' ';
	abcdario[2]='A';
	abcdario[3]='B';
	abcdario[4]='C';
	abcdario[5]='D';
	abcdario[6]='E';
	abcdario[7]='F';
	abcdario[8]='G';
	abcdario[9]='H';
	abcdario[10]='I';
	abcdario[11]='J';
	abcdario[12]='K';
	abcdario[13]='L';
	abcdario[14]='M';
	abcdario[15]='N';
	abcdario[16]='O';
	abcdario[17]='p';
	abcdario[18]='Q';
	abcdario[19]='R';
	abcdario[20]='S';
	abcdario[21]='T';
	abcdario[22]='U';
	abcdario[23]='V';
	abcdario[24]='W';
	abcdario[25]='X';
	abcdario[26]='Y';
	abcdario[27]='Z';
	//se comienza a separar letra por letra el mensaje entregado
	Para indicador1 <- 1 Hasta (Longitud(texto1)) Con Paso 1 Hacer
		//se busca cohinsidencias entre el mensaje y el abcdario
		Para indicador2<-1 Hasta 27 Con paso 1 Hacer
			//si se encuentra coherencias continua
			Si (Subcadena(texto1,indicador1,indicador1) = abcdario[indicador2]) Entonces
				//si se tiene cohinsidencias se evalua si es menor a 1
				Si ((indicador2-numero2)<1) Entonces
					//se evalua si es mayor a 27
					Si ((indicador2-numero2)>27) Entonces
						// si es mayor a 27 se le resta 27
						indicador3<-((indicador2-numero2)-27)
					SiNo
						//si es menor a 1 se le suma 27 al resultado
						indicador3<-((indicador2-numero2)+27)
					FinSi
				Sino
					//si es mayor a 1 se cambia la letra a cambiar y se evalua
					indicador3<-indicador2-numero2
				FinSi
				//se escribe el mensaje ya cambiado letra por letra
				mensaje <- Concatenar(mensaje,abcdario[indicador3])
			FinSi
		FinPara
	FinPara
	FinFuncion
	