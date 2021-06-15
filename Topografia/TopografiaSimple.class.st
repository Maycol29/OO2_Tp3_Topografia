Class {
	#name : #TopografiaSimple,
	#superclass : #Topografia,
	#category : #Topografia
}

{ #category : #'as yet unclassified' }
TopografiaSimple >> compararTopografias: unaTopografia [
	unaTopografia class = 'TopografiaCompuesta'
		ifTrue: [ ^ false ].
	^ self proporcionAgua = unaTopografia proporcionAgua
]

{ #category : #accessing }
TopografiaSimple >> convertirTopografiaACollection [
	^ self asOrderedCollection
]

{ #category : #accessing }
TopografiaSimple >> proporcionAgua [
self subclassResponsibility .
]

{ #category : #accessing }
TopografiaSimple >> proporcionDesperdicio [
	self subclassResponsibility
]

{ #category : #accessing }
TopografiaSimple >> proporcionProductiva [
	self subclassResponsibility
]

{ #category : #accessing }
TopografiaSimple >> proporcionTierra [ 
self subclassResponsibility 
]
