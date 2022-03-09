SubProceso JugarUnaRonda()
	//aquí oolocaremos el subproceso a realizar
FinSubProceso

Algoritmo PiedraPapelTijeras
	//Definir las variables
	
	//Entraremos en el bucle de juego 
	//Hasta que el usuario decida salir
	
	Mientras (salir=Falso)
		//iniciar el marcador a cero
		
		//iniciar las rondas a cero
		//comienza el juego
		
		//repetiremos las rondas
		//hasta determinar un ganador
		
		Repetir
			JugarUnaRonda();//subproceso
			
		Hasta Que (puntos_j1=3 o puntos_pc=3)
		//mostraremos al ganador
		//Deciión del usuario a seguir jugando o no
		
	FinMientras
FinAlgoritmo





