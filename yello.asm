        org 	#170

        dw	#0013, #000A       ; 10
        db	#BF, ' "'          ; PRINT "
.text	db      'Hello world', 0   ; Hello world
        dw	#0013, #0014       ; 20
        db	#C5                ; REM

.start
        ; we do a POP BC here because our hello world
        ; text translates at some point to a PUSH BC
        ; the rest of the instructions are harmless
        ; allowing us to avoid a jumpblock at the 
        ; beginning of the program.
        pop	bc                 
        ld	hl, text
.loop
        ld	a, (hl)
        or	a
        ret	z
        call	#BB5A
        inc	hl
        jr	loop