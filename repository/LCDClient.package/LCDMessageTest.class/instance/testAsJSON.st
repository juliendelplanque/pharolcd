tests-converting
testAsJSON
	|message json|
	message := LCDMessage withSender: 'pharo' contents: 'Contents.'.
	message otherArgsDict: (Dictionary newFrom: { #another -> 1 . #onemore -> 42 }).
	json := message asJSON.
	self assert: json equals: '{"another":1,"ttl":60,"contents":"Contents.","duration":10,"onemore":42,"repeat":1,"sender":"pharo"}'