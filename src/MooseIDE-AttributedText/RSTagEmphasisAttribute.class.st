"
TODO
"
Class {
	#name : #RSTagEmphasisAttribute,
	#superclass : #RSAbstractTextAttribute,
	#category : #'MooseIDE-AttributedText'
}

{ #category : #rendering }
RSTagEmphasisAttribute >> renderIn: aShape [
	| startLine endLine line dot color |
	color := {Color red. Color yellow. Color green } atRandom.
	startLine := self startLine: aShape.
	endLine := self endLine: aShape.
	dot := RSCircle  new
		size: 10;
		color: color;
		translateTo: startLine point ;
		yourself.
	aShape addShape: dot.
	line := RSLine new
		startPoint: startLine point;
		endPoint: endLine point;
		color: color;
		width: 2;
		when: RSMouseClick send: #inspect to: self;
		yourself.
	aShape addShape: line
]
