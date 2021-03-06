Class {
	#name : #BScProjectTest,
	#superclass : #TestCase,
	#category : #'MMI-Core'
}

{ #category : #accessing }
BScProjectTest >> testExampleProject [
	| bsc1 |
	bsc1 := BScProject exampleBScProject.
	self assert: bsc1 key equals: 'Mine2010a'.
	self assert: bsc1 author equals: 'Roberto Minelli'.
	self assert: bsc1 title equals: 'Commit 2.0 for Eclipse: Enriching Commit Comments with Software Visualization'.
	self assert: bsc1 year equals: 2010.
	self assert: bsc1 advisor equals: 'Michele Lanza'.
	self assert: (bsc1 coAdvisors includes: 'Marco D''Ambros').
	self assert: bsc1 month equals: Month june.
	self assert: bsc1 institution equals: 'USI, Lugano, Switzerland'.
	self assert: bsc1 keywords equals: 'pub-iene, proj-dicosa'
]

{ #category : #accessing }
BScProjectTest >> testYear [
	| bsc1 |
	bsc1 := BScProject new.
	bsc1 year: 2020.
	self assert: bsc1 year equals: 2020
]
