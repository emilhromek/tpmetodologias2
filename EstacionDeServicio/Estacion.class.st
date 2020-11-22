Class {
	#name : #Estacion,
	#superclass : #Trasaccion,
	#instVars : [
		'nombre',
		'surtidor1',
		'surtidor2',
		'surtidor3',
		'lavadero',
		'inflador',
		'mercado',
		'listatrasacciones'
	],
	#category : #EstacionDeServicio
}

{ #category : #'as yet unclassified' }
Estacion class >> crearEstacion:unNombre [
"Retorna una instancia de estacion inicializada"
^(self new) iniEstacion:unNombre.
]

{ #category : #'as yet unclassified' }
Estacion >> MenuAdmin [

|opcion op1 op2 op3 retorno|

Transcript
	clear;
	show: 'Admin';
	cr.
Transcript
	show:
'*******************************************************';
	cr;
	show: '1. Buscar trasacciones por rango de precio';
	cr;
	show: '2. Buscar alguna trasaccion por rango de precio';
	cr;
	show: '3. Buscar trasacciones fuera de un rango de precio';
	cr;
	show: '4. Retornar la facturacion de todas las trasacciones';
	cr;
	show: '5. Volver';
	cr.
opcion:= (UIManager default request: 'Ingresa una opcion:') asNumber.
[opcion ~= 6] whileTrue: [ 
	(opcion = 1) ifTrue: [ 
		Transcript
		show: 'Busqueda de trasacciones por rango de precio';
		cr;
		show: 'Ingrese sector. Opciones: surtidor de nafta = 1, surtidor de gasoil = 2';
		cr;
		show: 'surtidor de GNC = 3; lavadero = 4, inflador = 5';
		cr.
		op1:= (UIManager default request: 'Ingrese un sector:') asNumber.
		Transcript
		show: 'Ingrese monto minimo';
		cr.
		op2:= (UIManager default request: 'Ingresa monto minimo:') asNumber.
		Transcript
		show: 'Ingrese monto maximo';
		cr.
		op3:= (UIManager default request: 'Ingrese monto maximo:') asNumber.
		Transcript
		cr;
		show:'Listado de trasacciones encontradas:';
		cr.
		retorno:= listatrasacciones buscarTrasacciones: op1 minimo: op2 maximo: op3.
		retorno do: [:each | Transcript show:'Sector: '; show: each verSector; show:' Monto: '; show: each verMonto; cr].
		Transcript
		show:'Puede elegir otra busqueda (1), (2), (3), (4) o salir (5)';
		cr.	
		 ].
	(opcion = 2) ifTrue: [ 
		Transcript
		show: 'Buscar alguna trasaccion por rango de precio';
		cr;
		show: 'Ingrese sector. Opciones: surtidor de nafta = 1, surtidor de gasoil = 2';
		cr;
		show: 'surtidor de GNC = 3; lavadero = 4, inflador = 5';
		cr.
		op1:= (UIManager default request: 'Ingrese un sector:') asNumber.
		Transcript
		show: 'Ingrese monto minimo';
		cr.
		op2:= (UIManager default request: 'Ingresa monto minimo:') asNumber.
		Transcript
		show: 'Ingrese monto maximo';
		cr.
		op3:= (UIManager default request: 'Ingresa monto maximo:') asNumber.
		retorno:= listatrasacciones buscarAlgunaTrasaccion: op1 minimo: op2 maximo: op3.
		Transcript
		cr;
		show: 'Trasaccion encontrada. Sector: ';
		show: retorno verSector;
		show: ' Monto: ';
		show: retorno verMonto;
		cr.	
		Transcript
		show:'Puede elegir otra busqueda (1), (2), (3), (4) o salir (5)';
		cr.	
		 ].
	(opcion = 3) ifTrue: [ 
		Transcript
		show: 'Busqueda de trasacciones que este fuera de un rango de precio';
		cr;
		
		show: 'Ingrese monto minimo';
		cr.
		op2:= (UIManager default request: 'Ingresa monto minimo:') asNumber.
		Transcript
		show: 'Ingrese monto maximo';
		cr.
		op3:= (UIManager default request: 'Ingresa monto maximo:') asNumber.
		retorno:= listatrasacciones buscarTrasaccionesReject: op2 maximo: op3.
		Transcript
		cr;
		show:'Listado de trasacciones encontradas:';
		cr;
		show: 'Sectores: 1-Nafta, 2-Gasoil, 3-GNC, 4-Lavadero, 5-Inflador.';
		cr.
		retorno do: [:each | Transcript show:'Sector: '; show: each verSector; show:' Monto: '; show: each verMonto; cr].
		Transcript
		show:'Puede elegir otra busqueda (1), (2), (3), (4) o salir (5)';
		cr.	
		
		 ].
	(opcion = 4) ifTrue: [ 
		Transcript
		cr;
		show: 'Mostrando facturacion total';
		cr;
		show: (listatrasacciones sumarMontosDeTrasacciones);
		cr.	
		Transcript
		show:'Puede elegir otra busqueda (1), (2), (3), (4) o salir (5)';
		cr.	
		 ].
	(opcion = 5) ifTrue: [ 
		self MostrarMenu.
		 ].
	opcion:= (UIManager default request: 'Ingresa una opcion:') asNumber. 
	
	 ].
]

{ #category : #'as yet unclassified' }
Estacion >> MenuGNC [

|opcion litros|

Transcript
	clear;
	show: 'Surtidor de GNC';
	cr.
Transcript
	show:
'*******************************************************';
	cr;
	show: '1. Hacer una carga';
	cr;
	show: '2. Volver';
	cr.
opcion:= (UIManager default request: 'Ingresa una opcion:') asNumber.
[opcion ~= 3] whileTrue: [ 
	(opcion = 1) ifTrue: [ 
		Transcript
		cr;
		show: 'Elija metros cubicos a cargar. Precio: $ 40 el metro cubico.';
		cr.
		litros:= (UIManager default request: 'Ingrese metros cubidos:') asNumber.
		listatrasacciones agregarTrasaccion: (Trasaccion crearTrasaccion: 3 monto: litros * 40).
		Transcript
		show: 'Carga exitosa. Puede volver a cargar (1) o salir (2).';
		cr.
		 ].
	(opcion = 2) ifTrue: [ 
		self MenuSurtidores.
		 ].
	opcion:= (UIManager default request: 'Ingresa una opcion:') asNumber. 
	
	 ].
]

{ #category : #'as yet unclassified' }
Estacion >> MenuGasoil [

|opcion litros|

Transcript
	clear;
	show: 'Surtidor de gasoil';
	cr.
Transcript
	show:
'*******************************************************';
	cr;
	show: '1. Hacer una carga';
	cr;
	show: '2. Volver';
	cr.
opcion:= (UIManager default request: 'Ingresa una opcion:') asNumber.
[opcion ~= 3] whileTrue: [ 
	(opcion = 1) ifTrue: [ 
		Transcript
		cr;
		show: 'Elija litros a cargar. Precio: $ 77 el litro.';
		cr.
		litros:= (UIManager default request: 'Ingrese litros:') asNumber.
		listatrasacciones agregarTrasaccion: (Trasaccion crearTrasaccion: 2 monto: litros * 77).
		Transcript
		show: 'Carga exitosa. Puede volver a cargar (1) o salir (2).';
		cr.
		 ].
	(opcion = 2) ifTrue: [ 
		self MenuSurtidores.
		 ].
	opcion:= (UIManager default request: 'Ingresa una opcion:') asNumber. 
	
	 ].
]

{ #category : #'as yet unclassified' }
Estacion >> MenuInflador [

|opcion|

Transcript
	clear;
	show: 'Inflador';
	cr.
Transcript
	show:
'*******************************************************';
	cr;
	show: '1. Cargar aire. Precio $ 150';
	cr;
	show: '2. Volver';
	cr.
opcion:= (UIManager default request: 'Ingresa una opcion:') asNumber.
[opcion ~= 3] whileTrue: [ 
	(opcion = 1) ifTrue: [ 
		Transcript
		cr;
		show: 'Cargando aire.';
		cr.
		listatrasacciones agregarTrasaccion: (Trasaccion crearTrasaccion: 5 monto: 150).
		Transcript
		show: 'Carga exitosa. Puede cargar de nuevo (1) o salir (2)';
		cr.
		 ].
	(opcion = 2) ifTrue: [ 
		self MostrarMenu.
		 ].
	opcion:= (UIManager default request: 'Ingresa una opcion:') asNumber. 
	
	 ].
]

{ #category : #'as yet unclassified' }
Estacion >> MenuLavadero [

|opcion|

Transcript
	clear;
	show: 'Lavadero ';
	cr.
Transcript
	show:
'*******************************************************';
	cr;
	show: '1. Hacer una limpieza simple. Precio $ 200';
	cr;
	show: '2. Hacer una limpieza completa. Precio $ 400';
	cr;
	show: '3. Volver';
	cr.
opcion:= (UIManager default request: 'Ingresa una opcion:') asNumber.
[opcion ~= 4] whileTrue: [ 
	(opcion = 1) ifTrue: [ 
		Transcript
		cr;
		show: 'Ha elegiado limpieza simple.';
		cr.
		listatrasacciones agregarTrasaccion: (Trasaccion crearTrasaccion: 4 monto: 200).
		Transcript
		show: 'Limpieza exitosa. Puede volver a limpiar (1) o (2), o salir (3).';
		cr.
		 ].
	(opcion = 2) ifTrue: [ 
		Transcript
		cr;
		show: 'Ha elegido limpieza completa.';
		cr.
		listatrasacciones agregarTrasaccion: (Trasaccion crearTrasaccion: 4 monto: 400).
		Transcript
		show: 'Limpieza exitosa. Puede volver a limpiar (1) o (2), o salir (3).';
		cr.
		 ].
	(opcion = 3) ifTrue: [ 
		self MostrarMenu.
		 ].
	opcion:= (UIManager default request: 'Ingresa una opcion:') asNumber. 
	
	 ].
]

{ #category : #'as yet unclassified' }
Estacion >> MenuNafta [

|opcion litros|

Transcript
	clear;
	show: 'Surtidor de nafta';
	cr.
Transcript
	show:
'*******************************************************';
	cr;
	show: '1. Hacer una carga';
	cr;
	show: '2. Volver';
	cr.
opcion:= (UIManager default request: 'Ingresa una opcion:') asNumber.
[opcion ~= 3] whileTrue: [ 
	(opcion = 1) ifTrue: [ 
		Transcript
		cr;
		show: 'Elija litros a cargar. Precio: $ 100 el litro.';
		cr.
		litros:= (UIManager default request: 'Ingrese litros:') asNumber.
		listatrasacciones agregarTrasaccion: (Trasaccion crearTrasaccion: 1 monto: litros * 100).
		Transcript
		show: 'Carga exitosa. Puede volver a cargar (1) o salir (2).';
		cr.
		 ].
	(opcion = 2) ifTrue: [ 
		self MenuSurtidores.
		 ].
	opcion:= (UIManager default request: 'Ingresa una opcion:') asNumber. 
	
	 ].
]

{ #category : #'as yet unclassified' }
Estacion >> MenuSurtidores [

|opcion|

Transcript
	clear;
	show: 'Surtidores';
	cr.
Transcript
	show:
'*******************************************************';
	cr;
	show: '1. Nafta';
	cr;
	show: '2. Gasoil';
	cr;
	show: '3. GNC';
	cr;
	show: '4. Volver';
	cr.
opcion:= (UIManager default request: 'Ingresa una opcion:') asNumber.
[opcion ~= 5] whileTrue: [ 
	(opcion = 1) ifTrue: [ 
		self MenuNafta.
		 ].
	(opcion = 2) ifTrue: [ 
		self MenuGasoil.
		 ].
	(opcion = 3) ifTrue: [ 
		self MenuGNC.
		 ].
	(opcion = 4) ifTrue: [ 
		self MostrarMenu.
		 ].
	opcion:= (UIManager default request: 'Ingresa una opcion:') asNumber.
	 ].

]

{ #category : #'as yet unclassified' }
Estacion >> MostrarMenu [

|opcion|

Transcript
	clear;
	show: 'Estacion de servicio';
	cr.
Transcript
	show:
'*******************************************************';
	cr;
	show: '1. Surtidores';
	cr;
	show: '2. Minimercado';
	cr;
	show: '3. Lavadero';
	cr;
	show: '4. Inflador';
	cr;
	show: '5. Admin';
	cr;
	show: '6. Salir';
	cr.
opcion:= (UIManager default request: 'Ingresa una opcion:') asNumber.
[opcion ~= 6] whileTrue: [ 
	(opcion = 1) ifTrue: [ 
		self MenuSurtidores.
		 ].
	(opcion = 2) ifTrue: [ 
		"sin implementar".
		 ].
	(opcion = 3) ifTrue: [ 
		self MenuLavadero.
		 ].
	(opcion = 4) ifTrue: [ 
		self MenuInflador.
		 ].
	(opcion = 5) ifTrue: [ 
		self MenuAdmin.
		 ].
	opcion:= (UIManager default request: 'Ingresa una opcion:') asNumber. 
	
	 ].
]

{ #category : #'as yet unclassified' }
Estacion >> iniEstacion:unnombre [
"Inicializa una instancia de Estacion, hardcodeada"
nombre:=unnombre.

surtidor1:=Surtidor crearSurtidor: 'surtidor1' combustible: 'nafta'.
surtidor1 modiPlayero: (Empleado crearEmpleado: 'Martin' apellido: 'Perez' dni: 101).

surtidor2:=Surtidor crearSurtidor: 'surtidor2' combustible: 'diesel'.
surtidor2 modiPlayero: (Empleado crearEmpleado: 'Jose' apellido: 'Fernandez' dni: 102).

surtidor3:=Surtidor crearSurtidor: 'surtidor3' combustible: 'gnc'.
surtidor2 modiPlayero: (Empleado crearEmpleado: 'Matias' apellido: 'Gutierrez' dni: 103).

lavadero:=Lavadero crearLavadero: 'lavadero'.
lavadero agregarEmpleado: (Empleado crearEmpleado: 'Pablo' apellido: 'Nunez' dni: 104).
lavadero agregarEmpleado: (Empleado crearEmpleado: 'Gregorio' apellido: 'Vasquez' dni: 105).
lavadero modiSupervisor: (Supervisor crearSupervisor: 'Fernando' apellido: 'Chavez' dni: 106 cargo: 'Supervisor de lavadero').

inflador:=Inflador crearInflador: 'inflador'.

listatrasacciones:=ListaTrasacciones crearListaTrasacciones: 'lista'.


]
