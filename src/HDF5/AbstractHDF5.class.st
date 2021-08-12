Class {
	#name : #AbstractHDF5,
	#superclass : #Object,
	#pools : [
		'H5FConstants',
		'H5Types'
	],
	#category : #HDF5
}

{ #category : #accessing }
AbstractHDF5 class >> ffiLibrary [

	^ HDF5Library
]

{ #category : #accessing }
AbstractHDF5 >> ffiLibrary [

	^ HDF5Library 
]
