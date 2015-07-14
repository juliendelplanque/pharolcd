instance creation
withServer: aString port: anInteger
	^self new
		serverAddress: aString;
		serverPort: anInteger;
		yourself