Class {
	#name : #RSLinkEmphasisAttribute,
	#superclass : #RSAbstractTextAttribute,
	#category : #'MooseIDE-AttributedText'
}

{ #category : #rendering }
RSLinkEmphasisAttribute >> renderIn: aShape [
	| startLine endLine line  |
	startLine := self startLine: aShape.
	endLine := self endLine: aShape.
	line := RSLine new
		startPoint: startLine point;
		endPoint: endLine point;
		width: 1;
		yourself.
	aShape addShape: line.
	aShape when: RSMouseClick send: #inspect to: self
]
