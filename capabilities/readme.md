Capabilities
============

This script provides a framework for other scripts to enable [IRCv3 capabilities](https://ircv3.net/irc/#capability-negotiation), and provides [`cap-notify`](https://ircv3.net/specs/extensions/cap-notify-3.2.html) support.

This script only works with versions of KVIrc from [4.9.2 on 11 August 2016](https://github.com/kvirc/KVIrc/tree/e8024a8de2e0fab94479be137763b41aeb5d2f23) or newer.

To enable a new capability on each connection, add the following code to the `OnKvircStartup` event:
```
%Caps{"cap-name"} = $true;
```

To check that the Capabilities script is installed, use this code:
```
if (!%Caps) error "This script requires the Capabilities script. Download it from https://github.com/kvirc/kvirc-scripts/capabilities";
```

The script exposes the following variables to give information about capabilities:
```
%CapsAvailable{$context}{"cap-name"}
%CapsEnabled{$context}{"cap-name"}
```
Both return either `$true` or `$nothing`.

Installation
------------

Simply run the script.

To do this, from the KVIrc menu, select *Scripting* → *Execute Script* (or press `Ctrl`+`Shift`+`X` up to twice), then select `capabilities.kvs` in the dialog.

Alternatively, enter `/parse path/to/capabilities.kvs`.
