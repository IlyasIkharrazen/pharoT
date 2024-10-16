Class {
	#name : 'Pikeman',
	#superclass : 'Personnage',
	#instVars : [
		'vie',
		'niveau'
	],
	#category : 'Civilisation',
	#package : 'Civilisation'
}

{ #category : 'as yet unclassified' }
Pikeman >> attack: anotherUnit [

	anotherUnit vie: anotherUnit vie - 20.
	vie := vie - 20
]

{ #category : 'initialization' }
Pikeman >> initialize [

	vie := 100.
	niveau := 1.
	
]

{ #category : 'accessing' }
Pikeman >> vie [

	^ vie
]

{ #category : 'accessing' }
Pikeman >> vie: anObject [

	vie := anObject
]
