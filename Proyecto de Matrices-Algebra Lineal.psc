Algoritmo OperacionesDeMatrices
	Definir fila Como Entero;
	Definir columna Como Entero;
	Definir Contador Como Entero;
	Dimension matriz1[100000,100000];
	Dimension matriz2[100000,100000];
	Dimension matrizR[100000,100000];
	Definir Random Como Entero
	Random=Aleatorio(1,10000)
	Contador=0;
	Mientras Clave <>Random
		
		Borrar Pantalla
		Mostrar "****************************************"
		Mostrar Sin Saltar "Clave temporal de acceso:" 
		Mostrar Random
		Mostrar "****************************************"
		Mostrar ""
		
		Mostrar "***** Datos *****"
		Mostrar Sin Saltar "Ingrese su nombre"
		Leer Nombre 
		
		Mostrar Sin Saltar "Ingrese la clave"
		Leer Clave
		Mostrar "*****************"
		
		Si(Clave == Random) Entonces 
			Esperar 1 segundo
			Borrar Pantalla
			Mostrar "Cargando..."
			Esperar 2 segundo 
			Borrar Pantalla
			
			si(Longitud(Nombre)==0) Entonces
				Nombre=ConvertirATexto(Random);
			FinSi
		sino
			Borrar Pantalla 
			Mostrar "¡Atención! Ingrese la clave temporal asignada"
			Esperar 2 segundo 
		FinSi
	FinMientras
	
	Mientras opcion1 <>2
		
		Escribir "****** Usuario: ",Mayusculas(Nombre),"******";
		Mostrar " 1.Empezar"
		Mostrar " 2.Salir"
		Escribir "****************************";
		Mostrar ""
		Mostrar "Ingrese una opción"
		
		opcion1=validar()
		Borrar Pantalla	
		
		si(opcion1==1) Entonces
			Mostrar "Cargando..."
			Esperar 1 Segundos
			Borrar Pantalla
			opcion2=1
			
			Mientras opcion2 <>6
				
				Escribir "******** OPERACIONES ********";
				Escribir "1. Suma de matrices"; 
				Escribir "2. Resta de matrices";
				Escribir "3. Multiplicación de matrices";
				Escribir "4. División de matrices";
				Escribir "5. Transpuesta de una matriz";
				Escribir "6. Salir";
				Escribir "*****************************";
				Mostrar ""
				Mostrar "Ingrese una opción"
				
				opcion2=validar()
				Borrar Pantalla
				
				si(opcion2 > 6 o opcion2 <1)Entonces
					
					Mostrar "Ingrese una opción valida"
					Esperar 2 segundos 
					
				FinSi
				
				si(opcion2==6)Entonces
					
					Mostrar "Saliendo..."
					Esperar 2 segundos
					Opcion2 =6
					Borrar Pantalla
					
				FinSi
				
				si(opcion2 >0 y opcion2<6)Entonces
					
					Escribir "Ingrese el tamaño de la matriz";
					Escribir Sin Saltar "Fila: ";
					Leer fila;
					
					Escribir Sin Saltar "Columna: ";
					Leer columna;
					
					Borrar Pantalla
					
					matriz1[10000,10000]= matriz1[fila,columna];
					matriz2[10000,10000]= matriz2[fila,columna];
					matrizR[10000,10000]= matrizR[fila,columna];
					
					Escribir "Ingrese los ", fila*columna," valores de la primera matriz " ,fila,"X",columna;
					
					Para I<-1 Hasta fila Hacer
						
						Para J<-1 Hasta columna Hacer
							contador=contador+1
							Escribir Sin Saltar contador,'. Posición [',I,' ',J,']:'
							Leer matriz1[I,J];
						FinPara
						
					FinPara
					
					Borrar Pantalla
					contador=0;
					
					si(opcion2 >0 y Opcion2 <5) Entonces
						
						Escribir "Ingrese los ", fila*columna," valores de la segunda matriz " ,fila,"X",columna;
						
						Para I2<-1 Hasta fila Hacer
							
							Para J2<-1 Hasta columna Hacer
								contador=contador+1
								Escribir Sin Saltar contador,'. Posición [',I2,' ',J2,']:'
								Leer matriz2[I2,J2];
							FinPara
							
						FinPara
						
						Borrar Pantalla 
						contador=0;
						
						Escribir "Primera Matriz";
						Para I<-1 Hasta fila Hacer
							
							Para J<-1 Hasta columna Hacer
								Escribir Sin Saltar'[',matriz1[I,J],']';
							FinPara
							
							Escribir "";
						FinPara
						Escribir "";
						
						Escribir "Seguna Matriz";
						Para I2<-1 Hasta fila Hacer
							
							Para J2<-1 Hasta columna Hacer
								Escribir Sin Saltar'[',matriz2[I2,J2],']';
							FinPara
							
							Escribir "";
						FinPara
						Escribir "";
						
					FinSi
					
					Segun opcion2
						
						1:
							Escribir "********* SUMA DE MATRICES *********";
							Escribir "Matriz Resultante:";
							
							Para I3<-1 Hasta fila Hacer
								
								Para J3<-1 Hasta columna Hacer
									matrizR[I3,J3]= matriz1[I3,J3] + matriz2[I3,J3];
									Escribir Sin Saltar'[',matrizR[I3,J3],']';
								FinPara
								Escribir "";
							FinPara
							Escribir "";
							
						2:
							Escribir "********* RESTA DE MATRICES *********";
							Escribir "Matriz Resultante:";
							
							Para I3<-1 Hasta fila Hacer
								
								Para J3<-1 Hasta columna Hacer
									matrizR[I3,J3]= matriz1[I3,J3] - matriz2[I3,J3];
									Escribir Sin Saltar'[',matrizR[I3,J3],']';
								FinPara
								Escribir "";
							FinPara
							Escribir "";
							
						3:
							Escribir "********* MULTIPLICACIÓN DE MATRICES *********";
							Para I3<-1 Hasta fila Hacer
								c<-1;
								Mientras c < 3 Hacer
									suma<-0 ;
									Para  J3<- 1 Hasta columna Hacer
										suma<-suma + (matriz1(I3,J3)* matriz2(J3,c));
									FinPara
									matrizR(I3,c)<-suma;
									c<-c+1;
								FinMientras
							FinPara
							
							Escribir "Matriz Resultante:";
							Para I3<-1 Hasta fila Hacer
								Para J3<-1 Hasta columna Hacer
									Escribir Sin Saltar'[',matrizR[I3,J3],']';
								FinPara
								Escribir "";
							FinPara
							Escribir "";
							
						4:
							Escribir "********* DIVISIÓN DE MATRICES *********";
							Escribir "Matriz Resultante:";
							
							Para I3<-1 Hasta fila Hacer
								
								Para J3<-1 Hasta columna Hacer
									matrizR[I3,J3]= matriz1[I3,J3] / matriz2[I3,J3];
									Escribir Sin Saltar'[',matrizR[I3,J3],']';
								FinPara
								Escribir "";
							FinPara
							Escribir "";
							
						5:
							Escribir "Primera Matriz";											
							Para I<-1 Hasta fila Hacer
								
								Para J<-1 Hasta columna Hacer
									Escribir Sin Saltar'[',matriz1[I,J],']';
								FinPara
								
								Escribir "";
							FinPara
							
							Escribir "********* MATRIZ TRANSPUESTA *********";
							Para I<-1 Hasta fila Hacer
								
								Para J<-1 Hasta columna Hacer
									Escribir Sin Saltar'[',matriz1[J,I],']';
								FinPara
								
								Escribir "";
							FinPara
							Escribir "";
							
						De Otro Modo:
							Mostrar "Ingrese una opción valida"
							Mostrar "Presione enter para continuar"
							Esperar Tecla
							
					FinSegun
					
					Esperar 1 segundo
					Mostrar "Presiona cualquier tecla para continuar"
					Esperar Tecla 
					Borrar Pantalla
					
				FinSi
				
			FinMientras
			
		FinSi
		
		Si(opcion1==2)Entonces
			Borrar Pantalla
			Mostrar Sin Saltar "Saliendo..."
			Esperar 1 segundo
			Borrar Pantalla
			Mostrar Sin Saltar "Saliendo...."
			Esperar 1 segundo
			Borrar Pantalla
			Mostrar Sin Saltar "Saliendo....."
			Esperar 1 segundo
			Borrar Pantalla
			Mostrar Sin Saltar "Saliendo......"
			Esperar 1 segundo
			Mostrar ".Vuelve pronto :)"
			Mostrar ""
			
		FinSi
		
		Si (opcion1 >2 o opcion1 <1) Entonces
			
			Mostrar "Ingrese un valor correcto..."
			Esperar 1 segundo
			Borrar Pantalla
			
		FinSi
		
	FinMientras
FinAlgoritmo

Funcion op=validar()
	Definir valorN como entero;
	Dimension d[27]
	Definir vof, v1 como logico;
	
	vof=falso
	v1=verdadero
	d[1]="a";
	d[2]="b";
	d[3]="c";
	d[4]="d";
	d[5]="e";
	d[6]="f";
	d[7]="g";
	d[8]="h";
	d[9]="i";
	d[10]="j";
	d[11]="k";
	d[12]="l";
	d[13]="m";
	d[14]="n";
	d[15]="n";
	d[16]="o";
	d[17]="p";
	d[18]="q";
	d[19]="r";
	d[20]="s";
	d[21]="t";
	d[22]="u";
	d[23]="v";
	d[24]="w";
	d[25]="x";
	d[26]="y";
	d[27]="z";
	
	Mientras v1==verdadero
		Mostrar Sin Saltar "Opción; "
		Leer abc
		Borrar Pantalla
		
		si(Longitud(abc) >1 o Longitud(abc) <1 )Entonces
			
			Mostrar "Opción no válida / Ingrese un número...";
			Esperar 2 segundos
			
		SiNo
			
			vof=falso
			
			Para I=1 hasta 27 hacer 
				si (d[I]==abc o Mayusculas(d[I])==abc)entonces
					
					Mostrar "No ingrese letras. porfavor ingrese un número..."
					vof=verdadero;
					
				FinSi
				
			FinPara
			
			si(vof=falso) entonces
				
				valorN=ConvertirANumero(abc)
				op=valorN
				
				Para I=1 hasta valorN hacer
					
					si(I==valorN)entonces
						v1=falso
					FinSi
					
				FinPara
				
			FinSi
			
		FinSi
		
	FinMientras

FinFuncion
