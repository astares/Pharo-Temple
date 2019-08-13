"
A baseline for Astares minimalistic Template engine for Pharo
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
			
			"Groups"	
			spec	
				group: 'Core' with: #('Temple-Core');
				group: 'Tests' with: #('Temple-Tests-Core');
				group: 'all' with: #('Core' 'Tests');
				group: 'default' with: #('all') ]
]
