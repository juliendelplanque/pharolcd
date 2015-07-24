# pharolcd
A wrapper for the tcp socket interface of lcddaemon written in Pharo Smalltalk.
See [LCDDaemon](https://github.com/juliendelplanque/lcddaemon).

## Load this package
~~~
Metacello new
    baseline: 'ICal';
    repository: 'github://juliendelplanque/pharo-ical/repository';
    load.
~~~

## Send a message to the lcddaemon
~~~
"Of course, change the parameters if needed."
client := LCDClient withServer: '127.0.0.1' port: 4242.

response := client sendMessage: (LCDMessage withSender: 'Pharo' contents: 'Hello from Pharo.').
~~~
