Class {
	#name : #Trasaccion,
	#superclass : #Object,
	#instVars : [
		'sector',
		'monto'
	],
	#category : #EstacionDeServicio
}

{ #category : #'as yet unclassified' }
Trasaccion class >> crearTrasaccion:unSector monto:unMonto [
"Retorna una instancia de trasaccion inicializada"
^(self new) crearTrasaccion:unSector monto:unMonto.
]

{ #category : #'as yet unclassified' }
Trasaccion >> iniTrasaccion:unSector monto:unMonto [
"Inicializa una instancia de Trasaccion"
sector:=unSector.
monto:=unMonto.
]

{ #category : #'as yet unclassified' }
Trasaccion >> verMonto [
"Retorna el monto de la trasaccion"
^ monto.
]

{ #category : #'as yet unclassified' }
Trasaccion >> verSector [
"Retorna el sector de la trasaccion"
^ sector.
]
