        org 	#170

        dw	#0022, #000A       ; 10
        db	#BF, '"'           ; PRINT"
.text	db      'Hello world"'
        db      #01, #01, #C0      ; :'
.start
        ld	hl, text
.loop
        ld	a, (hl)
        cp      '"'
        ret	z
        call	#BB5A
        inc	hl
        jr	loop