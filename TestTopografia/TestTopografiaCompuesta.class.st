Class {
	#name : #TestTopografiaCompuesta,
	#superclass : #TestCase,
	#instVars : [
		'el1',
		'el2',
		'comp1',
		'comp2',
		'comp3',
		'ord'
	],
	#category : #TestTopografia
}

{ #category : #running }
TestTopografiaCompuesta >> setUp [
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

ord:=OrderedCollection new.
ord add:el1.
ord add:el1.
ord add:el2.
ord add:el2.



]

{ #category : #tests }
TestTopografiaCompuesta >> testAgregarElemento [
self assert:(comp3 topografias size) equals:4.

]

{ #category : #tests }
TestTopografiaCompuesta >> testConvertirTopografiaACollection [

self assert:comp3 convertirTopografiaACollection equals:ord.
self deny:comp2 convertirTopografiaACollection equals:ord.
self deny:comp1 convertirTopografiaACollection equals:ord.
]

{ #category : #tests }
TestTopografiaCompuesta >> testProporcionAgua [
self assert:comp3 proporcionAgua equals:0.5.
self assert:comp1 proporcionAgua equals:0.375.
]

{ #category : #tests }
TestTopografiaCompuesta >> testProporcionTierra [
self assert:comp3 proporcionTierra equals:0.5.
self assert:comp1 proporcionTierra equals:0.625
]
