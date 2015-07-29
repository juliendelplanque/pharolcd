server communication
sendMessage: aLCDMessage
	| clientSocket response |
	clientSocket := Socket newTCP.
	clientSocket
		connectTo: serverAddress port: self serverPort waitForConnectionFor: 10;
		sendData: (((aLCDMessage asJSON) copyWithout: String crlf) , String crlf).

	response := clientSocket receiveData.
	clientSocket closeAndDestroy.
	^NeoJSONReader fromString: response