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
		escribir "1:  Determinación del precio de envío según peso, distancia y tipo de servicio:"
		escribir "2:  Determinación del salario neto con impuestos progresivos y deducciones :"
		escribir "3:  Bonificaciones salariales según condiciones de antigüedad y desempeño :"
		escribir "4:  Determinación del precio de una póliza de seguros:"
		escribir "5:  Determinación del costo de matrícula universitaria:"
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
	//Una empresa de envíos cobra $10 por cada 5 kg de peso del paquete. Si la distancia es 
	//mayor a 500 km, hay un recargo del 15%. Si el envío es internacional, se añade un 
	//recargo del 20%. Si el cliente elige un servicio exprés y la distancia es mayor a 1000 km, 
	//el recargo aumenta en un 10% adicional. Además, si el peso del paquete es superior a 
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
         recargoExprés <- (precioBase + recargoDistancia + recargoInternacional) * 0.10
     Fin Si
	 
     // Verificar recargo por peso
     Si peso > 50 Entonces
         recargoPeso <- precioBase * 0.05
      Fin Si
	 
     // Calcular el precio total
      precioTotal <- precioBase + recargoDistancia + recargoInternacional + recargoExprés + recargoPeso
	 
     // Mostrar el resultado
     Escribir "El precio total del envio es: $", precioTotal
	 Esperar Tecla	
FinFuncion

funcion Secuencial2
	//Un empleado recibe un salario bruto mensual. Si el salario es menor a $2000, se le aplica 
	//un impuesto del 10%. Si el salario está entre $2000 y $5000, el impuesto es del 20%. Si 
	//supera los $5000, el impuesto es del 30%. Si tiene más de 2 hijos, recibe una deducción 
	//de $100 por cada hijo. 
	Definir salarioBruto, impuesto, deduccionPorHijos, numeroHijos Como Real
	Definir salarioNeto Como Real
	
	Limpiar Pantalla
		
		// Leer el salario bruto y el número de hijos
		Escribir "Ingrese el salario bruto mensual: "
		Leer salarioBruto
		Escribir "Ingrese el número de hijos: "
		Leer numeroHijos
		
		// Inicializar el impuesto
		impuesto <- 0
		
		// Determinar el impuesto según el salario bruto
		Si salarioBruto < 2000 Entonces
			impuesto <- salarioBruto * 0.10
		Sino
			Si salarioBruto >= 2000 Y salarioBruto <= 5000 Entonces
				impuesto <- salarioBruto * 0.20
			Sino
				impuesto <- salarioBruto * 0.30
			Fin Si
		Fin Si
		
		// Calcular deducción por hijos si tiene más de 2
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
	//Un empleado recibe un salario base de $2000. Si tiene más de 5 años en la empresa y 
	//su desempeño es superior a 80%, recibe una bonificación del 10%. Si su desempeño es 
	//superior a 90% y además ha trabajado más de 50 horas esa semana, recibe una 
	//bonificación adicional del 5%. Si no cumple ninguna condición, no recibe bonificación.
	Definir salarioBase, bonificacion, desempeno Como Real
	Definir antiguedad, horasTrabajadas Como Entero
	
	Limpiar Pantalla	
		// Inicializar el salario base
		salarioBase <- 2000
		bonificacion <- 0
		
		// Leer datos de entrada
		Escribir "Ingrese la antigüedad del empleado en años: "
		Leer antiguedad
		Escribir "Ingrese el desempeño del empleado (0 a 100): "
		Leer desempeno
		Escribir "Ingrese el número de horas trabajadas esta semana: "
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
		Escribir "El salario total con bonificación es: $", salarioTotal
		Esperar Tecla
FinFuncion

Funcion  Secuencial4
	//Una compañía de seguros determina el precio de una póliza según el valor del vehículo 
	//y la edad del conductor. Si el vehículo cuesta más de $20,000, se añade un recargo del 
	//10%. Si el conductor tiene menos de 25 años, se añade un recargo del 15%. Si el 
	//vehículo es un automóvil eléctrico y tiene más de 3 años de antigüedad, se aplica un 
	//descuento del 5%. Además, si el vehículo es de lujo (valor superior a $50,000), hay un 
	//recargo adicional del 20%. 
	Definir valorVehiculo, precioBase, recargoEdad, recargoValor, recargoLujo, descuento Como Real
    Definir edad, antiguedad Como Entero
    Definir tipoVehiculo Como Caracter
    Definir precioTotal Como Real
	Limpiar Pantalla
     // Leer datos de entrada
     Escribir "Ingrese el valor del vehículo: "
     Leer valorVehiculo
     Escribir "Ingrese la edad del conductor: "
     Leer edad
     Escribir "Ingrese la antigüedad del vehículo (en años): "
     Leer antiguedad
     Escribir "Ingrese el tipo de vehículo (Eléctrico/Lujo): "
     Leer tipoVehiculo
	 
     // Inicializar el precio base
     precioBase <- valorVehiculo
	 
     // Inicializar recargos y descuentos
     recargoEdad <- 0
     recargoValor <- 0
     recargoLujo <- 0
     descuento <- 0
	 
     // Calcular recargos según condiciones
     Si valorVehiculo > 20000 Entonces
         recargoValor <- precioBase * 0.10
     Fin Si
	 
     Si edad < 25 Entonces
         recargoEdad <- precioBase * 0.15
     Fin Si
	 
     Si tipoVehiculo = "Eléctrico" Y antiguedad > 3 Entonces
         descuento <- precioBase * 0.05
     Fin Si
	 
     Si valorVehiculo > 50000 Entonces
         recargoLujo <- precioBase * 0.20
     Fin Si
	 
     // Calcular el precio total
     precioTotal <- precioBase + recargoValor + recargoEdad + recargoLujo - descuento
	 
     // Mostrar el resultado
     Escribir "El precio total de la póliza de seguros es: $", precioTotal
	 Esperar Tecla
FinFuncion



Funcion Secuancial5
	//Una universidad cobra una matrícula base de $2000. Si el estudiante tiene un promedio 
	//superior a 90, recibe un descuento del 15%. Si tiene más de 2 hermanos en la 
	//universidad, recibe un descuento adicional del 10%. Si el estudiante paga después de 
	//la fecha límite, se añade un recargo del 5%. Si el estudiante está inscrito en más de 5 
	//asignaturas, recibe un descuento adicional del 5%. 
	Definir matriculaBase, descuentoPromedio, descuentoHermanos, recargoPago, descuentoAsignaturas Como Real
    Definir promedio Como Real
    Definir numeroHermanos, numeroAsignaturas Como Entero
	Definir costoFinal Como Real
	Limpiar Pantalla
    	
     // Inicializar matrícula base
     matriculaBase <- 2000
     descuentoPromedio <- 0
     descuentoHermanos <- 0
     recargoPago <- 0
     descuentoAsignaturas <- 0
    	
     // Leer datos de entrada
     Escribir "Ingrese el promedio del estudiante: "
     Leer promedio
     Escribir "Ingrese el número de hermanos en la universidad: "
     Leer numeroHermanos
     Escribir "Ingrese el número de asignaturas inscritas: "
     Leer numeroAsignaturas
     Escribir "¿El estudiante pagó después de la fecha límite? (1 = Sí, 0 = No): "
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
	 
     // Calcular recargo si pagó tarde
     Si pagoTarde = 1 Entonces
         recargoPago <- matriculaBase * 0.05
     Fin Si
	 
     // Calcular el costo final
     costoFinal <- matriculaBase - descuentoPromedio - descuentoHermanos - descuentoAsignaturas + recargoPago
	 
     // Mostrar el resultado
     Escribir "El costo final de la matrícula universitaria es: $", costoFinal
	 
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
		escribir "5: Leer tres números enteros diferentes e imprimir el mayor de ellos:"
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
	//Imprima el sueldo que percibirá.
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
    	
     // Imprimir el sueldo que percibirá
     Escribir "El sueldo que percibirá es: $", sueldoFinal
	 Esperar Tecla
FinFuncion
Funcion condicionales2
	//Se desea leer por teclado un número natural entero y se desea saber si es positivo o negativo. 

	Definir numero Como Entero
	Limpiar Pantalla
     // Leer el número natural entero
     Escribir "Ingrese un número natural entero: "
     Leer numero
	 
     // Verificar si el número es positivo o negativo
     Si numero >= 0 Entonces
         Escribir "El número es positivo."
     Sino
         Escribir "El número es negativo."
     Fin Si
	 Esperar Tecla
FinFuncion
	
Funcion condicionales3
	//Se desea leer por teclado un número comprendido entre 1 y 100 (inclusive) y se desea visualizar 
	//si el número es par o impar.
	Definir numero Como Entero
	Limpiar Pantalla
	 // Leer el número
	 Escribir "Ingrese un número entre 1 y 100 (inclusive): "
     Leer numero
	 
     // Verificar si el número está en el rango permitido
     Si numero < 1 O numero > 100 Entonces
         Escribir "El número ingresado está fuera del rango permitido."
     Sino
	 // Verificar si el número es par o impar
        Si numero % 2 = 0 Entonces
            Escribir "El número ", numero, " es par."
        Sino
            Escribir "El número ", numero, " es impar."
        Fin Si
     Fin Si
		Esperar Tecla
FinFuncion


Funcion  Condicionales4
	// Leer tres números enteros y, si el primero de ellos es negativo, calcular el producto de los tres, 
	//en caso contrario calcular la suma de ellos.
	Definir numero1, numero2, numero3, resultado Como Entero
	Limpiar Pantalla
     // Leer los tres números enteros
     Escribir "Ingrese el primer número: "
     Leer numero1
     Escribir "Ingrese el segundo número: "
     Leer numero2
     Escribir "Ingrese el tercer número: "
     Leer numero3
	 
     // Verificar si el primer número es negativo
     Si numero1 < 0 Entonces
	 // Calcular el producto
         resultado <- numero1 * numero2 * numero3
         Escribir "El producto de los tres números es: ", resultado
     Sino
	 // Calcular la suma
         resultado <- numero1 + numero2 + numero3
         Escribir "La suma de los tres números es: ", resultado
     Fin Si
	 Esperar Tecla
FinFuncion

Funcion Condicionales5
	//Leer tres números enteros diferentes e imprimir el mayor de ellos. 
	//Ejemplo: num = 8, num=10, num=15          Salida: 15
	Definir numero1, numero2, numero3, mayor Como Entero
	Limpiar Pantalla
	 // Leer los tres números enteros
     Escribir "Ingrese el primer número: "
     Leer numero1
     Escribir "Ingrese el segundo número: "
     Leer numero2
     Escribir "Ingrese el tercer número: "
     Leer numero3
	 
     // Verificar cuál es el mayor
     mayor <- numero1  
    	
      Si numero2 > mayor Entonces
         mayor <- numero2  
	  Fin Si
	 
      Si numero3 > mayor Entonces
         mayor <- numero3  
      Fin Si
	 
     // Imprimir el mayor
     Escribir "El mayor de los tres números es: ", mayor
	 Esperar Tecla
FinFuncion

funcion EjercicioCicloRepeticion     // SubMenus
	definir opc Como Entero
	
	repetir 
		Limpiar Pantalla
		Escribir "**Ejercicios Ciclo Repeticion**"
		escribir "1: Pide al usuario ingresar números y suma los valores mientras los números sean positivos. Termina cuando el usuario ingrese un número negativo.: "
		escribir "2: Ingresa números y cuenta cuántos son pares y cuántos son impares:"
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
	// o Pide al usuario ingresar números y suma los valores mientras los números
	//sean positivos. Termina cuando el usuario ingrese un número negativo.
	Definir num, suma Como Real
    suma <- 0
	Limpiar Pantalla
    Escribir "Ingrese números positivos para sumar e ingrese un número negativo para terminar:"
	
    Repetir //el proceso se repite
        Leer num
        
        Si num >= 0 Entonces
            suma <- suma + num
        FinSi
        
    Hasta Que num < 0 // el proceso se repetiraa , solamente , hasta que se ingrese un numero , por debajo de 0
	
    Escribir "La suma de los números positivos ingresados es: ", suma
Esperar Tecla
FinFuncion

Funcion Ciclo2
	//Pide al usuario ingresar números y cuenta cuántos son pares y cuántos son
	//impares. Finaliza cuando el usuario ingrese el número cero
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
	//Pide al usuario ingresar números y calcula el promedio de los números
	//ingresados hasta que el usuario ingrese un número negativo, que indica el
    //fin de la entrada.
	Definir numero, suma, contador Como Real
    suma <- 0
    contador <- 0   //para contar cuántos números se han ingresado.
Limpiar Pantalla
    Escribir "Ingresa números. Para terminar, ingresa un número negativo."
	
    Repetir
        Leer num
        
        Si num >= 0 Entonces
            suma <- suma + num
            contador <- contador + 1
        FinSi
        
    Hasta Que num < 0
	
    Si contador > 0 Entonces
        promedio <- suma / contador
        Escribir "El promedio de los números ingresados es: ", promedio
    Sino
		
    FinSi 	
	Esperar Tecla // pausa
FinFuncion

Funcion Ciclo4
	//Pide un número al usuario e imprime la tabla de multiplicar de ese número
	//(del 1 al 10) usando un ciclo Mientras
	definir num , x como entero
	Limpiar Pantalla
	escribir "¿cual tabla de multiplicar decesa ver ? "
	leer num
	contador = 1 // se inicia en 1 y se incrementa en cada iteracion del cilo
	Mientras contador <= 10 Hacer 
		
		escribir num , " x " ,contador , " = ", num * contador
		contador = contador + 1
	Fin Mientras
	Esperar Tecla
FinFuncion

Funcion Ciclo5
	//Pide un número al usuario y determina si es primo. Utiliza un ciclo HacerMientras/Mientras para 
	//probar la divisibilidad de los números desde 2 hasta
	//la raíz cuadrada del número.

	Limpiar Pantalla
	Definir num, i Como Entero
	esPrimo <- Verdadero
	Escribir "Ingrese un número entero positivo: "
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
		Escribir num, " es un número primo."
	Sino
		Escribir num, " no es un número primo."
	FinSi
	Esperar Tecla
FinFuncion
	