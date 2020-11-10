Class {
	#name : #ListaTrasacciones,
	#superclass : #Object,
	#instVars : [
		'trasacciones'
	],
	#category : #EstacionDeServicio
}

{ #category : #'as yet unclassified' }
ListaTrasacciones >> agregarTrasaccion:unaTrasaccion [
"Agregar una trasaccion a la lista"
trasacciones add:unaTrasaccion
]

{ #category : #'as yet unclassified' }
ListaTrasacciones >> buscarAlgunaTrasaccion:unSector minimo:unMinimo maximo:unMaximo [

^ trasacciones detect: [:unaTrasaccion | unaTrasaccion verSector=unSector & (unaTrasaccion verMonto >= unMinimo & unaTrasaccion verMonto <= unMaximo)]

ifNone: [^ nil].
]

{ #category : #'as yet unclassified' }
ListaTrasacciones >> buscarTrasacciones:unSector minimo:unMinimo maximo:unMaximo [
^ trasacciones select: [:unaTrasaccion | unaTrasaccion verSector=unSector & (unaTrasaccion verMonto >= unMinimo & unaTrasaccion verMonto <= unMaximo)]
]

{ #category : #enumerating }
ListaTrasacciones >> buscarTrasaccionesReject:unSector minimo:unMinimo maximo:unMaximo [
^ trasacciones reject: [:unaTrasaccion | unaTrasaccion verSector=unSector & (unaTrasaccion verMonto >= unMinimo & unaTrasaccion verMonto <= unMaximo)]
]

{ #category : #'as yet unclassified' }
ListaTrasacciones >> sumarMontosDeTrasacciones [
"Con esto sumamos todas las ventas de los sectores de la estacion"
trasacciones collect: [:unaTrasaccion | unaTrasaccion verMonto].

]
