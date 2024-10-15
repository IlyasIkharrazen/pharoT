Class {
	#name : 'HightSignal',
	#superclass : 'LogicalSignal',
	#category : 'circuitLogique',
	#package : 'circuitLogique'
}

{ #category : 'controlling' }
HightSignal >> and: aSignal [   

  ^ aSignal value = 1 ifTrue: [ self ] ifFalse: [ LowSignal new ]

]

{ #category : 'logical operations' }
HightSignal >> not [ 

^ LowSignal new 
]

{ #category : 'controlling' }
HightSignal >> or: aSignal [    
   ^ self
]

{ #category : 'evaluating' }
HightSignal >> value [    
   ^ 1
]
