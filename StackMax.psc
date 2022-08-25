Algoritmo StackMax
	Dimension cola[10];
	Definir indice Como Entero;
	Definir  option Como Entero;
	Definir mensaje Como Caracter;
	mensaje="Bievenido(a) a StackMax";
	indice=1;
	
	Imprimir "Edwin Vargas Jiménez"
	Imprimir "19-SIIN-1-029";
	Imprimir "";
	Imprimir mensaje;
	Imprimir "";
	Imprimir "";
	
	Repetir
		Imprimir "Seleccione una opción:";
		Imprimir  "1: Añadir cliente a cola";
		Imprimir  "2: Ver cliente actual";
		Imprimir  "3: Ver todos los clientes";
		Imprimir "4: Siguiente";
		Imprimir "0: Salir";
		Leer option;
		
		Segun option Hacer
			1: 
				nuevoCliente(cola, indice);
				indice=indice+1;
			2:
				turnoActual(cola);
			3:
				verClientes(cola);
			4: 
				siguiente(cola);
		FinSegun
		Esperar Tecla 
	Hasta Que option=0;
	

FinAlgoritmo

Funcion nuevoCliente(cola, indice)
	Definir  nombre Como Caracter;
	Imprimir  "Ingrese el nombre del cliente";
	Leer nombre;
	cola[indice]=nombre;

FinFuncion

Funcion turnoActual(cola)
	SI cola[1]<>"" Entonces
		Imprimir cola[1];
	SiNo
		Imprimir  "No hay turnos en cola";
	FinSi
FinFuncion

Funcion verClientes(cola)
	Para Cada cliente de cola Hacer
		Si cliente<>"" Entonces
			Imprimir cliente;
		FinSi
	FinPara
FinFuncion

Funcion siguiente(cola)
	Para i Desde 2 Hasta 10 Hacer
		Si cola[i]<>"" Entonces
			cola[i-1]=cola[i];
		FinSi
	FinPara
	Imprimir  "Siguiente: "+cola[1];
	
FinFuncion
