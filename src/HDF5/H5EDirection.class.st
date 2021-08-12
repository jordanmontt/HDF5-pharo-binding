Class {
	#name : #H5EDirection,
	#superclass : #FFIEnumeration,
	#classVars : [
		'H5E_WALK_DOWNWARD',
		'H5E_WALK_UPWARD'
	],
	#category : #HDF5
}

{ #category : #'enum declaration' }
H5EDirection class >> enumDecl [ 

	<script: 'self initialize'>

	^ #( H5E_WALK_UPWARD 0 H5E_WALK_DOWNWARD 	1)
]
