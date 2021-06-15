Class {
	#name : #TestTopografia,
	#superclass : #TestCase,
	#instVars : [
		'el1',
		'el2',
		'el3',
		'el4',
		'comp1',
		'comp2',
		'comp3',
		'comp4'
	],
	#category : #TestTopografia
}

{ #category : #running }
TestTopografia >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
el1:=Agua new.
el2 :=Tierra new.
el3:=Agua new.
el4:=Tierra new.

comp3:=TopografiaCompuesta new.
comp3 agregarElemento:el2.
comp3 agregarElemento:el2.
comp3 agregarElemento:el2.
comp3 agregarElemento:el2.

comp4:=TopografiaCompuesta new.
comp4 agregarElemento:el4.
comp4 agregarElemento:el4.
comp4 agregarElemento:el4.
comp4 agregarElemento:el4.



comp2:=TopografiaCompuesta new.
comp2 agregarElemento:el3.
comp2 agregarElemento:el4.
comp2 agregarElemento:el4.
comp2 agregarElemento:comp3.


comp1:=TopografiaCompuesta new.
comp1 agregarElemento:el1.
comp1 agregarElemento:el2.
comp1 agregarElemento:el2.
comp1 agregarElemento:el3.

]

{ #category : #tests }
TestTopografia >> testSonIguales [
	self assert:(el1 sonIguales: el3).
	self deny: (comp1 sonIguales: comp2) .
]
