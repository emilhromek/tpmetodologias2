Class {
	#name : #Empleado,
	#superclass : #Persona,
	#instVars : [
		'salario'
	],
	#category : #EstacionDeServicio
}

{ #category : #'as yet unclassified' }
Empleado class >> crearEmpleado: unNombreDeEmpleado apellido:unApellido dni:unDni [
"Retorna una instancia de empleado inicializada"
^(self new) iniEmpleado:unNombreDeEmpleado apellido:unApellido dni:unDni.


]

{ #category : #'as yet unclassified' }
Empleado >> iniEmpleado:unNombreDeEmpleado apellido:unApellido [
"Inicializa una instancia de Empleado"
nombre:=unNombreDeEmpleado.
apellido:=unApellido.
]

{ #category : #'as yet unclassified' }
Empleado >> iniEmpleado:unNombreDeEmpleado apellido:unApellido dni:unDni [
"Inicializa una instancia de Empleado"
nombre:=unNombreDeEmpleado.
apellido:=unApellido.
dni:=unDni.
]

{ #category : #'as yet unclassified' }
Empleado >> verSalario [
"Ver el salario de una empleado"
^ salario.
]
