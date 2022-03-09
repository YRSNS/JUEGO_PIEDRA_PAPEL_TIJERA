SubProceso JugarUnaRonda()
	//aquí oolocaremos el subproceso a realizar
FinSubProceso


Algoritmo PiedraPapelTijeras
	
	//Definir las variables
	Definir salir Como Logico
	Definir puntos_j1, puntos_pc, respuesta como entero 
	
	salir <- Falso
	//Entraremos en el bucle de juego 
	//Hasta que el usuario decida salir
	Mientras (salir=Falso)
		
		//iniciar el marcador a cero
		//iniciar las rondas a cero
		puntos_j1 = 0;
		puntos_pc = 0;
		
		ronda = 0;
		//comienza el juego
		//repetiremos las rondas
		//hasta determinar un ganador
		
		Escribir "Empieza el juego"
		
		Repetir
			
			Escribir "Ronda: ", ronda;
			//JugarUnaRonda(puntos_j1,puntos_pc,ronda);
			//subproceso
		Hasta Que (puntos_j1=3 o puntos_pc=3)
		
		//mostraremos al ganador
		Si (puntos_j1=3) Entonces
			Escribir "Has ganado";
			
		sino 
			Escribir "Has perdido";
		FinSi
		//Deciión del usuario a seguir jugando o no
		Escribir "Si quieres volver a jugar dale enter"
		
		Escribir "Si quieres salir escribe 1"
		
		Leer respuesta;
		
		si (respuesta = 1) Entonces
			salir <- Verdadero;
		FinSi
	FinMientras
FinAlgoritmo


