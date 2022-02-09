"
TODO
"
Class {
	#name : #RSEmphasisAttribute,
	#superclass : #RSAbstractTextAttribute,
	#category : #'MooseIDE-AttributedText'
}

{ #category : #rendering }
RSEmphasisAttribute >> renderIn: aShape [
	| startLine endLine line |
	startLine := self startLine: aShape.
	endLine := self endLine: aShape.
	line := RSLine new
		startPoint: startLine point;
		endPoint: endLine point;
		color: {Color red. Color yellow. Color green } atRandom;
		width: 2;
		when: RSMouseClick send: #inspect to: self;
		yourself.
	aShape addShape: line
]
