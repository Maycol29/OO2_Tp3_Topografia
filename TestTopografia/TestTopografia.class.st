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
		'comp5',
		'ord4'
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
ord1 add:el1.
ord1 add:el1.
ord1 add:el1.
ord1 add:el1.
comp3:=TopografiaCompuesta newConTopografias: ord1.

ord2:=OrderedCollection new.
ord2 add:el3.
ord2 add:el3.
ord2 add:el3.
ord2 add:el3.
comp4:=TopografiaCompuesta newConTopografias: ord2.

ord3:=OrderedCollection new.
ord3 add:el3.
ord3 add:el4.
ord3 add:el4.
ord3 add:comp3.
comp2:=TopografiaCompuesta newConTopografias: ord3.

ord4:=OrderedCollection new.
ord4 add:el1.
ord4 add:el2.
ord4 add:el2.
ord4 add:comp4.
comp1:=TopografiaCompuesta newConTopografias: ord4.

comp5:= TopografiaCompuesta newConTopografias: ord1 



]

{ #category : #tests }
TestTopografia >> testMismaDistribucion [
self assert:(comp1 mismaDistribucion: comp2).
self deny:(comp1 mismaDistribucion: comp5).
self assert:(comp3 mismaDistribucion: comp4).
self assert:(el1 mismaDistribucion: el3).
]

{ #category : #tests }
TestTopografia >> testMismaProporcionAgua [
	self assert:(comp3 mismaProporcionAgua: comp4).
	self assert:(comp1 mismaProporcionAgua: comp2).
	self deny:(comp1 mismaProporcionAgua: comp5).
	self assert:(el1 mismaProporcionAgua: el3).
]

{ #category : #tests }
TestTopografia >> testSonIguales [
	self assert:(el1 sonIguales: el3).
	self assert: (comp3 sonIguales: comp4) .
	self assert: (comp1 sonIguales: comp2).
	self deny: (comp1 sonIguales: comp5) .
]
