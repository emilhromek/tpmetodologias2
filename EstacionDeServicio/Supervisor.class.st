Class {
	#name : #Supervisor,
	#superclass : #Persona,
	#instVars : [
		'cargo'
	],
	#category : #EstacionDeServicio
}

{ #category : #'as yet unclassified' }
Supervisor class >> crearSupervisor: unNombreDeEmpleado apellido:unApellido dni:unDni cargo:unCargo [
"Retorna una instancia de empleado inicializada"
^(self new) iniSupervisor:unNombreDeEmpleado apellido:unApellido dni:unDni cargo:unCargo.

	

]

{ #category : #'as yet unclassified' }
Supervisor >> iniSupervisor:unNombreDeSupervisor apellido:unApellido dni:unDni cargo:unCargo [ 
"Inicializa una instancia de Supervisor"
nombre:=unNombreDeSupervisor.
apellido:=unApellido.
dni:=unDni.
cargo:=unCargo.
]

{ #category : #'as yet unclassified' }
Supervisor >> verCargo [
"Ver el nombre de un supervisor"
^ cargo.
]
