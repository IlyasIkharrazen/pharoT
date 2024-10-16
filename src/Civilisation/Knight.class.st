Class {
	#name : 'Knight',
	#superclass : 'Personnage',
	#instVars : [
		'vie',
		'archer1',
		'archer2',
		'niveau',
		'coefNiveau'
	],
	#category : 'Civilisation',
	#package : 'Civilisation'
}

{ #category : 'as yet unclassified' }
Knight >> attack: anotherUnit [

	anotherUnit attackedBy: self.
	vie := vie - 20
]

{ #category : 'as yet unclassified' }
Knight >> attackedBy: anotherunit [

	| ad dp dtm ati |
	dp := 5*coefNiveau.
	dtm := 2.
	ati := 1.
	ad := dp * dtm + ati.
	anotherunit vie: anotherunit vie - ad
]

{ #category : 'initialization' }
Knight >> initialize [

	vie := 100.
	niveau := 1.
	coefNiveau:= 1.
]

{ #category : 'accessing' }
Knight >> vie [

	^ vie
]

{ #category : 'accessing' }
Knight >> vie: anObject [

	vie := anObject
]
