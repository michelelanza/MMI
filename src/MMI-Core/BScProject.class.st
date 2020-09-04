Class {
	#name : #BScProject,
	#superclass : #Object,
	#instVars : [
		'key',
		'title',
		'author',
		'year',
		'institution',
		'month',
		'numberOfPages'
	],
	#category : #'MMI-Core'
}

{ #category : #'as yet unclassified' }
BScProject class >> exampleBScProject [
	| p1 |
	p1 := self new.
	p1 key: 'Mine2010a'.
	p1 author: 'Roberto Minelli'.
	p1 title: 'Commit 2.0 for Eclipse: Enriching Commit Comments with Software Visualization'.
	p1 month: Month june.
	p1 year: 2013.
	p1 numberOfPages: 31.
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
BScProject >> generateBibTexAuthorLine [
	^Character tab asString, 'Author 		= 	{', self author, '},\' withCRs
]

{ #category : #public }
BScProject >> generateBibTexClosingLine [
	^'}\' withCRs
]

{ #category : #public }
BScProject >> generateBibTexEntry [
	^'@techreport{', self key, ',
	Author 		= 	{', self author, '},
	Institution =	{', self institution,  '},
	Month 		=	', self month monthAbbreviation asLowercase, ',
	Title 		=	{', self title, '},
	Numpages 	=	{', self numberOfPages asString, '},
	Type 		=	{Bachelor thesis},
	Year 		=	{', self year asString, '}
}'
]

{ #category : #public }
BScProject >> generateBibTexEntry2 [
	^'@techreport{', self key, ',\ Author 		= 	{', self author, '},\ Institution 	=	{', self institution,  '},\ Month 		=	', self month monthAbbreviation asLowercase, ',\ Title 		=	{', self title, '},\ Numpages 	=	{', self numberOfPages asString, '},\ Type 		=	{Bachelor thesis},\ Year 		=	{', self year asString, '}\}' withCRs

]

{ #category : #public }
BScProject >> generateBibTexEntry3 [
	| keyLine authorLine titleLine institutionLine yearLine pagesLine monthLine closingLine |
	keyLine := self generateBibTexKeyLine.
	authorLine := self generateBibTexAuthorLine.
	titleLine := self generateBibTexTitleLine.
	institutionLine := self generateBibTexInstitutionLine. 
	pagesLine := self generateBibTexPagesLine.
	monthLine := self generateBibTexMonthLine.
	yearLine := self generateBibTexYearLine.
	closingLine := self generateBibTexClosingLine.
	
	 
	^keyLine, authorLine, titleLine, institutionLine, pagesLine, monthLine, yearLine, closingLine 
	
]

{ #category : #public }
BScProject >> generateBibTexInstitutionLine [
	^Character tab asString, 'Institution = 	{', self institution, '},\' withCRs
]

{ #category : #public }
BScProject >> generateBibTexKeyLine [
	^'@techreport{', self key, ',\' withCRs
]

{ #category : #public }
BScProject >> generateBibTexMonthLine [
	^Character tab asString, 'Month 		= 	', self month monthAbbreviation asLowercase,',\' withCRs
]

{ #category : #public }
BScProject >> generateBibTexPagesLine [
	^Character tab asString, 'Numpages 	= 	{', self numberOfPages asString, '},\' withCRs
]

{ #category : #public }
BScProject >> generateBibTexTitleLine [
	^Character tab asString, 'Title 		= 	{', self title, '},\' withCRs
]

{ #category : #public }
BScProject >> generateBibTexYearLine [
	^Character tab asString, 'Year 		= 	{', self year asString,'}\' withCRs
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
BScProject >> month [
	^ month
]

{ #category : #accessing }
BScProject >> month: anObject [
	month := anObject
]

{ #category : #accessing }
BScProject >> numberOfPages [
	^ numberOfPages
]

{ #category : #accessing }
BScProject >> numberOfPages: anObject [
	numberOfPages := anObject
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
