Class {
	#name : #Composite,
	#superclass : #Topografia,
	#instVars : [
		'topografias'
	],
	#category : #Topografia
}

{ #category : #adding }
Composite >> agregarElemento:unElemento [
topografias add:unElemento 
]

{ #category : #'as yet unclassified' }
Composite >> convertirTopografiaACollection [

^topografias addAll: [:topo | topo convertirTopografiaACollection ]
]

{ #category : #initialization }
Composite >> initialize [ 
topografias:=OrderedCollection new.
]

{ #category : #accessing }
Composite >> proporcionAgua [
	^ topografias sumNumbers: [ :topografia | topografia proporcionAgua ] / 4
]

{ #category : #accessing }
Composite >> proporcionTierra [ 
	^ 1-self proporcionAgua .
]
