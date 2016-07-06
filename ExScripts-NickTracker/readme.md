## Script Purpose

This is a script designed for KVIrc, a client program.  I wrote this script from scratch,  it allows a user to track the previous nicks of other users based on usernames and IP hostmasks.

## How it works

The NickTracker script works by taking note of all names when a channel is synced, and saving nicks associated with visible hostmasks in a configuration file.  when a user joins the channel, they are also added to this list.  If the hostname that is visible matches a name already saved, it will display the name.  It also saves according to usernames.  Lastly, this script will check to see if any person in the room has the same hostmask as another person, and alert you to any clones.  It is designed to operate without much user interface, so it should be installed and left alone after setting up.

## Installation

To install, download the script file.
Open KVIrc and navigate to Menu > scripting > execute script, or push ctrl+shift+x.   Navigate to and select the script file and run it.  You can now delete the original downloaded script file if you desire.

## Operation

This script is primarly controled through right clicking names, through an added item on the pop-up, and clicking nicks in the main chat room, but ```/nicktracker``` can control it through alias if you read the script to know the commands.

type ```/nicktracker``` or click a name in a channel, or right click a name in the list to operate.

to remove script use ```/nicktracker uninstall```

(Legacy update changelog from before github)
*update 4-21-2013 - If you have a previous install and are updating, its recommended that you use /nicktracker clear or /nicktracker uninstall before installing this.  It should be noted that due to the changes in this script, updating will cause you to lose your database of names. However it should also respond more quickly int the future if multiple networks are frequented.
*last updated 4-26-13 - Added feature to to track entire name, and now tracks in pm on opening pm, no long falsly tracks * as a host.
updated 4-29-13 - added settings file, can set number of nicks to show now.
updated nov 20 2013 - added clone scanner, still needs controls.
updated nov 21 2013 - added controls.  "/nicktracker" to see basic controls.
changed output to be smaller.  || nov. 24 2013 - more small changes
updated jan 12 2014 - added more controls to "/nicktracker" menu, ability to just disable username tracking, disable
onchannelsync clone display, and to turn off ip tracking display on userjoins.  may rework some of these options later.

Please test this script and post any problems in the issues, or with this script.
