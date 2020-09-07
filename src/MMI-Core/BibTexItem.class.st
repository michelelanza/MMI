Class {
	#name : #BibTexItem,
	#superclass : #Object,
	#instVars : [
		'rawText',
		'artifact'
	],
	#category : #'MMI-Core'
}

{ #category : #accessing }
BibTexItem >> artifact [
	^ artifact
]

{ #category : #accessing }
BibTexItem >> artifact: anObject [
	artifact := anObject
]

{ #category : #public }
BibTexItem >> generateBScProject [
	self artifact: BScProject new.
	rawText linesDo: [ :eachLine | 
		(eachLine includesSubstring: 'Author') ifTrue: [ self processAuthorLine: eachLine].
		(eachLine includesSubstring: 'Institution') ifTrue: [ self processInstitutionLine: eachLine].
		(eachLine includesSubstring: 'Title') ifTrue: [ self processTitleLine: eachLine].
	]
 
]

{ #category : #public }
BibTexItem >> generateMMIArtifact [	
	(rawText includesSubstring: '@techreport') ifTrue: [ self generateBScProject ]
]

{ #category : #public }
BibTexItem >> processAuthorLine: eachLine [
		| author |
		author := (eachLine findBetweenSubstrings: #({ })) at: 2.
		self artifact author: author.
]

{ #category : #public }
BibTexItem >> processInstitutionLine: eachLine [
		| institution |
		institution := (eachLine findBetweenSubstrings: #({ })) at: 2.
		self artifact institution: institution.
]

{ #category : #public }
BibTexItem >> processTitleLine: eachLine [
		| title |
		title := (eachLine findBetweenSubstrings: #({ })) at: 2.
		self artifact title: title.
]

{ #category : #accessing }
BibTexItem >> rawText [
	^ rawText
]

{ #category : #accessing }
BibTexItem >> rawText: anObject [
	rawText := anObject
]
