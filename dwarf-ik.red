;name dwarf ik
;author Railion
;strategy dwarf with impkiller
;assert CORESIZE % 4 == 0

BOMBS	equ	5			; bombs to throw
DOFF	equ	MINDISTANCE - MINDISTANCE % 4	; start bombing at

	org	start

watch	dat.f	#0,	#0		; point to look for imps

for	BOMBS
	dat.f	#0,	#0		; let some space for bombing
rof

start	sne.i	imp,	watch		; check for imps
	jmp.b	bomb,	#0		; bomb if found
	jmp.b	2,	#0		

ddata	dat.f	#DOFF,	#DOFF

	add.ab	#4,	ddata
	mov.i	data,	@ddata
	jmp.b	2,	#0

	dat.f	#0,	#0

	sub.a	#4,	ddata
	mov.i	data,	*ddata
	jmp.b	start,	#0

	dat.f	#0,	#0

imp	mov	0,	1		; just to compare with
bomb	mov.i	data,	watch + BOMBS
for	BOMBS - 1
	mov.i	data,	watch + BOMBS
rof

	mov.i	data,	watch		; reset watch point
	jmp.b	start,	#0		; start over
data	dat.f	#0,	#0
