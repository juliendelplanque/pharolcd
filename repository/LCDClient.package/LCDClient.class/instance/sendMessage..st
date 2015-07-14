server communication
sendMessage: aLCDMessage
	"^(ZnEasy post: self serverUrl data: (ZnEntity text: aLCDMessage asJSON)) contents"
	| clientSocket response |
	clientSocket := Socket newTCP.
	serverAddress := NetNameResolver addressForName: '127.0.0.1'.
	clientSocket
		connectTo: serverAddress port: 4242 waitForConnectionFor: 10.

	clientSocket sendData: (aLCDMessage asJSON , String crlf).
	response := clientSocket receiveData.
	clientSocket closeAndDestroy.
	^NeoJSONReader fromString: response