Class {
	#name : #TopografiaSimple,
	#superclass : #Topografia,
	#category : #Topografia
}

{ #category : #accessing }
TopografiaSimple >> convertirTopografiaACollection [
	^ self asOrderedCollection
]
