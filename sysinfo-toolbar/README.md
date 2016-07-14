### About SysInfo Toolbar

This is a toolbar/alias script ```sysinfotoolbar.kvs``` aka *SysInfo Toolbar*, and as the name may indicate, it provides a comprehensive way to output system information about various hardware components in your machine and your OS.  
SysInfo Toolbar requires [inxi](https://github.com/smxi/inxi) and [lm-sensors](https://github.com/groeck/lm-sensors/issues/3) to operate fully.

SysInfo Toolbar is an original work from slaboff modified to include [SysInfo](https://github.com/un1versal/my-kvirc-scripts/tree/master/aliases) script

SysInfo Toolbar boasts fully and easily configurable output colors, saved to configuration file **siColorcfg** and read at KVIrc startup.

>##### Hard dependency on  **inxi** 2.2 or newer  
>##### Soft dependency on  **lm-sensors** installed and configured for sen (sensors) to operate.

### Usage:

:black_small_square:  For alias usage, type ```/sys``` and press ```[Enter]``` to get a list of supported switches with explanations on what each action does.  
:black_small_square:  Click the ![Chip + info overlay](../sysinfo-toolbar/pics/Linux32.png) icon on toolbar button

>### OS availability

At this time *SysInfo Toolbar* is only available for UNIX-like / Linux systems at this time.

### SysInfo Toolbar Features:

>##### System:

:black_small_square:  CPU information  
:black_small_square:  Network Card information  
:black_small_square:  Motherboard information  
:black_small_square:  Graphics Card information  
:black_small_square:  Audio Card information  
:black_small_square:  Operative system information  
:black_small_square:  Output HDD/SSD information  
:black_small_square:  Sensors information *requires lm-sensors

>##### Sharing information

:black_small_square:  Share a link to SysInfo Toolbar with a specific KVIrc user  
:black_small_square:  Share a link to SysInfo Toolbar with other KVIrc users

### Installation

:mans_shoe:  [Click for inxi installation details](https://code.google.com/archive/p/inxi/wikis/Installation.wiki)  

:mans_shoe:  lm-sensors installation should be available from your favorite distro's package manager. Else have a look at [This search](https://duckduckgo.com/?t=disconnect&x=%2Fhtml&q=install+lm-sensors&ia=web)  

:mans_shoe:  Download the the *sysinfo-toolbar* folder and its contents to your local drive and place e.g. on your Desktop.

>##### Contents are: 

:ballot_box_with_check: A **sysinfotoolbar.kvs** script
:ballot_box_with_check: A pics folder with a Linux16.png and Linux32.png images.

>##### Via UI

:mans_shoe:  In KVIrc press ```Ctrl+Shift+X```  

:mans_shoe:  Browse to your Desktop and select the **sysinfotoolbar.kvs** script  

:mans_shoe:  Click Open

>##### Via command-line

:mans_shoe:  In KVIrc input line type ```/parse path/to/sysinfotoolbar.kvs```  

:mans_shoe:  Press Enter

### Automatic Uninstallation

The SysInfo Toolbar installer should be able to remove all installed components easily and it provides visual confirmation on active context.. 

>##### Via command-line

:mans_shoe:  In KVIrc input line type ```/sys uninstall```  

:mans_shoe:  Press Enter

### License

[![my kvirc scripts GPLv2](https://img.shields.io/badge/sysinfo-toolbar-GPLv2-blue.svg)](https://github.com/kvirc/kvirc-scripts/blob/master/LICENCE)
