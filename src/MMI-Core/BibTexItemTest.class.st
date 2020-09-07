Class {
	#name : #BibTexItemTest,
	#superclass : #TestCase,
	#category : #'MMI-Core'
}

{ #category : #testing }
BibTexItemTest class >> bscProjectRawText [
	^'@techreport{Mine2010a,
	Author 		= 	{Roberto Minelli},
	Institution = 	{USI, Lugano, Switzerland},
	Month 		= 	jun,
	Keywords 	= 	{pub-iene, proj-dicosa},
	Numpages 	= 	{31},
	Title 		= 	{Commit 2.0 for Eclipse: Enriching Commit Comments with Software Visualization},
	Type 		= 	{Bachelor''s thesis},
	Year 		= 	{2010}
}'
]

{ #category : #testing }
BibTexItemTest >> testBScProjectCreation [
	| rawText |
	rawText := self bscProjectRawText. 
	
]
