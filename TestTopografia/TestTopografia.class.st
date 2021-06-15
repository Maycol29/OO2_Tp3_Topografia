Class {
	#name : #TestTopografia,
	#superclass : #TestCase,
	#instVars : [
		'el1',
		'el2',
		'el3',
		'el4',
		'ord1',
		'ord2',
		'ord3',
		'comp1',
		'comp2',
		'comp3',
		'comp4',
		'comp5'
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

ord1:=OrderedCollection new.
ord2:=OrderedCollection new.

ord1 add:el1.
ord1 add:el1.
ord1 add:el1.
ord1 add:el1.

ord2 add:el3.
ord2 add:el3.
ord2 add:el3.
ord2 add:el3.

comp3:=TopografiaCompuesta newConTopografias: ord1.

comp4:=TopografiaCompuesta newConTopografias: ord2.


comp2:=TopografiaCompuesta new.
comp2 agregarElemento:el3.
comp2 agregarElemento:el4.
comp2 agregarElemento:el4.
comp2 agregarElemento:comp3.

comp1:=TopografiaCompuesta new.
comp1 agregarElemento:el1.
comp1 agregarElemento:el2.
comp1 agregarElemento:el2.
comp1 agregarElemento:comp4.

comp5:= TopografiaCompuesta newConTopografias: ord1 



]

{ #category : #tests }
TestTopografia >> testSonIguales [
	self assert:(el1 sonIguales: el3).
	self assert: (comp3 sonIguales: comp4) .
	self assert: (comp1 sonIguales: comp2).
	self deny: (comp1 sonIguales: comp5) .
]
