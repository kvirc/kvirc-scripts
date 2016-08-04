## About

Monster slap is a super slap script on steroids.
It is the culmination of a couple of KVIrc fans getting together to produce this. and adopted by a few users.
Monster slap consists of an alias called slap and if you also choose, an `OnHighlight` auto-reslap event catcher.

The slap alias, randomizes multiple variable entries of **8** arrays to give a slightly different *slap* each time.
It has been constructed in such a way that no matter which variables are used, the result is always (pretty close to) logical,
perhaps somewhat shocking ;) but most definitely fun and not meant to be offensive... Its a reality check slap.

The reslap event is an `OnHighlight` event that catches a slap directed at yourself and auto-reslaps
point of origin using the slap alias. To avoid endless loops between 2 users with reslap active,
the event is protected and it only reslaps once over a certain period to avoid excess.

#### Notable changes

* Since version 1.2.0 it now includes a complete uninstallation trigger via /slap uninstall
  The uninstallation routine checks if the Event or Alias editors are open and closes them,
  before proceeding with uninstall. (rewritten to have popup up dialogs with options around)

* Since version 1.0.3 it includes a *reslap* event and ability to slap self.

* Since version 2.0.1 it was rewritten using `switch()` and added ability to slap any nick
  also added script share switch to share a link with other KVIrc users.

* Since version 2.0.5 another 2 arrays have been added:
1) *Fictional Characters* that turn up to and make target nick to funny, surprising  and unexpected things.
2) Target nick also performs random actions against random things.  
  
Currently you can use the slap alias on its own without needing to use reslap.
This is why it is provided as a separate file to give you the choice.

Slapping own self is equally as fun, because we why not?
Enjoy this script and use wisely.

## Installation in KVIrc.

Download the slap.kvs and reslap.kvs anywhere you like.

### Via UI

1- Open Execute script (Ctrl+Shift+X)
2- Navigate to directory where you have the slap.kvs reslap.kvs
3- Select a script and Click OK.
4- Rinse and repeat for other file

### Via command line

1- Type /parse path/to/where/you/downloaded/monster-slap
2- Rinse and repeat for other file

#### Verifying installation:

Open Aliases Editor and confirm you have an Alias names slap.
Then open the Event Editor, find OnHighlight event and verify you have a reslap handler.

## Usage

 $ /slap nick
 $ /slap self
 $ /slap sshare
 $ /slap sshare nick
 $ /slap custom nick
 $ /slap uninstall
 
For in KVIrc usage with detailed explanation simply type:

 $ /slap

### License

This is released as a public domain licence.
https://creativecommons.org/publicdomain/zero/1.0/
