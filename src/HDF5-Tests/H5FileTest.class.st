Class {
	#name : #H5FileTest,
	#superclass : #TestCase,
	#category : #'HDF5-Tests'
}

{ #category : #running }
H5FileTest >> tearDown [

	'/tmp/lala.hdf5' asFileReference ensureDelete.
	super tearDown.
]

{ #category : #tests }
H5FileTest >> testCreatingNonExistingFileWorks [

	| f |

	[ f := H5File create: '/tmp/lala.hdf5' asFileReference ] 
		ensure: [ 
			f ifNotNil: [ f close ] ].

	self assert: '/tmp/lala.hdf5' asFileReference exists
]

{ #category : #tests }
H5FileTest >> testOpenNonExistingClassThrowsAnError [

	self
		should: [ H5File open: '/tmp/lala.hdf5' asFileReference ]
		raise: H5Error
		withExceptionDo: [ :e | e inspect ]
]
