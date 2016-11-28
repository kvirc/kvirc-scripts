# Random CTCP Request Responder
This script is a original work by slaboff, fixed formatting and wording and minor fixes and commited by un1versal.

Thank you slaboff, it was nice working with you.

## About

This script is designed to capture the incoming CTCP requests listed below, and generate a random reply which is sent to the target user as a NOTICE.  
Using this method, no information other than your nick is sent to target user.

## Captured CTCP Requests:

 * PING
 * FINGER
 * VERSION
 * USERINFO
 * CLIENTINFO
 * SOURCE
 * TIME
 * AVATAR

Description:

When first installed, the script will scan for the currently set ignore CTCP request options and save their current status.  
That way if you remove the script with the supplied '*vremove*' it restores the prior settings.  
Using the **OnCTCPRequest** event, the incoming request is captured; the user name and request type is sent to '*vreply*'.  
This alias handles generating the random reply for each type request and sends it as a NOTICE to the target user.
 
## Installation in KVIrc.

Download the randomctcpreply.kvs into any directory you prefer.

### Via UI

1- Open *Execute script* (Ctrl+Shift+X)  
2- Navigate to directory where you have the randomctcpreply.kvs  
3- Select a script and click OK.

### Via command line

1- Type /parse path/to/where/you/downloaded/monster-slap/filename.kvs  
2- Rinse and repeat for other file

#### Verifying installation:

Open Aliases Editor and confirm you have an Alias names slap.
Then open the Event Editor, find OnHighlight event and verify you have a reslap handler.
