Class {
	#name : #Topografia,
	#superclass : #Object,
	#category : #Topografia
}

{ #category : #'as yet unclassified' }
Topografia >> comparacion: unaTopografia [
|col col1|
col = col1.
]

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
