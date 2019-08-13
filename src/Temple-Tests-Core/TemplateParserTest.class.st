"
SUnit test for resolveTemplate (indirectly for TemplateParser)
"
Class {
	#name : #TemplateParserTest,
	#superclass : #TestCase,
	#category : #'Temple-Tests-Core-Base'
}

{ #category : #'tests - escaping' }
TemplateParserTest >> testBothEscaping [

	self assert: 'Something \{\} More' resolveTemplate equals: 'Something {} More'

 
]

{ #category : #testing }
TemplateParserTest >> testExpressionToString [

	self assert: 'An expression: { Object name }' resolveTemplate equals: 'An expression: Object'

 
]

{ #category : #testing }
TemplateParserTest >> testInteger [

	self assert: 'An integer: { 1 }' resolveTemplate equals: 'An integer: 1'

 
]

{ #category : #'tests - escaping' }
TemplateParserTest >> testSimpleEscaping [

	self assert: 'Something \{ More' resolveTemplate equals: 'Something { More'

 
]

{ #category : #testing }
TemplateParserTest >> testString [

	self assert: 'A string: { ''HelloWorld'' }' resolveTemplate equals: 'A string: HelloWorld'

 
]

{ #category : #testing }
TemplateParserTest >> testSymbol [

	self assert: 'A symbol: { #HelloWorld }' resolveTemplate equals: 'A symbol: HelloWorld'

 
]
