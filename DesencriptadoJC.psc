//Jeremias Luis Alejandro Briceño Valdes
Algoritmo Desencriptado	
	//se define las variables donde se guardaran el mensaje a convertir y la lave del mismo
	Definir codigo,llave,llave3 Como Caracter
	//se define la variable en la que se convertira la llave
	Definir llave2 Como Entero
	Definir validaL,validaN Como Logico
	//se pide el mensaje a desifrar
	Escribir "ingrese mensaje encriptado"
	Leer codigo
	//se ponen todos los caracteres en mayusculas
	codigo <-Mayusculas(codigo)
	validaL<-ValidaLetras(codigo)
	//se evalua que la longitud de el mensaje sea entre 1 a 60 caracteres por linea 
	Repetir
		//evaluo si ingresaron solo letras
		Si (validaL=falso) Entonces
			Escribir "Error,Ingrese solo letras sin incluir la ñ"
			Leer codigo
			//se ponen todos los caracteres en mayusculas
			codigo <-Mayusculas(codigo)
			//envio a funcion validar solo letras
			validaL<-ValidaLetras(codigo)
		SiNo
			//se pide la llave de desifrado
			Escribir "ingrese la clave de acceso"
			//se lee el caso
			Leer llave
			validaN<-ValidaNumeros(llave)	
			Repetir
				//se valida de que la llave este entre 1 y 50
				Si (validaN=falso) Entonces
					//si no se cumplen los requisitos vuelve a pedir la llave otra vez
					Escribir "¡Error!ingrese clave de acceso,solo numeros del 1 al 50"
					//se vuelve a pedir la clave
					Leer llave
					validaN<-ValidaNumeros(llave)	
				SiNo
					//si es ingresado un numero entre 3 y 10, se procede a convertir de caracter a entero
					llave2<-ConvertirANumero(llave)
				Fin Si
				//se repite validacion hasta cumplir el rango solicitado
			Hasta Que llave2>0 y llave2<51 
			//se muestra el codigo en mayusculas
			Escribir "Codigo Original: ",Mayusculas(codigo)
			//se invoca funcion incluyendo los valores solicitados y paso el mensaje desifrado en minuscula
			Escribir "El Mensaje es: "  ,Minusculas(clave(codigo,llave2))
		Fin Si
	Hasta Que (validaL=verdadero y llave2>0 y llave2<51) 
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
					Si ((indicador2-numero2)>50) Entonces
						// si es mayor a 27 se le resta 27
						indicador3<-((indicador2-numero2)-50)
					SiNo
						//si es menor a 1 se le suma 27 al resultado
						indicador3<-((indicador2-numero2)+50)
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

//creo funcion para validar solo letras
Funcion validaL <- ValidaLetras(codigo2)
	//inicio la variable 
	validaL <-falso
	//recorro el codigo letra por letra
	Para i <- 1 Hasta (Longitud(codigo2)) Con Paso 1 Hacer
		//evaluo cuando sea diferentes a los carracteres del abecedario
		si(	Subcadena(codigo2,i,i)<>"A" Y Subcadena(codigo2,i,i)<>"B" Y Subcadena(codigo2,i,i)<>"C" Y Subcadena(codigo2,i,i)<>"D" Y Subcadena(codigo2,i,i)<>"E" Y Subcadena(codigo2,i,i)<>"F" Y Subcadena(codigo2,i,i)<>"G" Y Subcadena(codigo2,i,i)<>"H" Y Subcadena(codigo2,i,i)<>"I" Y Subcadena(codigo2,i,i)<>"J" Y Subcadena(codigo2,i,i)<>"K" Y Subcadena(codigo2,i,i)<>"L" Y Subcadena(codigo2,i,i)<>"M" Y Subcadena(codigo2,i,i)<>"N" Y Subcadena(codigo2,i,i)<>"O" Y Subcadena(codigo2,i,i)<>"P" Y Subcadena(codigo2,i,i)<>"Q" Y Subcadena(codigo2,i,i)<>"R" Y Subcadena(codigo2,i,i)<>"S" Y Subcadena(codigo2,i,i)<>"T" Y Subcadena(codigo2,i,i)<>"U" Y Subcadena(codigo2,i,i)<>"V" Y Subcadena(codigo2,i,i)<>"W" Y Subcadena(codigo2,i,i)<>"X" Y Subcadena(codigo2,i,i)<>"Y" Y Subcadena(codigo2,i,i)<>"Z") entonces
			// si ingresan caracteres fuera de lo esperado, mantengo la variable en falso
			validaL<-falso
			//cambio el valor de i para que termine el para, de lo contrario, si ingresan el numero entre letras la ultima letra dejara pasar la validacion
			i<-1000
		SiNo
			//cambio el valor de la variable a verdadero, si el codigo esta dentro de lo esperado
			validaL<-verdadero
		FinSi
	FinPara
FinFuncion
//creo funcion para validar solo numero
Funcion ValidaN<- ValidaNumeros(llave3)
	//inicio la variable 
	validaN <-falso
	//recorro el codigo letra por letra
	Para i <- 1 Hasta (Longitud(llave3)) Con Paso 1 Hacer
		//evaluo cuando sea diferentes a los carracteres de los nnumero del 0 al 9
		si( Subcadena(llave3,i,i) <>"1" y Subcadena(llave3,i,i) <>"2" y Subcadena(llave3,i,i) <>"3" y Subcadena(llave3,i,i) <>"4" y Subcadena(llave3,i,i) <>"5" y Subcadena(llave3,i,i) <>"6" y Subcadena(llave3,i,i) <>"7" y Subcadena(llave3,i,i) <>"8" y Subcadena(llave3,i,i) <>"9" y Subcadena(llave3,i,i) <>"0") entonces
			// si ingresan caracteres fuera de lo esperado, mantengo la variable en falso
			ValidaN<-falso
			//cambio el valor de i para que termine el para, de lo contrario, si ingresan el numero entre letras la ultima letra dejara pasar la validacion
			i<-1000		
		SiNo
			//cambio de tipo texto a tipo numero
			llave2<-ConvertirANumero(llave3)
			//valido si el numero ingresado se encuentra entre 1 a 50
			si(llave2>50 o llave2<1)Entonces
				//si el valor es superior a 50 e inferior a 1, no pasara la validacion
				ValidaN<-falso
				//cambio el valor de i para que termine el para
				i<-1000	
			SiNo
				//cambio el valor de la variable a verdadero, si el numero esta dentro de lo esperado
				ValidaN<-verdadero
			FinSi
			
		FinSi
	FinPara
	
FinFuncion
	