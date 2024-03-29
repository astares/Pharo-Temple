"
A baseline for Astares minimalistic Template engine for Pharo 

[https://github.com/astares/Pharo-Temple](https://github.com/astares/Pharo-Temple)
"
Class {
	#name : #BaselineOfTemple,
	#superclass : #BaselineOf,
	#category : #'BaselineOfTemple-Manifest'
}

{ #category : #baselines }
BaselineOfTemple >> baseline: spec [
	<baseline>
	spec
		for: #common do: [
			"Packages"
			spec
				package: 'Temple-Core';
				package: 'Temple-Tests-Core' with: [ spec requires: #('Temple-Core') ].

			"Custom Groups"
			spec
				group: 'Core' with: #('Temple-Core');
				group: 'Tests' with: #('Temple-Tests-Core');
				group: 'CI' with: #('Tests').

			"Default Groups"
			spec
				group: 'all' with: #('Core' 'Tests' 'CI');
				group: 'default' with: #('all') ]
]
