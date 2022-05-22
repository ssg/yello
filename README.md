# yello

Yello is a dual-mode Hello world application for Amstrad CPC series computers written
in both Locomotive BASIC and Z80 assembly.

# why

I think @c64skate showed me such a demo on MS-DOS months ago, and it's been in my mind
to do it on Amstrad CPC since.

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

- Compile the assembly. You'll see that the BASIC listing is changed.
- Save the BASIC program to disk/tape.
