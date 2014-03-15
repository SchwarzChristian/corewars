;name double dwarf
;author Railion
;strategy starts two dwarfs proceeding in opposite directions
;assert CORESIZE % 4 == 0

	org	start

start	spl	dwarf2,	#0			; fork
dwarf1	add.a	#4,	data			; select next position
	mov	data,	*data			; bomb
jmp1	jmp	dwarf1,	#0			; back to start
data	dat	#CORESIZE / 2,	#CORESIZE / 2	; 
dwarf2	sub	#4,	data		    	; select next position
	mov	data,	@data			; bomb
jmp2	jmp	dwarf2,	#0			; back to start