Class {
	#name : #H5EWalkCallback,
	#superclass : #FFICallback,
	#pools : [
		'H5Types'
	],
	#category : #HDF5
}

{ #category : #'callback spec' }
H5EWalkCallback class >> fnSpec [
	^ #(herr_t (unsigned n, H5E_error2_t *file, void* data))
]

{ #category : #'instance creation' }
H5EWalkCallback class >> on: aBlock [
	^ self 
		signature: self fnSpec 
		block: aBlock 
]
