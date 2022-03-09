SubProceso JugarUnaRonda(puntos_j1 Por Referencia, puntos_pc Por Referencia, ronda Por Referencia)
	//aquí oolocaremos el subproceso a realizar
	//aquí lanzará piedra, papel o tijera como números 1,2,3 respectivamente
	Definir lanzamiento_j1, lanzamiento_pc Como Entero;
	ronda=ronda+1;
	//TURNO DEL JUGADOR
	Escribir "Que quieres jugar? 1. Piedra 2. Papel 3. Tijera"
	Repetir
		leer lanzamiento_j1;
		
	Hasta Que (lanzamiento_j1=1 o lanzamiento_j1=2 o lanzamiento_j1=3)
	
	//TURNO DE LA COMPUTADORA
	lanzamiento_pc = azar(3) +1;
	
	//COMPRABAR EL RESULTADO
	//SI EMPATE
	si(lanzamiento_pc = lanzamiento_j1)Entonces
		escribir "!EMPATE¡"
		//Si no hay empate uno de los ha ganado
	SiNo
		Si (lanzamiento_j1 = 1 Y lanzamiento_pc = 3) O (lanzamiento_j1 = 2 Y lanzamiento_pc =1) O (lanzamiento_j1 = 3 Y lanzamiento_pc =2) Entonces
			Escribir "Ganas la ronda!!"
			puntos_j1=puntos_j1+1;
		Sino  
			Escribir "Pierdes la ronda"
			puntos_pc=puntos_pc+1;
		FinSi
	FinSi
	
	
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
		
		rosa = 0;
		//comienza el juego
		//repetiremos las rondas
		//hasta determinar un ganador
		
		Escribir "Empieza el juego"
		Repetir
			
			Escribir "Ronda: ", ronda;
			JugarUnaRonda(puntos_j1,puntos_pc,ronda);
			
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


