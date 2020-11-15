Class {
	#name : #Lavadero,
	#superclass : #SectorDeEstacion,
	#instVars : [
		'empleados',
		'supervisor'
	],
	#category : #EstacionDeServicio
}

{ #category : #'as yet unclassified' }
Lavadero class >> crearLavadero:unSector [
"Retorna una instancia de trasaccion inicializada"
^(self new) iniLavadero:unSector
]

{ #category : #'as yet unclassified' }
Lavadero >> agregarEmpleado:unEmpleado [
"Agrega un empleado al lavadero"
empleados add:unEmpleado
]

{ #category : #'as yet unclassified' }
Lavadero >> iniLavadero:unNombreDeSector [
"Inicializa una instancia de Lavadero"
nombredesector:=unNombreDeSector.
]

{ #category : #'as yet unclassified' }
Lavadero >> modiSupervisor:unSupervisor [
"Modifica el supervisor de un lavadero"
supervisor:=unSupervisor.
]

{ #category : #'as yet unclassified' }
Lavadero >> mostrarEmpleados [
"Retorna los empleados del lavadero"
Transcript show: 'Mostrar la coleccion:'; cr.
Transcript show: self; cr.
Transcript show: 'Mostrar cada elemento:'; cr.
^ empleados do: [:each | Transcript show: each; cr].
]

{ #category : #'as yet unclassified' }
Lavadero >> verSupervisor [
"Ver el supervisor de un lavadero"
^ supervisor.
]
