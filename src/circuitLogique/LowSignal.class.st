Class {
	#name : 'LowSignal',
	#superclass : 'LogicalSignal',
	#category : 'circuitLogique',
	#package : 'circuitLogique'
}

{ #category : 'as yet unclassified' }
LowSignal >> Value [  
    ^ 0
]

{ #category : 'controlling' }
LowSignal >> and: aSignal [  
         ^ self

]

{ #category : 'logical operations' }
LowSignal >> not [    
   ^ HightSignal new


]

{ #category : 'logical operations' }
LowSignal >> or: aSignal [    
       ^ (aSignal value = 1)      
        ifTrue: [ HightSignal new ]     
        ifFalse: [  self ]

]
