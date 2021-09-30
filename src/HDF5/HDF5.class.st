"
https://confluence.hdfgroup.org/display/HDF5
"
Class {
	#name : #HDF5,
	#superclass : #AbstractHDF5,
	#pools : [
		'H5EDirection'
	],
	#category : #HDF5
}

{ #category : #'ffi-calls' }
HDF5 class >> ffiH5Eget_current_stack [

	^ self ffiCall: #(hid_t H5Eget_current_stack())
]

{ #category : #'ffi-calls' }
HDF5 class >> ffiH5Eget_msg: mesg_id mesgTypeHolder: mesg_type message: mesg size: size [

	^ self ffiCall: #(ssize_t H5Eget_msg(hid_t mesg_id, void* mesg_type, char* mesg, size_t size))
]

{ #category : #'ffi-calls' }
HDF5 class >> ffiH5Ewalk2: estack_id direction: direction callback: func clientData: client_data [

	^ self ffiCall: #(herr_t H5Ewalk2( hid_t estack_id, H5E_direction_t direction, H5EWalkCallback func, void * client_data ))
]

{ #category : #'error message' }
HDF5 class >> getErrorMessage: errorId [

	| size buffer |
	size := self
		        ffiH5Eget_msg: errorId
		        mesgTypeHolder: ExternalAddress null
		        message: nil
		        size: 0.

	buffer := ByteArray new: size + 1.
	
	size := self
		        ffiH5Eget_msg: errorId
		        mesgTypeHolder: ExternalAddress null
		        message: buffer
		        size: size + 1.
		
	^ buffer utf8Decoded
]

{ #category : #'error message' }
HDF5 class >> getErrorStack [

	| stackId errors |

	stackId := self ffiH5Eget_current_stack.
	errors := OrderedCollection new.

	self
		ffiH5Ewalk2: stackId
		direction: H5E_WALK_UPWARD
		callback: (H5EWalkCallback on: [ :n :errPointer :clientData | | err |
			err := H5EError fromHandle: errPointer.
			errors add: { n. (self getErrorMessage: err maj_num). (self getErrorMessage: err min_num) }.
			0 ])
		clientData: ExternalAddress null.
		
	^ errors
]
