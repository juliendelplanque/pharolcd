I am a wrapper for the web interface of the LCDDaemon.

Example:
client := LCDClient withServer: 'http://localhost:4242'.
response := client sendMessage: (LCDMessage withSender: 'pharo' contents: 'Hey. Hey').	