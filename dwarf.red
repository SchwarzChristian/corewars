;name dwarf
;author Railion
;strategy starts two dwarfs proceeding in opposite directions
;assert CORESIZE % 4 == 0

	org	start

start	add.a	#4,	data
	mov	data,	*data
	jmp	start,	#0
data	dat	#0,	#0