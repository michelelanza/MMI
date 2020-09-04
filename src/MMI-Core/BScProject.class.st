Class {
	#name : #BScProject,
	#superclass : #Object,
	#instVars : [
		'key',
		'title',
		'author',
		'year',
		'institution'
	],
	#category : #'MMI-Core'
}

{ #category : #'as yet unclassified' }
BScProject class >> exampleBScProject [
	| p1 |
	p1 := self new.
	p1 key: 'Mine2010a'.
	p1 author: 'Roberto Minelli'.
	p1 title: 'Commit 2.0'.
	p1 year: 2013.
	p1 institution: 'USI, Lugano, Switzerland'.
	^p1
]

{ #category : #accessing }
BScProject >> author [
	^ author
]

{ #category : #accessing }
BScProject >> author: anObject [
	author := anObject
]

{ #category : #public }
BScProject >> generateBibTexEntry [
	^'@techreport{', self key, ',', 'Author 	= 	{', self author, '},'.
]

{ #category : #accessing }
BScProject >> institution [
	^ institution
]

{ #category : #accessing }
BScProject >> institution: anObject [
	institution := anObject
]

{ #category : #accessing }
BScProject >> key [
	^ key
]

{ #category : #accessing }
BScProject >> key: anObject [
	key := anObject
]

{ #category : #accessing }
BScProject >> title [
	^ title
]

{ #category : #accessing }
BScProject >> title: anObject [
	title := anObject
]

{ #category : #accessing }
BScProject >> year [
	^ year
]

{ #category : #accessing }
BScProject >> year: anObject [
	year := anObject
]
