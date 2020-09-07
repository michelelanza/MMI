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
		'numberOfPages',
		'keywords',
		'advisor',
		'coAdvisors'
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
	p1 keywords: 'pub-iene, proj-dicosa'.
	p1 advisor: 'Michele Lanza'.
	p1 addCoAdvisor: 'Marco D''Ambros'.
	p1 month: Month june.
	p1 year: 2010.
	p1 numberOfPages: 31.
	p1 institution: 'USI, Lugano, Switzerland'.
	^p1
]

{ #category : #accessing }
BScProject >> addCoAdvisor: anObject [
	coAdvisors ifNil: [ 	coAdvisors := OrderedCollection new.
						coAdvisors add: anObject. ] ifNotNil:  [ coAdvisors add: anObject ]
]

{ #category : #accessing }
BScProject >> advisor [
	^ advisor
]

{ #category : #accessing }
BScProject >> advisor: anObject [
	advisor := anObject
]

{ #category : #accessing }
BScProject >> author [
	^ author
]

{ #category : #accessing }
BScProject >> author: anObject [
	author := anObject
]

{ #category : #accessing }
BScProject >> coAdvisors [
	^ coAdvisors
]

{ #category : #accessing }
BScProject >> coAdvisors: anObject [
	coAdvisors := anObject
]

{ #category : #'private-bibtex' }
BScProject >> generateBibTexAuthorLine [
	^Character tab asString, 'Author 		= 	{', self author, '},\' withCRs
]

{ #category : #'private-bibtex' }
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

{ #category : #'private-bibtex' }
BScProject >> generateBibTexInstitutionLine [
	^Character tab asString, 'Institution = 	{', self institution, '},\' withCRs
]

{ #category : #'private-bibtex' }
BScProject >> generateBibTexKeyLine [
	^'@techreport{', self key, ',\' withCRs
]

{ #category : #'private-bibtex' }
BScProject >> generateBibTexMonthLine [
	^Character tab asString, 'Month 		= 	', self month monthAbbreviation asLowercase,',\' withCRs
]

{ #category : #'private-bibtex' }
BScProject >> generateBibTexPagesLine [
	^Character tab asString, 'Numpages 	= 	{', self numberOfPages asString, '},\' withCRs
]

{ #category : #'private-bibtex' }
BScProject >> generateBibTexTitleLine [
	^Character tab asString, 'Title 		= 	{', self title, '},\' withCRs
]

{ #category : #'private-bibtex' }
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
BScProject >> keywords [
	^ keywords
]

{ #category : #accessing }
BScProject >> keywords: anObject [
	keywords := anObject
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
