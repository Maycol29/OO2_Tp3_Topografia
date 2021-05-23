Class {
	#name : #TopografiaSimple,
	#superclass : #Topografia,
	#category : #Topografia
}

{ #category : #accessing }
TopografiaSimple >> convertirTopografiaACollection [
	^ self asOrderedCollection
]

{ #category : #accessing }
TopografiaSimple >> proporcionAgua [
self subclassResponsibility .
]

{ #category : #accessing }
TopografiaSimple >> proporcionTierra [ 
self subclassResponsibility 
]
