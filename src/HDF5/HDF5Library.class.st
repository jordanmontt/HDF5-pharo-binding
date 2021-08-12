Class {
	#name : #HDF5Library,
	#superclass : #FFILibrary,
	#category : #HDF5
}

{ #category : #'accessing - platform' }
HDF5Library >> macLibraryName [

	^ FFIMacLibraryFinder findAnyLibrary: #('libhdf5.dylib')

]
