Class {
	#name : #Surtidor,
	#superclass : #SectorDeEstacion,
	#instVars : [
		'playero',
		'combustible'
	],
	#category : #EstacionDeServicio
}

{ #category : #'as yet unclassified' }
Surtidor class >> crearSurtidor:unSector combustible:unCombustible [
"Retorna una instancia de trasaccion inicializada"
^(self new) iniSurtidor:unSector combustible:unCombustible
]

{ #category : #'as yet unclassified' }
Surtidor >> iniSurtidor:unNombreDeSector combustible:unCombustible [
"Inicializa una instancia de Surtidor"
nombredesector:=unNombreDeSector.
combustible:=unCombustible.
]

{ #category : #'as yet unclassified' }
Surtidor >> modiPlayero:unPlayero [
"Modifica el playero de un surtidor"
playero:=unPlayero.
]

{ #category : #'as yet unclassified' }
Surtidor >> verCombustible [
"Ver el combustible de un surtidor"
^ combustible.
]

{ #category : #'as yet unclassified' }
Surtidor >> verPlayero [
"Ver el playero de un surtidor"
^ playero.
]
