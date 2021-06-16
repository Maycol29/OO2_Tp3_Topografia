Class {
	#name : #Topografia,
	#superclass : #Object,
	#category : #Topografia
}

{ #category : #accessing }
Topografia >> convertirTopografiaACollection [
self subclassResponsibility 
]

{ #category : #private }
Topografia >> mismaDistribucion:unaTopografia [ 
|col1 col2|

	col1 := self convertirTopografiaACollection.	
	col2 := unaTopografia convertirTopografiaACollection.	
	
	col1 size = col2 size
		ifFalse: [ ^ false ].
	
	1 to: col1 size do: [ :index | 
		((col1 at: index) compararTopografias: (col2 at: index))
			ifFalse: [ ^ false ] ].
	^ true
]

{ #category : #private }
Topografia >> mismaProporcionAgua: unaTopografia [
	^ self proporcionAgua = unaTopografia proporcionAgua
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
	(self mismaProporcionAgua: unaTopografia)
		ifFalse: [ ^ false ].
	^ self mismaDistribucion: unaTopografia
]
