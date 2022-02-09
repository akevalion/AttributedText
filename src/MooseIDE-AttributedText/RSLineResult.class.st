"
TODO
"
Class {
	#name : #RSLineResult,
	#superclass : #Object,
	#instVars : [
		'lineNumber',
		'line',
		'point'
	],
	#category : #'MooseIDE-AttributedText'
}

{ #category : #accessing }
RSLineResult >> line [

	^ line
]

{ #category : #accessing }
RSLineResult >> line: anObject [

	line := anObject
]

{ #category : #accessing }
RSLineResult >> lineNumber [

	^ lineNumber
]

{ #category : #accessing }
RSLineResult >> lineNumber: anObject [

	lineNumber := anObject
]

{ #category : #accessing }
RSLineResult >> point [

	^ point
]

{ #category : #accessing }
RSLineResult >> point: anObject [

	point := anObject
]
