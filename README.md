What is PSMAMEFOREVER?
===================
It is called Project Shadow Arcade Forever, it is a project that began in the middle of 2016, it is currently being used as a base system of version 0.245 [HBMAME], it focuses on combining the Arcade + HBMAME source code in order to achieve unique control systems had all the features in a single version, but to achieve all this it has been going through many stages of development, demo, prototype, beta until being able to get an official version.

What has been optimized in this version?
---------------------------------------

The command of all the game systems was optimized, now it is much more practical to be able to play, the command of the arrow keys "Up, Down, Left, Right" comes by default, this command is used to be able to move and to take actions For shooting or jumping and throwing grenades, the A, S, D key is used and the rest of the keys are used for certain kinds of games Z, X, C, Q, W, E.

Removed the black border on NeoGeo systems, now has full screen.

Removed warning screen.

Removed Startups, Loading, Decryption screen texts.

The Arcade64 “GUI” was modernized with new icons, a custom default configuration has been made.

It is already pre-configured, enforce aspect ratio is disabled, full screen mode and tricks are already enabled by default.

Two new folder sections called “config” and “support” were added that independently group the configurations + extra content, so that everything is kept in order in a single folder.

In the Config folders it is incorporated by:

Audio, Bgfx, Cfg, Comments, Crosshair, Diff, Docs, Folders, Glsl, Gui, Hash, Hlsl, Ini, Inp, Language, Nvram, Plugins, Share, Sta and m1fx.exe

In the support folders it is incorporated by:

Artpreview, Artwork, Bosses, Cabinets, Cheat, Cpanel, Ctrlr, Flyers, Gameover, Howto, Icons,
Logo, Manuals, Marquees, Pcb, Roms, Samples, Scores, Select, Snap, Titles, Versus, Video, Cheat.7z, Command.dat, Gameinit.dat, Hiscore.dat, History.dat, Mameinfo.dat, Story. dat and Sysinfo.dat


How to compile
--------------

To be able to compile this version we will need the source codes, for this we will place it in the folder docs/Source Code [HBMame Old]/hbmame-tag245.7z.001, once located we will start to decompress the files it will take a few minutes, once decompressed we will have a folder with the name hbmame-tag245.7z, we will rename it to “src”, now we will paste the remains of the files that we have left “scripts, src and makefile” in the src folder, the system will ask to replace it we will say yes .

Now we will locate the folder where the compiler that we want to use is located, being msys64. Now we will paste the “src” folder.

And we will apply this command to start the compilation, this command is for Windows 64Bit system:
```
make PTR64=1 TARGET=mame OSD=winui NOWERROR=1 STRIP_SYMBOLS=1
```

I recommend downloading the compilation tool, whether it is the version msys64-32 that is from the year 2020-11-03, since this version is much more comfortable to compile for this version.

The build tools will be located on the MAMEDEV github website:
https://github.com/mamedev/buildtools/releases
