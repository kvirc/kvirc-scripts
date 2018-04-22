ZNC Advanced Playback
=====================

This script provides support for the [advanced playback](https://wiki.znc.in/Playback) module of ZNC. The advanced playback module is an external module (that is, it is not packaged with ZNC) that allows the client to request a partial buffer playback starting from and ending to a certain point of time. This is useful to avoid repeated messages or missing messages in case of a connection timeout.

It requires the [Capabilities](../capabilities) script.

Installation
------------

Simply run the script.

To do this, from the KVIrc menu, select *Scripting* → *Execute Script* (or press `Ctrl`+`Shift`+`X` up to twice), then select `zncplayback.kvs` in the dialog.

Alternatively, enter `/parse path/to/zncplayback.kvs`.
