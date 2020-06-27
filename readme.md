# Windows to Linux cursor converter

This is a fork I made to work for me. The original doesn't even work. Also don't get your hopes up either.

## Dependencies

- ImageMagick
- xcursorgen aka xorg-xcursorgen (Arch)

## Prerequisites

Input files should be in `inputs/*.ani`
Output files will go to `outputs/CURSORNAME/CURSORNAME*`
You will be left with a x11 cursor file, a png file and a cfg file for xcursorgen. Can't be bothered to improve this further either c: 

## Usage

```
./convert.sh
```

## Post-processing
In short copy an existing cursor theme from `/usr/share/icons/` to `~/.icons` and start moving files from what you have made to that. Is not pretty and cannot really be automated, sorry.
