Class {
	#name : #MMIArtifact,
	#superclass : #Object,
	#instVars : [
		'year',
		'author',
		'title'
	],
	#category : #'MMI-Core'
}

{ #category : #accessing }
MMIArtifact >> author [
	^ author
]

{ #category : #accessing }
MMIArtifact >> author: anObject [
	author := anObject
]

{ #category : #accessing }
MMIArtifact >> title [
	^ title
]

{ #category : #accessing }
MMIArtifact >> title: anObject [
	title := anObject
]

{ #category : #accessing }
MMIArtifact >> year [
	^ year
]

{ #category : #accessing }
MMIArtifact >> year: anObject [
	year := anObject
]
