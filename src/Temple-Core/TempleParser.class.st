"
Parser for templates
"
Class {
	#name : #TempleParser,
	#superclass : #Object,
	#instVars : [
		'stream'
	],
	#category : #'Temple-Core-Parsing'
}

{ #category : #'instance creation' }
TempleParser class >> on: aStringOrStream [ 

	^(self new)
		stream: aStringOrStream readStream;
		yourself 
]

{ #category : #parsing }
TempleParser >> parse [
	| result |
	result := String new writeStream.
	[ stream atEnd ]
		whileFalse: [ | currentChar |
			(currentChar := stream next) == ${
				ifTrue: [ | expression |
					expression := stream upTo: $}.
					result
						nextPutAll:
							(Smalltalk compilerClass new
								source: expression;
								evaluate) asString ]
				ifFalse: [ currentChar == $\
						ifTrue: [ stream atEnd
								ifFalse: [ result nextPut: stream next ] ]
						ifFalse: [ result nextPut: currentChar ] ] ].
	^ result contents
]

{ #category : #accessing }
TempleParser >> stream: aReadStream [ 
	stream := aReadStream
]
