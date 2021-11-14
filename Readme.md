
A template project with a Makefile that supports sub-directories.

The Makefile will automatically detect and compile new source files
when they are added to the "src" and "res" directories.

Project directories
  - src: Main program source files (.c, .h, .s) can go here
  - res: Program graphics and audio source files (.c, .h, .s) can go here
  - obj: Compiled ROM (.gb) and debug files go in this directory


== Sprite and Background tiles from: ==

https://sondanielson.itch.io/gameboy-simple-rpg-tileset
"Licence is under CCA so you can use these assets both privately and commercially"
"You are free to use them as is or modify them to your liking. All i ask is you credit me if you do use them please :)"

# How to Compile

- replace `GBDK_HOME = /opt/gbdk/` so that GBDK_HOME points to  the gbdk dir on you machine.
- run `make`

to compile and directly see results in emulator. 

`rm -rf obj && make && /mnt/d/Gameboy\ Development/bgbw64/bgb64.exe obj/Snake.gbc` or something like that.