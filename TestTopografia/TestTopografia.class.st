Class {
	#name : #TestTopografia,
	#superclass : #TestCase,
	#instVars : [
		'el1',
		'el2',
		'comp1',
		'comp2',
		'comp3'
	],
	#category : #TestTopografia
}

{ #category : #running }
TestTopografia >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
el1:=Agua new.
el2 :=Tierra new.

comp3:=TopografiaCompuesta new.
comp3 agregarElemento:el1.
comp3 agregarElemento:el1.
comp3 agregarElemento:el2.
comp3 agregarElemento:el2.

comp2:=TopografiaCompuesta new.
comp2 agregarElemento:el1.
comp2 agregarElemento:el2.
comp2 agregarElemento:el2.
comp2 agregarElemento:comp3.


comp1:=TopografiaCompuesta new.
comp1 agregarElemento:el1.
comp1 agregarElemento:el2.
comp1 agregarElemento:el2.
comp1 agregarElemento:comp3.

]

{ #category : #tests }
TestTopografia >> testConvertirTopografiaACollection [

self assert:((comp1 convertirTopografiaACollection = comp2 convertirTopografiaACollection)equals:true) 
]
