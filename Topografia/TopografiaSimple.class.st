Class {
	#name : #TopografiaSimple,
	#superclass : #Topografia,
	#category : #Topografia
}

{ #category : #private }
TopografiaSimple >> compararTopografias: unaTopografia [
	^ self proporcionAgua = unaTopografia proporcionAgua
]

{ #category : #private }
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
