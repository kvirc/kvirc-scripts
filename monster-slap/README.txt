+------------------------+
+         About          +
+------------------------+

This is a monster slap script.
It adds an alias to KVIrc called slap.
This alias randomizes the multiple variables of 6 arrays to give a slightly different slap each time.

This is the culmination of a couple of KVIrc fans getting together to produce this.

Since version 1.0.3 it includes a reslap event and ability to slap self.

The reslap event is a OnHighlight event that catches known list of trigger words.
The reslap event is protected to avoid endless loops between 2 users with reslap active.
It only reslaps once over a certain period.

Currently you can use the slap alias on its own without needing to use reslap.
This is why it is provided as a separate file to give you the choice.

Slapping self is equally as fun, because we all feel like it sometimes.

+------------------------+
+ Installation in KVIrc. +
+------------------------+

Download the slap.kvs and reslap.kvs anywhere you like.

1 - Open Execute script.
2 - Navigate to directory where you have the slap.kvs reslap.kvs
3 - Select a script and Click OK.
4 - Rinse and repeat for other file.
5 - Open Aliases Editor and confirm you have an Alias names slap.
    Then open the Event Editor, find OnHighlight and verify you have a reslap handler.

Enjoy and use wisely and sparingly.

+------------------------+
+          Usage         +
+------------------------+

 $ /slap <nick>
 $ /slap self

For usage type:

 $ /slap

+------------------------+
+         License        +
+------------------------+

This is released as a public domain licence.
https://creativecommons.org/publicdomain/zero/1.0/
