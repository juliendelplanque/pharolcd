tests-initialization
testInitialize
	|message|
	message := LCDMessage new.
	self assert: message otherArgsDict size equals: 0