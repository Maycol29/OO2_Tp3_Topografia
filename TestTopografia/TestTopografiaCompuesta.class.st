Class {
	#name : #TestTopografiaCompuesta,
	#superclass : #TestCase,
	#instVars : [
		'el1',
		'el2',
		'comp1',
		'comp2',
		'comp3',
		'comp4',
		'ord',
		'ord2',
		'ord3',
		'ord4'
	],
	#category : #TestTopografia
}

{ #category : #running }
TestTopografiaCompuesta >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
el1:=Agua new.
el2 :=Tierra new.
ord2:=OrderedCollection new.
ord3:=OrderedCollection new.
ord4:=OrderedCollection new.

ord2 add: el1.
ord2 add:el1.
ord2 add:el2.
ord2 add:el2.

comp3:=TopografiaCompuesta newConTopografias: ord2.

ord3 add:el1.
ord3 add:el2.
ord3 add:el2.
ord3 add:comp3.

comp2:=TopografiaCompuesta newConTopografias: ord3.

ord4 add:el1.
ord4 add:el2.
ord4 add:el2.
ord4 add:comp3.

comp1:=TopografiaCompuesta newConTopografias: ord4.

ord:=OrderedCollection new.
ord add:el1.
ord add:el1.
ord add:el2.
ord add:el2.

comp4:=TopografiaCompuesta newConTopografias: ord



]

{ #category : #tests }
TestTopografiaCompuesta >> testCompararConIgualClase [
self assert:(comp3 compararConIgualClase: comp4).
self assert:(comp1 compararConIgualClase: comp2).
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
