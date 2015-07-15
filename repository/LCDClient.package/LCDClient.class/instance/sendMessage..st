server communication
sendMessage: aLCDMessage
	| clientSocket response |
	clientSocket := Socket newTCP.
	clientSocket
		connectTo: serverAddress port: 4242 waitForConnectionFor: 10.

	clientSocket sendData: (aLCDMessage asJSON , String crlf).
	response := clientSocket receiveData.
	clientSocket closeAndDestroy.
	^NeoJSONReader fromString: response