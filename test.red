;name impkiller mt
;author Railion
;strategy impkiller
;strategy multithreated imp killer
;assert 1

	org	begin
watch	dat.f	#0,	#0

for	20
	dat.f	#0,	#0
rof

begin	spl	start,	#0
	jmp	0,	#0
start	sne.ab	#0,	watch
	jmp.b	start,	#0

bomb
i	for	5
	mov.i	data,	watch + 5 + i
rof

	mov.i	data,	watch		;reset watch point
	jmp.b	start,	#0		;start over
data	dat.f	#0,	#0
