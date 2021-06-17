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
TestTopografiaSimple >> testProporcionAgua [
	self assert: el1 proporcionAgua equals: 1.
	self assert: el2 proporcionAgua equals: 0
]

{ #category : #tests }
TestTopografiaSimple >> testProporcionTierra [
	self assert: el2 proporcionTierra equals: 1.
	self assert: el1 proporcionTierra equals: 0
]
