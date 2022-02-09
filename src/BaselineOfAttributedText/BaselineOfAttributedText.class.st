Class {
	#name : #BaselineOfAttributedText,
	#superclass : #BaselineOf,
	#category : #BaselineOfAttributedText
}

{ #category : #baselines }
BaselineOfAttributedText >> baseline: spec [
	<baseline>
	spec for: #common do: [ 
		spec package: 'MooseIDE-AttributedText'.
		spec group: 'default' with: #('MooseIDE-AttributedText') ].
]
