Class {
	#name : #Inflador,
	#superclass : #SectorDeEstacion,
	#category : #EstacionDeServicio
}

{ #category : #'as yet unclassified' }
Inflador class >> crearInflador:unSector [
"Retorna una instancia de trasaccion inicializada"
^(self new) iniInflador:unSector


]

{ #category : #'as yet unclassified' }
Inflador >> iniInflador:unNombreDeSector [
"Inicializa una instancia de Inflador"
nombredesector:=unNombreDeSector.
]
