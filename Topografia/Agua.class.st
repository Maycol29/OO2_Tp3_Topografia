Class {
	#name : #Agua,
	#superclass : #TopografiaSimple,
	#category : #Topografia
}

{ #category : #accessing }
Agua >> proporcionAgua [
	^ 1
]

{ #category : #accessing }
Agua >> proporcionDesperdicio [
	^ 0.15
]

{ #category : #accessing }
Agua >> proporcionProductiva [
	^ 0
]

{ #category : #accessing }
Agua >> proporcionTierra [
	^ 1 - self proporcionAgua
]
