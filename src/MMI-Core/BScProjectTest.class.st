Class {
	#name : #BScProjectTest,
	#superclass : #TestCase,
	#category : #'MMI-Core'
}

{ #category : #accessing }
BScProjectTest >> testYear [
	| bsc1 |
	bsc1 := BScProject new.
	bsc1 year: 2020.
	self assert: bsc1 year equals: 2020
]
