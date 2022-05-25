        org 	#170

        dw	#0022, #000A       ; 10
        db	#BF, '"'           ; PRINT"
.text	db      'Hello world"'
        db      #01, #01, #C0      ; :'
.start
        ; we do a POP BC here because our hello world
        ; text translates at some point to a PUSH BC
        ; the rest of the instructions are harmless
        ; allowing us to avoid a jumpblock at the 
        ; beginning of the program.
        ld	hl, text
.loop
        ld	a, (hl)
        cp      '"'
        ret	z
        call	#BB5A
        inc	hl
        jr	loop