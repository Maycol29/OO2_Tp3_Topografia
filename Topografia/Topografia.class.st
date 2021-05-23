Class {
	#name : #Topografia,
	#superclass : #Object,
	#category : #Topografia
}

{ #category : #'as yet unclassified' }
Topografia >> convertirTopografiaACollection [
self subclassResponsibility 
]

{ #category : #accessing }
Topografia >> proporcionAgua [
self subclassResponsibility .
]

{ #category : #accessing }
Topografia >> proporcionTierra [ 
self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
Topografia >> sonIguales: unaTopografia [
	^ self convertirTopografiaACollection
		= unaTopografia convertirTopografiaACollection
]
