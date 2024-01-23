"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestBaselineOfTemple,
	#superclass : #PackageManifest,
	#category : #'BaselineOfTemple-Manifest'
}

{ #category : #'code-critics' }
ManifestBaselineOfTemple class >> ruleClassNotReferencedRuleV1FalsePositive [

	<ignoreForCoverage>
	^ #(#(#(#RGClassDefinition #(#BaselineOfTemple)) #'2024-01-23T08:05:01.258+01:00') )
]
