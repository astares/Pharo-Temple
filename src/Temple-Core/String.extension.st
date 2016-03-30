Extension { #name : #String }

{ #category : #'*Temple-Core' }
String >> resolveTemplate [
	^(TempleParser on: self)
		parse
]
