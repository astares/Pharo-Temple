Extension { #name : #String }

{ #category : #'*Temple-Core' }
String >> resolveTemplate [

	^ (TemplateParser on: self) parse
]

{ #category : #'*Temple-Core' }
String >> resolveTemplateUsingBindings: aDictionary [

	^ (TemplateParser on: self bindings: aDictionary) parse
]
