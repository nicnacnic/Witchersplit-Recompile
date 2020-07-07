WitcherSplit Recompile By nicnacnic
Original Autosplitter By Phillipp the Cat
AutoHotkey By Gaztin
Livesplit Copyright (c) 2013-2017 Christopher Serr and Sergey Papushin

Please Note: The location of each program in each of the config files are only examples. The location 
of each program on your computer might be different.

----- Game Installs -----

It is recommended to use a separate install of the game if you plan to speedrun it. This is so you
can have your casual mods on your main Steam/GOG install and the vanilla game for use while speedrunning.
You can just rename your install folder to something like "The Witcher 3 Temp", then redownload the game
from Steam/GOG. Next, rename the fresh install you made to something like "The Witcher 3 Speedrunning", 
and rename your old install back to "The Witcher 3" so you can launch it normally through Steam/GOG.

If you are low on disk space, you can use your current install, but you will not have access to mods
if you want to play casually. A reinstall is highly recommended to make sure you're running vanilla.

For 1.06, you must have a separate install. Please use the downpatch instructions at the link below.
(https://docs.google.com/document/d/1bVfVkEUUDD3mnxgC6QpvfI3HGUjOPMZh0rNP6LcJBHQ/edit?usp=sharing)
The download size is about 40 GB.

I am not responsible if your run gets denied on the leaderboards due to mod use or cheating. If you are
having issues, contact information can be found at the bottom.

----- Initial Setup -----

You need to install a program called AutoHotkey, not included in this download. It can be found here.
(https://www.autohotkey.com/)

You can choose to use the included Livesplit download, or use your own install. When using your own
install, make sure to copy/paste the WitcherSplit.dll file included in the download into your Livesplit
components folder.

1) Open Livesplit. Create a new layout. In your layout, make sure you include the WitcherSplit component.
2) Save your Livesplit layout, then close Livesplit.
3) Open the AutoHotkeyStart.vbs file with a text editor.
4) Follow the instructions in the file. Make sure to save the file before continuing.
5) Open the InjectorRun.bat file with a text editor.
6) Put the location of your witcher3.exe in-between the quotes. Only use game versions 1.31 GOTY or 1.32.
7) Open TW3 Speedrun Launcher.bat with a text editor.
8) Fill in each SET command with the location of the program asked.

For any directory that has a space in the name (e.g. ...\The Witcher 3\...), please put that directory 
in quotes so it looks like this: ...\common\"The Witcher 3"\bin\x64\...

RunLocation: The location of InjectorRun.bat
LivesplitLocation: The location of a Livesplit.exe
AutoHotkeyLocation: The location of AutoHotkeyStart.vbs
Witcher3Folder: The location of your Witcher 3 install. Only use this for version 1.06.

ConfigFolder: The location of your Witcher 3 config folder.

CPSettings: The location of your Current Patch config settings.
OPSettings: The location of your Old Patch config settings.

If you are only running 1.31 GOTY or 1.32, there is no need to fill in the location for the Old Patch
stuff, and vice versa.

----- Config Setup -----

This launcher requires config files to work correctly, or else the game will reset your settings
every time you launch the game. This is to accommodate both 1.31 GOTY/1.32 and 1.06 at the same time, as
no matter the version, the config files are stored in the same place. And they aren't compatible with
each other either.

It is recommended that you make a folder in C:\Users\<username>\Documents with your configs. Launch the
game without the launcher, change your game settings to your desired options, then close the game. Next,
copy the three files located in C:\Users\<username>\Documents\The Witcher 3 to your newly created folder.
Finally just add the path to your newly created folder in the launcher config, as mentioned above.

Do not copy your gamesaves folder. You'll then have access to all your saves from both 1.31 GOTY/1.32
and 1.06 in one place. Just don't load 1.06 saves in a newer game version, or the save will be converted
and no longer work on 1.06.

----- Launching The Game -----

Whenever you want to launch your game, just run TW3 Speedrun Launcher.bat, and choose your game version.

The first time you launch your game, Windows might warn you of a dangerous file. Just ignore this and
run the launcher anyway. If you're not sure, feel free to open all the scripts with a text editor and 
check for dangerous code for yourself.

If running 1.31 GOTY or 1.32, the launcher will open Livesplit and ask you to load a layout file with 
the WitcherSplit component installed. Load your layout and splits, then save, and exit Livesplit.
This is for compatibility purposes. For some reason, the autosplitter will not work if this step was
not preformed. It will then copy/paste your config files and attempt to launch the autosplitter. Please 
give it some time, it is unstable and most likely not work on the first try. You'll know when it works 
when it says "done hooking" and your game will launch a few seconds later.

If running 1.06, the launcher will not launch the autosplitter as it's not compatible. It will instead
copy your game settings and launch the game.

----- Troubleshooting & Contact -----

Before you do anything, make sure you go over the initial setup instructions one more time. It's way too
easy to mistype a folder location, or forgetting to do a step.

If the injector.exe window says "ERROR: Unknown error in injected assembly code.", ignore it. This is
normal and your game will launch soon.

If the injector.exe window says "ERROR: The given process file does not exist.", check the InjectorRun.bat
file. Make sure the path to your 1.31 GOTY/1.32 install is correct.

If the launcher does not launch the game, check the InjectorRun.bat file. Make sure the path to your 
1.31 GOTY/1.32 install is correct.

If the launcher does not launch Livesplit, make sure the folder path in TW3SpeedrunLauncher.bat is correct.

If an error message pops up with the Autohotkey, make sure you typed your folder path correctly, and
chose a valid key to use from the Autohotkey website.

If the launcher does not work after a couple minutes of trying, relaunch the script and try again. Do
this multiple times. If it still doesn't work, the script just might not work on your system. 

If there are any other errors not mentioned here, have a question, or need help with installing and 
configuring the script, you can contact @nicnacnic in The Witcher 3 Speedrunning Discord. 

Have fun running!
-nicnacnic

----- Legal Stuff ------

Livesplit Copyright (c) 2013-2017 Christopher Serr and Sergey Papushin

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and 
associated documentation files (the "Software"), to deal in the Software without restriction, including 
without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the 
following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial 
portions of the Software.
