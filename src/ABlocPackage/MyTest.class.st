Class {
	#name : 'MyTest',
	#superclass : 'TestCase',
	#category : 'ABlocPackage-Input',
	#package : 'ABlocPackage',
	#tag : 'Input'
}

{ #category : 'tests' }
MyTest >> testCallbackCallOnClick [

	| inputElem testNumberOfCall testValue |
	testNumberOfCall := 0.
	testValue := -1.
	inputElem := BlNumberInputElement new.
	inputElem callbackBlock: [ :val |
		testNumberOfCall := testNumberOfCall + 1.
		testValue := val.
	]
	self assert: testNumberOfCall equals: 0.
	self assert: testValue equals: -1.
	BlSpace simulateClickOn: inputElem minus.
	self assert: testNumberOfCall equals: 1.
	self assert: testValue equals: 19.
	6 timesRepeat: [ BlSpace simulateClickOn: inputElem plus ].
	self assert: testNumberOfCall equals: 7.
	self assert: testValue equals: 25.
	inputElem changeValueTo: 0.
	self assert: testNumberOfCall equals: 8.
	self assert: testValue equals: 0.
	BlSpace simulateClickOn: inputElem minus.
	self assert: testNumberOfCall equals: 8.
	self assert: testValue equals: 0.
]

{ #category : 'tests' }
MyTest >> testCanChangeLabel [

	| inputElem |
	inputElem := BlNumberInputElement new.
	self assert: inputElem label text asString equals: 'Input'.
	inputElem label: 'Volume'.
	self assert: inputElem label text asString equals: 'Volume'.
]

{ #category : 'tests' }
MyTest >> testChildrenAreSet [

	| inputElem |
	inputElem := BlNumberInputElement new.
	self assert: inputElem children size equals: 4 
]

{ #category : 'tests' }
MyTest >> testValueCantBeNegative [

	| inputElem value |
	inputElem := BlNumberInputElement new.
	inputElem changeValueTo: 0.
	BlSpace simulateClickOn: inputElem minus.
	value := inputElem value. 
	self assert: value equals: 0
]

{ #category : 'tests' }
MyTest >> testValueUpdatedOnClick [

	| inputElem |
	inputElem := BlNumberInputElement new.
	BlSpace simulateClickOn: inputElem minus.
	self assert: inputElem value equals: 19.
	6 timesRepeat: [ BlSpace simulateClickOn: inputElem plus ].
	self assert: inputElem value equals: 25
]
