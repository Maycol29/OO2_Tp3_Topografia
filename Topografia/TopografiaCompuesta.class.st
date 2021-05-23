Class {
	#name : #TopografiaCompuesta,
	#superclass : #Topografia,
	#instVars : [
		'topografias'
	],
	#category : #Topografia
}

{ #category : #adding }
TopografiaCompuesta >> agregarElemento:unElemento [
topografias add:unElemento 
]

{ #category : #accessing }
TopografiaCompuesta >> convertirTopografiaACollection [

^topografias flatCollect:  [:topo | topo convertirTopografiaACollection ]
]

{ #category : #initialization }
TopografiaCompuesta >> initialize [ 
topografias:=OrderedCollection new.
]

{ #category : #accessing }
TopografiaCompuesta >> proporcionAgua [
	^ topografias sumNumbers: [ :topografia | topografia proporcionAgua ] / 4
]

{ #category : #accessing }
TopografiaCompuesta >> proporcionTierra [ 
	^ 1-self proporcionAgua .
]
