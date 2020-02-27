"
Parser for templates
"
Class {
	#name : #TemplateParser,
	#superclass : #Object,
	#instVars : [
		'stream'
	],
	#category : #'Temple-Core-Parsing'
}

{ #category : #'instance creation' }
TemplateParser class >> on: aStringOrStream [ 

	^(self new)
		stream: aStringOrStream readStream;
		yourself 
]

{ #category : #parsing }
TemplateParser >> parse [
	| result |
	result := String new writeStream.
	[ stream atEnd ]
		whileFalse: [ | currentChar |
			(currentChar := stream next) == ${
				ifTrue: [ | expression |
					expression := stream upTo: $}.
					result
						nextPutAll:
							(self class compiler
								source: expression;
								evaluate) asString ]
				ifFalse: [ currentChar == $\
						ifTrue: [ stream atEnd
								ifFalse: [ result nextPut: stream next ] ]
						ifFalse: [ result nextPut: currentChar ] ] ].
	^ result contents
]

{ #category : #accessing }
TemplateParser >> stream: aReadStream [ 
	stream := aReadStream
]
