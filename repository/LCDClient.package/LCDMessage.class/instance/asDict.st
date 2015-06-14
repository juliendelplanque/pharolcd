converting
asDict
	^Dictionary new
		at: #contents put: self contents;
		at: #sender put: self sender;
		at: #duration put: self duration;
		at: #ttl put: self ttl;
		at: #repeat put: self repeat;
		addAll: self otherArgsDict;
		yourself.