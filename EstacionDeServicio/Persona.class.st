Class {
	#name : #Persona,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'apellido',
		'dni',
		'efectivo',
		'vehiculos'
	],
	#category : #EstacionDeServicio
}

{ #category : #'as yet unclassified' }
Persona >> verApellido [
"Ver el apellido de una persona"
^ apellido.
]

{ #category : #'as yet unclassified' }
Persona >> verDni [
"Ver el dni de una persona"
^ dni.
]

{ #category : #'as yet unclassified' }
Persona >> verNombre [
"Ver el nombre de una persona"
^ nombre.
]
