Class {
	#name : #H5FConstants,
	#superclass : #SharedPool,
	#classVars : [
		'H5F_ACC_CREAT',
		'H5F_ACC_EXCL',
		'H5F_ACC_RDONLY',
		'H5F_ACC_RDWR',
		'H5F_ACC_SWMR_READ',
		'H5F_ACC_SWMR_WRITE',
		'H5F_ACC_TRUNC',
		'H5P_DEFAULT'
	],
	#category : #HDF5
}

{ #category : #initialization }
H5FConstants class >> initialize [

	H5P_DEFAULT := 0.
	H5F_ACC_RDONLY := 16r0000.
	H5F_ACC_RDWR := 16r0001.
	H5F_ACC_TRUNC := 16r0002.
	H5F_ACC_EXCL := 16r0004.
	H5F_ACC_CREAT := 16r0010.

	H5F_ACC_SWMR_WRITE := 16r0020.
	H5F_ACC_SWMR_READ := 16r0040.
]
