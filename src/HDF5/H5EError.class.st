Class {
	#name : #H5EError,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_CLS_ID',
		'OFFSET_DESC',
		'OFFSET_FILE_NAME',
		'OFFSET_FUNC_NAME',
		'OFFSET_LINE',
		'OFFSET_MAJ_NUM',
		'OFFSET_MIN_NUM'
	],
	#pools : [
		'H5Types'
	],
	#category : #HDF5
}

{ #category : #'field definition' }
H5EError class >> fieldsDesc [ 
	
	<script: 'self rebuildFieldAccessors'>

	^ #(
    hid_t cls_id
    hid_t maj_num
    hid_t min_num
    unsigned line
    char* func_name
    char* file_name
    char* desc )
]

{ #category : #'accessing - structure variables' }
H5EError >> cls_id [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_CLS_ID
]

{ #category : #'accessing - structure variables' }
H5EError >> cls_id: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_CLS_ID put: anObject
]

{ #category : #'accessing - structure variables' }
H5EError >> desc [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_DESC) type: ExternalType char asPointerType
]

{ #category : #'accessing - structure variables' }
H5EError >> desc: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_DESC put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
H5EError >> file_name [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_FILE_NAME) type: ExternalType char asPointerType
]

{ #category : #'accessing - structure variables' }
H5EError >> file_name: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_FILE_NAME put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
H5EError >> func_name [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_FUNC_NAME) type: ExternalType char asPointerType
]

{ #category : #'accessing - structure variables' }
H5EError >> func_name: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_FUNC_NAME put: anObject getHandle.
]

{ #category : #'accessing - structure variables' }
H5EError >> line [
	"This method was automatically generated"
	^handle unsignedLongAt: OFFSET_LINE
]

{ #category : #'accessing - structure variables' }
H5EError >> line: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_LINE put: anObject
]

{ #category : #'accessing - structure variables' }
H5EError >> maj_num [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_MAJ_NUM
]

{ #category : #'accessing - structure variables' }
H5EError >> maj_num: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_MAJ_NUM put: anObject
]

{ #category : #'accessing - structure variables' }
H5EError >> min_num [
	"This method was automatically generated"
	^handle signedLongLongAt: OFFSET_MIN_NUM
]

{ #category : #'accessing - structure variables' }
H5EError >> min_num: anObject [
	"This method was automatically generated"
	handle signedLongLongAt: OFFSET_MIN_NUM put: anObject
]
