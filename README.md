# yello

Yello is a dual-mode Hello world application for Amstrad CPC series computers written
in both Locomotive BASIC and Z80 assembly.

<img width="567" alt="screenshot of yello in action on a CPC emulator" src="https://user-images.githubusercontent.com/241217/169716728-6cb9bc79-98e2-4c8a-aa6b-6247bd6e64d9.png">


# why

I think [@c64skate](https://github.com/c64skate) showed me such a demo on MS-DOS months ago, and it's been on my mind
to do it on Amstrad CPC since. I used this Sunday as an opportunity to do it. This is possibly
one of the shortest implementations possible (19-bytes, 11 bytes being the text) as the text is shared between two implementations.

Hint: you might be able to squeeze some bytes by putting both REM and PRINT on the same line.

# building

It's not enough to generate relevant BASIC instructions using assembler, because BASIC
interpreter keeps a "program length" somewhere that I don't know. In order to build
the code correctly I resorted to this hack:

- Write this program on BASIC first:

```basic
10 PRINT "Hello world
20 REM 123456789012
```

so we effectively update the program length, wherever it is.

- Compile the assembly (I used WinApe's assembler). You'll see that the BASIC listing is changed.
- Save the BASIC program to disk/tape.

Hypothetically, you should be able to hex edit a DSK file and change the binary type to BASIC, but
raw DSK editing capabilities are really cumbersome on WinApe, and I didn't have any other tools.
