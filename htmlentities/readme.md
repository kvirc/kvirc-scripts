HTML Entities
=============

This is a KVIrc script that deals with HTML entities.

It was tested with KVIrc version 4.9.1 'Aria'.

The script adds the following functions:
  * `string $htmldecode(string text)` – decodes HTML entities in text.
  * `string $htmlencode(string text[, string flags])` – encodes certain characters into HTML entity representations; see the script for more information.

Installation
------------

Simply run the script.

To do this, from the KVIrc menu, select *Scripting* → *Execute Script* (or press `Ctrl+Shift+X` up to twice), then select `htmlentities.kvs` in the dialog.

Alternatively, enter `/parse path/to/htmlentities.kvs`.
