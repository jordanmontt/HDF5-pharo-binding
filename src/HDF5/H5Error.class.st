Class {
	#name : #H5Error,
	#superclass : #Error,
	#instVars : [
		'errorStack'
	],
	#category : #HDF5
}

{ #category : #accessing }
H5Error >> errorStack: aCollection [ 
	
	errorStack := aCollection
]
