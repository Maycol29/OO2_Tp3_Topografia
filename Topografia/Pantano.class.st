Class {
	#name : #Pantano,
	#superclass : #TopografiaSimple,
	#category : #Topografia
}

{ #category : #accessing }
Pantano >> proporcionAgua [
	^ 0.7
]

{ #category : #accessing }
Pantano >> proporcionDesperdicio [
	"La suma del desperdicio en el agua y tierra que contiene un pantano"
	^ 0.1065
	
]

{ #category : #accessing }
Pantano >> proporcionProductiva [
	^ 0.5
]

{ #category : #accessing }
Pantano >> proporcionTierra [
	^ 1 - self proporcionAgua
]
