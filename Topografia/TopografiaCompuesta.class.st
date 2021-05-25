Class {
	#name : #TopografiaCompuesta,
	#superclass : #Topografia,
	#instVars : [
		'topografias'
	],
	#category : #Topografia
}

{ #category : #adding }
TopografiaCompuesta >> agregarElemento:unaTopografia [ 
topografias add:unaTopografia  
]

{ #category : #accessing }
TopografiaCompuesta >> convertirTopografiaACollection [

^topografias flatCollect:  [:topo | topo convertirTopografiaACollection ]
]

{ #category : #initialization }
TopografiaCompuesta >> initialize [ 
topografias:=OrderedCollection new.
]

{ #category : #private }
TopografiaCompuesta >> proporcion: aBlock [
	^ (topografias sumNumbers: [ :topografia | aBlock value: topografia ])
		/ 4
]

{ #category : #accessing }
TopografiaCompuesta >> proporcionAgua [
	^ self proporcion: [ :it | it proporcionAgua ]
]

{ #category : #accessing }
TopografiaCompuesta >> proporcionDesperdicio [
	| desperdicio |
	desperdicio := self proporcion: [ :it | it proporcionDesperdicio ].
	desperdicio < 0.5
		ifTrue: [ ^ desperdicio * 1.03 ].
	^ desperdicio
]

{ #category : #accessing }
TopografiaCompuesta >> proporcionProductiva [
	^ self proporcion: [ :it | it proporcionProductiva ]
]

{ #category : #accessing }
TopografiaCompuesta >> proporcionTierra [
	^ self proporcion: [ :it | it proporcionTierra ]
]

{ #category : #accessing }
TopografiaCompuesta >> topografias [
^topografias 
]
