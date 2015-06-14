instance creation
withSender: senderStr contents: aString
	"To create a carriage return in your contents, crlf must be used!"
	^self new
		sender: senderStr;
		contents: aString;
		ttl: self defaultTtl;
		duration: self defaultDuration;
		repeat: self defaultRepeat;
		yourself