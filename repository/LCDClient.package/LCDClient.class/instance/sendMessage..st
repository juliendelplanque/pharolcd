server communication
sendMessage: aLCDMessage
	^ZnEasy post: self serverUrl data: (ZnEntity text: aLCDMessage asJSON )