Class {
	#name : #TestTopografiaSimple,
	#superclass : #TestCase,
	#instVars : [
		'el1',
		'el2',
		'el3'
	],
	#category : #TestTopografia
}

{ #category : #running }
TestTopografiaSimple >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
el1:=Agua new.
el2 :=Tierra new.
el3:=Agua new.

]

{ #category : #tests }
TestTopografiaSimple >> testCompararTopografias [
self assert:(el1 compararTopografias: el3).
self deny:(el2 compararTopografias: el3).
self assert:(el3 compararTopografias: el1).


]

{ #category : #tests }
TestTopografiaSimple >> testConvertirTopografiaACollection [
self assert:(el1 convertirTopografiaACollection)equals:el1 asOrderedCollection.
self deny:(el2 convertirTopografiaACollection)equals:el1 asOrderedCollection 
]
