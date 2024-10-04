Algoritmo Menu_Algoritmo 

	
	definir categoria Como Entero
	
	repetir   // Hacer Mientras (Do while)
		Limpiar Pantalla
		//se le dice al usuario que escoja una opcion y la dijite por el numero que aparece
		escribir " **** Escoja la opcion que decee visualizar ***"
		escribir "1: Algoritmo Secuenciales "
		escribir "2: Algoritmo Condicionales "
		escribir "3: Algoritmo de Repeticion o Ciclo "
		escribir "0: SALIR  "
		escribir "*** Ingrese la opcion ***"
		leer categoria 
		
		segun categoria hacer 
			//se llama a las funciones de los submenu 
			caso 1:
				EjercicioSecuenciales()
			caso 2:
				EjercicioCondicionales()
			caso 3:
				EjercicioCiclorepeticion()
			caso 0:
			//terminar programa
			De Otro Modo:
				escribir " La opcion que dijito , no se encuentra registrada o no existe , vuelva a intentarlo :"
				Esperar Tecla
			
		FinSegun

	Hasta Que  categoria == 0 
	
	
	
FinAlgoritmo

funcion EjercicioSecuenciales    // inicio funcion   // SubMenu
	definir opc Como Entero
	
	repetir 
		Limpiar Pantalla
		//opciones de ejercicios del submenu 
		Escribir "**Ejercicios Secunciales**"
		escribir "1:  Determinaci�n del precio de env�o seg�n peso, distancia y tipo de servicio:"
		escribir "2:  Determinaci�n del salario neto con impuestos progresivos y deducciones :"
		escribir "3:  Bonificaciones salariales seg�n condiciones de antig�edad y desempe�o :"
		escribir "4:  Determinaci�n del precio de una p�liza de seguros:"
		escribir "5:  Determinaci�n del costo de matr�cula universitaria:"
		Escribir "6: Salir"
		leer opc
		
		segun opc hacer 
			//llama a las funciones que guardan los ejercicios
			caso 1:
				Secuencial1() // los () ayuda a llamar a cada funcion
				
			caso 2:
				Secuencial2()   // Llamar al ejercicio del algoritmo.
			caso 3:
				Secuencial3()
			caso 4:
				Secuencial4()
			caso 5:
				Secuancial5()
			caso 6:
				
				De Otro Modo:
					
					escribir "La opcion que escogio no esta registrada o no existe , vuelva a intentar"
					Esperar Tecla  // Pausa	
		FinSegun
		
	Hasta Que opc == 6 
	
FinFuncion 

funcion Secuencial1
	//Una empresa de env�os cobra $10 por cada 5 kg de peso del paquete. Si la distancia es 
	//mayor a 500 km, hay un recargo del 15%. Si el env�o es internacional, se a�ade un 
	//recargo del 20%. Si el cliente elige un servicio expr�s y la distancia es mayor a 1000 km, 
	//el recargo aumenta en un 10% adicional. Adem�s, si el peso del paquete es superior a 
	//50 kg, se cobra un recargo adicional devl 5%.
	Definir peso, distancia Como Real
    Definir tipoServicio Como Caracter
    Definir precioBase, recargoDistancia, recargoInternacional, recargoExpres, recargoPeso Como Real
    Definir precioTotal Como Real
	
	Limpiar Pantalla
	 // Leer datos de entrada
     Escribir "Ingrese el peso del paquete (kg): "
     Leer peso
     Escribir "Ingrese la distancia del envio (km): "
     Leer distancia
     Escribir "Ingrese el tipo de servicio (Nacional/Internacional/Expres): "
     Leer tipoServicio
	 
     // Inicializar el precio base
     precioBase <- 10 * (peso / 5)
	 
     // Calcular recargos
     recargoDistancia <- 0
     recargoInternacional <- 0
     recargoExpres <- 0
     recargoPeso <- 0
	 
     // Verificar recargo por distancia
     Si distancia > 500 Entonces
         recargoDistancia <- precioBase * 0.15
     Fin Si
	 
     // Verificar recargo por tipo de servicio
     Si tipoServicio = "Internacional" Entonces
		 recargoInternacional <- precioBase * 0.20
	 Fin Si
     Si tipoServicio = "Expres" Y distancia > 1000 Entonces
         recargoExpr�s <- (precioBase + recargoDistancia + recargoInternacional) * 0.10
     Fin Si
	 
     // Verificar recargo por peso
     Si peso > 50 Entonces
         recargoPeso <- precioBase * 0.05
      Fin Si
	 
     // Calcular el precio total
      precioTotal <- precioBase + recargoDistancia + recargoInternacional + recargoExpr�s + recargoPeso
	 
     // Mostrar el resultado
     Escribir "El precio total del envio es: $", precioTotal
	 Esperar Tecla	
FinFuncion

funcion Secuencial2
	//Un empleado recibe un salario bruto mensual. Si el salario es menor a $2000, se le aplica 
	//un impuesto del 10%. Si el salario est� entre $2000 y $5000, el impuesto es del 20%. Si 
	//supera los $5000, el impuesto es del 30%. Si tiene m�s de 2 hijos, recibe una deducci�n 
	//de $100 por cada hijo. 
	Definir salarioBruto, impuesto, deduccionPorHijos, numeroHijos Como Real
	Definir salarioNeto Como Real
	
	Limpiar Pantalla
		
		// Leer el salario bruto y el n�mero de hijos
		Escribir "Ingrese el salario bruto mensual: "
		Leer salarioBruto
		Escribir "Ingrese el n�mero de hijos: "
		Leer numeroHijos
		
		// Inicializar el impuesto
		impuesto <- 0
		
		// Determinar el impuesto seg�n el salario bruto
		Si salarioBruto < 2000 Entonces
			impuesto <- salarioBruto * 0.10
		Sino
			Si salarioBruto >= 2000 Y salarioBruto <= 5000 Entonces
				impuesto <- salarioBruto * 0.20
			Sino
				impuesto <- salarioBruto * 0.30
			Fin Si
		Fin Si
		
		// Calcular deducci�n por hijos si tiene m�s de 2
		Si numeroHijos > 2 Entonces
			deduccionPorHijos <- (numeroHijos - 2) * 100
		Sino
			deduccionPorHijos <- 0
		Fin Si
		
		// Calcular el salario neto
		salarioNeto <- salarioBruto - impuesto - deduccionPorHijos
		
		// Mostrar el resultado
		Escribir "El salario neto es: $", salarioNeto
		Esperar Tecla
FinFuncion

funcion Secuencial3
	//Un empleado recibe un salario base de $2000. Si tiene m�s de 5 a�os en la empresa y 
	//su desempe�o es superior a 80%, recibe una bonificaci�n del 10%. Si su desempe�o es 
	//superior a 90% y adem�s ha trabajado m�s de 50 horas esa semana, recibe una 
	//bonificaci�n adicional del 5%. Si no cumple ninguna condici�n, no recibe bonificaci�n.
	Definir salarioBase, bonificacion, desempeno Como Real
	Definir antiguedad, horasTrabajadas Como Entero
	
	Limpiar Pantalla	
		// Inicializar el salario base
		salarioBase <- 2000
		bonificacion <- 0
		
		// Leer datos de entrada
		Escribir "Ingrese la antig�edad del empleado en a�os: "
		Leer antiguedad
		Escribir "Ingrese el desempe�o del empleado (0 a 100): "
		Leer desempeno
		Escribir "Ingrese el n�mero de horas trabajadas esta semana: "
		Leer horasTrabajadas
		
		// Calcular bonificaciones
		Si antiguedad > 5 Y desempeno > 80 Entonces
			bonificacion <- bonificacion + (salarioBase * 0.10)
		Fin Si
		
		Si desempeno > 90 Y horasTrabajadas > 50 Entonces
			bonificacion <- bonificacion + (salarioBase * 0.05)
		Fin Si
		
		// Calcular salario total
		salarioTotal <- salarioBase + bonificacion
		
		// Mostrar el resultado
		Escribir "El salario total con bonificaci�n es: $", salarioTotal
		Esperar Tecla
FinFuncion

Funcion  Secuencial4
	//Una compa��a de seguros determina el precio de una p�liza seg�n el valor del veh�culo 
	//y la edad del conductor. Si el veh�culo cuesta m�s de $20,000, se a�ade un recargo del 
	//10%. Si el conductor tiene menos de 25 a�os, se a�ade un recargo del 15%. Si el 
	//veh�culo es un autom�vil el�ctrico y tiene m�s de 3 a�os de antig�edad, se aplica un 
	//descuento del 5%. Adem�s, si el veh�culo es de lujo (valor superior a $50,000), hay un 
	//recargo adicional del 20%. 
	Definir valorVehiculo, precioBase, recargoEdad, recargoValor, recargoLujo, descuento Como Real
    Definir edad, antiguedad Como Entero
    Definir tipoVehiculo Como Caracter
    Definir precioTotal Como Real
	Limpiar Pantalla
     // Leer datos de entrada
     Escribir "Ingrese el valor del veh�culo: "
     Leer valorVehiculo
     Escribir "Ingrese la edad del conductor: "
     Leer edad
     Escribir "Ingrese la antig�edad del veh�culo (en a�os): "
     Leer antiguedad
     Escribir "Ingrese el tipo de veh�culo (El�ctrico/Lujo): "
     Leer tipoVehiculo
	 
     // Inicializar el precio base
     precioBase <- valorVehiculo
	 
     // Inicializar recargos y descuentos
     recargoEdad <- 0
     recargoValor <- 0
     recargoLujo <- 0
     descuento <- 0
	 
     // Calcular recargos seg�n condiciones
     Si valorVehiculo > 20000 Entonces
         recargoValor <- precioBase * 0.10
     Fin Si
	 
     Si edad < 25 Entonces
         recargoEdad <- precioBase * 0.15
     Fin Si
	 
     Si tipoVehiculo = "El�ctrico" Y antiguedad > 3 Entonces
         descuento <- precioBase * 0.05
     Fin Si
	 
     Si valorVehiculo > 50000 Entonces
         recargoLujo <- precioBase * 0.20
     Fin Si
	 
     // Calcular el precio total
     precioTotal <- precioBase + recargoValor + recargoEdad + recargoLujo - descuento
	 
     // Mostrar el resultado
     Escribir "El precio total de la p�liza de seguros es: $", precioTotal
	 Esperar Tecla
FinFuncion



Funcion Secuancial5
	//Una universidad cobra una matr�cula base de $2000. Si el estudiante tiene un promedio 
	//superior a 90, recibe un descuento del 15%. Si tiene m�s de 2 hermanos en la 
	//universidad, recibe un descuento adicional del 10%. Si el estudiante paga despu�s de 
	//la fecha l�mite, se a�ade un recargo del 5%. Si el estudiante est� inscrito en m�s de 5 
	//asignaturas, recibe un descuento adicional del 5%. 
	Definir matriculaBase, descuentoPromedio, descuentoHermanos, recargoPago, descuentoAsignaturas Como Real
    Definir promedio Como Real
    Definir numeroHermanos, numeroAsignaturas Como Entero
	Definir costoFinal Como Real
	Limpiar Pantalla
    	
     // Inicializar matr�cula base
     matriculaBase <- 2000
     descuentoPromedio <- 0
     descuentoHermanos <- 0
     recargoPago <- 0
     descuentoAsignaturas <- 0
    	
     // Leer datos de entrada
     Escribir "Ingrese el promedio del estudiante: "
     Leer promedio
     Escribir "Ingrese el n�mero de hermanos en la universidad: "
     Leer numeroHermanos
     Escribir "Ingrese el n�mero de asignaturas inscritas: "
     Leer numeroAsignaturas
     Escribir "�El estudiante pag� despu�s de la fecha l�mite? (1 = S�, 0 = No): "
     Leer pagoTarde
	 
     // Calcular descuentos
     Si promedio > 90 Entonces
         descuentoPromedio <- matriculaBase * 0.15
     Fin Si
	 
     Si numeroHermanos > 2 Entonces
         descuentoHermanos <- matriculaBase * 0.10
     Fin Si
	 
     Si numeroAsignaturas > 5 Entonces
		 descuentoAsignaturas <- matriculaBase * 0.05
     Fin Si
	 
     // Calcular recargo si pag� tarde
     Si pagoTarde = 1 Entonces
         recargoPago <- matriculaBase * 0.05
     Fin Si
	 
     // Calcular el costo final
     costoFinal <- matriculaBase - descuentoPromedio - descuentoHermanos - descuentoAsignaturas + recargoPago
	 
     // Mostrar el resultado
     Escribir "El costo final de la matr�cula universitaria es: $", costoFinal
	 
		Esperar Tecla
FinFuncion
funcion EjercicioCondicionales // SubMenu
	definir opc Como Entero
	
	repetir 
		Limpiar Pantalla
		Escribir "** Ejercicios Condicionales **"
		escribir "1:Aunemto de sueldo:"
		escribir "2:Leer numero natural positivo o negativo:"
		escribir "3:Visualizar si el numero es par o impar:"
		escribir "4:Leer 3 numeros enteros y calcular el producto de los 3:"
		escribir "5: Leer tres n�meros enteros diferentes e imprimir el mayor de ellos:"
		Escribir "6: Salir"
		leer opc
		
		segun opc hacer 
			caso 1:
				Condicionales1()
			caso 2:
				Condicionales2()
			caso 3:
				Condicionales3()
			caso 4:
				Condicionales4()
			caso 5:
				Condicionales5()
			caso 6:
				
			De Otro Modo:
				
				escribir "La opcion que escogio no esta registrada o no existe , vuelva a intentar"
				Esperar Tecla
		FinSegun
		
	Hasta Que opc == 6 
	
FinFuncion 
Funcion Condicionales1
	// Dado el sueldo de un trabajador, aplique un aumento del 15% si su sueldo es inferior a $1000. 
	//Imprima el sueldo que percibir�.
	Definir sueldo, sueldoFinal Como Real
	Limpiar Pantalla
     // Leer el sueldo del trabajador
     Escribir "Ingrese el sueldo del trabajador: "
     Leer sueldo
	 
     // Calcular el nuevo sueldo si es inferior a $1000
     Si sueldo < 1000 Entonces
         sueldoFinal <- sueldo * 1.15  // Aumento del 15%
     Sino
         sueldoFinal <- sueldo  // No hay aumento
     Fin Si
    	
     // Imprimir el sueldo que percibir�
     Escribir "El sueldo que percibir� es: $", sueldoFinal
	 Esperar Tecla
FinFuncion
Funcion condicionales2
	//Se desea leer por teclado un n�mero natural entero y se desea saber si es positivo o negativo. 

	Definir numero Como Entero
	Limpiar Pantalla
     // Leer el n�mero natural entero
     Escribir "Ingrese un n�mero natural entero: "
     Leer numero
	 
     // Verificar si el n�mero es positivo o negativo
     Si numero >= 0 Entonces
         Escribir "El n�mero es positivo."
     Sino
         Escribir "El n�mero es negativo."
     Fin Si
	 Esperar Tecla
FinFuncion
	
Funcion condicionales3
	//Se desea leer por teclado un n�mero comprendido entre 1 y 100 (inclusive) y se desea visualizar 
	//si el n�mero es par o impar.
	Definir numero Como Entero
	Limpiar Pantalla
	 // Leer el n�mero
	 Escribir "Ingrese un n�mero entre 1 y 100 (inclusive): "
     Leer numero
	 
     // Verificar si el n�mero est� en el rango permitido
     Si numero < 1 O numero > 100 Entonces
         Escribir "El n�mero ingresado est� fuera del rango permitido."
     Sino
	 // Verificar si el n�mero es par o impar
        Si numero % 2 = 0 Entonces
            Escribir "El n�mero ", numero, " es par."
        Sino
            Escribir "El n�mero ", numero, " es impar."
        Fin Si
     Fin Si
		Esperar Tecla
FinFuncion


Funcion  Condicionales4
	// Leer tres n�meros enteros y, si el primero de ellos es negativo, calcular el producto de los tres, 
	//en caso contrario calcular la suma de ellos.
	Definir numero1, numero2, numero3, resultado Como Entero
	Limpiar Pantalla
     // Leer los tres n�meros enteros
     Escribir "Ingrese el primer n�mero: "
     Leer numero1
     Escribir "Ingrese el segundo n�mero: "
     Leer numero2
     Escribir "Ingrese el tercer n�mero: "
     Leer numero3
	 
     // Verificar si el primer n�mero es negativo
     Si numero1 < 0 Entonces
	 // Calcular el producto
         resultado <- numero1 * numero2 * numero3
         Escribir "El producto de los tres n�meros es: ", resultado
     Sino
	 // Calcular la suma
         resultado <- numero1 + numero2 + numero3
         Escribir "La suma de los tres n�meros es: ", resultado
     Fin Si
	 Esperar Tecla
FinFuncion

Funcion Condicionales5
	//Leer tres n�meros enteros diferentes e imprimir el mayor de ellos. 
	//Ejemplo: num = 8, num=10, num=15          Salida: 15
	Definir numero1, numero2, numero3, mayor Como Entero
	Limpiar Pantalla
	 // Leer los tres n�meros enteros
     Escribir "Ingrese el primer n�mero: "
     Leer numero1
     Escribir "Ingrese el segundo n�mero: "
     Leer numero2
     Escribir "Ingrese el tercer n�mero: "
     Leer numero3
	 
     // Verificar cu�l es el mayor
     mayor <- numero1  
    	
      Si numero2 > mayor Entonces
         mayor <- numero2  
	  Fin Si
	 
      Si numero3 > mayor Entonces
         mayor <- numero3  
      Fin Si
	 
     // Imprimir el mayor
     Escribir "El mayor de los tres n�meros es: ", mayor
	 Esperar Tecla
FinFuncion

funcion EjercicioCicloRepeticion     // SubMenus
	definir opc Como Entero
	
	repetir 
		Limpiar Pantalla
		Escribir "**Ejercicios Ciclo Repeticion**"
		escribir "1: Pide al usuario ingresar n�meros y suma los valores mientras los n�meros sean positivos. Termina cuando el usuario ingrese un n�mero negativo.: "
		escribir "2: Ingresa n�meros y cuenta cu�ntos son pares y cu�ntos son impares:"
		escribir "3: Calcular Promedio de numeros ingresados:"
		escribir "4: Mustras la tabla de multiplicar del numero que elijas: "
		escribir "5: Muestras un mensaje si el numero ingresado es primo o no  :  "
		Escribir "6: Salir"
		leer opc
		
		segun opc hacer 
			//llama a las funciones que guardan los ejercicios
			caso 1:
				ciclo1
			caso 2:
				Ciclo2
			caso 3:
				Ciclo3
			caso 4:
				Ciclo4
			caso 5:
				Ciclo5
			caso 6:
				
			De Otro Modo:
				
				escribir "La opcion que escogio no esta registrada o no existe , vuelva a intentar"
				Esperar Tecla
		FinSegun
		
	Hasta Que opc == 6 
	
FinFuncion 

Funcion Ciclo1
	// o Pide al usuario ingresar n�meros y suma los valores mientras los n�meros
	//sean positivos. Termina cuando el usuario ingrese un n�mero negativo.
	Definir num, suma Como Real
    suma <- 0
	Limpiar Pantalla
    Escribir "Ingrese n�meros positivos para sumar e ingrese un n�mero negativo para terminar:"
	
    Repetir //el proceso se repite
        Leer num
        
        Si num >= 0 Entonces
            suma <- suma + num
        FinSi
        
    Hasta Que num < 0 // el proceso se repetiraa , solamente , hasta que se ingrese un numero , por debajo de 0
	
    Escribir "La suma de los n�meros positivos ingresados es: ", suma
Esperar Tecla
FinFuncion

Funcion Ciclo2
	//Pide al usuario ingresar n�meros y cuenta cu�ntos son pares y cu�ntos son
	//impares. Finaliza cuando el usuario ingrese el n�mero cero
	definir num , pares, impares como enteros 
	pares = 0
	impares = 0
	Limpiar Pantalla
	escribir "Escriba una cierta cantidad de numeros y si quiere que termine, ingrese un cero"
	
	repetir // el ciclo se repetira 
		leer num 
		si num <> 0  Entonces
			si num % 2 = 0 entonces 
				pares = pares + 1
			sino 
				impares = impares + 1 
			FinSi
			
			
		FinSi
		
	Hasta Que num == 0 // se repite , hasta que el usuario ingrese el 0
	
	escribir "El numero de pares que ingreso fueron : " pares
	escribir "El numero de impares que ingreso fueron : " impares
	Esperar Tecla
FinFuncion

Funcion Ciclo3
	//Pide al usuario ingresar n�meros y calcula el promedio de los n�meros
	//ingresados hasta que el usuario ingrese un n�mero negativo, que indica el
    //fin de la entrada.
	Definir numero, suma, contador Como Real
    suma <- 0
    contador <- 0   //para contar cu�ntos n�meros se han ingresado.
Limpiar Pantalla
    Escribir "Ingresa n�meros. Para terminar, ingresa un n�mero negativo."
	
    Repetir
        Leer num
        
        Si num >= 0 Entonces
            suma <- suma + num
            contador <- contador + 1
        FinSi
        
    Hasta Que num < 0
	
    Si contador > 0 Entonces
        promedio <- suma / contador
        Escribir "El promedio de los n�meros ingresados es: ", promedio
    Sino
		
    FinSi 	
	Esperar Tecla // pausa
FinFuncion

Funcion Ciclo4
	//Pide un n�mero al usuario e imprime la tabla de multiplicar de ese n�mero
	//(del 1 al 10) usando un ciclo Mientras
	definir num , x como entero
	Limpiar Pantalla
	escribir "�cual tabla de multiplicar decesa ver ? "
	leer num
	contador = 1 // se inicia en 1 y se incrementa en cada iteracion del cilo
	Mientras contador <= 10 Hacer 
		
		escribir num , " x " ,contador , " = ", num * contador
		contador = contador + 1
	Fin Mientras
	Esperar Tecla
FinFuncion

Funcion Ciclo5
	//Pide un n�mero al usuario y determina si es primo. Utiliza un ciclo HacerMientras/Mientras para 
	//probar la divisibilidad de los n�meros desde 2 hasta
	//la ra�z cuadrada del n�mero.

	Limpiar Pantalla
	Definir num, i Como Entero
	esPrimo <- Verdadero
	Escribir "Ingrese un n�mero entero positivo: "
	Leer num
	
	Si num < 2 Entonces
		esPrimo <- Falso
	Sino
		i <- 2
		Mientras i * i <= num Hacer
			Si num % i = 0 Entonces
				esPrimo <- Falso
			FinSi
			i <- i + 1
		FinMientras
	FinSi
	
	Si esPrimo Entonces
		Escribir num, " es un n�mero primo."
	Sino
		Escribir num, " no es un n�mero primo."
	FinSi
	Esperar Tecla
FinFuncion
	