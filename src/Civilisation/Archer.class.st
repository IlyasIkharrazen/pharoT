Class {
	#name : 'Archer',
	#superclass : 'Personnage',
	#instVars : [
		'vie',
		'niveau'
	],
	#category : 'Civilisation',
	#package : 'Civilisation'
}

{ #category : 'as yet unclassified' }
Archer >> attack: anotherUnit [

	anotherUnit attackedBy: self.
	vie := vie - 20
]

{ #category : 'as yet unclassified' }
Archer >> attackedBy: anotherunit [

	| ad dp dtm ati |
	dp := 1.
	dtm:=1.
	ati := 1.
	ad := dp*dtm+ati.
	anotherunit vie: anotherunit vie - ad
]

{ #category : 'initialization' }
Archer >> initialize [

	vie := 100.
	niveau := 1.
]

{ #category : 'accessing' }
Archer >> vie [

	^ vie
]

{ #category : 'accessing' }
Archer >> vie: anObject [

	vie := anObject
]
