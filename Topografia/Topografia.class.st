Class {
	#name : #Topografia,
	#superclass : #Object,
	#category : #Topografia
}

{ #category : #comparing }
Topografia >> = anObject [
    (self class  == anObject class) ifFalse:[ ^false].
   ^ self compararConIgualClase: anObject.
]

{ #category : #private }
Topografia >> compararConIgualClase: anObject [
	self subclassResponsibility
]

{ #category : #accessing }
Topografia >> proporcionAgua [
	self subclassResponsibility
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
	^self = unaTopografia.
]
