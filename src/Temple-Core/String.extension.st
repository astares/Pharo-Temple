Extension { #name : #String }

{ #category : #'*Temple-Core' }
String >> resolveTemplate [
	^(TemplateParser on: self)
		parse
]
