Class {
	#name : 'Warrior',
	#superclass : 'Personnage',
	#instVars : [
		'vie',
		'niveau'
	],
	#category : 'Civilisation',
	#package : 'Civilisation'
}

{ #category : 'as yet unclassified' }
Warrior >> attack: anotherUnit [

	anotherUnit vie: anotherUnit vie - 20.
	vie:= vie - 20.
]

{ #category : 'initialization' }
Warrior >> initialize [

	vie := 100.
	niveau := 1.
]

{ #category : 'accessing' }
Warrior >> vie [

	^ vie
]

{ #category : 'accessing' }
Warrior >> vie: anObject [

	vie := anObject
]
