Class {
	#name : 'AttackTest',
	#superclass : 'TestCase',
	#instVars : [
		'warrior1',
		'warrior2',
		'archer1',
		'archer2',
		'knight1',
		'knight2',
		'pikeman1',
		'pikeman2'
	],
	#category : 'Civilisation',
	#package : 'Civilisation'
}

{ #category : 'tests' }
AttackTest >> testArcherFight [

	archer1 := Archer new.
	archer2 := Archer new.

	archer1 attack: archer2.

	self assert: archer1 vie equals: 80.
	self assert: archer2 vie equals: 80.
]

{ #category : 'tests' }
AttackTest >> testKnightFight [

	knight1 := Knight new.
	knight2 := Knight new.

	knight1 attack: knight2.

	self assert: knight1 vie equals: 80.
	self assert: knight2 vie equals: 80
]

{ #category : 'tests' }
AttackTest >> testPikemanFight [

	pikeman1 := Pikeman new.
	pikeman2 := Pikeman new.

	pikeman1 attack: pikeman2.

	self assert: pikeman1 vie equals: 80.
	self assert: pikeman2 vie equals: 80
]

{ #category : 'tests' }
AttackTest >> testWarriorFight [

	warrior1 := Warrior new.
	warrior2 := Warrior new.

	warrior1 attack: warrior2.

	self assert: warrior1 vie equals: 80.
	self assert: warrior2 vie equals: 80.
]
