"
TODO
"
Class {
	#name : #RSTagEmphasisAttribute,
	#superclass : #RSAbstractTextAttribute,
	#instVars : [
		'color'
	],
	#category : #'MooseIDE-AttributedText'
}

{ #category : #initialization }
RSTagEmphasisAttribute >> initialize [
	super initialize.
	color := { Color red. Color yellow. Color green } atRandom
]

{ #category : #rendering }
RSTagEmphasisAttribute >> lineShapesFor: aShape startLine: startLine endLine: endLine [
	| lines currentLine |
	lines := OrderedCollection new.
	currentLine := startLine.
	[ currentLine notNil 
		and: [currentLine lineNumber <= endLine lineNumber] ] whileTrue: [ 
		| currentEnd |
		currentEnd := currentLine lineNumber = endLine lineNumber
			ifTrue: [ endLine ]
			ifFalse: [ self findLine: aShape index: currentLine end ].
		lines add: (self newLine
			startPoint: currentLine point;
			endPoint: currentEnd point;
			yourself).
		currentLine := self findLine: aShape index: currentLine end + 1.
	 ].
	
	^ lines
]

{ #category : #rendering }
RSTagEmphasisAttribute >> newLine [
	^ RSLine new
		color: color;
		width: 2;
		yourself.
]

{ #category : #rendering }
RSTagEmphasisAttribute >> renderIn: aShape [
	| startLine endLine dot  lines |
	startLine := self startLine: aShape.
	endLine := self endLine: aShape.
	dot := RSCircle  new
		size: 7;
		color: color;
		translateTo: startLine point ;
		when: RSMouseClick send: #inspect to: self;
		yourself.
	aShape addShape: dot.
	lines := self lineShapesFor: aShape startLine: startLine endLine: endLine.
	aShape addAll: lines.
]
