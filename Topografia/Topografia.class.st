Class {
	#name : #Topografia,
	#superclass : #Object,
	#category : #Topografia
}

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
	| col1 col2 |
	col1 := self convertirTopografiaACollection.
	col2 := unaTopografia convertirTopografiaACollection.
	
	col1 firstIndex to: col1 lastIndex do: [ :index | 
		((col1 at: index) compararTopografias: (col2 at: index))
			ifFalse: [ ^ false ] ].
	^ true
]
