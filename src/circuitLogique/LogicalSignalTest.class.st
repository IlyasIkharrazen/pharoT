Class {
	#name : 'LogicalSignalTest',
	#superclass : 'TestCase',
	#category : 'circuitLogique',
	#package : 'circuitLogique'
}

{ #category : 'tests' }
LogicalSignalTest >> testAnd [

	| signal1 signal2 |
	signal1:=LowSignal new.
	signal2:=LowSignal new.
	self assert:(signal1 and: signal2) value equals:0.
	
	signal1:=LowSignal new.
	signal2:=HightSignal new.
	self assert:(signal1 and: signal2) value equals:0.
	
	
	signal1:=HightSignal new.
	signal2:=LowSignal new.
	self assert:(signal1 and: signal2) value equals:0.
	

	signal1:=HightSignal new.
	signal2:=HightSignal new.
	self assert:(signal1 and: signal2) value equals:1.
]

{ #category : 'tests' }
LogicalSignalTest >> testOr [ 

	| signal1 signal2 |
	signal1:=LowSignal new.
	signal2:=LowSignal new.
	self assert:(signal1 or: signal2) value equals:0.
	
	signal1:=LowSignal new.
	signal2:=HightSignal new.
	self assert:(signal1 or: signal2) value equals:1.
	
	
	signal1:=HightSignal new.
	signal2:=LowSignal new.
	self assert:(signal1 or: signal2) value equals:1.
	

	signal1:=HightSignal new.
	signal2:=HightSignal new.
	self assert:(signal1 or: signal2) value equals:1.
]
