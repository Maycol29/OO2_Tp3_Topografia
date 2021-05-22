Class {
	#name : #Composite,
	#superclass : #Topografia,
	#instVars : [
		'elementos'
	],
	#category : #Topografia
}

{ #category : #adding }
Composite >> agregarElemento:unElemento [
elementos add:unElemento 
]

{ #category : #initialization }
Composite >> initialize [ 
elementos:=OrderedCollection new.
]

{ #category : #'as yet unclassified' }
Composite >> proporcionAgua [
	^ ((elementos sumNumbers:  [ :elemento | elemento valor ]) / 4)
]

{ #category : #'as yet unclassified' }
Composite >> proporcionTierra [
	^ 1 - self proporcionAgua
]
