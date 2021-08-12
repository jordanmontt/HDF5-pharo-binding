Class {
	#name : #H5File,
	#superclass : #AbstractHDF5,
	#instVars : [
		'fileId'
	],
	#category : #HDF5
}

{ #category : #protocol }
H5File class >> create: aFileReference [

	| fileId |

	fileId := self
				   ffiHF5create: aFileReference fullName
				   flags: H5F_ACC_TRUNC
					creationPropertyFile: H5P_DEFAULT
				   accessPropertyList: H5P_DEFAULT.
	
	fileId < 0 ifTrue: [ H5Error signal: 'Cannot create file ' , aFileReference asString ].

	^ self new
		  fileId: (fileId);
		  yourself
]

{ #category : #protocol }
H5File class >> ffiHF5create: aName flags: flags creationPropertyFile: fcpl_id accessPropertyList: fapl_id [

	^ self ffiCall: #(hid_t H5Fcreate( const char *aName, unsigned flags, hid_t fcpl_id, hid_t fapl_id ))
]

{ #category : #'ffi-calls' }
H5File class >> ffiHF5open: fileName flags: flags accessPropertyList: apl [

	^ self ffiCall: #(hid_t H5Fopen( const char *fileName, unsigned flags, hid_t apl))
]

{ #category : #protocol }
H5File class >> open: aFileReference [

	| fileId |
	fileId := self
		          ffiHF5open: aFileReference fullName
		          flags: H5F_ACC_RDWR
		          accessPropertyList: H5P_DEFAULT.

	fileId < 0 ifTrue: [ 
		H5Error new
			errorStack: HDF5 getErrorStack;
			signal: 'Cannot open file ' , aFileReference asString. ].

	^ self new
		  fileId: fileId;
		  yourself
]

{ #category : #'initialize-release' }
H5File >> close [
	
	^ self ffiCall: #(herr_t H5Fclose( hid_t fileId ))
	
]

{ #category : #accessing }
H5File >> fileId: anInteger [ 
	
	fileId := anInteger 
]
