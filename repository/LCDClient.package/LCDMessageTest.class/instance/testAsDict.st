tests-converting
testAsDict
	|message dict|
	message := LCDMessage withSender: 'pharo' contents: 'Contents.'.
	message otherArgsDict: (Dictionary newFrom: { #another -> 1 . #onemore -> 42 }).
	dict := message asDict.
	self assert: dict keys size equals: 7.
	self assert: (dict at: #contents) equals: 'Contents.'.
	self assert: (dict at: #sender) equals: 'pharo'.
	self assert: (dict at: #duration) equals: LCDMessage defaultDuration.
	self assert: (dict at: #ttl) equals: LCDMessage defaultTtl.
	self assert: (dict at: #repeat) equals: LCDMessage defaultRepeat.
	self assert: (dict at: #another) equals: 1.
	self assert: (dict at: #onemore) equals: 42.