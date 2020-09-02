Class {
	#name : #BScProject,
	#superclass : #Object,
	#instVars : [
		'title',
		'author',
		'year',
		'institution'
	],
	#category : #'MMI-Core'
}

{ #category : #accessing }
BScProject >> author [
	^ author
]

{ #category : #accessing }
BScProject >> author: anObject [
	author := anObject
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
