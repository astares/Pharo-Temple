"
SUnit test for resolveTemplate
"
Class {
	#name : #ResolveTemplateTest,
	#superclass : #TestCase,
	#category : #'Temple-Tests-Core-Base'
}

{ #category : #testing }
ResolveTemplateTest >> testExpressionToString [

	self assert: 'An expression: { Object name }' resolveTemplate equals: 'An expression: Object'

 
]

{ #category : #testing }
ResolveTemplateTest >> testInteger [

	self assert: 'An integer: { 1 }' resolveTemplate equals: 'An integer: 1'

 
]

{ #category : #testing }
ResolveTemplateTest >> testString [

	self assert: 'A string: { ''HelloWorld'' }' resolveTemplate equals: 'A string: HelloWorld'

 
]

{ #category : #testing }
ResolveTemplateTest >> testSymbol [

	self assert: 'A symbol: { #HelloWorld }' resolveTemplate equals: 'A symbol: HelloWorld'

 
]
