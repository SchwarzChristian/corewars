;name impkiller
;author Railion
;strategy impkiller
;strategy observe a point and bomb a point behind several times 
;strategy if watched point was modified
;assert 1

	org	start

watch	dat.f	#0,	#0

for	5
	dat.f	#0,	#0
rof

start	sne.ab	#0,	watch
	jmp.b	start,	#0

bomb
for	5
	mov.i	data,	watch + 5
rof

	mov.i	data,	watch		;reset watch point
	jmp.b	start,	#0		;start over
data	dat.f	#0,	#0
