Class {
	#name : #H5EType,
	#superclass : #FFIEnumeration,
	#classVars : [
		'H5E_MAJOR',
		'H5E_MINOR'
	],
	#category : #HDF5
}

{ #category : #'enum declaration' }
H5EType class >> enumDecl [ 

	<script: 'self initialize'>

	^ #( H5E_MAJOR 0 H5E_MINOR 	1)
]
