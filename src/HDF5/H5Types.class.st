Class {
	#name : #H5Types,
	#superclass : #SharedPool,
	#classVars : [
		'H5E_direction_t',
		'H5E_error2_t',
		'H5E_type_t',
		'herr_t',
		'hid_t',
		'ssize_t',
		'unsigned'
	],
	#category : #HDF5
}

{ #category : #initialization }
H5Types class >> initialize [

	hid_t := #'int64'.
	unsigned := #'uint'.
	herr_t := #'int'.
	H5E_type_t := H5EType.
	H5E_error2_t := H5EError.
	H5E_direction_t := H5EDirection.
	ssize_t := #'int64'
]
