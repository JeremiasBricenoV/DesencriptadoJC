//Jeremias Luis Alejandro Brice�o Valdes
Algoritmo Desencriptado	
	//se define las variables donde se guardaran el mensaje a convertir y la lave del mismo
	Definir codigo,llave Como Caracter
	//se define la variable en la que se convertira la llave
	Definir llaveF Como Entero
	//se pide el mensaje a desifrar
	Escribir "ingrese mensaje encriptado"
	Leer codigo
	//se evalua que la longitud de el mensaje sea entre 1 a 60 caracteres
	Si (longitud(codigo)>60 o longitud(codigo)<1) Entonces
		Escribir "Error,Ingrese una cantidad de entre 1 a 60 caracteres"
	SiNo
		//se ponen todos los caracteres en mayusculas
		mensaje <-Mayusculas(codigo)
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
//se crea funsion que recibe los valores solicitados y devolviendo el mensaje desencriptado
Funcion mensaje <- clave(texto1,numero2)
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
	
	FinFuncion
	