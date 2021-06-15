Class {
	#name : #Topografia,
	#superclass : #Object,
	#category : #Topografia
}

{ #category : #'as yet unclassified' }
Topografia >> compararTopografias: unaTopografia [ 
self subclassResponsibility .
]

{ #category : #accessing }
Topografia >> convertirTopografiaACollection [
self subclassResponsibility 
]

{ #category : #accessing }
Topografia >> proporcionAgua [
self subclassResponsibility .
]

{ #category : #accessing }
Topografia >> proporcionDesperdicio [
	self subclassResponsibility
]

{ #category : #accessing }
Topografia >> proporcionProductiva [
	self subclassResponsibility
]

{ #category : #accessing }
Topografia >> proporcionTierra [ 
self subclassResponsibility 
]

{ #category : #accessing }
Topografia >> sonIguales: unaTopografia [
	^ self compararTopografias: unaTopografia 
]
