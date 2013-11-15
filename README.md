OS X System Color Picker Inside GrafX2!
---

I used to be a big fan of [Brilliance](http://en.wikipedia.org/wiki/Brilliance_%28graphics_editor%29) on the Amiga, and I love [GrafX2](http://code.google.com/p/grafx2/), but I've also gotten used to the OS X system color picker too much in recent years. Enter GrafX2's Brush Factory + Johan Nordberg's command line wrapper for the system color picker + some scripting attempt on my part, and BOOM: Awesomeness squared! (well, almost, see [Known Issues](#known-issues))

Tested on Mac OS X 10.7, 10.8 and 10.9, with GrafX 2.4.

## Installation

1. Download the binary of [color-pick](https://github.com/jnordberg/sublime-colorpick/) (from the zip only _bin/colorpick_ is needed), or compile it [yourself](https://github.com/jnordberg/color-pick).
2. Copy the _colorpick_ binary to its final place somewhere (I put it in _~/bin/_)
3. Copy _colorpicker.lua_ into your GrafX2 scripts folder (usually _/Applications/Grafx2.app/Contents/Resources/scripts/_)
4. if you put the _colorpick_ binary somewhere other than _~/bin/_ open _colorpicker.lua_ in a text editor, and set the path to your colorpick binary
5. Optional: in GrafX2 set a keyboard shortcut so you can invoke the script faster by right clicking the [FX] button, selecting _colorpicker.lua_ and clicking inside the area below the file listing (I use Ctrl+Shit+`)
6. Done :)

## Usage

Select the color you want to modify with the left mouse button (the script always works with the currently selected foreground color) and invoke the script.

## Known Issues

The script probably doesn't work well if GrafX2 is set to fullscreen mode; I cannot test this, because on my machine GrafX2 crashes whenever I try to set it to fullscreen.

If you switch to another app while the color picker is open GrafX2 will beachball when you switch back to it, and the color picker will disappear. To make it reappear, click its icon in the dock (it should look like a standard shell executable).

Sometimes when switching to another app and back while the color picker is open some keys also get stuck, in these cases press ESC, and it should return to normal.
