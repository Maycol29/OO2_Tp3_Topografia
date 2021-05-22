Class {
	#name : #Composite,
	#superclass : #Topografia,
	#instVars : [
		'elementos'
	],
	#category : #Topografia
}

{ #category : #initialization }
Composite >> initialize [ 
elementos:=OrderedCollection new.
]
