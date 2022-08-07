; dz80 - v1.04 - Z80 Disassembler by LoveBug - ladybug.asm - Fri Jan 22 19:15:57 2021

.org $0000


J0000:
	jp J5018

T0003:
	db $69, $30

T0005:
	db $81

T0006:
	db $00, $10

T0008:
	db $14

T0009:
	db $02

T000a:
	db $80, $10, $98, $01, $80

T000f:
	db $4c

T0010:
	db $c0, $02

T0012:
	db $00, $c4, $40, $22, $00

T0017:
	db $88, $00, $12, $92, $82, $60

T001d:
	db $12, $03

T001f:
	db $00

T0020:
	db $00

T0021:
	db $20, $82

T0023:
	db $00, $00, $00, $a0, $40, $00, $30

T002a:
	db $02, $68

T002c:
	db $40, $00, $00, $00, $10

T0031:
	db $00

T0032:
	db $00, $00, $02, $10, $00, $20

J0038:
	jp J019e
	db $68, $42, $80

T003e:
	db $48, $00

T0040:
	db $14, $80, $08, $71, $25, $29, $05, $08, $0d, $05, $00, $11, $70, $80, $45, $03
	db $4c, $8e, $04, $4d, $41, $21, $00, $05, $08, $0d, $89, $01, $85, $03

T005e:
	db $25, $00

T0060:
	db $20, $01, $28, $21, $40, $00

J0066:
	jp J0234
	db $01, $00, $08, $20, $08, $01, $00, $10, $00, $30, $40, $00, $00, $09, $00, $20
	db $01, $20, $00, $20, $30, $48, $02

J0080:
	ld a, ($6027)
	inc a
	jp J3b9b
	db $21, $88, $00, $46, $45, $9a, $80, $09, $c0, $82, $96, $42, $81, $00, $83, $8a
	db $58, $80, $10, $62, $04, $86, $2a, $c3, $01, $00, $10, $00, $90, $a0, $00, $10
	db $50, $22, $10, $50, $00, $60, $00, $02, $80, $10, $00, $1a, $82, $41, $a0, $0b
	db $04, $00, $40, $00, $08, $00, $01, $00, $40, $50, $05, $40, $90, $01, $01, $89
	db $0c, $0c, $2b, $04, $40, $0e, $14, $45, $04, $11, $20, $04, $04, $04, $01, $89
	db $55, $0c, $02, $29, $40, $83, $d0, $90, $07, $00, $04, $02, $00, $20, $41, $08
	db $40, $40, $41, $29, $00, $00, $01, $29, $60, $20, $04, $20, $09, $08, $00, $08
	db $02, $00, $00, $08, $01, $41, $00, $20, $20

J0100:
	ld sp, $67ff
	im 1
	di
	ld a, ($8000)
	call J176e
	call J1ad4
	call J2b06
	call J1aba
	call J1755
	call J02c6

J011b:
	ld sp, $67ff
	xor a
	ld ($a000), a
	call J1aba
	call J5028
	call J2607
	ld b, $03

J012d:
	push bc
	ld b, $03

J0130:
	xor a
	call J2863
	call J5030
	inc a
	call J2863
	call J5030
	djnz J0130
	ld hl, $9002
	bit 6, (hl)
	pop bc
	jp z, J018c
	dec b
	jr nz, J012d
	call J5038
	call J5020
	ld hl, $605f
	set 4, (hl)
	ld hl, $0ef8	; could be a data table address, label T0ef8: created
	ld ($61d8), hl
	nop
	nop
	nop
	nop
	nop
	call J1f36
	ld ($6066), a
	xor a
	ld ($6067), a
	ld ($6065), a
	ld ($606e), a
	ld ($606f), a
	jp J03f7

J0178:
	ld hl, $601c
	xor a
	ld (hl), a
	ld hl, $6021
	ld (hl), a
	call J3ccd
	ld hl, $605f
	res 4, (hl)
	jp J011b

J018c:
	ld a, $09
	ld ($605e), a
	jp J035f
	db $c5, $f5, $06, $1f, $cd, $28, $05, $f1, $c1, $c9

J019e:
	push af
	push hl
	push bc
	ld a, ($61cd)
	cp $00
	jp nz, J022b
	ld a, ($605b)
	cp $00
	jp nz, J022b
	ld a, $03
	ld ($605b), a
	ld a, $ff
	ld hl, $9003
	rrd
	cpl
	ld hl, $0be2	; could be a data table address, label T0be2: created
	sla a
	ld c, a
	ld b, $00
	add hl, bc
	push de
	ex de, hl
	srl c
	ld hl, $6830
	add hl, bc
	inc (hl)
	ld a, (de)
	cp (hl)
	jp z, J01d9
	pop de
	jp J0226

J01d9:
	ld (hl), $00
	inc de
	ld a, (de)
	pop de
	jp J01fc
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

J01fc:
	ld hl, $605e
	add (hl)
	ld (hl), a
	ld b, a
	ld a, ($d321)
	cp $1d
	jr nz, J0211
	ld a, b
	cp $0a
	jr nc, J0211
	ld ($d361), a

J0211:
	ld a, ($605f)
	bit 0, a
	jr nz, J0226
	ld hl, $0008	; could be a data table address, label T0008: created
	add hl, sp
	ld sp, hl
	ld bc, $035f	; could be a data table address, label T035f: created
	push bc
	ld hl, $fffa
	add hl, sp
	ld sp, hl

J0226:
	ld hl, $6001
	set 4, (hl)

J022b:
	ld a, ($8000)
	ei
	pop bc
	pop hl
	pop af
	reti

J0234:
	push af
	push hl
	push bc
	ld a, ($61cd)
	cp $00
	jp nz, J02c1
	ld a, ($605b)
	cp $00
	jp nz, J02c1
	ld a, $03
	ld ($605b), a
	ld a, $ff
	ld hl, $9003
	rld
	cpl
	ld hl, $0be2	; could be a data table address, label T0be2: created
	sla a
	ld c, a
	ld b, $00
	add hl, bc
	push de
	ex de, hl
	srl c
	ld hl, $6830
	add hl, bc
	inc (hl)
	ld a, (de)
	cp (hl)
	jp z, J026f
	pop de
	jp J02bc

J026f:
	ld (hl), $00
	inc de
	ld a, (de)
	pop de
	jp J0292
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

J0292:
	ld hl, $605e
	add (hl)
	ld (hl), a
	ld b, a
	ld a, ($d321)
	cp $1d
	jr nz, J02a7
	ld a, b
	cp $0a
	jr nc, J02a7
	ld ($d361), a

J02a7:
	ld a, ($605f)
	bit 0, a
	jr nz, J02bc
	ld hl, $0008	; could be a data table address, label T0008: created
	add hl, sp
	ld sp, hl
	ld bc, $035f	; could be a data table address, label T035f: created
	push bc
	ld hl, $fffa
	add hl, sp
	ld sp, hl

J02bc:
	ld hl, $6001
	set 4, (hl)

J02c1:
	pop bc
	pop hl
	pop af
	retn

J02c6:
	xor a
	ld ($605b), a
	ld ($a000), a
	ld ($61c9), a
	call J5040
	ld ($61cd), a
	ld ($605e), a
	jp J4957

J02dc:
	call J02f9
	call J030a
	xor a
	ld hl, $6068
	ld (hl), a
	inc hl
	ld (hl), a
	inc hl
	ld (hl), a
	ld hl, $6000
	ld b, $1c

J02f0:
	ld (hl), a
	inc hl
	djnz J02f0
	call J032f
	ei
	ret

J02f9:
	ld b, $09
	ld hl, $6073
	xor a

J02ff:
	inc a
	ld (hl), a
	xor a
	inc hl
	ld (hl), a
	inc hl
	ld (hl), a
	inc hl
	djnz J02ff
	ret

J030a:
	ld hl, $d380
	ld b, $09

J030f:
	push bc
	ld b, $02
	ld a, $ff

J0314:
	ld (hl), a
	inc hl
	djnz J0314
	ld ix, $2efc	; could be a data table address, label T2efc: created
	ld b, $09

J031e:
	ld a, (ix + $00)
	inc ix
	ld (hl), a
	inc hl
	djnz J031e
	ld a, $ff
	ld (hl), a
	inc hl
	pop bc
	djnz J030f
	ret

J032f:
	ld b, $32
	xor a
	ld hl, $601c

J0335:
	ld (hl), a
	inc hl
	djnz J0335
	ret

J033a:
	push af
	ld a, ($605b)
	cp $00
	jr z, J0346
	dec a
	ld ($605b), a

J0346:
	ld a, ($61cd)
	cp $00
	jr z, J034e
	dec a

J034e:
	ld ($61cd), a
	ld a, ($9000)
	bit 7, a
	jr nz, J035d
	ld a, $05
	ld ($61cd), a

J035d:
	pop af
	ret

J035f:
	ld hl, $605f
	set 0, (hl)
	res 4, (hl)
	ld hl, $601c
	xor a
	ld (hl), a
	ld hl, $6021
	ld (hl), a
	call J3ccd
	xor a
	ld ($a000), a
	call J2525
	ld a, $01
	ld ($61e2), a
	xor a

J037f:
	ld ($61c8), a
	ld bc, $0017	; could be a data table address, label T0017: created

J0385:
	ld hl, $9000
	bit 5, (hl)
	jr z, J03b3
	ld a, ($605e)
	cp $02
	jr c, J0397
	bit 6, (hl)
	jr z, J03cb

J0397:
	push bc
	call J1ca5
	call J27e5
	call J2755
	call J2d5a
	pop bc
	dec bc
	ld a, b
	or c
	jr nz, J0385
	ld a, ($61c8)
	call J2863
	cpl
	jr J037f

J03b3:
	ld a, ($605f)
	res 1, a
	ld ($605f), a
	call J1f36
	ld ($6066), a
	xor a
	ld ($6067), a
	ld hl, $605e
	dec (hl)
	jr J03e1

J03cb:
	ld a, ($605f)
	set 1, a
	ld ($605f), a
	call J1f36
	ld ($6066), a
	ld ($6067), a
	jp J4960
	db $35, $35

J03e1:
	xor a
	jp J496c

J03e5:
	ld hl, $6068
	ld (hl), a
	inc hl
	ld (hl), a
	inc hl
	ld (hl), a
	inc hl
	ld (hl), a
	inc hl
	ld (hl), a
	inc hl
	ld (hl), a
	inc hl
	ld (hl), a
	inc hl
	ld (hl), a

J03f7:
	ld a, $ff
	ld hl, $609d
	ld b, $06

J03fe:
	ld (hl), a
	inc hl
	djnz J03fe
	xor a
	ld ($609f), a
	ld ($60a2), a
	ld hl, $d61c
	ld ($6063), hl
	ld hl, $605f
	res 2, (hl)
	call J1aba
	call J1be5
	xor a
	ld ($6060), a
	cpl
	ld ($6062), a
	ld a, $0c
	ld ($6061), a
	call J1cc6
	call J2144
	call J1d42
	call J1d64
	call J1d77
	call J1dd1
	call J1e8b
	ld b, $06
	ld a, $05
	ld hl, $d5a1
	call J1e7d
	call J1ee0
	call J2826
	ld b, $05
	ld a, $01
	ld hl, $d4e1
	call J1e7d
	ld hl, $d0e1
	ld (hl), $2a
	add hl, de
	call J1f44
	ld ix, $601c
	ld (ix + $00), $82
	ld (ix + $01), $08
	ld (ix + $02), $0f
	call J1f7f
	ld ix, a
	inc bc
	ld ix, b
	inc b
	call J1fc7
	call J178f
	ld (ix + $00), $81
	jp J04d5

J0485:
	ld ix, $6070
	ld a, r	; read z80 dram refresh counter, bits 6-0 count, bit 7 remains unchanged. usually used as a random number generator
	ld c, $00
	rra
	rl c
	ld ix, c
	nop
	ld a, r	; read z80 dram refresh counter, bits 6-0 count, bit 7 remains unchanged. usually used as a random number generator
	and $07
	rra
	adc a, $02
	cp $05
	jr nz, J04a8
	ld a, ($61e2)
	cp $00
	ld a, $05
	jr nz, J04a8
	inc a

J04a8:
	ld ix, a
	ld bc, $5fed	; could be a data table address, label T5fed: created
	rra
	and $03
	rra
	adc a, $07
	cp $08
	jr nz, J04d1
	ld b, a
	call J1f36
	inc a
	ld c, a
	ld a, ($6065)
	cp $00
	jr z, J04c9
	ld a, ($6067)
	jr J04cc

J04c9:
	ld a, ($6066)

J04cc:
	cp c
	ld a, b
	jr c, J04d1
	inc a

J04d1:
	ld ix, a
	ld (bc), a
	ret

J04d5:
	xor a
	ld ($61c9), a
	call J33cf
	call J1d77
	call J0485
	call J28fe
	call J1fc7
	call J178f
	ld a, $81
	ld ($6021), a
	call J30f4
	call J311c
	call J3154
	call J1d77
	call J1ef4
	ld hl, $d101
	call J1f44
	ld hl, $601f
	call J1f7f
	ld (hl), a
	inc hl
	ld (hl), b
	call J1fc7
	call J178f
	ld b, $b4
	call J0528
	call J2ac1
	xor a
	ld ($6021), a
	call J1fc7
	call J178f
	jr J0541

J0528:
	ld hl, $9001
	call J2d5a

J052e:
	bit 7, (hl)
	jr z, J052e

J0532:
	bit 7, (hl)
	jr nz, J0532
	push bc
	call J033a
	call J178f
	pop bc
	djnz J0528
	ret

J0541:
	call J2144
	call J33e3
	call J215c
	call J3192
	call J30da
	call J30cf
	call J3144

J0556:
	ld a, $03
	ld ($619b), a
	call J2b15
	call J30f4
	call J311c
	call J3154
	call J1ef4
	ld hl, $d101
	call J1f44
	ld ix, $601c
	ld (ix + $00), $82
	ld (ix + $01), $08
	ld (ix + $02), $0f
	call J1f7f
	ld ix, a
	inc bc
	ld ix, b
	inc b
	call J1fc7
	call J178f
	ld (ix + $00), $81

J0593:
	ld hl, $d61c
	ld ($6063), hl
	xor a
	ld ($6060), a
	cpl
	ld ($6062), a
	ld a, $0c
	ld ($6061), a
	call J1cc6
	call J05ae
	jr J05d1

J05ae:
	ld de, $0005	; could be a data table address, label T0005: created
	ld hl, $602b
	ld c, $00

J05b6:
	ld a, (hl)
	and $03
	jr z, J05c3
	add hl, de
	inc c
	cp $04
	jr nz, J05b6
	jr J05d0

J05c3:
	call J3061
	call J1fc7
	call J178f
	ld (ix + $00), $81

J05d0:
	ret

J05d1:
	ld a, ($6065)
	cp $00
	jr z, J05dd
	ld hl, $6067
	jr J05e0

J05dd:
	ld hl, $6066

J05e0:
	dec (hl)
	ld a, (hl)
	push af
	call J1d77
	pop af
	ld ix, $6026
	ld (ix + $00), $42
	ld (ix + $02), $1f
	sla a
	sla a
	sla a
	sla a
	add a, $08
	ld ix, a
	ld bc, $36dd	; could be a data table address, label T36dd: created
	inc bc
	nop
	ld (ix + $04), $00
	jp J0621

J060b:
	call J2ac1
	xor a
	ld ($61c9), a
	call J1e4c
	call J2144
	call J215c
	call J3592
	jp J0556

J0621:
	ld hl, $6000
	set 6, (hl)
	ld hl, $6027
	xor a
	ld d, $58
	ld b, $0f

J062e:
	djnz J0636
	cpl
	call J1e4c
	ld b, $0f

J0636:
	push af
	push bc
	push hl
	push de
	call J1fc7
	call J178f
	pop de
	pop hl
	pop bc
	ld a, (hl)
	cp d
	jr z, J064b
	inc (hl)

J0648:
	pop af
	jr J062e

J064b:
	cp $56
	jr z, J0659
	ld a, $82
	ld ($6026), a
	inc hl
	ld d, $56
	jr J0648

J0659:
	pop af
	ld a, $ff
	call J1e4c
	jp J0730

J0662:
	call J33cf
	ld hl, $6066
	ld a, ($6065)
	cp $00
	jr z, J0672
	ld hl, $6067

J0672:
	inc (hl)
	inc (hl)
	push hl
	call J0485
	pop hl
	dec (hl)
	dec (hl)
	call J28fe
	call J1fc7
	call J178f
	ld a, $81
	ld ($6021), a
	call J30f4
	call J311c
	call J3154
	call J1d77
	call J1ef4
	ld hl, $d101
	call J1f44
	ld hl, $601f
	call J1f7f
	ld (hl), a
	inc hl
	ld (hl), b
	call J1fc7
	call J178f
	ld b, $b4
	call J0528
	call J2ac1
	xor a
	ld ($6021), a
	call J1fc7
	call J178f
	call J2144
	call J33e3
	call J215c
	call J3192
	call J3144
	call J3154
	call J30da
	call J30cf
	call J2b15
	xor a
	ld ($6060), a
	cpl
	ld ($6062), a
	ld a, $0c
	ld ($6061), a
	call J1cc6
	ld hl, $d61c
	ld ($6063), hl
	call J1ef4
	ld hl, $d101
	call J1f44
	ld ix, $601c
	ld (ix + $00), $82
	ld (ix + $01), $08
	ld (ix + $02), $0f
	call J1f7f
	ld ix, a
	inc bc
	ld ix, b
	inc b
	call J1fc7
	call J178f
	ld (ix + $00), $81
	call J05ae
	ld hl, $6026
	ld (hl), $82
	inc hl
	ld (hl), $58
	inc hl
	ld (hl), $56
	call J1fc7
	call J178f

J0730:
	call J35e3
	ld ix, $61b6
	ld (ix + $00), $60
	ld (ix + $01), $00
	ld (ix + $02), $00
	ld (ix + $03), $b4
	xor a
	ld ($61b5), a
	ld ($61b4), a
	ld ($61e1), a
	ld hl, $61ce
	ld b, $05
	xor a

J0757:
	ld (hl), a
	inc hl
	djnz J0757
	ld hl, $605f
	set 7, (hl)
	ld hl, $6196
	ld (hl), $58
	inc hl
	ld (hl), $56
	inc hl
	ld (hl), $08
	ld a, $08
	ld ($6198), a
	ld de, $0000	; could be a data table address, label T0000: created
	ld ($6199), de
	ld hl, $605f
	res 6, (hl)
	call J45fd
	call J463a
	jr J078a

J0784:
	call J1fc7
	call J178f

J078a:
	call J2d5a
	ld hl, $605f
	bit 4, (hl)
	jr nz, J079c
	ld hl, $9002
	bit 3, (hl)
	jp z, J095e

J079c:
	call J39b1
	call J3956
	ld a, ($61e1)
	cp $00
	jr nz, J07ac
	call J407e

J07ac:
	call J4406
	call J35ff
	call J3a99
	ld b, $04
	ld hl, $602b
	ld de, $0005	; could be a data table address, label T0005: created

J07bd:
	bit 1, (hl)
	jp nz, J07c8

J07c2:
	add hl, de
	djnz J07bd
	jp J07ee

J07c8:
	push hl
	inc hl
	inc hl
	ld a, ($6028)
	sub (hl)
	jr nc, J07d3
	neg

J07d3:
	cp $09
	jp nc, J07ea
	dec hl
	ld a, ($6027)
	sub (hl)
	jr nc, J07e1
	neg

J07e1:
	cp $09
	jp nc, J07ea
	pop hl
	jp J088b

J07ea:
	pop hl
	jp J07c2

J07ee:
	call J3cb0
	and $0f
	cp $0f
	jr nz, J0814
	ld ix, $6021
	bit 1, (ix + $00)
	jp z, J0814
	ld a, (ix + $01)
	cp (ix + $06)
	jp nz, J0814
	ld a, (ix + $02)
	cp (ix + $07)
	jp z, J0898

J0814:
	ld a, ($605f)
	bit 7, a
	jr nz, J084b
	ld a, ($6027)
	ld d, a
	ld a, ($6028)
	ld e, a
	ld a, ($6026)
	srl a
	srl a
	srl a
	srl a
	cp $02
	jr z, J083f
	jr c, J0843
	cp $04
	jr z, J0846
	ld a, e
	sub $04
	ld e, a
	jp J086e

J083f:
	dec e
	jp J086e

J0843:
	inc d
	inc d
	inc d

J0846:
	inc d
	inc d
	jp J086e

J084b:
	ld a, ($6028)
	ld hl, $6197
	sub (hl)
	jp nc, J0857
	neg

J0857:
	cp $05
	jp nc, J0888
	ld a, ($6027)
	dec hl
	sub (hl)
	jp nc, J0866
	neg

J0866:
	cp $05
	jp nc, J0888
	ld d, (hl)
	inc hl
	ld e, (hl)

J086e:
	call J3c0a
	ld a, (hl)
	cp $e5
	jp z, J094a
	cp $63
	jp z, J0aea
	cp $59
	jr c, J0888
	cp $62
	jp c, J09fe
	jp z, J09cc

J0888:
	jp J0784

J088b:
	res 0, (hl)
	res 1, (hl)
	call J1fc7
	call J178f
	jp J0af3

J0898:
	ld hl, $6021
	res 0, (hl)
	res 1, (hl)
	ld hl, $6026
	res 1, (hl)
	ld hl, $6000
	set 1, (hl)
	call J1fc7
	call J178f
	ld a, $05
	ld ($61e1), a
	call J1f26
	cp $13
	jr c, J08bd
	ld a, $12

J08bd:
	push af
	dec a
	ld hl, $0c79	; could be a data table address, label T0c79: created
	ld b, $00
	ld c, a
	add hl, bc
	ld c, (hl)
	ld a, ($6065)
	cp $00
	jr nz, J08d4
	ld ix, $6068
	jr J08d8

J08d4:
	ld ix, $606b

J08d8:
	ld a, (ix + $01)
	add c
	daa
	ld ix, a
	ld bc, $7edd
	nop
	adc b
	daa
	ld ix, a
	nop
	ld a, ($6065)
	cp $00
	jr nz, J08f4
	ld hl, $d2c4
	jr J08f7

J08f4:
	ld hl, $d2c3

J08f7:
	call J1e06
	pop af
	ld de, $0400	; could be a data table address, label T0400: created
	dec a
	ld b, a
	add a, $c6
	ld hl, $d1f0
	ld (hl), a
	add hl, de
	ld (hl), $05
	ld a, b
	cp $06
	jr c, J0912
	ld a, $d9
	jr J0914

J0912:
	ld a, $d8

J0914:
	ld hl, $d210
	ld (hl), a
	add hl, de
	ld (hl), $05
	ld b, $20

J091d:
	push bc
	call J1fc7
	call J178f
	call J2d5a
	pop bc
	djnz J091d
	ld hl, $d1f0
	ld (hl), $32
	ld de, $0400	; could be a data table address, label T0400: created
	add hl, de
	ld (hl), $00
	ld hl, $d210
	ld (hl), $ff
	add hl, de
	ld (hl), $00
	ld hl, $605f
	set 6, (hl)
	ld hl, $6026
	set 1, (hl)
	jp J0784

J094a:
	ld a, $ff
	ld (hl), a
	ld e, $00
	call J3c2c
	ld hl, $6000
	set 3, (hl)

J0957:
	ld hl, $60a9
	dec (hl)
	jp nz, J0784

J095e:
	call J3f2f
	ld hl, $6001
	set 1, (hl)
	call J3f2f

J0969:
	ld hl, $619b
	dec (hl)
	jr nz, J098d
	ld a, ($605f)
	bit 1, a
	jr z, J098d
	ld a, ($6065)
	cp $00
	jr z, J0986
	ld a, ($6066)
	cp $00
	jr z, J098d
	jr J099c

J0986:
	ld a, ($6067)
	cp $00
	jr nz, J099c

J098d:
	call J3ccd
	call J1fc7
	call J178f
	call J4054
	jp J0662

J099c:
	call J3a99
	call J3cf3
	call J3510
	call J3ccd
	ld hl, $6026
	set 1, (hl)
	call J2c74
	ld b, $80
	call J0528
	ld a, ($6065)
	cpl
	ld ($6065), a
	call J3fcd
	ld hl, $605f
	bit 2, (hl)
	jp z, J04d5
	res 2, (hl)
	jp J060b

J09cc:
	call J3fe5
	call J3d2b
	call J3d9f
	call J3c2c
	call J3dbd
	ld a, e
	cp $01
	jr nz, J09fb
	ld a, ($6065)
	cp $00
	jr nz, J09ed
	ld hl, $609f
	inc (hl)
	jr J09f1

J09ed:
	ld hl, $60a2
	inc (hl)

J09f1:
	ld a, (hl)
	cp $04
	jr c, J09f8
	ld (hl), $03

J09f8:
	call J3154

J09fb:
	jp J0957

J09fe:
	call J3fe5
	call J3d9f
	ld a, e
	cp $03
	jr z, J0a0d
	cp $02
	jr nz, J0a11

J0a0d:
	ld a, (hl)
	call J3e5e

J0a11:
	push de
	call J3d2b
	pop de
	call J3c2c
	call J3dbd
	ld a, e
	cp $03
	jr z, J0a25
	cp $02
	jr nz, J0a37

J0a25:
	call J3e96
	ld a, (hl)
	res 7, a
	cp $00
	jr z, J0a3a
	inc hl
	ld a, (hl)
	and $1f
	cp $00
	jr z, J0a7c

J0a37:
	jp J0957

J0a3a:
	xor a
	ld hl, $61e2
	cp (hl)
	jr z, J0a42
	dec (hl)

J0a42:
	jp J4989

J0a45:
	ld hl, $6000
	set 7, (hl)
	ld b, $00
	ld c, b
	inc b
	call J0ac2
	call J5010
	ld b, $00
	ld c, $00
	call J1bfc
	ld a, $ff
	ex af, af'
	ld hl, $609d
	ld a, ($6065)
	cp $00
	jr z, J0a6b
	ld hl, $60a0

J0a6b:
	ex af, af'
	ld (hl), a
	ld hl, $6001
	set 4, (hl)
	ld hl, $605e
	inc (hl)
	call J2826
	jp J0969

J0a7c:
	call J3f2f
	ld hl, $6000
	set 7, (hl)
	ld b, $01
	ld c, b
	call J0ac2
	call J5008
	ld b, $00
	ld c, $01
	call J1bfc
	ld a, $ff
	ex af, af'
	ld hl, $609e
	ld a, ($6065)
	cp $00
	jr z, J0aa4
	ld hl, $60a1

J0aa4:
	ex af, af'
	ld (hl), a
	ld hl, $6001
	set 6, (hl)
	ld a, ($6065)
	cp $00
	jr nz, J0ab8
	ld hl, $6066
	inc (hl)
	jr J0abc

J0ab8:
	ld hl, $6067
	inc (hl)

J0abc:
	call J1d77
	jp J0969

J0ac2:
	push bc
	call J1fc7
	call J178f
	pop bc
	ld a, ($6059)
	and $0f
	jr nz, J0add
	ld a, b
	cp $01
	jr z, J0ad9
	dec b
	jr J0ada

J0ad9:
	inc b

J0ada:
	call J1bfc

J0add:
	ld a, ($6003)
	cp $00
	jr nz, J0ac2
	ld b, $01
	call J1bfc
	ret

J0aea:
	call J3fe5
	call J3d2b
	call J4005

J0af3:
	ld hl, $6001
	set 5, (hl)
	call J2d64
	call J3ccd
	push hl
	ld hl, $605f
	bit 4, (hl)
	pop hl
	jp nz, J0178
	ld a, ($6065)
	cp $00
	jr nz, J0b22
	ld a, ($6066)
	cp $00
	jr nz, J0b35
	ld a, ($6067)
	cp $00
	jp z, J0b96
	ld a, $01
	jr J0b59

J0b22:
	ld a, ($6067)
	cp $00
	jr nz, J0b35
	ld a, ($6066)
	cp $00
	jp z, J0b96
	ld a, $02
	jr J0b59

J0b35:
	ld a, ($605f)
	bit 1, a
	jr z, J0b53
	ld a, ($6065)
	cp $00
	jr nz, J0b4c
	ld a, ($6067)
	cp $00
	jr nz, J0b6e
	jr J0b53

J0b4c:
	ld a, ($6066)
	cp $00
	jr nz, J0b6e

J0b53:
	call J3a99
	jp J0593

J0b59:
	push af
	call J3a99
	call J3cf3
	call J3510
	pop af
	call J2cfc
	ld b, $80
	call J0528
	jr J0b77

J0b6e:
	call J3a99
	call J3cf3
	call J3510

J0b77:
	call J2c74
	ld b, $80
	call J0528
	ld a, ($6065)
	cpl
	ld ($6065), a
	call J3fcd
	ld hl, $605f
	bit 2, (hl)
	jp nz, J060b
	set 2, (hl)
	jp J04d5

J0b96:
	call J2cfc
	ld b, $80
	call J0528
	ld hl, $601c
	res 0, (hl)
	call J1fc7
	call J178f
	call J1aba
	call J5000
	ld a, ($605e)
	cp $00
	jr z, J0bc0
	ld hl, $9002
	bit 6, (hl)
	jr z, J0bda
	jp J035f

J0bc0:
	ld hl, $9002
	bit 6, (hl)
	jr z, J0bda
	ld hl, $605f
	res 0, (hl)
	ld b, $02

J0bce:
	push bc
	ld b, $b4
	call J0528
	pop bc
	djnz J0bce
	jp J011b

J0bda:
	ld a, $09
	ld ($605e), a
	jp J035f

T0be2:
	db $01, $01, $01, $02, $01, $03, $01, $04, $01, $05, $02, $01, $02, $03, $03, $01
	db $03, $02, $04, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

T0c02:
	db $d8, $d0, $da, $d0, $9a, $d1, $da, $d1, $14, $d2, $16, $d2, $18, $d2, $1a, $d2
	db $5a, $d2, $9a, $d2

T0c16:
	db $c6, $d0, $c8, $d0, $ca, $d0, $cc, $d0, $ce, $d0, $d0, $d0, $d2, $d0, $0a, $d1
	db $10, $d1, $12, $d1, $4a, $d1, $52, $d1, $86, $d1, $c6, $d1, $d0, $d1

T0c34:
	db $46, $d2, $50, $d2, $86, $d2, $ca, $d2, $d2, $d2, $0a, $d3, $10, $d3, $12, $d3
	db $46, $d3, $48, $d3, $4a, $d3, $4c, $d3, $4e, $d3, $50, $d3, $52, $d3

T0c52:
	db $08, $06, $07

T0c55:
	db $07, $9d, $d4, $97, $06, $bd, $d5, $75, $05, $9d, $d6, $86

T0c61:
	db $4d, $1c, $19, $0e, $0c, $12, $0a, $15, $4d, $4d, $0e, $21, $1d, $1b, $0a, $4d
	db $4d, $56, $02, $56, $03, $56, $05, $4d

T0c79:
	db $10, $15, $20, $25, $30, $35, $40, $45, $50, $55, $60, $65, $70, $75, $80, $85
	db $90, $95

T0c8b:
	db $18, $30, $60, $48, $78, $90, $a8, $c0

T0c93:
	db $10, $11, $1b, $1c, $10, $1c, $15, $15, $14, $1a, $15, $16, $19, $14, $10, $14
	db $12, $14

T0ca5:
	db $62, $70, $88, $a0

T0ca9:
	db $63, $72, $8c, $a2

T0cad:
	db $5e, $66, $74, $9a, $5b, $64, $74, $94, $59, $64, $74, $90, $5a, $66, $74, $92
	db $5c, $64, $74, $96, $5d, $68, $78, $98, $5c, $6a, $7c, $96, $5f, $6c, $80, $9c
	db $60, $6e, $84, $9e, $61, $66, $74, $92

T0cd5:
	db $00, $47, $46, $49, $48, $ff, $4a, $ff, $00

T0cde:
	db $41, $39, $00, $40, $42, $43, $00, $44, $45

T0ce7:
	db $01, $39, $01, $35, $36, $37, $01, $ff, $01

T0cf0:
	db $01, $3d, $01, $40, $3e, $ff, $01, $3f, $01

T0cf9:
	db $01, $fc, $06, $f2, $03, $6d, $06, $c7, $01, $fc, $03, $6d, $06, $f2, $06, $c7

T0d09:
	db $11, $21, $13, $11, $32, $13, $21, $12, $11, $31, $12, $13, $23, $22, $32, $32
	db $21, $12, $11, $12

T0d1d:
	db $f5, $d0, $27, $d1, $2d, $d1, $39, $d1, $6f, $d1, $75, $d1, $a9, $d1, $ad, $d1
	db $b3, $d1, $b7, $d1, $69, $d2, $6d, $d2, $73, $d2, $77, $d2, $af, $d2, $b5, $d2
	db $e7, $d2, $ed, $d2, $f9, $d2

T0d43:
	db $35, $d3

T0d45:
	db $32, $3c, $38, $31, $32, $3b, $38, $33, $33, $3c, $34, $31, $33, $3b, $34, $33

T0d55:
	db $20, $01, $13, $12, $20, $11, $33, $33, $12, $10

T0d5f:
	db $ff, $e5, $5e, $5b, $59, $5a, $5c, $5d, $5c, $5f, $60, $61, $62, $63

T0d6d:
	db $19, $15, $0a, $22, $0e, $1b, $ff, $0c, $11, $0a, $17, $10, $0e

T0d7a:
	db $09, $0a, $2b, $36, $3a, $3b, $3c, $3d, $48, $53

T0d84:
	db $00, $01, $02, $03, $04, $05, $06, $0d, $10, $11, $18, $1c, $21, $2c, $31

T0d93:
	db $3e, $43, $49, $56, $5a, $61, $64, $65, $6a, $6b, $6c, $6d, $6e, $6f, $70

T0da2:
	db $ac, $ae, $ea, $ee, $ae, $06, $6d, $c5, $3e, $95, $c7, $07, $7d, $bd, $ef, $eb
	db $bf, $07, $d5, $ef, $bf, $fe, $ef, $07, $bd, $97, $af, $3f, $3d, $05, $ad, $af
	db $87, $af, $af, $07, $ed, $c7, $af, $6f, $6d, $05, $d5, $bf, $ef, $fb, $bf, $07
	db $7d, $ed, $bf, $be, $ef, $07, $3d, $95, $6b, $c5, $97, $07, $a9, $ab, $ba, $bb
	db $ab, $03

T0de4:
	db $77, $07, $de, $03, $fd, $05, $de, $03, $fe, $03, $af, $07, $fd, $05, $df, $07
	db $ff, $07, $de, $03, $af, $07

T0dfa:
	db $e5, $05, $ff, $07, $ff, $07, $fe, $07, $df, $03, $75, $05, $df, $03, $fe, $07
	db $ff, $07, $bb, $07, $e5, $05

T0e10:
	db $01, $02, $03, $05, $03, $06, $09, $15, $08, $16, $24, $40

T0e1c:
	db $da, $d0, $10, $d3, $0a, $d1, $10, $d1, $12, $d1, $86, $d1, $9a, $d1, $da, $d1
	db $1a, $d2, $5a, $d2, $86, $d2, $9a, $d2, $0a, $d3, $12, $d3, $c6, $d0, $c8, $d0
	db $ca, $d0, $cc, $d0, $ce, $d0, $d0, $d0, $d2, $d0, $d8, $d0, $d0, $d1, $14, $d2
	db $18, $d2, $50, $d2, $d2, $d2, $48, $d3, $4c, $d3, $4e, $d3

T0e58:
	db $ff, $31, $30, $32, $ff, $31, $31, $ff, $ff, $ff, $32, $32, $ff, $ff, $33, $ff

T0e68:
	db $10, $0a, $16, $0e, $ff, $18, $1f, $0e, $1b

T0e71:
	db $01, $1c, $1d, $ff, $19, $15, $0a, $22, $0e, $1b

T0e7b:
	db $02, $17, $0d, $ff, $19, $15, $0a, $22, $0e, $1b, $ae, $ab, $a7, $ab, $ae, $a7
	db $ab, $00, $01, $02, $03, $00, $03, $03, $03, $04, $00, $04, $04, $04, $04, $00
	db $04, $05, $05, $05, $00, $06, $06, $06, $07

T0ea4:
	db $90, $24

T0ea6:
	db $00, $00, $02, $04, $01, $03, $05, $06, $08, $05, $07, $09, $0a, $0b, $08, $0c
	db $0d, $0e, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f
	db $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f
	db $0f, $0f

T0ed8:
	db $10, $10, $10, $10, $10, $10, $12, $12, $12, $12, $12, $12, $15, $15, $15, $18

T0ee8:
	db $10, $10, $10, $12, $12, $12, $15, $15, $15, $15, $18, $18, $18, $18, $18, $20

T0ef8:
	db $00, $08, $08, $04, $04, $02, $02, $04, $04, $08, $08, $04, $04, $08, $08, $01
	db $01, $08, $08, $01, $01, $08, $08, $04, $04, $08, $08, $01, $01, $08, $08, $04
	db $04, $08, $08, $04, $04, $02, $02, $04, $04, $08, $08, $04, $04, $02, $02, $02
	db $01, $01, $01, $02, $02, $02, $04, $04, $04, $08, $08, $01, $01, $04, $04, $02
	db $02, $02, $01, $01, $02, $02, $02, $01, $01, $02, $02, $04, $04, $04, $08, $08
	db $08, $02, $02, $02, $02, $02, $01, $01, $08, $08, $01, $01, $02, $02, $01, $01
	db $01, $08, $08, $04, $04, $08, $08, $01, $01, $01, $01, $01, $02, $02, $04, $04
	db $02, $02, $01, $01, $01, $08, $08, $01, $01, $02, $02, $01, $01, $08, $08, $08
	db $08, $08, $08, $04, $04, $02, $02, $02, $04, $04, $08, $08, $04, $04, $08, $08
	db $01, $01, $08, $08, $01, $01, $01, $08, $08, $08, $08, $08, $04, $04, $04, $04
	db $04, $04, $02, $02, $02, $02, $02, $01, $01, $01, $08, $08, $08, $04, $04, $08
	db $08, $01, $01, $02, $02, $01, $01, $08, $08, $08, $08, $ff, $1c, $d1, $1e, $d1
	db $21, $d1, $23, $d1, $25, $d1, $28, $d1, $ff, $d1, $ff, $1b, $d1, $1d, $d1, $1f
	db $d1, $20, $d1, $22, $d1, $24, $d1, $26, $d1, $27, $d1, $ff, $d1, $ff, $27, $d1
	db $26, $d1, $24, $d1, $22, $d1, $20, $d1, $1f, $d1, $1d, $d1, $1b, $d1, $ff, $d1
	db $ff, $1b, $e2, $1d, $f1, $1b, $e2, $1d, $f1, $27, $d0, $ff, $c1, $d1, $41, $d1
	db $00, $df, $ff, $03, $e1, $0a, $e2, $ff, $27, $e0, $29, $d0, $2b, $d0, $2c, $e0
	db $2c, $d2, $ff, $ef, $2e, $a1, $00, $ef, $2e, $d1, $00, $ef, $2e, $d1, $00, $ef
	db $2e, $d1, $00, $ef, $2e, $a1, $00, $ef, $2e, $d1, $00, $ef, $2e, $d1, $00, $ef
	db $2e, $d1, $00, $ef, $2e, $a1, $00, $ef, $ff, $18, $a2, $18, $e2, $16, $d2, $16
	db $e2, $18, $a2, $18, $e2, $16, $d2, $16, $e2, $18, $b2, $1a, $d2, $1a, $e2, $1b
	db $d2, $1b, $e2, $1b, $92, $1a, $c1, $1a, $e1, $00, $ef, $1a, $d1, $1a, $e1, $18
	db $d1, $18, $e1, $1a, $d1, $1a, $e1, $1b, $b1, $1d, $d1, $1d, $e1, $1d, $71, $ff
	db $14, $a4, $14, $e4, $13, $d4, $13, $e4, $14, $a4, $14, $e4, $13, $d4, $13, $e4
	db $14, $b4, $16, $d4, $16, $e4, $18, $d4, $18, $e4, $18, $94, $16, $c4, $16, $e4
	db $00, $ef, $16, $d4, $16, $e4, $15, $d4, $15, $e4, $16, $d4, $16, $e4, $18, $b4
	db $1a, $d4, $1a, $e4, $1a, $74, $ff, $08, $a4, $00, $ef, $08, $d4, $00, $ef, $08
	db $94, $08, $a4, $00, $ef, $08, $d4, $00, $ef, $08, $94, $0a, $a4, $00, $ef, $0a
	db $d4, $00, $ef, $0a, $94, $0a, $a4, $00, $ef, $0a, $d4, $00, $ef, $0a, $94, $ff
	db $08, $a4, $00, $ef, $08, $d4, $00, $ef, $08, $94, $08, $a4, $00, $ef, $08, $d4
	db $00, $ef, $08, $94, $0a, $a4, $00, $ef, $0a, $d4, $00, $ef, $0a, $94, $0a, $a4
	db $00, $ef, $0a, $d4, $00, $ef, $0a, $94, $ff, $27, $c1, $1b, $c1, $1f, $c1, $22
	db $c1, $27, $c1, $2b, $c1, $27, $c1, $ff, $0f, $c1, $16, $c1, $1b, $c1, $1f, $c1
	db $13, $c1, $22, $c1, $1f, $c1, $ff, $22, $c1, $20, $c1, $1f, $c1, $1d, $c1, $1b
	db $c1, $1a, $c1, $1b, $a1, $ff, $1f, $c1, $1d, $0c, $1b, $0c, $1a, $c1, $18, $c1
	db $16, $c1, $18, $a1, $ff, $1b, $d1, $1d, $d1, $1f, $d1, $20, $d1, $22, $d1, $24
	db $d1, $26, $d1, $27, $d1, $ff, $27, $d1, $26, $d1, $24, $d1, $22, $d1, $20, $d1
	db $1f, $d1, $1d, $d1, $1b, $d1, $ff, $1f, $92, $1d, $c2, $1f, $92, $1d, $c2, $1b
	db $d2, $1b, $e2, $00, $ef, $1b, $a2, $1a, $c2, $18, $92, $18, $d2, $18, $e2, $00
	db $ef, $18, $b2, $18, $e2, $00, $ef, $18, $a2, $1b, $c2, $1f, $a2, $1d, $c2, $1d
	db $42, $ff, $e1, $00, $03, $a4, $03, $d4, $03, $e4, $00, $ef, $03, $d4, $03, $e4
	db $00, $ef, $07, $84, $0c, $a4, $0c, $d4, $0c, $e4, $00, $ef, $0c, $d4, $0c, $e4
	db $00, $ef, $0c, $84, $ff, $1b, $81, $18, $a2, $1b, $d2, $1b, $e2, $00, $ef, $1b
	db $d2, $1b, $e2, $00, $ef, $1b, $d2, $1b, $e2, $00, $ef, $1b, $c2, $18, $c2, $16
	db $c2, $18, $c2, $16, $c2, $13, $d2, $13, $e2, $00, $ef, $13, $d2, $13, $e2, $00
	db $ef, $13, $82, $11, $b2, $11, $e2, $00, $ef, $11, $d2, $11, $e2, $00, $ef, $11
	db $d2, $11, $e2, $00, $ef, $11, $d2, $11, $e2, $00, $ef, $11, $b2, $11, $e2, $00
	db $ef, $11, $c2, $16, $d2, $16, $e2, $00, $ef, $16, $c2, $18, $c2, $16, $d2, $16
	db $e2, $00, $ef, $16, $82, $ff, $b1, $18, $08, $a4, $08, $d4, $08, $e4, $00, $ef
	db $08, $d4, $08, $e4, $00, $ef, $08, $84, $03, $a4, $03, $d4, $03, $e4, $00, $ef
	db $03, $d4, $03, $e4, $00, $ef, $03, $84, $05, $a4, $05, $d4, $05, $e4, $00, $ef
	db $05, $d4, $05, $e4, $00, $ef, $05, $84, $0a, $a4, $0a, $d4, $0a, $e4, $00, $ef
	db $0a, $d4, $0a, $e4, $00, $ef, $0a, $84, $ff, $11, $e1, $1b, $d0, $00, $cf, $18
	db $d0, $00, $cf, $14, $d0, $00, $cf, $0f, $d0, $00, $cf, $11, $b2, $13, $b1, $14
	db $b0, $13, $d0, $11, $d1, $0f, $d2, $0e, $d3, $0c, $d4, $0a, $d5, $08, $a0, $24
	db $c4, $25, $c2, $24, $c1, $25, $c2, $24, $c4, $25, $c8, $24, $c4, $25, $c2, $24
	db $c1, $25, $c2, $24, $c4, $25, $c8, $24, $c4, $25, $c2, $24, $c1, $25, $c2, $24
	db $c4, $25, $c8, $ff, $a1, $14, $a1, $16, $a1, $18, $c0, $16, $18, $d0, $00, $cf
	db $14, $d0, $00, $cf, $11, $d0, $00, $cf, $0c, $d0, $00, $cf, $0e, $b2, $0f, $b1
	db $11, $b0, $0f, $d0, $0e, $d1, $0c, $d2, $0a, $d3, $08, $d4, $07, $d5, $05, $a0
	db $27, $c4, $28, $c2, $27, $c1, $28, $c2, $27, $c4, $28, $c8, $27, $c4, $28, $c2
	db $27, $c1, $28, $c2, $27, $c4, $28, $c8, $27, $c4, $28, $c2, $27, $c1, $28, $c2
	db $27, $c4, $28, $c8, $ff, $1f, $a1, $1d, $c1, $1d, $41, $ff, $0e, $17, $f0, $16
	db $f0, $15, $f0, $14, $f0, $16, $f0, $15, $f0, $14, $f0, $13, $f0, $15, $f0, $14
	db $f0, $13, $f0, $12, $f0, $14, $f0, $13, $f0, $12, $f0, $11, $f0, $13, $f0, $12
	db $f0, $11, $f0, $10, $f0, $12, $f0, $11, $f0, $10, $f0, $0f, $f0, $11, $f0, $10
	db $f0, $0f, $f0, $0e, $f0, $10, $f0, $0f, $f0, $0e, $f0, $0d, $f0, $0f, $f0, $0e
	db $f0, $0d, $f0, $0c, $f0, $0e, $f0, $0d, $f0, $0c, $f0, $0b, $f0, $ff, $13, $f0
	db $12, $f0, $11, $f0, $10, $f0, $12, $f0, $11, $f0, $10, $f0, $0f, $f0, $11, $f0
	db $10, $f0, $0f, $f0, $0e, $f0, $10, $f0, $0f, $f0, $0e, $f0, $0d, $f0, $0f, $f0
	db $0e, $f0, $0d, $f0, $0c, $f0, $0e, $f0, $0d, $f0, $0c, $f0, $0b, $f0, $0d, $f0
	db $0c, $f0, $0b, $f0, $0a, $f0, $0c, $f0, $0b, $f0, $0a, $f0, $09, $f0, $0b, $f0
	db $0a, $f0, $09, $f0, $08, $f0, $0a, $f0, $09, $f0, $08, $f0, $07, $f0, $ff, $20
	db $d1, $22, $d1, $24, $d1, $27, $d1, $29, $d1, $27, $d1, $24, $d1, $22, $d1, $20
	db $d1, $00, $af, $1b, $c0, $00, $cf, $16, $c1, $00, $cf, $1b, $c0, $00, $cf, $16
	db $c1, $00, $cf, $1f, $b0, $1d, $d1, $1b, $d0, $1b, $d0, $1b, $d0, $16, $d0, $18
	db $c1, $1a, $c1, $1b, $c1, $1d, $c1, $1f, $c0, $00, $cf, $21, $c0, $00, $cf, $22
	db $c0, $00, $9f, $22, $d0, $24, $d0, $00, $cf, $24, $d0, $26, $d0, $00, $cf, $26
	db $d0, $27, $d0, $ff, $15, $e8, $00, $ef, $15, $b8, $15, $e8, $00, $ef, $15, $c8
	db $18, $a8, $1b, $d8, $1b, $e8, $00, $ef, $1b, $68, $1a, $68, $ff, $00, $4f, $00
	db $4f, $00, $4f, $00, $4f, $0f, $68, $0e, $68, $0c, $68, $0e, $68, $0f, $88, $0f
	db $21, $d1, $23, $d1, $25, $d1, $28, $d1, $2a, $d1, $28, $d1, $25, $d1, $23, $d1
	db $21, $d1, $00, $af, $0a, $c0, $00, $cf, $0f, $c1, $00, $cf, $0a, $c0, $00, $cf
	db $0f, $c1, $00, $cf, $16, $b0, $14, $d1, $13, $d0, $13, $d0, $13, $d0, $0f, $d0
	db $14, $c1, $11, $c1, $13, $c1, $14, $c1, $0f, $c0, $00, $cf, $11, $c0, $00, $cf
	db $16, $c0, $00, $9f, $16, $d0, $14, $d0, $00, $cf, $14, $d0, $11, $d0, $00, $cf
	db $11, $d0, $0f, $d0, $ff, $00, $ef, $11, $c8, $0f, $c8, $11, $c8, $13, $a8, $14
	db $c8, $14, $68, $16, $98, $13, $c8, $17, $98, $13, $d8, $13, $e8, $00, $ef, $13
	db $d8, $13, $e8, $00, $ef, $13, $a8, $0f, $88, $11, $c8, $11, $b8, $11, $e8, $00
	db $ef, $00, $f2, $03, $f2, $06, $f2, $09, $f2, $0c, $f2, $0f, $f2, $12, $f2, $15
	db $f2, $18, $f2, $1b, $f2, $1e, $f2, $21, $f2, $24, $f2, $27, $f2, $2a, $f2, $ff
	db $03, $f2, $06, $f2, $09, $f2, $0c, $f2, $0f, $f2, $12, $f2, $15, $f2, $18, $f2
	db $1b, $f2, $1e, $f2, $21, $f2, $24, $f2, $27, $f2, $2a, $f2, $2d, $f2, $ff, $03
	db $f0, $04, $f0, $05, $f0, $06, $f0, $07, $f0, $08, $f0, $09, $f0, $0a, $f0, $0b
	db $f0, $0c, $f0, $0d, $f0, $0e, $f0, $09, $f0, $0a, $f0, $0b, $f0, $0c, $f0, $0d
	db $f0, $0e, $f0, $0f, $f0, $10, $f0, $11, $f0, $12, $f0, $13, $f0, $14, $f0, $0f
	db $f0, $10, $f0, $11, $f0, $12, $f0, $13, $f0, $14, $f0, $15, $f0, $16, $f0, $17
	db $f0, $18, $f0, $19, $f0, $1a, $f0, $15, $f0, $16, $f0, $17, $f0

T1515:
	db $18, $f0, $19, $f0, $1a, $f0, $1b, $f0, $1c, $f0, $1d, $f0, $1e, $f0, $1f, $f0
	db $20, $f0, $1b, $f0, $1c, $f0, $1d, $f0, $1e, $f0, $1f, $f0, $20, $f0, $21, $f0
	db $22, $f0, $23, $f0, $24, $f0, $25, $f0, $26, $f0, $21, $f0, $22, $f0, $23, $f0
	db $24, $f0, $25, $f0, $26, $f0, $27, $f0, $28, $f0, $29, $f0, $2a, $f0, $2b, $f0
	db $2c, $f0, $27, $f0, $28, $f0, $29, $f0, $2a, $f0, $2b, $f0, $2c, $f0, $2d, $f0
	db $2e, $f0, $2f, $f0, $30, $f0, $31, $f0, $32, $f0, $ff, $00, $ef, $ff, $ef, $03
	db $d4, $03, $e4, $00, $ef, $03, $c4, $05, $c4, $07, $a4, $08, $a8, $08, $d8, $08
	db $e8, $00, $ef, $08, $d8, $08, $e8, $00, $ef, $08, $98, $08, $d8, $08, $e8, $00
	db $ef, $08, $a8, $08, $d8, $08, $e8, $00, $ef, $08, $d8, $08, $e8, $00, $ef, $08
	db $88, $03, $a8, $03, $d8, $03, $e8, $00, $ef, $03, $d8, $03, $e8, $00, $ef, $03
	db $98, $03, $d8, $03, $e8, $00, $ef, $03, $a8, $03, $d8, $03, $00, $ef, $ff, $03
	db $d8, $03, $e8, $00, $ef, $03, $88, $08, $a8, $08, $d8, $08, $e8, $00, $ef, $08
	db $d8, $08, $e8, $00, $ef, $08, $98, $08, $d8, $08, $e8, $00, $ef, $08, $a8, $08
	db $d8, $08, $e8, $00, $ef, $08, $d8, $08, $e8, $00, $ef, $08, $88, $0a, $a8, $0a
	db $d8, $0a, $e8, $00, $ef, $0a, $d8, $0a, $e8, $00, $ef, $0a, $98, $0a, $d8, $0a
	db $e8, $00, $ef, $0a, $a8, $0a, $d8, $0a, $e8, $00, $ef, $0a, $d8, $03, $a4, $03
	db $d4, $03, $e4, $00, $ef, $03, $d4, $03, $e4, $00, $ef, $07, $84, $0c, $a4, $0c
	db $d4, $0c, $e4, $00, $ef, $0c, $d4, $0c, $e4, $00, $ef, $0c, $84, $05, $b4, $05
	db $e4, $00, $ef, $05, $b4, $05, $e4, $00, $ef, $05, $d4, $05, $e4, $00, $ef, $05
	db $b4, $05, $e4, $00, $ef, $05, $c4, $0a, $b4, $0a, $e4, $00, $ef, $0a, $b4, $0a
	db $e4, $00, $ef, $0a, $b4, $0a, $e4, $00, $ef, $0a

T165f:
	db $b4, $0a, $e4, $00, $ef, $0a, $d4, $0a, $e4, $00, $ef, $0a, $b4, $0a, $e4, $00
	db $ef, $0a, $d4, $0a, $e4, $00, $ef, $0a, $84, $ff, $e8, $00, $ef, $0a, $88, $ff
	db $27, $e0, $29, $d0, $2b, $d0, $2c, $e0, $2c, $d2, $ff, $03, $c1, $05, $c1, $c1
	db $a1, $ff, $18, $b0, $ff, $04, $d1, $00, $df, $04, $d1, $00, $df, $04, $d1, $00
	db $df, $00, $b1, $ff, $1c, $d1, $00, $df, $1c, $d1, $00, $df, $1c, $d1, $00, $df
	db $18, $b1, $ff, $0a, $b2, $0c, $b4, $0a, $b2, $0c, $b4, $0a, $c2, $00, $cf, $0e
	db $c4, $00, $cf, $0f, $b8, $00, $bf, $0f, $91, $ff, $00, $5f, $00, $cf, $13, $91
	db $ff, $00, $5f, $00, $cf, $16, $91, $ff, $00, $df, $00, $ef, $03, $b1, $00, $bf
	db $13, $d4, $13, $e4, $00, $df, $00, $ef, $13, $d4, $13, $e4, $00, $df, $00, $ef
	db $0f, $b4, $00, $bf, $0a, $d1, $0a, $e1, $00, $df, $00, $ef, $0a, $d1, $0a, $e1
	db $ff, $00, $df, $0f, $c1, $00, $cf, $1f, $d4, $00, $df, $1f, $d4, $00, $df, $1b
	db $c4, $00, $cf, $16, $d1, $00, $df, $16, $d1, $ff, $00, $ef, $1b, $d1, $00, $df
	db $2b, $e4, $00, $ef, $2b, $e4, $00, $ef, $27, $d4, $00, $df, $22, $e1, $00, $ef
	db $22, $e1, $ff

J1732:
	push bc
	ld b, a
	ld a, $01

J1736:
	dec b
	jr z, J173e
	sla a
	jp J1736

J173e:
	pop bc
	ret
	db $d5, $f5, $78, $3d, $5f, $cb, $27, $83, $dd, $21, $04, $60, $5f, $16, $00, $dd
	db $19, $f1, $d1, $c9, $c9

J1755:
	ld hl, $7000
	ld b, $04
	ld c, $00

J175c:
	push bc
	ld b, $ff

J175f:
	ld a, ($9001)
	bit 6, a
	jr nz, J175f
	ld (hl), c
	inc hl
	djnz J175f
	pop bc
	djnz J175c
	ret

J176e:
	ld a, $9f
	ld ($b000), a
	ld ($c000), a
	ld a, $bf
	ld ($b000), a
	ld ($c000), a
	ld a, $df
	ld ($b000), a
	ld ($c000), a
	ld a, $ff
	ld ($b000), a
	ld ($c000), a
	ret

J178f:
	ld hl, $605f
	bit 4, (hl)
	jp z, J17a1
	ld hl, $6000
	xor a
	ld (hl), a
	inc hl
	ld (hl), a
	inc hl
	ld (hl), a
	ret

J17a1:
	push ix
	ld hl, $6000
	ld a, (hl)
	and $ff
	jp nz, J17e5

J17ac:
	inc hl
	ld a, (hl)
	and $ff
	jp nz, J17d0

J17b3:
	inc hl
	ld a, (hl)
	and $ff
	jp z, J18bf
	ld b, $10

J17bc:
	rr a
	jp nc, J17c4
	call J17fa

J17c4:
	inc b
	ex af, af'
	ld a, b
	cp $18
	jp z, J18bf
	ex af, af'
	jp J17bc

J17d0:
	ld b, $08

J17d2:
	rr a
	jp nc, J17da
	call J17fa

J17da:
	inc b
	ex af, af'
	ld a, b
	cp $10
	jr z, J17b3
	ex af, af'
	jp J17d2

J17e5:
	ld b, $00

J17e7:
	rr a
	jp nc, J17ef
	call J17fa

J17ef:
	inc b
	ex af, af'
	ld a, b
	cp $08
	jr z, J17ac
	ex af, af'
	jp J17e7

J17fa:
	push bc
	push af
	push hl
	ld hl, $1b6d	; could be a data table address, label T1b6d: created
	sla b
	ld c, b
	ld b, $00
	add hl, bc
	ld b, (hl)
	inc hl
	ld c, (hl)
	ld l, b
	ld h, c
	ld b, (hl)
	inc hl

J180d:
	ld c, a
	ld a, b
	and $ff
	jp z, J18af
	ld a, c
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld ix, $6003
	ld a, (de)
	and $c0
	jp z, J1846
	ld a, (ix + $00)
	bit 6, a
	jr nz, J1836
	ld ($6016), de
	set 6, (ix + $00)
	dec b
	jp J180d

J1836:
	dec b
	bit 7, a
	jr nz, J180d
	ld ($6019), de
	set 7, (ix + $00)
	jp J180d

J1846:
	ld a, (ix + $00)
	bit 0, a
	jp nz, J185a
	ld ($6004), de
	set 0, (ix + $00)
	dec b
	jp J180d

J185a:
	bit 1, a
	jp nz, J186b
	ld ($6007), de
	set 1, (ix + $00)
	dec b
	jp J180d

J186b:
	bit 2, a
	jp nz, J187c
	ld ($600a), de
	set 2, (ix + $00)
	dec b
	jp J180d

J187c:
	bit 3, a
	jp nz, J188d
	ld ($600d), de
	set 3, (ix + $00)
	dec b
	jp J180d

J188d:
	bit 4, a
	jp nz, J189e
	ld ($6010), de
	set 4, (ix + $00)
	dec b
	jp J180d

J189e:
	dec b
	bit 5, a
	jp nz, J180d
	ld ($6013), de
	set 5, (ix + $00)
	jp J180d

J18af:
	pop hl
	pop af
	pop bc
	ex af, af'
	ld a, b
	and $07
	inc a
	call J1732
	cpl
	and (hl)
	ld (hl), a
	ex af, af'
	ret

J18bf:
	ld a, ($6003)
	ld b, $06
	ld ix, $6004

J18c8:
	srl a
	jp c, J18da

J18cd:
	inc ix
	inc ix
	inc ix
	dec b
	jp z, J19cf
	jp J18c8

J18da:
	ex af, af'
	ld a, (ix + $02)
	cp $00
	jr z, J18e9
	dec (ix + $02)
	ex af, af'
	jp J18cd

J18e9:
	ld ixl, (ix + $00)
	ld ixh, (ix + $01)
	ld a, (hl)
	cp $ff
	jp nz, J193e
	ld a, $06
	sub b
	cp $03
	jr c, J1910
	sub $03
	sla a
	sla a
	sla a
	sla a
	sla a
	or $9f
	ld ($c000), a
	jp J191f

J1910:
	sla a
	sla a
	sla a
	sla a
	sla a
	or $9f
	ld ($b000), a

J191f:
	ld a, $06
	sub b
	ld d, a
	ld e, $01

J1925:
	ld a, d
	cp $00
	jr z, J1930
	dec d
	sla e
	jp J1925

J1930:
	ld a, e
	cpl
	ld e, a
	ld a, ($6003)
	and e
	ld ($6003), a
	ex af, af'
	jp J18cd

J193e:
	ld a, $06
	sub b
	cp $03
	jp m, J199a
	sub $03
	sla a
	sla a
	sla a
	sla a
	sla a
	or $80
	ld c, a
	ld iy, $1b07	; could be a data table address, label T1b07: created
	ld a, (hl)
	and $3f
	sla a
	ld e, a
	ld d, $00
	add iy, de
	ld a, (iy + $00)
	or c
	ld ($c000), a
	ld a, (iy + $01)
	ld ($c000), a
	inc hl
	ld a, $00
	rrd
	or c
	set 4, a
	ld ($c000), a

J197b:
	ld a, $00
	rld
	ld iy, $1af7	; could be a data table address, label T1af7: created
	inc hl
	ld ix, ixl
	nop
	ld ix, ixh
	ld bc, $165f	; could be a data table address, label T165f: created
	nop
	add iy, de
	ld a, (iy + $00)
	dec a
	ld ix, a
	ld (bc), a
	ex af, af'
	jp J18cd

J199a:
	sla a
	sla a
	sla a
	sla a
	sla a
	or $80
	ld c, a
	ld iy, $1b07	; could be a data table address, label T1b07: created
	ld a, (hl)
	and $3f
	sla a
	ld e, a
	ld d, $00
	add iy, de
	ld a, (iy + $00)
	or c
	ld ($b000), a
	ld a, (iy + $01)
	ld ($b000), a
	inc hl
	xor a
	rrd
	or c
	set 4, a
	ld ($b000), a
	jp J197b

J19cf:
	srl a
	jr c, J19e0

J19d3:
	inc ix
	inc ix
	inc ix
	srl a
	jr c, J1a4f
	jp J1ab7

J19e0:
	ex af, af'
	ld a, (ix + $02)
	cp $00
	jr z, J19ef
	dec (ix + $02)
	ex af, af'
	jp J19d3

J19ef:
	ld ixl, (ix + $00)
	ld ixh, (ix + $01)
	ld a, (hl)
	cp $ff
	jr nz, J1a0b
	ld a, $ff
	ld ($b000), a
	ld a, ($6003)
	and $bf
	ld ($6003), a
	ex af, af'
	jp J19d3

J1a0b:
	ld b, $00
	srl a
	rl b
	srl a
	srl a
	srl a
	srl a
	srl a
	dec a
	sla b
	sla b
	or b
	or $e0
	ld ($b000), a
	inc hl
	ld a, $00
	rrd
	or $f0
	ld ($b000), a
	ld a, $00
	rld
	ld iy, $1af7	; could be a data table address, label T1af7: created
	inc hl
	ld ix, ixl
	nop
	ld ix, ixh
	ld bc, $165f	; could be a data table address, label T165f: created
	nop
	add iy, de
	ld a, (iy + $00)
	dec a
	ld ix, a
	ld (bc), a
	ex af, af'
	jp J19d3

J1a4f:
	ld a, (ix + $02)
	cp $00
	jr z, J1a5c
	dec (ix + $02)
	jp J1ab7

J1a5c:
	ld ixl, (ix + $00)
	ld ixh, (ix + $01)
	ld a, (hl)
	cp $ff
	jr nz, J1a77
	ld a, $ff
	ld ($c000), a
	ld a, ($6003)
	and $7f
	ld ($6003), a
	jp J1ab7

J1a77:
	ld b, $00
	srl a
	rl b
	srl a
	srl a
	srl a
	srl a
	srl a
	dec a
	sla b
	sla b
	or b
	or $e0
	ld ($c000), a
	inc hl
	ld a, $00
	rrd
	or $f0
	ld ($c000), a
	ld a, $00
	rld
	ld iy, $1af7	; could be a data table address, label T1af7: created
	inc hl
	ld ix, ixl
	nop
	ld ix, ixh
	ld bc, $165f	; could be a data table address, label T165f: created
	nop
	add iy, de
	ld a, (iy + $00)
	dec a
	ld ix, a
	ld (bc), a

J1ab7:
	pop ix
	ret

J1aba:
	push hl
	push af
	push bc
	ld hl, $d080
	ld a, $ff
	ld c, $18

J1ac4:
	inc hl
	ld b, $1e

J1ac7:
	ld (hl), a
	inc hl
	djnz J1ac7
	inc hl
	dec c
	jp nz, J1ac4
	pop bc
	pop af
	pop hl
	ret

J1ad4:
	ld a, $00
	ld b, $80
	ld hl, $d000

J1adb:
	ld (hl), a
	inc hl
	djnz J1adb
	ld c, $00

J1ae1:
	ld b, $18

J1ae3:
	ld (hl), a
	ld de, $0020	; could be a data table address, label T0020: created
	add hl, de
	djnz J1ae3
	inc c
	dec c
	jp nz, J1af6
	inc c
	ld hl, $d09f
	jp J1ae1

J1af6:
	ret

T1af7:
	db $ff, $e0, $c0, $a0, $80, $60, $40, $30, $20, $18, $10, $0c, $08, $04, $02, $01

T1b07:
	db $08, $3f, $0f, $3b, $09, $38, $06, $35, $06, $32, $0a, $2f, $0e, $2c, $06, $2a
	db $00, $28, $0c, $25, $0a, $23, $0a, $21, $0c, $1f, $0f, $1d, $04, $1c, $0b, $1a
	db $03, $19, $0d, $17, $07, $16, $03, $15, $00, $14, $0e, $12, $0d, $11, $0d, $10
	db $0e, $0f, $00, $0f, $02, $0e, $06, $0d, $0a, $0c, $0e, $0b, $04, $0b, $0a, $0a
	db $00, $0a, $07, $09, $0f, $08, $07, $08, $0f, $07, $08, $07, $01, $07, $0b, $06
	db $05, $06, $0f, $05, $0a, $05, $05, $05, $00, $05, $0b, $04, $07, $04, $03, $04
	db $0f, $03, $0c, $03, $09, $03

T1b6d:
	db $91, $1b, $d1, $1b, $d6, $1b, $9c, $1b, $9f, $1b, $db, $1b, $a5, $1b, $ae, $1b
	db $ae, $1b, $b8, $1b, $bd, $1b, $c2, $1b, $a2, $1b, $c7, $1b, $99, $1b, $cc, $1b
	db $de, $1b, $de, $1b, $01, $b4, $0f, $02, $c3, $0f, $d6, $0f, $01, $e9, $0f, $01
	db $f4, $0f, $01, $fb, $0f, $01, $00, $10, $04, $31, $10, $68, $10, $9f, $10, $c8
	db $10, $02, $f1, $10, $00, $11, $02, $0f, $11, $1e, $11, $02, $2d, $11, $3e, $11
	db $02, $4f, $11, $12, $16, $02, $9f, $11, $00, $12, $02, $43, $12, $94, $12, $02
	db $e5, $12, $36, $13, $02, $87, $13, $08, $14, $02, $89, $14, $a8, $14, $01, $c7
	db $14, $02, $70, $15, $c1, $15, $19, $17

J1be5:
	ld b, $03
	ld c, $00
	push bc

J1bea:
	ld b, $00
	call J1bfc
	pop bc
	djnz J1bf4
	jr J1bf8

J1bf4:
	inc c
	push bc
	jr J1bea

J1bf8:
	call J1c6a
	ret

J1bfc:
	ld ix, $0c55	; could be a data table address, label T0c55: created
	ld d, $00
	ld a, b
	cp $02
	jr nz, J1c09
	ld e, $02

J1c09:
	ld a, c
	sla a
	sla a
	push de
	ld d, $00
	ld e, a
	add ix, de
	pop de
	ld e, (ix + $00)
	push bc
	ld b, (ix + $03)
	srl b
	srl b
	srl b
	srl b
	ld ixl, (ix + $01)
	ld ixh, (ix + $02)

J1c2a:
	ld (hl), e
	push de
	ld de, $0020	; could be a data table address, label T0020: created
	add hl, de
	pop de
	djnz J1c2a
	bit 0, d
	jr nz, J1c4c
	inc d
	ld ixl, (ix + $01)
	ld ixh, (ix + $02)
	inc hl
	ld b, (ix + $03)
	srl b
	srl b
	srl b
	srl b
	jr J1c2a

J1c4c:
	pop bc
	ld a, b
	cp $00
	jr nz, J1c69
	inc b
	push bc
	ld bc, $0020	; could be a data table address, label T0020: created
	ld ixl, (ix + $01)
	ld ixh, (ix + $02)
	add hl, bc
	ld a, (ix + $03)
	and $0f
	ld b, a
	ld e, $03
	jp J1c2a

J1c69:
	ret

J1c6a:
	ld bc, $0000	; could be a data table address, label T0000: created
	ld hl, $d09e

J1c70:
	ld a, $4b
	ld (hl), a
	ld ix, $0c52	; could be a data table address, label T0c52: created
	add ix, bc
	ld b, (ix + $00)
	call J1c9b
	inc c
	ld a, c
	cp $03
	jr nz, J1c70
	ld hl, $d09d
	ld ix, $0c61	; could be a data table address, label T0c61: created
	ld b, $18
	ld de, $0020	; could be a data table address, label T0020: created

J1c91:
	ld a, (ix + $00)
	ld (hl), a
	inc ix
	add hl, de
	djnz J1c91
	ret

J1c9b:
	inc a
	ld de, $0020	; could be a data table address, label T0020: created
	add hl, de

J1ca0:
	ld (hl), a
	add hl, de
	djnz J1ca0
	ret

J1ca5:
	inc hl

J1ca6:
	bit 7, (hl)
	jr z, J1ca6

J1caa:
	bit 7, (hl)
	jr nz, J1caa
	push hl
	call J033a
	call J178f
	pop hl

J1cb6:
	bit 7, (hl)
	jr z, J1cb6
	ret
	db $c5, $47, $3e, $01, $10, $02, $c1, $c9, $07, $18, $f7

J1cc6:
	ld d, $00
	ld a, ($6062)
	cp $00
	jr z, J1cd3
	ld e, $06
	jr J1cd5

J1cd3:
	ld e, $05

J1cd5:
	ld c, $00
	ld b, $0c
	ld hl, $d61c

J1cdc:
	ld (hl), e
	call J1d24
	inc b
	ld a, $17
	cp b
	jr nz, J1cf0
	inc c
	ld a, $04
	cp c
	jr nz, J1cee
	ld c, $00

J1cee:
	ld b, $00

J1cf0:
	ld a, $00
	cp c
	jr nz, J1cfa
	ld a, $0c
	cp b
	jr z, J1d18

J1cfa:
	ld a, ($6060)
	cp c
	jr nz, J1d15
	ld a, ($6061)
	cp b
	jr nz, J1d15
	ld ($6063), hl
	inc d
	ld a, ($6062)
	cp $00
	jr z, J1d14
	dec e
	jr J1d15

J1d14:
	inc e

J1d15:
	jp J1cdc

J1d18:
	xor a
	cp d
	jr nz, J1d23
	ld a, ($6062)
	cpl
	ld ($6062), a

J1d23:
	ret

J1d24:
	push de
	bit 0, c
	jr z, J1d33
	bit 1, c
	jr z, J1d30
	inc hl
	jr J1d40

J1d30:
	dec hl
	jr J1d40

J1d33:
	bit 1, c
	jr z, J1d3c
	ld de, $ffe0
	jr J1d3f

J1d3c:
	ld de, $0020	; could be a data table address, label T0020: created

J1d3f:
	add hl, de

J1d40:
	pop de
	ret

J1d42:
	ld a, $52
	ld c, $00
	ld hl, $d09c
	ex af, af'
	ld a, $4e

J1d4c:
	ld b, $16
	ld (hl), a
	call J1d24
	ex af, af'

J1d53:
	ld (hl), a
	call J1d24
	djnz J1d53
	cp $55
	jr z, J1d63
	inc a
	ex af, af'
	inc a
	inc c
	jr J1d4c

J1d63:
	ret

J1d64:
	ld de, $0020	; could be a data table address, label T0020: created
	ld hl, $d4a3
	ld a, $01
	ld b, $0c

J1d6e:
	ld (hl), a
	push hl
	inc hl
	ld (hl), a
	pop hl
	add hl, de
	djnz J1d6e
	ret

J1d77:
	ld de, $0020	; could be a data table address, label T0020: created
	ld a, ($6065)
	cp $00
	jr z, J1d86
	ld a, ($6067)
	jr J1d89

J1d86:
	ld a, ($6066)

J1d89:
	cp $07
	jr c, J1d8f
	ld a, $06

J1d8f:
	ld b, a
	xor a
	ex af, af'
	ld a, $06
	sub b
	ld c, a
	push bc
	ld hl, $d0a3
	ld a, $e1

J1d9c:
	ld ($61c8), a
	xor a
	cp b
	ld a, ($61c8)
	jr z, J1dae

J1da6:
	ld (hl), a
	inc a
	add hl, de
	ld (hl), a
	dec a
	add hl, de
	djnz J1da6

J1dae:
	ld a, $ff
	ld b, c
	sla b
	ld ($61c8), a
	xor a
	cp b
	ld a, ($61c8)
	jr z, J1dc1

J1dbd:
	ld (hl), a
	add hl, de
	djnz J1dbd

J1dc1:
	ex af, af'
	cp $ff
	jr z, J1dd0
	cpl
	ex af, af'
	ld hl, $d0a4
	ld a, $e3
	pop bc
	jr J1d9c

J1dd0:
	ret

J1dd1:
	xor a
	call J1e4c
	ld de, $0020	; could be a data table address, label T0020: created
	ld a, ($605f)
	bit 1, a
	jr z, J1df2
	ld hl, $d243
	ld (hl), $02
	add hl, de
	ld (hl), $17
	add hl, de
	jp J4931

J1deb:
	ld ix, $606b
	call J1e06

J1df2:
	ld hl, $d244
	ld (hl), $01
	add hl, de
	ld (hl), $1c
	add hl, de
	jp J493a

J1dfe:
	ld ix, $6068
	call J1e06
	ret

J1e06:
	push de
	push bc
	push hl
	ld b, $03
	ld hl, $61da
	push hl

J1e0f:
	ld a, (ix + $00)
	ld c, a
	srl a
	srl a
	srl a
	srl a
	ld (hl), a
	inc hl
	ld a, c
	and $0f
	ld (hl), a
	inc ix
	inc hl
	djnz J1e0f
	pop hl
	ld b, $05
	xor a

J1e2a:
	cp (hl)
	jr nz, J1e32
	ld (hl), $ff
	inc hl
	djnz J1e2a

J1e32:
	pop hl
	push ix
	ld ix, $61da
	ld de, $0020	; could be a data table address, label T0020: created
	ld b, $06

J1e3e:
	ld a, (ix + $00)
	ld (hl), a
	inc ix
	add hl, de
	djnz J1e3e
	pop ix
	pop bc
	pop de
	ret

J1e4c:
	push af
	push bc
	push hl
	cp $00
	jr nz, J1e67
	ld a, $03
	ld hl, $d644
	ld b, $0a
	call J1e7d

J1e5d:
	ld hl, $d643

J1e60:
	ld b, $0a
	call J1e7d
	jr J1e79

J1e67:
	ld a, ($6065)
	cp $00
	jr nz, J1e75
	ld hl, $d644
	ld a, $04
	jr J1e60

J1e75:
	ld a, $04
	jr J1e5d

J1e79:
	pop hl
	pop bc
	pop af
	ret

J1e7d:
	push bc
	push de
	push hl
	ld de, $0020	; could be a data table address, label T0020: created

J1e83:
	ld (hl), a
	add hl, de
	djnz J1e83
	pop hl
	pop de
	pop bc
	ret

J1e8b:
	ld hl, $d4e2
	ld a, $07
	ld b, $03
	call J1e7d
	ld hl, $d0e2
	ld (hl), $1d
	ld de, $0020	; could be a data table address, label T0020: created
	add hl, de
	ld (hl), $18
	add hl, de
	ld (hl), $19
	add hl, de
	ld c, a
	ld b, $01
	call J25bd
	ret
	db $ff, $ff, $2f, $1e, $17, $12, $1f, $0e, $1b, $1c, $0a, $15, $06, $09, $21, $80
	db $d3, $dd, $21, $ab, $1e, $c5, $06, $0c, $dd, $7e, $00, $77, $23, $dd, $23, $10
	db $f7, $c1, $10, $ed, $06, $09, $21, $73, $60, $36, $01, $23, $36, $00, $23, $36
	db $00, $23, $10, $f5, $c9

J1ee0:
	ld hl, $d1a1

J1ee3:
	ld de, $0020	; could be a data table address, label T0020: created
	ld (hl), $19
	add hl, de
	ld (hl), $0a
	add hl, de
	ld (hl), $1b
	add hl, de
	ld (hl), $1d
	add hl, de
	jr J1efa

J1ef4:
	ld hl, $d221
	ld de, $0020	; could be a data table address, label T0020: created

J1efa:
	call J1f26
	cp $00
	jr z, J1f25
	cp $64
	jr c, J1f0d
	ld (hl), $09
	add hl, de
	ld (hl), $09
	jp J1f25

J1f0d:
	ld b, $00
	ld c, $0a

J1f11:
	cp c
	jr c, J1f18
	sub c
	inc b
	jr J1f11

J1f18:
	ex af, af'
	xor a
	cp b
	jr z, J1f20
	ld (hl), b
	jr J1f22

J1f20:
	ld (hl), $ff

J1f22:
	add hl, de
	ex af, af'
	ld (hl), a

J1f25:
	ret

J1f26:
	ld a, ($6065)
	bit 1, a
	jr z, J1f32
	ld a, ($606f)
	jr J1f35

J1f32:
	ld a, ($606e)

J1f35:
	ret

J1f36:
	ld a, ($9002)
	bit 7, a
	jr z, J1f41
	ld a, $03
	jr J1f43

J1f41:
	ld a, $05

J1f43:
	ret

J1f44:
	call J1f26
	cp $00
	jr nz, J1f4f
	ld (hl), $ff
	jr J1f7e

J1f4f:
	dec a
	cp $12
	jr c, J1f56
	ld a, $11

J1f56:
	ld d, $00
	ld e, a
	ld iy, $0c79	; could be a data table address, label T0c79: created
	add iy, de
	ld de, $0020	; could be a data table address, label T0020: created
	ld a, (iy + $00)
	ld c, a
	and $f0
	jr z, J1f74
	srl a
	srl a
	srl a
	srl a
	ld (hl), a
	add hl, de

J1f74:
	ld a, c
	and $0f
	ld (hl), a
	add hl, de
	ld (hl), $00
	add hl, de
	ld (hl), $00

J1f7e:
	ret

J1f7f:
	push ix
	call J1f26
	cp $00
	jr z, J1f8f
	dec a
	cp $12
	jr c, J1f8f
	ld a, $11

J1f8f:
	ld ix, $0c93	; could be a data table address, label T0c93: created
	ld c, a
	ld b, $00
	add ix, bc
	ld b, (ix + $00)
	ld c, $00
	sla a
	sla a
	add c
	pop ix
	ret
	db $dd, $7e, $01

J1fa8:
	cp $07
	jp nc, J1faf
	ld a, $07

J1faf:
	sub $07
	ld e, a
	srl e
	srl e
	srl e
	srl e
	and $0f
	ex af, af'
	ld a, e
	cp $0b
	jp c, J1fc5
	ld e, $0b

J1fc5:
	ex af, af'
	ret

J1fc7:
	push ix
	call J447d
	call J2d5a
	ld hl, $9001

J1fd2:
	bit 7, (hl)
	jp z, J1fd2
	ld hl, $6059
	inc (hl)
	ld a, (hl)
	ld hl, $605a
	and $07
	jr nz, J1fe4
	inc (hl)

J1fe4:
	call J033a
	ld hl, $604e
	xor a
	ld b, $0b

J1fed:
	ld (hl), a
	inc hl
	djnz J1fed
	ld ix, $601c

J1ff5:
	ld a, (ix + $00)
	and $03
	jp nz, J200c

J1ffd:
	inc b
	ld a, $0a
	cp b
	jp z, J2103
	ld de, $0005	; could be a data table address, label T0005: created
	add ix, de
	jp J1ff5

J200c:
	ld hl, $605f
	bit 1, (hl)
	jr z, J2033
	ld hl, $9002
	bit 5, (hl)
	jr z, J2033
	ld c, a
	ld a, ($6065)
	cp $00
	ld a, c
	jr z, J2033
	ld c, (ix + $02)
	ld a, $fe
	sub c
	ld c, a
	ld d, (ix + $01)
	ld a, $ae
	sub d
	jp J2039

J2033:
	ld a, (ix + $01)
	ld c, (ix + $02)

J2039:
	ld d, (ix + $00)
	srl d
	srl d
	srl d
	srl d
	call J1fa8
	push de
	ld d, $00
	ld iy, $604e
	add iy, de
	push af
	ld a, (iy + $00)
	inc (iy + $00)
	push bc
	ld b, e
	inc b
	ld iy, $7080
	ld de, $0040	; could be a data table address, label T0040: created

J2061:
	add iy, de
	djnz J2061
	sla a
	sla a
	ld e, a
	add iy, de
	pop bc
	ld a, c
	sub $07
	ld iy, a
	inc bc
	pop af
	and $0f
	pop de
	ld e, $00
	bit 2, d
	jr nz, J2083
	bit 0, d
	jr z, J2087
	set 4, a

J2083:
	inc e
	jp J208d

J2087:
	bit 3, d
	jr nz, J208d
	set 5, a

J208d:
	ld hl, $605f
	bit 1, (hl)
	jr z, J20be
	ld hl, $9002
	bit 5, (hl)
	jr z, J20be
	ld ($61c8), a
	ld a, ($6065)
	cp $00
	ld a, ($61c8)
	jr z, J20be
	bit 4, a
	jr nz, J20b1
	set 4, a
	jp J20b3

J20b1:
	res 4, a

J20b3:
	bit 5, a
	jr nz, J20bc
	set 5, a
	jp J20be

J20bc:
	res 5, a

J20be:
	or $c0
	ld iy, a
	nop
	ld a, (ix + $03)
	bit 4, (ix + $04)
	jr nz, J20f7
	cp $d8
	jr nc, J20f7
	ex af, af'
	xor a
	cp e
	jr nz, J20db
	ex af, af'
	add a, $0c
	jp J20dc

J20db:
	ex af, af'

J20dc:
	ex af, af'
	ld a, ($605a)
	and $03
	bit 0, a
	jr z, J20eb
	ld d, $04
	jp J20f1

J20eb:
	cp $02
	jr nz, J20f6
	ld d, $08

J20f1:
	ex af, af'
	add d
	jp J20f7

J20f6:
	ex af, af'

J20f7:
	ld iy, a
	ld bc, $7edd
	inc b
	ld iy, a
	ld (bc), a
	jp J1ffd

J2103:
	ld hl, $70c0
	ld b, $0b
	ld ix, $604e

J210c:
	ld a, (ix + $00)
	push hl
	sla a
	sla a
	ld e, a
	ld d, $00
	add hl, de
	ld (hl), d
	push hl
	pop de
	ld a, e
	pop de
	push de
	sub e
	cp $20
	jr nc, J2130
	pop iy
	push iy
	ld de, $0020	; could be a data table address, label T0020: created
	add iy, de
	xor a
	ld iy, a
	nop

J2130:
	ld de, $0040	; could be a data table address, label T0040: created
	inc ix
	pop hl
	add hl, de
	djnz J210c
	ld hl, $9001

J213c:
	bit 7, (hl)
	jp nz, J213c
	pop ix
	ret

J2144:
	ld a, $00
	ld b, $16
	ld hl, $d4a6
	ld de, $0020	; could be a data table address, label T0020: created

J214e:
	push bc
	ld b, $16
	push hl

J2152:
	ld (hl), a
	inc hl
	djnz J2152
	pop hl
	pop bc
	add hl, de
	djnz J214e
	ret

J215c:
	ld ix, $d0e7
	ld a, $32
	ld de, $0020	; could be a data table address, label T0020: created
	ld ix, a
	ld bc, $77dd
	dec b
	ld ix, a
	rlca
	ld ix, a
	ex af, af'

J2172:
	ld ix, a
	ld de, $dd3d
	ld (hl), a
	inc b
	ld ix, a
	ld a, (bc)
	ld ix, a
	inc c
	dec a
	ld ix, a
	ld (bc), a
	inc a
	add ix, de
	ld ix, a
	ld (bc), a

J2188:
	ld ix, a
	inc b
	ld ix, a
	ld a, (bc)
	ld ix, a
	inc c
	ld ix, a
	djnz J2172
	add hl, de
	inc a
	ld ix, a
	add hl, bc
	ld ix, a
	ld a, (bc)
	ld ix, a
	dec c
	inc a
	ld ix, a
	inc b
	ld ix, a
	inc c
	ld ix, a
	djnz J2188
	add hl, de
	dec a
	dec a
	ld ix, a
	ld (bc), a
	add ix, de
	ld ix, a
	nop
	inc a
	ld ix, a
	dec b
	ld ix, a
	dec bc
	ld ix, a
	ld de, $77dd
	ld (de), a
	inc a
	ld ix, a
	inc b
	add ix, de
	dec a
	dec a
	ld ix, a
	nop
	add ix, de
	inc a
	ld ix, a
	add hl, bc
	ld ix, a
	ld a, (bc)
	inc a
	ld ix, a
	nop
	add ix, de
	dec a
	dec a
	ld ix, a
	inc b
	ld ix, a
	ld c, $dd
	ld (hl), a
	ld (de), a
	add ix, de
	ld ix, a
	ex af, af'
	inc a
	ld ix, a
	ld bc, $77dd
	ld (bc), a
	ld ix, a
	dec b

J21f7:
	ld ix, a
	ld b, $dd
	ld (hl), a
	add hl, bc
	ld ix, a
	ld a, (bc)
	ld ix, a
	dec c
	ld ix, a
	ld c, $dd
	ld (hl), a
	ld de, $77dd
	ld (de), a
	inc a
	ld ix, a
	nop
	ld ix, a
	inc b
	ld ix, a
	inc c
	ld ix, a
	djnz J21f7
	add hl, de
	dec a
	dec a
	ld ix, a
	ex af, af'
	add ix, de
	dec a
	ld ix, a
	ld c, $dd
	ld (hl), a
	ld (de), a
	inc a
	ld ix, a
	inc b
	inc a
	ld ix, a
	ld bc, $77dd
	dec b
	ld ix, a
	add hl, bc
	ld ix, a
	ld a, (bc)
	ld ix, a
	dec c
	ld ix, a
	ld de, $dd3c
	ld (hl), a
	nop
	ld ix, a
	ex af, af'
	add ix, de
	dec a
	dec a
	ld ix, a
	inc b
	ld ix, a
	ld c, $dd
	ld (hl), a
	ld (de), a
	add ix, de
	ld ix, a
	nop
	inc a
	ld ix, a
	add hl, bc
	ld ix, a
	ld a, (bc)
	add ix, de
	dec a
	ld ix, a
	nop
	add ix, de
	ld ix, a
	ld (bc), a
	inc a
	ld ix, a
	dec b
	ld ix, a
	dec bc
	ld ix, a
	inc c
	ld ix, a
	ld de, $dd3c
	ld (hl), a
	inc b
	add ix, de
	dec a
	dec a
	ld ix, a
	ld (bc), a
	add ix, de
	ld ix, a
	inc b
	ld ix, a

J228a:
	inc c
	ld ix, a
	djnz J22cb
	ld ix, a
	add hl, bc
	ld ix, a
	dec c
	dec a
	dec a
	ld ix, a
	ld a, (bc)
	add ix, de
	inc a
	ld ix, a
	ld (bc), a
	ld ix, a
	inc b
	ld ix, a
	ld a, (bc)
	ld ix, a
	inc c
	ld ix, a
	djnz J228a
	add hl, de
	inc a
	ld ix, a
	ld bc, $77dd
	ld (bc), a
	ld ix, a
	dec b
	ld ix, a
	ld b, $dd
	ld (hl), a
	rlca
	ld ix, a
	ex af, af'
	ld ix, a
	ld de, $77dd
	ld (de), a
	inc a
	ld ix, a
	nop

J22cb:
	ld ix, a
	inc b
	ld ix, a
	ld a, (bc)
	ld ix, a
	inc c
	ret
	db $e5, $c5, $06, $ff, $c5, $06, $ff, $c5, $06, $ff, $00, $10, $fd, $c1, $10, $f7
	db $c1, $10, $f1, $c1, $e1, $c9

J22eb:
	push hl
	push bc
	push hl
	cp $04
	jr c, J2302
	bit 0, a
	jr z, J22fc
	ld iy, $0cf0	; could be a data table address, label T0cf0: created
	jr J234e

J22fc:
	ld iy, $0ce7	; could be a data table address, label T0ce7: created
	jr J234e

J2302:
	ld c, $00
	bit 0, a
	jr z, J232c
	ld de, $ffe1
	add hl, de
	ex af, af'
	ld a, (hl)
	cp $e5
	jr nz, J2314
	set 0, c

J2314:
	ld de, $003e	; could be a data table address, label T003e: created
	add hl, de
	ld a, (hl)
	cp $e5
	jr nz, J231f
	set 3, c

J231f:
	push af
	ld a, c
	ld ($608e), a
	pop af
	ex af, af'
	ld iy, $0cde	; could be a data table address, label T0cde: created
	jr J234e

J232c:
	ld de, $0021	; could be a data table address, label T0021: created
	add hl, de
	ex af, af'
	ld a, (hl)
	cp $e5
	jr nz, J2338
	set 1, c

J2338:
	ld de, $ffbe
	add hl, de
	ld a, (hl)
	cp $e5
	jr nz, J2343
	set 2, c

J2343:
	push af
	ld a, c
	ld ($608e), a
	pop af
	ex af, af'
	ld iy, $0cd5	; could be a data table address, label T0cd5: created

J234e:
	call J240f
	pop hl
	ld c, $00

J2354:
	ex af, af'
	srl d
	rr e
	jp nc, J23df
	ld a, c
	cp $00
	jr nz, J2366
	call J24d9
	jr J23df

J2366:
	cp $04
	jr nz, J236f
	call J248b
	jr J23df

J236f:
	call J2423
	push de
	push iy
	ld d, $00
	dec a
	cp $04
	jr c, J237d
	dec a

J237d:
	ld e, a
	add iy, de
	ld a, (iy + $00)
	pop iy
	pop de
	cp $01
	jr nz, J23ca
	push hl
	ld hl, $608e
	ld a, c
	cp $03
	jr nz, J2399
	bit 1, (hl)
	jr z, J23af
	jr J23b3

J2399:
	jr nc, J23a1
	bit 0, (hl)
	jr z, J23af
	jr J23b3

J23a1:
	cp $08
	jr nz, J23ab
	bit 2, (hl)
	jr z, J23af
	jr J23b3

J23ab:
	bit 3, (hl)
	jr nz, J23b3

J23af:
	ld a, $ff
	jr J23c7

J23b3:
	ld a, $e5
	push af
	ld a, $02
	push ix
	push de
	ld de, $0400	; could be a data table address, label T0400: created
	add ix, de
	ld ix, a
	nop
	pop de
	pop ix
	pop af

J23c7:
	pop hl
	jr J23dc

J23ca:
	push af
	ld a, $00
	push ix
	push de
	ld de, $0400	; could be a data table address, label T0400: created
	add ix, de
	ld ix, a
	nop
	pop de
	pop ix
	pop af

J23dc:
	ld ix, a
	nop

J23df:
	ld a, c
	cp $0a
	jr z, J23e9
	inc c
	ex af, af'
	jp J2354

J23e9:
	ex af, af'
	cp $04
	jr c, J23fb
	ld a, $00
	ld ($608e), a
	ld ($6090), a
	ld ($608f), a
	jr J240c

J23fb:
	ld a, $09
	ld ($608f), a
	ld a, $01
	ld ($6090), a
	push hl
	ld hl, $6000
	set 0, (hl)
	pop hl

J240c:
	pop bc
	pop hl
	ret

J240f:
	push af
	sla a
	ld e, a
	ld d, $00
	ld ix, $0cf9	; could be a data table address, label T0cf9: created
	add ix, de
	ld d, (ix + $00)
	ld e, (ix + $01)
	pop af
	ret

J2423:
	push de
	push hl
	pop ix
	cp $06
	jr z, J2467
	cp $02
	jr nz, J2433
	inc ix
	jr J2467

J2433:
	jr nc, J243c
	ld de, $ffe1

J2438:
	add ix, de
	jr J2467

J243c:
	cp $05
	jr nz, J2445
	ld de, $ffe0
	jr J2438

J2445:
	jr nc, J244c
	ld de, $0021	; could be a data table address, label T0021: created
	jr J2438

J244c:
	cp $08
	jr nz, J2455
	ld de, $ffdf
	jr J2438

J2455:
	jr nc, J245c
	ld de, $0020	; could be a data table address, label T0020: created
	jr J2438

J245c:
	cp $09
	jr z, J2465
	ld de, $001f	; could be a data table address, label T001f: created
	jr J2438

J2465:
	dec ix

J2467:
	pop de
	ret

J2469:
	ld ix, $0d09	; could be a data table address, label T0d09: created
	ld a, b
	dec a
	ld d, $00
	ld e, a
	add ix, de
	ld d, (ix + $00)
	ld a, c
	cp $00
	jr z, J2487
	srl d
	srl d
	srl d
	srl d
	ld a, d
	jr J248a

J2487:
	ld a, d
	and $0f

J248a:
	ret

J248b:
	push de
	push hl
	ld de, $ffc0
	add hl, de
	call J2469
	cp $02
	jr nz, J24a5
	ex af, af'
	cp $04
	jr c, J24a1
	ld (hl), $34
	jr J24d5

J24a1:
	ld (hl), $33
	jr J24d5

J24a5:
	jr nc, J24b4
	ex af, af'
	cp $04
	jr c, J24b0
	ld (hl), $38
	jr J24d5

J24b0:
	ld (hl), $32
	jr J24d5

J24b4:
	ex af, af'
	cp $04
	jr c, J24c7
	ex af, af'
	ld a, (hl)
	cp $3b
	jr nz, J24c3
	ld (hl), $3a
	jr J24d6

J24c3:
	ld (hl), $34
	jr J24d6

J24c7:
	ex af, af'
	ld a, (hl)
	cp $3a
	jr nz, J24d1
	ld (hl), $3b
	jr J24d6

J24d1:
	ld (hl), $33
	jr J24d6

J24d5:
	ex af, af'

J24d6:
	pop hl
	pop de
	ret

J24d9:
	push de
	push hl
	inc hl
	inc hl
	call J2469
	cp $02
	jr nz, J24f1
	ex af, af'
	cp $04
	jr c, J24ed
	ld (hl), $3b
	jr J2521

J24ed:
	ld (hl), $33
	jr J2521

J24f1:
	jr nc, J2500
	ex af, af'
	cp $04
	jr c, J24fc
	ld (hl), $3c
	jr J2521

J24fc:
	ld (hl), $31
	jr J2521

J2500:
	ex af, af'
	cp $04
	jr c, J2513
	ex af, af'
	ld a, (hl)
	cp $34
	jr nz, J250f
	ld (hl), $3a
	jr J2522

J250f:
	ld (hl), $3b
	jr J2522

J2513:
	ex af, af'
	ld a, (hl)
	cp $3a
	jr nz, J251d
	ld (hl), $34
	jr J2522

J251d:
	ld (hl), $33
	jr J2522

J2521:
	ex af, af'

J2522:
	pop hl
	pop de
	ret

J2525:
	call J2b06
	call J1aba
	call J1755
	call J253e
	call J2607
	call J271d
	call J27cb
	call J2826
	ret

J253e:
	ld b, $10
	ld hl, $d11e
	ld ix, $2ed7	; could be a data table address, label T2ed7: created
	ld c, $06
	call J27b3
	ld hl, $d0dc
	ld b, $01

J2551:
	push hl
	ld a, b
	cp $01
	jr z, J255f
	ld c, $03
	call J25b1
	ld (hl), a
	jr J2566

J255f:
	ld c, $07
	call J25b1
	ld (hl), $1d

J2566:
	ld de, $0020	; could be a data table address, label T0020: created
	add hl, de
	ld ix, $2ecf	; could be a data table address, label T2ecf: created
	cp $05
	jr nc, J257a
	dec a
	sla a
	ld d, $00
	ld e, a
	jr J257d

J257a:
	ld de, $0006	; could be a data table address, label T0006: created

J257d:
	add ix, de
	call J25b1
	ld a, (ix + $00)
	ld (hl), a
	inc ix
	push de
	ld de, $0020	; could be a data table address, label T0020: created
	add hl, de
	pop de
	call J25b1
	ld a, (ix + $00)
	ld (hl), a
	push de
	ld de, $0040	; could be a data table address, label T0040: created
	add hl, de
	pop de
	call J25bd
	pop hl
	inc b
	ld a, b
	cp $0a
	jr nc, J25b0
	cp $02
	jr nz, J25ad
	dec hl
	dec hl
	jr J2551

J25ad:
	dec hl
	jr J2551

J25b0:
	ret

J25b1:
	push af
	push hl
	push de
	ld de, $0400	; could be a data table address, label T0400: created
	add hl, de
	ld (hl), c
	pop de
	pop hl
	pop af
	ret

J25bd:
	ld a, b
	ld ix, $d380
	dec a
	sla a
	sla a
	ld d, a
	sla a
	add d
	ld e, a
	ld d, $00
	add ix, de
	push bc
	ld b, $0c
	ld de, $0400	; could be a data table address, label T0400: created

J25d6:
	push hl
	add hl, de
	ld (hl), c
	pop hl
	ld a, (ix + $00)
	ld (hl), a
	push de
	ld de, $0020	; could be a data table address, label T0020: created
	add hl, de
	inc ix
	pop de
	djnz J25d6
	ld b, $06
	ld a, c
	push hl
	add hl, de
	call J1e7d
	pop hl
	pop bc
	ld ix, $6073
	ld a, b
	push bc
	dec a
	ld b, a
	sla a
	add b
	pop bc
	ld e, a
	ld d, $00
	add ix, de
	call J1e06
	ret

J2607:
	ld hl, $d4ac
	ld a, $02
	ld c, $07
	ld de, $0020	; could be a data table address, label T0020: created

J2611:
	push hl
	ld b, $17

J2614:
	ld (hl), a
	add hl, de
	djnz J2614
	pop hl
	inc hl
	dec c
	jr nz, J2611
	ld hl, $d750
	ld a, $07
	ld (hl), a
	inc hl
	ld (hl), a
	add hl, de
	ld (hl), a
	dec hl
	ld (hl), a
	ld hl, $d0b1
	ld a, $aa
	call J26f6
	dec hl
	dec hl
	ld (hl), $bc
	dec hl
	ld a, $b4
	ld (hl), a
	inc a
	add hl, de
	ld (hl), a
	add hl, de
	ld (hl), a
	add hl, de
	push hl
	ld (hl), $a5
	add hl, de
	ld (hl), $a6
	pop hl
	inc hl
	ld a, $a7
	call J2707
	dec hl
	and a
	sbc hl, de
	ld a, $a4
	call J2707
	ld hl, $d16f
	ld (hl), $a7
	add hl, de
	ld (hl), $a8
	ld hl, $d1b1
	ld a, $aa
	call J26f6
	dec hl
	dec hl
	push hl
	ld a, $b1
	call J2707
	pop hl
	dec hl
	ld a, $a4
	call J2707
	ld hl, $d20f
	ld (hl), $bd
	dec hl
	ld (hl), $bf
	dec hl
	ld (hl), $ad
	and a
	sbc hl, de
	ld (hl), $ae
	dec hl
	ld a, $bb
	call J2711
	ld hl, $d251
	ld a, $aa
	push hl
	ld (hl), a
	inc a
	inc a
	dec hl
	ld (hl), a
	dec hl
	ld (hl), $bc
	dec hl
	ld a, $b4
	ld (hl), a
	inc a
	inc a
	add hl, de
	ld (hl), a
	pop hl
	add hl, de
	ld a, $af
	ld (hl), a
	inc a
	add hl, de
	ld (hl), a
	dec hl
	ld a, $b8
	ld (hl), a
	dec a
	and a
	sbc hl, de
	ld (hl), a
	dec hl
	add hl, de
	push hl
	ld (hl), $be
	add hl, de
	ld a, $b2
	ld (hl), a
	inc a
	add hl, de
	ld (hl), a
	pop hl
	dec hl
	ld a, $a4
	call J2707
	push hl
	inc hl
	ld (hl), $bd
	add hl, de
	ld a, $a7
	call J2707
	pop hl
	ld a, $a4
	call J2707
	ld hl, $d34e
	ld (hl), $bf
	dec hl
	ld (hl), $ad
	and a
	sbc hl, de
	ld (hl), $ae
	dec hl
	ld a, $bb
	call J2711
	ld hl, $d350
	ld (hl), $93
	inc hl
	ld (hl), $f1
	add hl, de
	ld (hl), $67
	dec hl
	ld (hl), $61
	ret

J26f6:
	push af
	push hl
	ld (hl), a
	inc a
	push hl
	add hl, de
	ld (hl), a
	pop hl
	dec hl
	inc a
	ld (hl), a
	add hl, de
	inc a
	ld (hl), a
	pop hl
	pop af
	ret

J2707:
	push bc
	ld b, $03

J270a:
	ld (hl), a
	inc a
	add hl, de
	djnz J270a
	pop bc
	ret

J2711:
	push bc
	ld b, $03

J2714:
	ld (hl), a
	dec a
	and a
	sbc hl, de
	djnz J2714
	pop bc
	ret

J271d:
	ld b, $09
	ld hl, $d18b
	ld ix, $2ef1	; could be a data table address, label T2ef1: created
	ld c, $03
	call J27b3
	ld b, $02
	ld hl, $d1ea
	ld ix, $2efa	; could be a data table address, label T2efa: created
	ld c, $03
	call J27b3
	ld b, $0e
	ld hl, $d129
	ld ix, $2efc	; could be a data table address, label T2efc: created
	ld c, $07
	call J27b3
	ld b, $05
	ld hl, $d1c7
	ld ix, $2f0a	; could be a data table address, label T2f0a: created
	ld c, $01
	call J27b3

J2755:
	ld a, ($9002)
	bit 6, a
	jr nz, J278f

J275c:
	ld b, $03
	ld hl, $d105
	ld ix, $2f21	; could be a data table address, label T2f21: created
	ld c, $01
	call J27b3
	ld b, $0e
	ld hl, $d185
	ld ix, $2f24	; could be a data table address, label T2f24: created
	call J27b3
	ld de, $0400	; could be a data table address, label T0400: created
	ld hl, $d0c5
	ld c, $04
	push hl
	add hl, de
	ld (hl), c
	pop hl
	ld (hl), $01
	ld hl, $d165
	push hl
	add hl, de
	ld (hl), c
	pop hl
	ld (hl), $02
	jr J27b2

J278f:
	ld a, ($605e)
	cp $01
	jr nz, J275c
	ld de, $0400	; could be a data table address, label T0400: created
	ld hl, $d0c5
	ld c, $04
	push hl
	add hl, de
	ld (hl), c
	pop hl
	ld (hl), $01
	ld b, $12
	ld hl, $d105
	ld ix, $2f0f	; could be a data table address, label T2f0f: created
	ld c, $01
	call J27b3

J27b2:
	ret

J27b3:
	push de
	ld de, $0400	; could be a data table address, label T0400: created

J27b7:
	push hl
	add hl, de
	ld (hl), c
	pop hl
	ld a, (ix + $00)
	ld (hl), a
	push de
	ld de, $0020	; could be a data table address, label T0020: created
	add hl, de
	inc ix
	pop de
	djnz J27b7
	pop de
	ret

J27cb:
	push af
	push bc
	push de
	push hl
	ld b, $09
	ld hl, $d482
	ld a, $02
	ld de, $0020	; could be a data table address, label T0020: created

J27d9:
	ld (hl), a
	inc hl
	ld (hl), a
	add hl, de
	ld (hl), a
	dec hl
	ld (hl), a
	add hl, de
	djnz J27d9
	jr J27ec

J27e5:
	push af
	push bc
	push de
	push hl
	ld de, $0020	; could be a data table address, label T0020: created

J27ec:
	ld a, ($605e)
	ld b, a
	ld a, $09
	cp b
	jr c, J2811
	xor a
	ld hl, $9003
	rld
	ld hl, $d082
	cp $0f
	jr nz, J280d
	ld c, $e9

J2804:
	ld a, c
	call J2816
	add hl, de
	djnz J2804
	jr J2811

J280d:
	ld c, $ed
	jr J2804

J2811:
	pop hl
	pop de
	pop bc
	pop af
	ret

J2816:
	push de
	ld de, $0020	; could be a data table address, label T0020: created
	ld (hl), a
	dec a
	inc hl
	ld (hl), a
	dec a
	add hl, de
	ld (hl), a
	dec a
	dec hl
	ld (hl), a
	pop de
	ret

J2826:
	ld de, $0020	; could be a data table address, label T0020: created
	ld b, $08
	ld hl, $d681
	ld a, $02

J2830:
	ld (hl), a
	add hl, de
	djnz J2830
	ld a, ($9002)
	bit 6, a
	jr z, J2856
	ld b, $06
	ld ix, $d281
	ld hl, $2ee7	; could be a data table address, label T2ee7: created
	call J29cf
	ld hl, $d361
	ld a, ($605e)
	cp $09
	jr c, J2853
	ld a, $09

J2853:
	ld (hl), a
	jr J2862

J2856:
	ld b, $04
	ld ix, $d301
	ld hl, $2eed	; could be a data table address, label T2eed: created
	call J29cf

J2862:
	ret

J2863:
	push af
	ld hl, $d0d1
	ld ix, $2f32	; could be a data table address, label T2f32: created
	cp $01
	jr nc, J287c

J286f:
	call J28f5
	ld de, $005e	; could be a data table address, label T005e: created
	add hl, de
	ld a, (ix + $00)
	ld (hl), a
	jr J2880

J287c:
	inc ix
	jr J286f

J2880:
	pop af
	ld hl, $d18f
	ld ix, $2f36	; could be a data table address, label T2f36: created
	cp $01
	push af
	jr nc, J28ad

J288d:
	call J28f5
	ld de, $001d	; could be a data table address, label T001d: created
	add hl, de
	call J28f5
	ld de, $0023	; could be a data table address, label T0023: created
	add hl, de
	call J28f5
	inc hl
	inc hl
	call J28f5
	ld de, $003e	; could be a data table address, label T003e: created
	add hl, de
	ld a, (ix + $00)
	ld (hl), a
	jr J28b1

J28ad:
	inc ix
	jr J288d

J28b1:
	pop af
	ld hl, $d271
	ld ix, $2f40	; could be a data table address, label T2f40: created
	cp $01
	push af
	jr nc, J28cb

J28be:
	call J28f5
	ld de, $003e	; could be a data table address, label T003e: created
	add hl, de
	ld a, (ix + $00)
	ld (hl), a
	jr J28cf

J28cb:
	inc ix
	jr J28be

J28cf:
	pop af
	ld hl, $d2ec
	ld ix, $2f44	; could be a data table address, label T2f44: created
	cp $01
	push af
	jr nc, J28ef

J28dc:
	call J28f5
	inc hl
	inc hl
	inc hl
	call J28f5
	ld de, $0040	; could be a data table address, label T0040: created
	add hl, de
	ld a, (ix + $00)
	ld (hl), a
	jr J28f3

J28ef:
	inc ix
	jr J28dc

J28f3:
	pop af
	ret

J28f5:
	ld a, (ix + $00)
	ld (hl), a
	inc ix
	inc ix
	ret

J28fe:
	push hl
	call J291c
	call J2ac1
	ld hl, $d1b8
	call J1ee3
	call J2982
	call J29a8
	call J29de
	call J2a48
	call J2aa6
	pop hl
	ret

J291c:
	ld hl, $d5b8
	ld a, $05
	ld b, $06
	call J2974
	ld hl, $d5d5
	ld a, $01
	dec b
	call J2974
	ld hl, $d574
	ld a, $04
	ld b, $0a
	call J2974
	ld hl, $d533
	ld a, $06
	ld b, $0f
	call J2974
	ld hl, $d550
	ld a, $06
	ld b, $0c
	call J2974
	inc hl
	call J2974
	ld hl, $d5ad
	ld a, $05
	ld b, $06
	call J2974
	inc hl
	call J2974
	ld hl, $d5aa
	call J2974
	inc hl
	call J2974
	ld hl, $d588
	ld a, $07
	ld b, $09
	call J2974
	ret

J2974:
	push bc
	push hl
	push af
	ld de, $0020	; could be a data table address, label T0020: created

J297a:
	ld (hl), a
	add hl, de
	djnz J297a
	pop af
	pop hl
	pop bc
	ret

J2982:
	ld hl, $d1d5
	ld (hl), $2a
	ld de, $0020	; could be a data table address, label T0020: created
	add hl, de
	call J1f44
	ld ix, $6021
	ld (ix + $00), $82
	ld (ix + $01), $40
	ld (ix + $02), $ae
	call J1f7f
	ld ix, a
	inc bc
	ld ix, b
	inc b
	ret

J29a8:
	call J1f26
	ld b, $11
	ld hl, $2f4a	; could be a data table address, label T2f4a: created
	ld de, $000f	; could be a data table address, label T000f: created

J29b3:
	dec a
	jr z, J29b9
	add hl, de
	djnz J29b3

J29b9:
	ld ix, $d133
	ld b, $0f
	call J29cf
	ld b, $09
	ld ix, $d188
	ld hl, $3058	; could be a data table address, label T3058: created
	call J29cf
	ret

J29cf:
	push de
	ld de, $0020	; could be a data table address, label T0020: created

J29d3:
	ld a, (hl)
	ld ix, a
	nop
	inc hl
	add ix, de
	djnz J29d3
	pop de
	ret

J29de:
	call J1f26
	ld hl, $d2b0
	cp $12
	jr c, J29ef
	ld b, $06
	call J2a32
	jr J2a31

J29ef:
	cp $0a
	jr c, J2a00
	ld b, $05
	ld de, $0020	; could be a data table address, label T0020: created
	and a
	sbc hl, de
	call J2a32
	jr J2a31

J2a00:
	cp $05
	jr c, J2a11
	ld b, $04
	ld de, $0040	; could be a data table address, label T0040: created
	and a
	sbc hl, de
	call J2a32
	jr J2a31

J2a11:
	cp $02
	jr c, J2a22
	ld b, $03
	ld de, $0060	; could be a data table address, label T0060: created
	and a
	sbc hl, de
	call J2a32
	jr J2a31

J2a22:
	cp $01
	jr c, J2a31
	ld b, $02
	ld de, $0080	; could be a data table address, label T0080: created
	and a
	sbc hl, de
	call J2a32

J2a31:
	ret

J2a32:
	ld de, $0020	; could be a data table address, label T0020: created

J2a35:
	ld (hl), $63
	inc hl
	ld (hl), $73
	and a
	sbc hl, de
	ld (hl), $f0
	dec hl
	ld (hl), $a3
	and a
	sbc hl, de
	djnz J2a35
	ret

J2a48:
	ld hl, $d24d
	ld iy, $606f
	ld b, $03

J2a51:
	ld ix, $0cad	; could be a data table address, label T0cad: created
	inc iy
	ld e, (iy + $00)
	sla e
	sla e
	ld d, $00
	add ix, de
	call J2a68
	djnz J2a51
	ret

J2a68:
	push de
	ld de, $0020	; could be a data table address, label T0020: created
	ld a, (ix + $00)
	ld (hl), a
	inc hl
	inc ix
	ld a, (ix + $00)
	inc a
	ld (hl), a
	and a
	sbc hl, de
	call J2a91
	ld (hl), a
	dec hl
	inc ix
	inc ix
	ld a, (ix + $00)
	inc a
	ld (hl), a
	ld de, $0020	; could be a data table address, label T0020: created
	and a
	sbc hl, de
	pop de
	ret

J2a91:
	push bc
	ld a, (iy + $00)
	ld b, $f1
	cp $09
	jr z, J2aa3
	sub $05
	jr c, J2aa3
	inc a
	add b
	jr J2aa4

J2aa3:
	ld a, b

J2aa4:
	pop bc
	ret

J2aa6:
	ld hl, $d24a
	ld b, $03
	ld de, $0020	; could be a data table address, label T0020: created

J2aae:
	ld (hl), $62
	inc hl
	ld (hl), $71
	and a
	sbc hl, de
	ld (hl), $ef
	dec hl
	ld (hl), $a1
	and a
	sbc hl, de
	djnz J2aae
	ret

J2ac1:
	ld b, $15
	ld hl, $d0a6
	ld a, $32

J2ac8:
	ld (hl), a
	call J2afb
	inc hl
	djnz J2ac8
	ld (hl), $30
	call J2afb
	ld b, $15
	ld hl, $d0db
	ld de, $0020	; could be a data table address, label T0020: created
	dec a

J2add:
	ld (hl), a
	call J2afb
	add hl, de
	djnz J2add
	ld hl, $d0c6
	ld de, $0020	; could be a data table address, label T0020: created
	ld a, $ff
	ld c, $15

J2aee:
	push hl
	ld b, $15

J2af1:
	ld (hl), a
	add hl, de
	djnz J2af1
	pop hl
	inc hl
	dec c
	jr nz, J2aee
	ret

J2afb:
	push hl
	push de
	ld de, $0400	; could be a data table address, label T0400: created
	add hl, de
	ld (hl), $00
	pop de
	pop hl
	ret

J2b06:
	ld bc, $03ff	; could be a data table address, label T03ff: created
	ld hl, $d400

J2b0c:
	xor a
	ld (hl), a
	inc hl
	dec bc
	ld a, b
	or c
	jr nz, J2b0c
	ret

J2b15:
	ld a, ($6065)
	cp $00
	jr nz, J2b22
	ld ix, $60a3
	jr J2b26

J2b22:
	ld ix, $60a6

J2b26:
	ld a, $01
	ld c, (ix + $00)
	ld d, (ix + $01)
	ld e, (ix + $02)

J2b31:
	ld b, $00
	srl e
	rr d
	rr c
	rl b
	call J2b6e
	push af
	cp $03
	jr z, J2b5f
	cp $05
	jr z, J2b5f
	cp $06
	jr z, J2b5f
	cp $0a
	jr z, J2b5f
	cp $0c
	jr z, J2b5f
	cp $0d
	jr z, J2b5f
	cp $0f
	jr z, J2b5f
	cp $10
	jr nz, J2b63

J2b5f:
	rr b
	rl l

J2b63:
	pop af
	inc a
	cp $15
	jr nz, J2b31
	ld c, l
	call J2c1c
	ret

J2b6e:
	push de
	push bc
	push ix
	push af
	push hl
	ld e, a
	ld c, a
	call J2c04
	ld a, b
	cp $00
	jr nz, J2b98
	ld (hl), $36
	push hl
	inc hl
	ld (hl), $39
	pop hl
	dec hl
	ld (hl), $ff
	ld de, $0020	; could be a data table address, label T0020: created
	inc hl
	push hl
	add hl, de
	ld (hl), $37
	pop hl
	and a
	sbc hl, de
	ld (hl), $35
	jr J2bb0

J2b98:
	ld (hl), $3e
	push hl
	inc hl
	ld (hl), $3d
	pop hl
	dec hl
	ld (hl), $3f
	ld de, $0020	; could be a data table address, label T0020: created
	inc hl
	push hl
	add hl, de
	ld (hl), $ff
	pop hl
	and a
	sbc hl, de
	ld (hl), $40

J2bb0:
	add hl, de
	push hl
	ld iy, $0d45	; could be a data table address, label T0d45: created
	ld ix, $0d55	; could be a data table address, label T0d55: created
	ld d, $00
	ld e, c
	dec e
	push de
	srl e
	add ix, de
	ld c, (ix + $00)
	pop de
	bit 0, e
	jr nz, J2bd1
	ld a, c
	and $0f
	ld c, a
	jr J2bd9

J2bd1:
	srl c
	srl c
	srl c
	srl c

J2bd9:
	push bc
	ld b, $00
	sla c
	sla c
	add iy, bc
	pop bc
	ld a, b
	cp $00
	jr nz, J2bec
	inc iy
	inc iy

J2bec:
	ld bc, $0040	; could be a data table address, label T0040: created
	and a
	sbc hl, bc
	ld a, (iy + $00)
	ld (hl), a
	pop hl
	inc hl
	inc hl
	ld a, (iy + $01)
	ld (hl), a
	pop hl
	pop af
	pop ix
	pop bc
	pop de
	ret

J2c04:
	push de
	push ix
	ld ix, $0d1d	; could be a data table address, label T0d1d: created
	ld d, $00
	dec e
	sla e
	add ix, de
	ld ixh, (ix + $01)
	ld ixl, (ix + $00)
	pop ix
	pop de
	ret

J2c1c:
	ld d, $00
	sla c
	rl d
	sla c
	rl d
	ld hl, $d12f
	call J2c5a
	sla c
	rl d
	sla c
	rl d
	ld hl, $d177
	call J2c5a
	ld e, $00
	sla c
	rl d
	sla c
	rl e
	sla c
	rl d
	sla c
	rl e
	ld hl, $d26f
	call J2c5a
	ld d, e
	ld hl, $d275
	call J2c5a
	ret

J2c5a:
	ld a, d
	cp $00
	jr z, J2c6b
	cp $02
	jr z, J2c6f
	cp $03
	jr nz, J2c71
	ld (hl), $3b
	jr J2c71

J2c6b:
	ld (hl), $34
	jr J2c71

J2c6f:
	ld (hl), $3a

J2c71:
	ld d, $00
	ret

J2c74:
	call J2ac1
	ld hl, $6026
	bit 1, (hl)
	jr z, J2c81
	call J2ca2

J2c81:
	ld hl, $d150
	ld a, $ff
	ld b, $0d
	call J1e7d
	ld hl, $d550
	ld a, $06
	ld b, $0d
	call J1e7d
	ld hl, $0d6d	; could be a data table address, label T0d6d: created
	ld ix, $d150
	ld b, $0d
	call J29cf
	ret

J2ca2:
	xor a
	ld hl, $6021
	ld (hl), a
	call J1fc7
	call J178f
	ld hl, $602b
	ld b, $07
	ld de, $0005	; could be a data table address, label T0005: created
	xor a

J2cb6:
	ld (hl), a
	push de
	call J2e4f
	pop de
	add hl, de
	djnz J2cb6
	ld hl, $6026
	push hl
	ld (hl), $12
	inc hl

J2cc6:
	call J2e4f
	dec (hl)
	ld a, (hl)
	cp $07
	jr nz, J2cc6
	pop hl
	ld (hl), $22
	inc hl
	inc hl

J2cd4:
	call J2e4f
	dec (hl)
	ld a, (hl)
	cp $22
	jr nz, J2cd4
	ld hl, $6026
	ld (hl), $00
	call J1fc7
	call J178f
	ld a, ($6065)
	cp $00
	jr z, J2cf4
	ld hl, $6067
	jr J2cf7

J2cf4:
	ld hl, $6066

J2cf7:
	inc (hl)
	call J1d77
	ret

J2cfc:
	push af
	call J2ac1
	ld hl, $d571
	ld b, $0a
	ld a, $07
	call J1e7d
	dec hl
	call J1e7d
	dec hl
	call J1e7d
	pop af
	cp $01
	jr z, J2d27
	jr nc, J2d41
	ld b, $09
	ld ix, $d190
	ld hl, $0e68	; could be a data table address, label T0e68: created
	call J29cf
	jr J2d59

J2d27:
	ld b, $0a
	ld ix, $d171
	ld hl, $0e71	; could be a data table address, label T0e71: created
	call J29cf
	ld b, $09
	ld ix, $d18f
	ld hl, $0e68	; could be a data table address, label T0e68: created
	call J29cf
	jr J2d59

J2d41:
	ld b, $0a
	ld ix, $d171
	ld hl, $0e7b	; could be a data table address, label T0e7b: created
	call J29cf
	ld b, $09
	ld ix, $d18f
	ld hl, $0e68	; could be a data table address, label T0e68: created
	call J29cf

J2d59:
	ret

J2d5a:
	push af

J2d5b:
	ld a, ($9002)
	bit 4, a
	jr z, J2d5b
	pop af
	ret

J2d64:
	ld hl, $6026
	ld (hl), $82
	ld b, $1e
	ld a, $e4
	inc hl
	inc hl
	inc hl

J2d70:
	call J2e4f
	ld (hl), a
	inc hl
	ld (hl), $00
	dec hl
	djnz J2d70
	ld b, $06

J2d7c:
	add a, $04
	ld c, $05

J2d80:
	ld (hl), a
	call J2e4f
	dec c
	jr nz, J2d80
	djnz J2d7c
	ld b, $06
	ld a, $48

J2d8d:
	ld c, $05

J2d8f:
	ld (hl), a
	inc hl
	ld (hl), $09
	set 4, (hl)
	dec hl
	call J2e4f
	dec c
	jr nz, J2d8f
	add a, $04
	djnz J2d8d
	ld b, $1e

J2da2:
	ld (hl), a
	call J2e4f
	djnz J2da2
	ld ix, $6002
	set 0, (ix + $00)
	dec hl
	ld de, $2dce	; could be a data table address, label T2dce: created
	push de
	call J2dd7
	call J2e14
	call J2e14
	call J2dd7
	call J2dd7
	call J2e14
	call J2e14
	call J2dd7
	pop de
	ld hl, $6026
	ld (hl), $00
	call J3f2f
	ret

J2dd7:
	dec hl
	ld b, $02
	ld a, $af

J2ddc:
	inc (hl)
	cp (hl)
	jp z, J2e12
	call J2e4f
	djnz J2ddc
	ld b, $04

J2de8:
	ld a, $af
	inc (hl)
	cp (hl)
	jp z, J2e12
	inc hl
	inc (hl)
	ld a, $d7
	cp (hl)
	jp z, J2e12
	call J2e4f
	dec hl
	djnz J2de8
	inc hl
	ld b, $04

J2e00:
	inc (hl)
	cp (hl)
	jp z, J2e12
	call J2e4f
	djnz J2e00
	ld b, $05

J2e0c:
	call J2e4f
	djnz J2e0c
	ret

J2e12:
	pop de
	ret

J2e14:
	dec hl
	ld b, $02
	xor a

J2e18:
	dec (hl)
	cp (hl)
	jp z, J2e4d
	call J2e4f
	djnz J2e18
	ld b, $04

J2e24:
	xor a
	dec (hl)
	cp (hl)
	jp z, J2e4d
	inc hl
	inc (hl)
	ld a, $d7
	cp (hl)
	jp z, J2e4d
	call J2e4f
	dec hl
	djnz J2e24
	inc hl
	ld b, $04

J2e3b:
	inc (hl)
	cp (hl)
	jp z, J2e4d
	call J2e4f
	djnz J2e3b
	ld b, $05

J2e47:
	call J2e4f
	djnz J2e47
	ret

J2e4d:
	pop de
	ret

J2e4f:
	push af
	push hl
	push bc
	call J1fc7
	call J178f
	pop bc
	pop hl
	pop af
	ret

J2e5c:
	ld hl, $0ea4	; could be a data table address, label T0ea4: created
	call J1f26
	bit 0, a
	jr nz, J2e67
	inc hl

J2e67:
	ld a, ($61b9)
	cp (hl)
	jp c, J2e9e
	ld a, ($6065)
	cp $00
	jr z, J2e81
	ld a, ($9002)
	bit 5, a
	jr z, J2e81
	ld a, ($9001)
	jr J2e84

J2e81:
	ld a, ($9000)

J2e84:
	cp $00
	jp z, J2e9e
	ld a, ($6198)
	ld hl, $61c4
	ld b, $04

J2e91:
	srl a
	jr nc, J2e97
	set 3, a

J2e97:
	ld (hl), a
	inc hl
	djnz J2e91
	jp J2ecb

J2e9e:
	ld hl, $61c4
	ld b, $04

J2ea3:
	ld a, r	; read z80 dram refresh counter, bits 6-0 count, bit 7 remains unchanged. usually used as a random number generator
	and $0f
	srl a
	inc a
	cp $03
	jr c, J2ebb
	cp $05
	jr c, J2ec0
	cp $07
	jr c, J2ec5
	ld a, $08
	jp J2ec7

J2ebb:
	ld a, $01
	jp J2ec7

J2ec0:
	ld a, $02
	jp J2ec7

J2ec5:
	ld a, $04

J2ec7:
	ld (hl), a
	inc hl
	djnz J2ea3

J2ecb:
	call J46d8
	ret

T2ecf:
	db $18, $19, $17, $0d, $1b, $0d, $1d, $11

T2ed7:
	db $1d, $18, $0d, $0a, $22, $2e, $1c, $ff, $11, $12, $ff, $1c, $0c, $18, $1b, $0e

T2ee7:
	db $0c, $1b, $0e, $0d, $12, $1d

T2eed:
	db $0f, $1b, $0e, $0e

T2ef1:
	db $19, $1b, $0e, $1c, $0e, $17, $1d, $0e, $0d

T2efa:
	db $0b, $22

T2efc:
	db $1e, $17, $12, $1f, $0e, $1b, $1c, $0a, $15, $2f, $01, $09, $08, $01

T2f0a:
	db $19, $1b, $0e, $1c, $1c

T2f0f:
	db $19, $15, $0a, $22, $0e, $1b, $ff, $0b, $1e, $1d, $1d, $18, $17, $ff, $18, $17
	db $15, $22

T2f21:
	db $18, $1b, $ff

T2f24:
	db $ff, $19, $15, $0a, $22, $0e, $1b, $ff, $0b, $1e, $1d, $1d, $18, $17

T2f32:
	db $c0, $ab, $c1, $a8

T2f36:
	db $a8, $c1, $b9, $c3, $b2, $c2, $ab, $c0, $bd, $c4

T2f40:
	db $c5, $af, $c2, $b2

T2f44:
	db $b9, $c3, $bd, $c4, $a8, $c1

T2f4a:
	db $ff, $ff, $ff, $0c, $1e, $0c, $1e, $16, $0b, $0e, $1b, $ff, $ff, $ff, $ff, $ff
	db $ff, $ff, $0e, $10, $10, $ff, $19, $15, $0a, $17, $1d, $ff, $ff, $ff, $ff, $ff
	db $ff, $ff, $0c, $0a, $1b, $1b, $18, $1d, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	db $ff, $1b, $0a, $0d, $12, $1c, $11, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	db $19, $0a, $1b, $1c, $15, $0e, $22, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $1d
	db $18, $16, $0a, $1d, $18, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $19, $1e
	db $16, $19, $14, $12, $17, $ff, $ff, $ff, $ff, $ff, $0b, $0a, $16, $0b, $18, $18
	db $ff, $1c, $11, $18, $18, $1d, $ff, $ff, $13, $0a, $19, $0a, $17, $0e, $1c, $0e
	db $ff, $1b, $0a, $0d, $12, $1c, $11, $ff, $ff, $ff, $16, $1e, $1c, $11, $1b, $18
	db $18, $16, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $19, $18, $1d, $0a, $1d, $18
	db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $18, $17, $12, $18, $17, $ff
	db $ff, $ff, $ff, $ff, $0c, $11, $12, $17, $0e, $1c, $0e, $ff, $0c, $0a, $0b, $0b
	db $0a, $10, $0e, $ff, $ff, $ff, $ff, $1d, $1e, $1b, $17, $12, $19, $ff, $ff, $ff
	db $ff, $ff, $ff, $ff, $ff, $1b, $0e, $0d, $ff, $19, $0e, $19, $0e, $1b, $ff, $ff
	db $ff, $ff, $ff, $ff, $ff, $0c, $0e, $15, $0e, $1b, $22, $ff, $ff, $ff, $ff, $ff
	db $ff, $1c, $20, $0e, $0e, $1d, $ff, $19, $18, $1d, $0a, $1d, $18, $ff, $ff, $ff
	db $ff, $11, $18, $1b, $1c, $0e, $1b, $0a, $0d, $12, $1c, $11, $ff, $ff

T3058:
	db $10, $18, $18, $0d, $ff, $15, $1e, $0c, $14

J3061:
	ld a, c
	ld ix, $602b
	sla a
	sla a
	add c
	ld d, $00
	ld e, a
	add ix, de
	ld (ix + $00), $82
	ld (ix + $01), $58
	ld (ix + $02), $86
	ld a, c
	call J3087
	ld ix, a
	inc bc
	ld ix, b
	inc b
	ret

J3087:
	push af
	call J1f26
	cp $09
	jr nc, J30af
	ld c, a
	cp $03
	jr z, J309a
	cp $04
	jr z, J309d
	jr J309e

J309a:
	inc a
	jr J309e

J309d:
	dec a

J309e:
	ld b, a
	ld a, c
	dec a
	push hl
	ld hl, $0c8b	; could be a data table address, label T0c8b: created
	ld d, $00
	ld e, a
	add hl, de
	ld a, (hl)
	ld c, a
	pop hl
	pop af
	ld a, c
	ret

J30af:
	dec a
	and $07
	cp $05
	jr c, J30b8
	sub $05

J30b8:
	ld b, a
	pop af
	add b
	ld b, a
	inc b
	ld c, a
	ld a, $18
	sla c
	sla c
	sla c
	ex af, af'
	ld a, c
	sla c
	add c
	ld c, a
	ex af, af'
	add c
	ret

J30cf:
	call J34a9
	ld b, a
	ld a, $75
	sub b
	ld ($60a9), a
	ret

J30da:
	ld b, $03
	ld a, ($6065)
	cp $00
	jr z, J30e8
	ld hl, $60a6
	jr J30eb

J30e8:
	ld hl, $60a3

J30eb:
	ld (hl), $95
	inc hl
	ld (hl), $6a
	inc hl
	ld (hl), $0a
	ret

J30f4:
	ld a, ($6065)
	cp $00
	jr z, J3100
	ld a, ($60a0)
	jr J3103

J3100:
	ld a, ($609d)

J3103:
	ld b, $07
	ld hl, $d4bd
	ld d, $03
	ld e, $07

J310c:
	rra
	jr c, J3112
	ld (hl), e
	jr J3113

J3112:
	ld (hl), d

J3113:
	push de
	ld de, $0020	; could be a data table address, label T0020: created
	add hl, de
	pop de
	djnz J310c
	ret

J311c:
	ld a, ($6065)
	cp $00
	jr z, J3128
	ld a, ($60a1)
	jr J312b

J3128:
	ld a, ($609e)

J312b:
	ld b, $05
	ld hl, $d5dd
	ld d, $03
	ld e, $06

J3134:
	rra
	jr c, J313a
	ld (hl), e
	jr J313b

J313a:
	ld (hl), d

J313b:
	push de
	ld de, $0020	; could be a data table address, label T0020: created
	add hl, de
	pop de
	djnz J3134
	ret

J3144:
	ld hl, $609f
	ld a, ($6065)
	cp $00
	jr z, J3151
	ld hl, $60a2

J3151:
	xor a
	ld (hl), a
	ret

J3154:
	ld a, ($6065)
	cp $00
	jr z, J3160
	ld a, ($60a2)
	jr J3163

J3160:
	ld a, ($609f)

J3163:
	ld hl, $d6bd
	ld de, $0020	; could be a data table address, label T0020: created
	ld b, $03
	ld c, $05
	cp $00
	jr nz, J317e
	ld (hl), b
	add hl, de
	ld (hl), b

J3174:
	add hl, de
	ld (hl), b
	add hl, de
	ld (hl), b

J3178:
	add hl, de
	ld (hl), b
	add hl, de
	ld (hl), b
	jr J3191

J317e:
	ld (hl), c
	add hl, de
	ld (hl), c
	cp $01
	jr z, J3174
	add hl, de
	ld (hl), c
	add hl, de
	ld (hl), c
	cp $02
	jr z, J3178
	add hl, de
	ld (hl), c
	add hl, de
	ld (hl), c

J3191:
	ret

J3192:
	call J3363
	call J3f3d
	ld b, $0a
	ld d, $00
	ld iy, $6091
	push iy

J31a2:
	ld a, (iy + $01)
	call J32c5
	inc iy
	inc iy
	inc iy
	inc iy
	inc d
	ld a, $03
	cp d
	jr nz, J31a2
	call J34a9
	pop iy
	ld b, $0b
	ld d, $00
	ex af, af'

J31c0:
	ld a, (iy + $02)
	call J32c5
	inc iy
	inc iy
	inc iy
	inc iy
	inc d
	ex af, af'
	dec a
	jr z, J31e1
	ex af, af'
	ld a, d
	cp $03
	jr nz, J31c0
	ld iy, $6092
	ld d, $00
	jr J31c0

J31e1:
	ld d, $00
	ld iy, $6070
	ld a, r	; read z80 dram refresh counter, bits 6-0 count, bit 7 remains unchanged. usually used as a random number generator
	rlca
	rl d
	rlca
	and $03
	adc d
	ld d, $00
	cp $01
	jr z, J3228
	jr c, J3208
	cp $03
	jp z, J3268
	jp c, J3248
	cp $05
	jp z, J32a7
	jp J3288

J3208:
	ld b, (iy + $00)
	ld a, ($6091)
	call J32c5
	inc d
	ld b, (iy + $01)
	ld a, ($6095)
	call J32c5
	inc d
	ld b, (iy + $02)
	ld a, ($6099)
	call J32c5
	jp J32c4

J3228:
	ld b, (iy + $00)
	ld a, ($6091)
	call J32c5
	inc d
	ld b, (iy + $02)
	ld a, ($6095)
	call J32c5
	inc d
	ld b, (iy + $01)
	ld a, ($6099)
	call J32c5
	jp J32c4

J3248:
	ld b, (iy + $01)
	ld a, ($6091)
	call J32c5
	inc d
	ld b, (iy + $00)
	ld a, ($6095)
	call J32c5
	inc d
	ld b, (iy + $02)
	ld a, ($6099)
	call J32c5
	jp J32c4

J3268:
	ld b, (iy + $01)
	ld a, ($6091)
	call J32c5
	inc d
	ld b, (iy + $02)
	ld a, ($6095)
	call J32c5
	inc d
	ld b, (iy + $00)
	ld a, ($6099)
	call J32c5
	jp J32c4

J3288:
	ld b, (iy + $02)
	ld a, ($6091)
	call J32c5
	inc d
	ld b, (iy + $00)
	ld a, ($6095)
	call J32c5
	inc d
	ld b, (iy + $01)
	ld a, ($6099)
	call J32c5
	jr J32c4

J32a7:
	ld b, (iy + $02)
	ld a, ($6091)
	call J32c5
	inc d
	ld b, (iy + $01)
	ld a, ($6095)
	call J32c5
	inc d
	ld b, (iy + $00)
	ld a, ($6099)
	call J32c5

J32c4:
	ret

J32c5:
	push af
	call J3a79
	call J3444
	pop af
	push af
	push bc
	ld c, a
	ld a, d
	call J333b
	pop bc
	ld a, b
	jr J32d9

J32d8:
	push af

J32d9:
	push bc
	ld b, $07
	cp $0a
	jr nz, J32e6
	ld ix, $0ca5	; could be a data table address, label T0ca5: created
	jr J32f0

J32e6:
	cp $0b
	jr nz, J32f3
	ld b, $06
	ld ix, $0ca9	; could be a data table address, label T0ca9: created

J32f0:
	push de
	jr J3301

J32f3:
	ld ix, $0cad	; could be a data table address, label T0cad: created
	push de
	sla a
	sla a
	ld d, $00
	ld e, a
	add ix, de

J3301:
	ld a, (ix + $00)
	ld (hl), a
	ld de, $0400	; could be a data table address, label T0400: created
	push hl
	add hl, de
	ld (hl), b
	pop hl
	ld a, (ix + $01)
	inc hl
	bit 1, c
	jr z, J3315
	inc a

J3315:
	ld (hl), a
	push hl
	add hl, de
	ld (hl), b
	pop hl
	push de
	ld de, $ffe0
	add hl, de
	pop de
	ld a, (ix + $02)
	add c
	ld (hl), a
	push hl
	add hl, de
	ld (hl), b
	pop hl
	dec hl
	ld a, (ix + $03)
	bit 0, c
	jr z, J3332
	inc a

J3332:
	ld (hl), a
	push hl
	add hl, de
	ld (hl), b
	pop hl
	pop de
	pop bc
	pop af
	ret

J333b:
	push ix
	push bc
	cp $01
	jr z, J334e
	jr c, J3349
	ld hl, $0c34	; could be a data table address, label T0c34: created
	jr J3351

J3349:
	ld hl, $0c02	; could be a data table address, label T0c02: created
	jr J3351

J334e:
	ld hl, $0c16	; could be a data table address, label T0c16: created

J3351:
	ld b, $00
	sla c
	add hl, bc
	push hl
	pop ix
	ld ixl, (ix + $00)
	ld ixh, (ix + $01)
	pop bc
	pop ix
	ret

J3363:
	ld b, $04
	ld hl, $6091
	push hl
	pop ix

J336b:
	ld a, r	; read z80 dram refresh counter, bits 6-0 count, bit 7 remains unchanged. usually used as a random number generator
	ld c, a
	and $07
	sla c
	adc a, $00
	sla c
	adc a, $00
	call J33a2
	jr c, J336b
	ld (hl), a
	inc hl
	djnz J336b
	ld hl, $6095
	ld b, $02

J3386:
	push bc
	push hl
	pop ix
	ld b, $04

J338c:
	ld a, r	; read z80 dram refresh counter, bits 6-0 count, bit 7 remains unchanged. usually used as a random number generator
	ld c, a
	and $0f
	cp $0f
	jr z, J338c
	call J33a2
	jr c, J338c
	ld (hl), a
	inc hl
	djnz J338c
	pop bc
	djnz J3386
	ret

J33a2:
	ex af, af'
	ld a, b
	cp $01
	jr nz, J33bc
	ex af, af'
	cp (ix + $02)
	jr z, J33cd

J33ae:
	cp (ix + $01)
	jr z, J33cd

J33b3:
	cp (ix + $00)
	jr z, J33cd

J33b8:
	scf
	ccf
	jr J33ce

J33bc:
	cp $02
	jr nz, J33c3
	ex af, af'
	jr J33ae

J33c3:
	cp $03
	jr nz, J33ca
	ex af, af'
	jr J33b3

J33ca:
	ex af, af'
	jr J33b8

J33cd:
	scf

J33ce:
	ret

J33cf:
	ld ix, $606e
	ld a, ($6065)
	cp $00
	jr nz, J33df
	inc (ix + $00)
	jr J33e2

J33df:
	inc (ix + $01)

J33e2:
	ret

J33e3:
	ld hl, $d0c6
	call J3425
	push de
	ld de, $0006	; could be a data table address, label T0006: created
	add hl, de
	pop de
	push hl
	pop ix
	ld ix, a
	nop
	ld ix, a
	ld (bc), a
	ld ix, a
	ld b, $dd
	ld (hl), a
	ex af, af'
	ld ix, a
	ld a, (bc)
	ld ix, a
	inc c
	ld ix, a
	ld c, $dd
	add hl, de
	ld ix, c
	nop
	ld ix, c
	ld (bc), a
	ld ix, c
	ld b, $dd
	ld (hl), c
	ex af, af'
	ld ix, c
	ld a, (bc)
	ld ix, c
	inc c
	ld ix, c
	ld c, $21
	ld b, (hl)
	jp nc, J25cd
	inc (hl)
	ret

J3425:
	ld c, $02
	ld a, $e5
	ld de, $0400	; could be a data table address, label T0400: created
	ld b, $05

J342e:
	push bc
	ld b, $0b

J3431:
	ld (hl), a
	push hl
	add hl, de
	ld (hl), c
	pop hl
	inc hl
	inc hl
	djnz J3431
	push de
	ld de, $002a	; could be a data table address, label T002a: created
	add hl, de
	pop de
	pop bc
	djnz J342e
	ret

J3444:
	ld c, $00
	cp $0a
	jr z, J34a8
	cp $64
	jr z, J34a8
	cp $07
	jr c, J3476
	cp $09
	jr z, J3476
	cp $31
	jr z, J3476
	cp $3a
	jr z, J3476
	cp $3c
	jr z, J3476
	cp $43
	jr z, J3476
	cp $5a
	jr z, J3476
	cp $6b
	jr z, J3476
	cp $6d
	jr z, J3476
	cp $6e
	jr nz, J3479

J3476:
	inc c
	jr J34a7

J3479:
	cp $18
	jr z, J34a5
	cp $1c
	jr z, J34a5
	cp $2c
	jr z, J34a5
	cp $3a
	jr z, J34a5
	cp $3b
	jr z, J34a5
	cp $3e
	jr z, J34a5
	cp $56
	jr z, J34a5
	cp $6a
	jr z, J34a5
	cp $6c
	jr z, J34a5
	cp $6f
	jr z, J34a5
	cp $70
	jr nz, J34a7

J34a5:
	inc c
	inc c

J34a7:
	inc c

J34a8:
	ret

J34a9:
	call J1f26
	cp $01
	jr nz, J34b4
	ld a, $02
	jr J34ce

J34b4:
	cp $05
	jr nc, J34bc
	ld a, $03
	jr J34ce

J34bc:
	cp $0a
	jr nc, J34c4
	ld a, $04
	jr J34ce

J34c4:
	cp $11
	jr nc, J34cc
	ld a, $05
	jr J34ce

J34cc:
	ld a, $06

J34ce:
	ret

J34cf:
	push bc
	push hl
	ld a, (iy + $00)
	cp $0c
	jr c, J34f3
	cp $ff
	jr z, J34e2
	cp $e5
	jr z, J34e2
	ld a, $ff

J34e2:
	ld (hl), a
	cp $ff
	jr z, J350d
	ld de, $0400	; could be a data table address, label T0400: created
	add hl, de
	ld (hl), $02
	ld hl, $60a9
	inc (hl)
	jr J350d

J34f3:
	cp $0b
	jr z, J34fd
	push hl
	ld hl, $60a9
	inc (hl)
	pop hl

J34fd:
	ld b, c
	ex af, af'
	ld a, c
	call J3444
	ex af, af'
	ld b, a
	call J32d8
	pop hl
	push hl
	call J3f7b

J350d:
	pop hl
	pop bc
	ret

J3510:
	ld c, $00
	ld hl, $d0c6
	ld a, ($6065)
	cp $00
	jr z, J3522
	ld ix, $6121
	jr J3526

J3522:
	ld ix, $60ac

J3526:
	ld b, $0b

J3528:
	call J3563
	ld ix, a
	nop
	inc ix
	inc c
	ld a, c
	cp $37
	jr nz, J3556
	ld de, $0032	; could be a data table address, label T0032: created
	add hl, de
	call J3563
	ld ix, a
	nop
	inc ix
	inc c
	inc hl
	inc hl
	call J3563
	ld ix, a
	nop
	inc ix
	inc c
	ld b, $05
	inc hl
	inc hl

J3552:
	inc hl
	inc hl
	jr J3528

J3556:
	cp $75
	jr z, J3562
	djnz J3552
	ld de, $002c	; could be a data table address, label T002c: created
	add hl, de
	jr J3526

J3562:
	ret

J3563:
	ld iy, $0d5f	; could be a data table address, label T0d5f: created
	ld d, $00
	ld a, (hl)

J356a:
	cp (iy + $00)
	jr z, J357f
	inc iy
	inc d
	jr J356a

J3574:
	ld a, d
	cp $01
	jr z, J357b
	jr nc, J358f

J357b:
	ld a, (iy + $00)
	ret

J357f:
	cp $5c
	jr nz, J3574
	push hl
	inc hl
	ld a, (hl)
	pop hl
	cp $66
	jr c, J3574
	inc d
	inc d
	jr J3574

J358f:
	sub $02
	ret

J3592:
	call J3fbc
	xor a
	ld ($60a9), a
	ld a, ($6065)
	cp $00
	jr nz, J35a6
	ld iy, $60ac
	jr J35aa

J35a6:
	ld iy, $6121

J35aa:
	ld hl, $d0c6
	ld c, $00

J35af:
	ld b, $0b

J35b1:
	call J34cf
	inc iy
	inc c
	ld a, c
	cp $37
	jr nz, J35d6
	ld de, $0032	; could be a data table address, label T0032: created
	add hl, de
	call J34cf
	inc iy
	inc c
	inc hl
	inc hl
	call J34cf
	inc iy
	inc c
	ld b, $05
	inc hl
	inc hl

J35d2:
	inc hl
	inc hl
	jr J35b1

J35d6:
	cp $75
	jr z, J35e2
	djnz J35d2
	ld de, $002c	; could be a data table address, label T002c: created
	add hl, de
	jr J35af

J35e2:
	ret

J35e3:
	call J1f26
	ld hl, $60aa
	cp $02
	jr nc, J35f1
	ld (hl), $09
	jr J35fb

J35f1:
	cp $05
	jr nc, J35f9
	ld (hl), $06
	jr J35fb

J35f9:
	ld (hl), $03

J35fb:
	ld a, (hl)
	inc hl
	ld (hl), a
	ret

J35ff:
	ld hl, $605f
	bit 4, (hl)
	jp z, J3629
	ld hl, ($61d8)
	ld a, ($6027)
	and $0f
	cp $08
	jr nz, J3626
	ld a, ($6028)
	and $0f
	cp $06
	jr nz, J3626
	inc hl
	ld a, (hl)
	cp $ff
	jr nz, J3623
	dec hl

J3623:
	ld ($61d8), hl

J3626:
	ld a, (hl)
	jr J3640

J3629:
	ld a, ($6065)
	cp $00
	jr z, J363c
	ld a, ($9002)
	bit 5, a
	jr z, J363c
	ld a, ($9001)
	jr J363f

J363c:
	ld a, ($9000)

J363f:
	cpl

J3640:
	and $0f
	ret z
	cp $01
	jr z, J3652
	cp $02
	jr z, J3652
	cp $04
	jr z, J3652
	cp $08
	ret nz

J3652:
	ld d, a
	ld a, ($605f)
	bit 7, a
	jp z, J36c1
	ld a, ($6027)
	and $0f
	cp $08
	jp z, J4943
	ld a, ($6028)
	and $0f
	cp $06
	jp nz, J494b
	push de
	xor a
	ld ($61e0), a
	jp J36ce

J3677:
	srl a
	cp d
	jp nz, J381e
	ld hl, $6027
	and $0a
	jr z, J36a2
	ld a, (hl)
	and $0f
	cp $08
	jr c, J368e
	dec (hl)
	jr J368f

J368e:
	inc (hl)

J368f:
	inc hl
	bit 3, d
	jr nz, J369b
	dec (hl)
	ld a, $02
	ld ($6198), a
	ret

J369b:
	inc (hl)
	ld a, $08
	ld ($6198), a
	ret

J36a2:
	inc hl
	ld a, (hl)
	and $0f
	cp $07
	jr c, J36ad
	dec (hl)
	jr J36ae

J36ad:
	inc (hl)

J36ae:
	dec hl
	bit 2, d
	jr z, J36ba
	inc (hl)
	ld a, $04
	ld ($6198), a
	ret

J36ba:
	dec (hl)
	ld a, $01
	ld ($6198), a
	ret

J36c1:
	push de
	xor a
	ld ($61e0), a
	ld a, ($6198)
	and $0a
	jp nz, J376e

J36ce:
	ld a, ($6027)
	ld b, a
	ld a, ($6028)
	call J36da
	jr J36f5

J36da:
	sub $36
	srl a
	srl a
	srl a
	srl a
	sla a
	ld hl, $0de4	; could be a data table address, label T0de4: created
	ld d, $00
	ld e, a
	add hl, de
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld a, $08
	ld c, $10
	ret

J36f5:
	srl d
	rr e
	jr c, J36fe

J36fb:
	add c
	jr J36f5

J36fe:
	call J3703
	jr J3706

J3703:
	cp b
	ccf
	ret

J3706:
	jr z, J370e
	jr c, J3712
	set 7, d
	jr J36fb

J370e:
	ld h, a
	ld l, a
	jr J371f

J3712:
	ld h, a
	sla e
	rl d

J3717:
	sub c
	sla e
	rl d
	jr nc, J3717
	ld l, a

J371f:
	ld a, ($6027)
	ex af, af'
	ld ix, $6196
	ld a, h
	sub $04
	ld d, a
	ex af, af'
	cp d
	jr nc, J3762
	ex af, af'
	ld a, d
	sub $02
	ld d, a
	ex af, af'
	cp d
	jr nc, J375d
	ex af, af'
	ld a, l
	add a, $05
	ld e, a
	ex af, af'
	cp e
	jr c, J3758
	ex af, af'
	ld a, e
	add a, $02
	ld e, a
	ex af, af'
	cp e
	jp nc, J380a
	ld ix, ixl
	nop

J374e:
	push hl
	ld hl, $61e0
	set 1, (hl)
	pop hl
	jp J380a

J3758:
	ld ix, ixl
	nop
	jr J3765

J375d:
	ld ix, ixh
	nop
	jr J374e

J3762:
	ld ix, ixh
	nop

J3765:
	ld a, ($6028)
	ld ix, a
	ld bc, $06c3	; could be a data table address, label T06c3: created
	jr c, J37a9
	jr z, J37d1
	ld b, a
	ld a, ($6027)
	call J377a
	jr J3795

J377a:
	sub $08
	srl a
	srl a
	srl a
	srl a
	sla a
	ld hl, $0dfa	; could be a data table address, label T0dfa: created
	ld d, $00
	ld e, a
	add hl, de
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld a, $36
	ld c, $10
	ret

J3795:
	srl d
	rr e
	jr c, J379e

J379b:
	add c
	jr J3795

J379e:
	call J3703
	jr z, J37a9
	jr c, J37ad
	set 7, d
	jr J379b

J37a9:
	ld h, a
	ld l, a
	jr J37ba

J37ad:
	ld h, a
	sla e
	rl d

J37b2:
	sub c
	sla e
	rl d
	jr nc, J37b2
	ld l, a

J37ba:
	ld a, ($6028)
	ex af, af'
	ld ix, $6196
	ld a, h
	sub $04
	ld d, a
	ex af, af'
	cp d
	jr nc, J37fd
	ex af, af'
	ld a, d
	sub $03
	ld d, a
	ex af, af'
	cp d

J37d1:
	jr nc, J37f8
	ex af, af'
	ld a, l
	add a, $05
	ld e, a
	ex af, af'
	cp e
	jr c, J37f3
	ex af, af'
	ld a, e
	add a, $03
	ld e, a
	ex af, af'
	cp e
	jp nc, J380a
	ld ix, ixl
	ld bc, $21e5	; could be a data table address, label T21e5: created
	ret po
	ld h, c
	set 0, (hl)
	pop hl
	jp J380a

J37f3:
	ld ix, ixl
	ld bc, $0818	; could be a data table address, label T0818: created

J37f8:
	ld ix, ixh
	ld bc, $ec18

J37fd:
	ld ix, ixh
	ld bc, $273a	; could be a data table address, label T273a: created
	ld h, b
	ld ix, a
	nop
	pop de
	jp J388c

J380a:
	pop de
	ld hl, $605f
	res 7, (hl)
	ld a, ($6026)
	srl a
	srl a
	srl a
	srl a
	cp d
	jr z, J382d

J381e:
	ld a, d
	sla a
	sla a
	sla a
	sla a
	or $02
	ld ($6026), a
	ret

J382d:
	ld a, $05
	and d
	jr z, J383c
	ld a, ($6198)
	and $05
	jp z, J3869
	jr J3844

J383c:
	ld a, ($6198)
	and $0a
	jp z, J3869

J3844:
	ld ix, $6027
	ld a, d
	cp $02
	jr c, J3858
	jr z, J385d
	cp $04
	jr z, J3862
	inc (ix + $01)
	jr J3865

J3858:
	dec (ix + $00)
	jr J3865

J385d:
	dec (ix + $01)
	jr J3865

J3862:
	inc (ix + $00)

J3865:
	ld ($6198), a
	ret

J3869:
	ld a, ($61e0)
	cp $00
	ret z
	bit 0, a
	jr z, J3880
	ld hl, $6028
	ld a, ($6197)
	cp (hl)
	jr c, J387e

J387c:
	inc (hl)
	ret

J387e:
	dec (hl)
	ret

J3880:
	ld hl, $6027
	ld a, ($6196)
	cp (hl)
	jr c, J387e
	jp J387c

J388c:
	ld hl, $605f
	set 7, (hl)
	ld a, ($6026)
	srl a
	srl a
	srl a
	srl a
	cp d
	jp nz, J381e
	ld iy, $6026
	ld ix, $6196
	ld a, ($6028)
	cp (ix + $01)
	jr nz, J38e6
	ld a, ($6027)
	cp (ix + $00)
	jr nz, J38bf
	call J390d
	jp nc, J3844
	ret

J38bf:
	ld a, ($6027)
	cp (ix + $00)
	jr c, J38d7
	ld a, $05
	and d
	jp nz, J3844
	call J390d
	ret c
	dec (iy + $01)

J38d4:
	jp J3844

J38d7:
	ld a, $05
	and d
	jr nz, J38d4
	call J390d
	ret c
	inc (iy + $01)
	jp J38d4

J38e6:
	ld a, (iy + $02)
	cp (ix + $01)
	jr c, J38fd
	ld a, $0a
	and d
	jr nz, J38d4
	call J390d
	ret c
	dec (iy + $02)
	jp J38d4

J38fd:
	ld a, $0a
	and d
	jr nz, J38d4
	call J390d
	ret c
	inc (iy + $02)
	jp J38d4
	db $c9

J390d:
	ld ix, $6196

J3911:
	ld a, (ix + $00)
	srl a
	srl a
	srl a
	srl a
	sla a
	ld e, a
	sla a
	add e
	ld b, $00
	ld c, a
	ld hl, $0da2	; could be a data table address, label T0da2: created
	add hl, bc
	ld a, (ix + $01)
	srl a
	srl a
	srl a
	srl a
	sub $03
	ld e, a
	srl a
	ld c, a
	add hl, bc
	ld a, (hl)
	bit 0, e
	jr z, J394b
	srl a
	srl a
	srl a
	srl a
	jp J394d

J394b:
	and $0f

J394d:
	ld e, a
	and d
	jp nz, J3954
	scf
	ret

J3954:
	and a
	ret

J3956:
	ld hl, ($6199)
	inc hl
	ld ($6199), hl
	ld a, h
	cp $00
	jr z, J3975
	cp $02
	jr c, J39b0
	ld a, l
	cp $58
	jr c, J39b0
	ld hl, $0000	; could be a data table address, label T0000: created
	ld ($6199), hl

J3971:
	ld a, $07
	jr J3988

J3975:
	ld a, l
	cp $01
	jr z, J3971
	cp $1e
	jr nz, J3982
	ld a, $06
	jr J3988

J3982:
	cp $b4
	jr nz, J39b0
	ld a, $05

J3988:
	ld b, $06
	ld ix, $619c
	ld de, $0400	; could be a data table address, label T0400: created

J3991:
	ld ixl, (ix + $00)
	inc ix
	ld ixh, (ix + $00)
	inc ix
	ld c, a
	xor a
	cp h
	ld a, c
	jr z, J39ae
	add hl, de
	ld (hl), a
	inc hl
	ld (hl), a
	push de
	ld de, $ffe0
	add hl, de
	pop de
	ld (hl), a
	dec hl
	ld (hl), a

J39ae:
	djnz J3991

J39b0:
	ret

J39b1:
	ld hl, $60aa
	dec (hl)
	jp nz, J3a48
	ld hl, ($6063)
	ld a, ($6062)
	cp $00
	jr z, J39c6
	ld (hl), $06
	jr J39c8

J39c6:
	ld (hl), $05

J39c8:
	ld a, ($6060)
	ld c, a
	call J1d24
	ld ($6063), hl
	ld hl, $6000
	set 4, (hl)
	ld hl, $6061
	inc (hl)
	ld a, (hl)
	cp $17
	jr nz, J39ef
	ld (hl), $00
	ld hl, $6060
	inc (hl)
	ld a, (hl)
	cp $04
	jr nz, J3a01
	ld (hl), $00
	jr J3a01

J39ef:
	cp $0c
	jr nz, J3a01
	ld a, ($6060)
	cp $00
	jr nz, J3a01
	ld a, ($6062)
	cpl
	ld ($6062), a

J3a01:
	ld a, ($60ab)
	ld ($60aa), a
	ld a, ($6060)
	cp $00
	jr nz, J3a48
	ld a, ($6061)
	cp $01
	jr z, J3a30
	cp $0c
	jr nz, J3a48
	ld b, $04
	ld de, $0005	; could be a data table address, label T0005: created
	ld hl, $602b

J3a21:
	bit 0, (hl)
	jr nz, J3a2a
	add hl, de
	djnz J3a21
	jr J3a48

J3a2a:
	res 0, (hl)
	set 1, (hl)
	jr J3a48

J3a30:
	ld b, $04
	ld de, $0005	; could be a data table address, label T0005: created
	ld hl, $602b

J3a38:
	bit 0, (hl)
	jr nz, J3a41
	add hl, de
	djnz J3a38
	jr J3a48

J3a41:
	push hl
	ld hl, $6000
	set 5, (hl)
	pop hl

J3a48:
	ld hl, $61ca
	dec (hl)
	ld hl, $61b6
	dec (hl)
	inc hl
	jr nz, J3a75
	dec hl
	ld (hl), $3c
	inc hl
	push hl
	inc hl
	inc (hl)
	ld b, $04
	ld hl, $61ce
	xor a

J3a60:
	cp (hl)
	jr z, J3a64
	dec (hl)

J3a64:
	inc hl
	djnz J3a60
	ld hl, $61e1
	cp (hl)
	jr z, J3a6e
	dec (hl)

J3a6e:
	pop hl
	ld a, (hl)
	cp $f0
	jr nc, J3a75
	inc (hl)

J3a75:
	inc hl
	inc hl
	dec (hl)
	ret

J3a79:
	push hl
	push de
	push af
	ld a, d
	cp $01
	jr z, J3a88
	jr c, J3a8d
	ld hl, $0d93	; could be a data table address, label T0d93: created
	jr J3a90

J3a88:
	ld hl, $0d84	; could be a data table address, label T0d84: created
	jr J3a90

J3a8d:
	ld hl, $0d7a	; could be a data table address, label T0d7a: created

J3a90:
	pop af
	ld e, a
	ld d, $00
	add hl, de
	ld a, (hl)
	pop de
	pop hl
	ret

J3a99:
	ld a, ($61c9)
	and $ff
	jr z, J3aa3
	jp J3af9

J3aa3:
	ld a, ($6026)
	srl a
	srl a
	srl a
	srl a
	ld hl, $6198
	cp (hl)
	ret nz
	cp $02
	jp c, J3b98
	jp z, J3b61
	cp $04
	jp z, J3b2e
	ld a, ($6027)
	sub $04
	ld d, a
	ld a, ($6028)
	nop
	ld e, a
	call J3c0a
	ld b, (hl)
	dec e
	call J3c0a
	ld a, (hl)
	cp b
	jr z, J3af8
	ld a, b
	cp $36
	jr nz, J3ae1
	inc hl
	xor a
	jp J3bca

J3ae1:
	inc e
	ld a, d
	add a, $08
	ld d, a
	call J3c0a
	ld a, $35
	cp (hl)
	ret nz
	push de
	ld de, $0020	; could be a data table address, label T0020: created
	add hl, de
	pop de
	ld a, $01
	jp J3bca

J3af8:
	ret

J3af9:
	ld hl, ($61cb)
	ld a, ($61c9)
	ex af, af'
	xor a
	ld ($61c9), a
	ex af, af'
	cp $02
	jr z, J3b13
	jr c, J3b17
	cp $03
	jr z, J3b1b
	ld a, $06
	jr J3b1d

J3b13:
	ld a, $07
	jr J3b1d

J3b17:
	ld a, $05
	jr J3b1d

J3b1b:
	ld a, $04

J3b1d:
	call J3bea
	call J22eb
	call J467b
	ld hl, $605f
	res 3, (hl)
	jp J3aa3

J3b2e:
	ld a, ($6027)
	add a, $05
	ld d, a
	ld a, ($6028)
	add a, $05
	ld e, a
	call J3c0a
	ld a, (hl)
	inc d
	call J3c0a
	cp (hl)
	jr z, J3b60
	ld a, $3e
	cp (hl)
	jr nz, J3b4f
	ld a, $03
	jp J3bca

J3b4f:
	ld a, e
	sub $08
	ld e, a
	call J3c0a
	ld a, $3d
	cp (hl)
	ret nz
	dec hl
	ld a, $02
	jp J3bca

J3b60:
	ret

J3b61:
	ld a, ($6027)
	add a, $04
	ld d, a
	ld a, ($6028)
	sub $04
	ld e, a
	call J3c0a
	ld a, (hl)
	dec e
	call J3c0a
	cp (hl)
	jr z, J3b97
	ld a, $35
	cp (hl)
	jr nz, J3b87
	push de
	ld de, $0020	; could be a data table address, label T0020: created
	add hl, de
	pop de
	xor a
	jp J3bca

J3b87:
	ld a, d
	sub $08
	ld d, a
	call J3c0a
	ld a, $36
	cp (hl)
	ret nz
	ld a, $01
	jp J3bca

J3b97:
	ret

J3b98:
	jp J0080

J3b9b:
	inc a
	ld d, a
	ld a, ($6028)
	sub $03
	ld e, a
	call J3c0a
	ld a, (hl)
	dec d
	call J3c0a
	cp (hl)
	jr z, J3bc9
	ld a, $3d
	cp (hl)
	jr nz, J3bb9
	dec hl
	ld a, $03
	jp J3bca

J3bb9:
	ld a, e
	add a, $08
	ld e, a
	call J3c0a
	ld a, $3e
	cp (hl)
	ret nz
	ld a, $02
	jp J3bca

J3bc9:
	ret

J3bca:
	ex af, af'
	ld a, ($61c9)
	cp $00
	jp nz, J3af9
	ex af, af'
	ld b, a
	inc a
	ld ($61c9), a
	ld a, b
	ld ($61cb), hl
	ex af, af'
	ld a, $01
	ld ($61ca), a
	ex af, af'
	call J3bea
	jp J3bfe

J3bea:
	push af
	push hl
	ld b, $01
	ld a, l
	ld hl, $0d1d	; could be a data table address, label T0d1d: created

J3bf2:
	cp (hl)
	jr z, J3bfb
	inc b
	inc hl
	inc hl
	jp J3bf2

J3bfb:
	pop hl
	pop af
	ret

J3bfe:
	call J22eb
	call J467b
	ld hl, $605f
	res 3, (hl)
	ret

J3c0a:
	push af
	push bc
	ld a, d
	and $f8
	ld b, $00
	ld c, a
	sla c
	rl b
	sla c
	rl b
	ld hl, $d0a0
	add hl, bc
	ld a, e
	srl a
	srl a
	srl a
	ld b, $00
	ld c, a
	add hl, bc
	pop bc
	pop af
	ret

J3c2c:
	push hl
	ld hl, $605f
	bit 4, (hl)
	jp nz, J3cae
	push de
	ld a, ($6065)
	cp $00
	jr nz, J3c42
	ld a, ($609f)
	jr J3c45

J3c42:
	ld a, ($60a2)

J3c45:
	ex af, af'
	ld hl, $0e10	; could be a data table address, label T0e10: created
	xor a
	cp e
	jr nz, J3c62
	ex af, af'
	ld b, $00
	ld c, a
	add hl, bc
	ld a, (hl)
	sla a
	sla a
	sla a
	sla a
	ld b, $00
	ld c, $00
	ld d, a
	jr J3c72

J3c62:
	dec e
	sla e
	sla e
	ld d, $00
	add hl, de
	ex af, af'
	ld e, a
	add hl, de
	ld b, $00
	ld c, (hl)
	ld d, $00

J3c72:
	ld a, ($6065)
	cp $00
	jr nz, J3c7f
	ld ix, $6068
	jr J3c83

J3c7f:
	ld ix, $606b

J3c83:
	ld a, (ix + $02)
	add d
	daa
	ld ix, a
	ld (bc), a
	ld a, (ix + $01)
	adc c
	daa
	ld ix, a
	ld bc, $7edd
	nop
	adc b
	daa
	ld ix, a
	nop
	ld a, ($6065)
	cp $00
	jr nz, J3ca7
	ld hl, $d2c4
	jr J3caa

J3ca7:
	ld hl, $d2c3

J3caa:
	call J1e06
	pop de

J3cae:
	pop hl
	ret

J3cb0:
	push hl
	push de
	push bc
	ld hl, $6044
	ld de, $fffb
	ld b, $06
	xor a

J3cbc:
	bit 1, (hl)
	jr z, J3cc4
	scf
	jp J3cc5

J3cc4:
	and a

J3cc5:
	rla
	add hl, de
	djnz J3cbc
	pop bc
	pop de
	pop hl
	ret

J3ccd:
	push bc
	push de
	push hl
	ld b, $09
	ld de, $0005	; could be a data table address, label T0005: created
	ld hl, $6021

J3cd8:
	res 0, (hl)
	res 1, (hl)
	add hl, de
	djnz J3cd8
	push ix
	push iy
	push af
	call J1fc7
	call J178f
	pop af
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	ret

J3cf3:
	ld ix, $0d43	; could be a data table address, label T0d43: created
	ld b, $14
	ld e, $00

J3cfb:
	ld ixl, (ix + $00)
	ld ixh, (ix + $01)
	ld a, (hl)
	cp $36
	jr nz, J3d09
	and a
	jr J3d0a

J3d09:
	scf

J3d0a:
	rl e
	rl d
	rl c
	dec ix
	dec ix
	djnz J3cfb
	ld a, ($6065)
	cp $00
	jr nz, J3d22
	ld hl, $60a3
	jr J3d25

J3d22:
	ld hl, $60a6

J3d25:
	ld (hl), e
	inc hl
	ld (hl), d
	inc hl
	ld (hl), c
	ret

J3d2b:
	push hl
	ld c, $00
	ld b, $02
	ld de, $0e1c	; could be a data table address, label T0e1c: created

J3d33:
	ld a, (de)
	inc de
	cp l
	jp nz, J3d3e
	ld a, (de)
	cp h
	jp z, J3d64

J3d3e:
	inc de
	djnz J3d33
	inc c
	ld b, $0c

J3d44:
	ld a, (de)
	inc de
	cp l
	jp nz, J3d4f
	ld a, (de)
	cp h
	jp z, J3d64

J3d4f:
	inc de
	djnz J3d44
	inc c
	ld b, $10

J3d55:
	ld a, (de)
	inc de
	cp l
	jp nz, J3d60
	ld a, (de)
	cp h
	jp z, J3d64

J3d60:
	inc de
	djnz J3d55
	inc c

J3d64:
	ld b, $00
	ld ix, $0e58	; could be a data table address, label T0e58: created
	sla c
	sla c
	add ix, bc
	ld a, (ix + $00)
	ld (hl), a
	push hl
	ld de, $0400	; could be a data table address, label T0400: created
	add hl, de
	ld (hl), $02
	pop hl
	inc hl
	ld a, (ix + $01)
	ld (hl), a
	push hl
	add hl, de
	ld (hl), $00
	pop hl
	push de
	ld de, $ffe0
	add hl, de
	pop de
	ld a, (ix + $02)
	ld (hl), a
	push hl
	add hl, de
	ld (hl), $00
	pop hl
	dec hl
	ld a, (ix + $03)
	ld (hl), a
	add hl, de
	ld (hl), $00
	pop hl
	ret

J3d9f:
	push hl
	ld hl, ($6199)
	ld a, h
	cp $00
	jr nz, J3db1
	ld a, l
	cp $1f
	jr c, J3db5
	cp $b4
	jr c, J3db9

J3db1:
	ld e, $01
	jr J3dbb

J3db5:
	ld e, $03
	jr J3dbb

J3db9:
	ld e, $02

J3dbb:
	pop hl
	ret

J3dbd:
	push de
	ld a, $da
	ex af, af'
	ld a, ($6065)
	cp $00
	jr nz, J3dcd
	ld a, ($609f)
	jr J3dd0

J3dcd:
	ld a, ($60a2)

J3dd0:
	cp $00
	jr z, J3de1
	cp $03
	jr z, J3dde
	ld b, a
	ex af, af'
	dec b
	add b
	jr J3de0

J3dde:
	ld a, $dd

J3de0:
	ld (hl), a

J3de1:
	ld ix, $6026
	res 0, (ix + $00)
	res 1, (ix + $00)
	ld ix, $6049
	ld (ix + $00), $82
	call J3e3f
	ld a, $09
	add c
	ld ix, a
	ld (bc), a
	ld ix, b
	ld bc, $36dd	; could be a data table address, label T36dd: created
	inc b
	rrca
	ld a, e
	cp $02
	jr c, J3e18
	jr z, J3e12
	ld (ix + $03), $e0
	jr J3e1c

J3e12:
	ld (ix + $03), $dc
	jr J3e1c

J3e18:
	ld (ix + $03), $d8

J3e1c:
	push hl
	ld hl, $6000
	set 2, (hl)
	ld b, $1e

J3e24:
	push bc
	call J1fc7
	call J178f
	call J2d5a
	pop bc
	djnz J3e24
	xor a
	ld ($6049), a
	ld hl, $6026
	set 1, (hl)
	pop hl
	ld (hl), $ff
	pop de
	ret

J3e3f:
	push hl
	push de
	ld de, $d0a0
	and a
	sbc hl, de
	ld c, l
	ld a, $e0
	and l
	ld l, a
	ld b, $02

J3e4e:
	srl h
	rr l
	djnz J3e4e
	ld b, l
	sla c
	sla c
	sla c
	pop de
	pop hl
	ret

J3e5e:
	push hl
	ld d, $00
	cp $5e
	jr z, J3e94
	inc d
	cp $5b
	jr z, J3e94
	inc d
	cp $59
	jr z, J3e94
	inc d
	cp $5a
	jr z, J3e94
	inc d
	cp $5c
	jr nz, J3e83
	inc hl
	ld a, (hl)
	cp $66
	jr c, J3e94
	inc d
	inc d
	jr J3e94

J3e83:
	inc d
	cp $5d
	jr z, J3e94
	inc d
	inc d
	cp $5f
	jr z, J3e94
	inc d
	cp $60
	jr z, J3e94
	inc d

J3e94:
	pop hl
	ret

J3e96:
	cp $03
	jr z, J3e9f
	cp $02
	jr z, J3eb0
	ret

J3e9f:
	ld a, ($6065)
	cp $00
	jr nz, J3eab
	ld hl, $609d
	jr J3ec1

J3eab:
	ld hl, $60a0
	jr J3ec1

J3eb0:
	ld a, ($6065)
	cp $00
	jr nz, J3ebc
	ld hl, $609e
	jr J3efa

J3ebc:
	ld hl, $60a1
	jr J3efa

J3ec1:
	ld a, d
	cp $00
	jr nz, J3eca
	res 5, (hl)
	jr J3ef8

J3eca:
	cp $01
	jr nz, J3ed2
	res 2, (hl)
	jr J3ef8

J3ed2:
	cp $02
	jr nz, J3eda
	res 0, (hl)
	jr J3ef8

J3eda:
	cp $03
	jr nz, J3ee2
	res 1, (hl)
	jr J3ef8

J3ee2:
	cp $04
	jr nz, J3eea
	res 3, (hl)
	jr J3ef8

J3eea:
	cp $05
	jr nz, J3ef2
	res 4, (hl)
	jr J3ef8

J3ef2:
	cp $06
	jr nz, J3ef8
	res 6, (hl)

J3ef8:
	jr J3f29

J3efa:
	ld a, d
	cp $00
	jr nz, J3f03
	res 4, (hl)
	jr J3f21

J3f03:
	cp $01
	jr nz, J3f0b
	res 0, (hl)
	jr J3f21

J3f0b:
	cp $07
	jr nz, J3f13
	res 1, (hl)
	jr J3f21

J3f13:
	cp $08
	jr nz, J3f1b
	res 2, (hl)
	jr J3f21

J3f1b:
	cp $09
	jr nz, J3f21
	res 3, (hl)

J3f21:
	dec hl
	push hl
	call J311c
	pop hl
	jr J3f2e

J3f29:
	push hl
	call J30f4
	pop hl

J3f2e:
	ret

J3f2f:
	call J1fc7
	call J178f
	ld a, ($6003)
	cp $00
	jr nz, J3f2f
	ret

J3f3d:
	ld iy, $619c
	ld ix, $6091
	call J4035
	ld ix, $6092
	call J4035
	ld ix, $6093
	call J4035
	ld ix, $6094
	call J4035
	call J34a9
	ex af, af'
	ld b, a
	ld a, $06
	sub b
	jr z, J3f7a
	ld b, a
	ex af, af'
	sla a
	ld d, $00
	ld e, a
	ld hl, $61a8
	add hl, de

J3f72:
	ld (hl), $00
	inc hl
	ld (hl), $00
	inc hl
	djnz J3f72

J3f7a:
	ret

J3f7b:
	push ix
	push af
	push de
	ld a, b
	cp $0a
	jr c, J3f96
	jr z, J3f90
	cp $0b
	jr nz, J3fb7
	ld ix, $61a8
	jr J3f9a

J3f90:
	ld ix, $61a2
	jr J3f9a

J3f96:
	ld ix, $619c

J3f9a:
	ld a, (ix + $01)
	cp $00
	jr z, J3fb1
	inc ix
	inc ix
	push ix
	ld de, $61b4
	ld a, e
	pop de
	cp e
	jr z, J3fb7
	jr J3f9a

J3fb1:
	ld ix, ixl
	nop
	ld ix, ixh
	ld bc, $f1d1
	pop ix
	ret

J3fbc:
	push af
	push bc
	push hl
	xor a
	ld b, $18
	ld hl, $619c

J3fc5:
	ld (hl), a
	inc hl
	djnz J3fc5
	pop hl
	pop bc
	pop af
	ret

J3fcd:
	ld hl, $9002
	bit 5, (hl)
	jr z, J3fe4
	ld hl, $a000
	ld a, ($6065)
	cp $00
	jr nz, J3fe2
	res 0, (hl)
	jr J3fe4

J3fe2:
	set 0, (hl)

J3fe4:
	ret

J3fe5:
	push af
	push bc
	push de
	ld b, $0c
	ld de, $619c

J3fed:
	ld a, (de)
	cp l
	jr nz, J3ff7
	inc de
	ld a, (de)
	dec de
	cp h
	jr z, J3ffd

J3ff7:
	inc de
	inc de
	djnz J3fed
	jr J4001

J3ffd:
	xor a
	ld (de), a
	inc de
	ld (de), a

J4001:
	pop de
	pop bc
	pop af
	ret

J4005:
	ld b, $06
	ld ix, $61a8

J400b:
	ld a, (ix + $01)
	cp $00
	jr z, J402e
	ld ixl, (ix + $00)
	ld ixh, (ix + $01)
	push ix
	push bc
	call J3d2b
	ld (hl), $e5
	ld hl, $60a9
	inc (hl)
	pop bc
	pop ix
	xor a
	ld ix, a
	nop
	ld ix, a
	ld bc, $23dd	; could be a data table address, label T23dd: created
	inc ix
	djnz J400b
	ret

J4035:
	xor a
	ld b, $03

J4038:
	ld c, (ix + $00)
	call J333b
	ld iy, iyl
	nop
	inc iy
	ld iy, iyh
	nop
	inc iy
	inc a
	inc ix
	inc ix
	inc ix
	inc ix
	djnz J4038
	ret

J4054:
	ld b, $0c
	ld ix, $619c

J405a:
	ld a, (ix + $01)
	cp $00
	jr z, J4077
	ld ixl, (ix + $00)
	ld ixh, (ix + $01)
	push ix
	push bc
	call J3d2b
	pop bc
	pop ix
	xor a
	ld ix, a
	nop
	ld ix, a
	ld bc, $23dd	; could be a data table address, label T23dd: created
	inc ix
	djnz J405a
	ret

J407e:
	ld a, ($61b4)
	and $0f
	jp z, J40a4
	ld hl, $6021
	res 1, (hl)
	res 0, (hl)
	ld b, $04
	ld hl, $602b
	ld de, $0005	; could be a data table address, label T0005: created

J4095:
	rra
	jp nc, J409d
	res 0, (hl)
	res 1, (hl)

J409d:
	add hl, de
	djnz J4095
	xor a
	ld ($61b4), a

J40a4:
	call J40f8
	call J3cb0
	and $0f
	jr z, J40cb
	call J2e5c
	call J40cc
	ld b, $04
	ld hl, $602b
	jp J40c2

J40bc:
	push de
	ld de, $0005	; could be a data table address, label T0005: created
	add hl, de
	pop de

J40c2:
	bit 1, (hl)
	jr z, J40c9
	call J42ba

J40c9:
	djnz J40bc

J40cb:
	ret

J40cc:
	ld a, ($61c3)
	ld b, a
	sra a
	sra a
	sra a
	sra a
	ld e, a
	bit 1, b
	jr nz, J40ed
	bit 2, b
	jr nz, J40e9
	bit 3, b
	jr z, J40f7
	ld a, $cc
	jr J40ef

J40e9:
	ld a, $80
	jr J40ef

J40ed:
	ld a, $33

J40ef:
	ld hl, $61b5
	add (hl)
	ld (hl), a
	jr nc, J40f7
	inc e

J40f7:
	ret

J40f8:
	call J1f26
	ld hl, $0ea6	; could be a data table address, label T0ea6: created
	cp $33
	jp c, J4105
	ld a, $32

J4105:
	ld e, a
	ld d, $00
	add hl, de
	ld e, (hl)
	ld hl, $0ed8	; could be a data table address, label T0ed8: created
	ld a, ($9002)
	bit 1, a
	jr nz, J4117
	ld hl, $0ee8	; could be a data table address, label T0ee8: created

J4117:
	ld a, ($61b7)
	srl a
	srl a
	srl a
	srl a
	add e
	cp $10
	jr c, J4129
	ld a, $0f

J4129:
	ld e, a
	add hl, de
	ld a, (hl)
	ld ($61c3), a
	ret

J4130:
	bit 0, a
	jr nz, J414f
	bit 1, a
	jr nz, J4162
	bit 2, a
	jr nz, J4175
	ld a, $02
	add e
	ld e, a
	call J3c0a
	ld a, (hl)
	cp $35
	jr z, J4187
	cp $37
	jr z, J4187
	jp J4185

J414f:
	ld a, d
	sub $01
	ld d, a
	call J3c0a
	ld a, (hl)
	cp $3d
	jr z, J4187
	cp $3f
	jr z, J4187
	jp J4185

J4162:
	ld a, e
	sub $07
	ld e, a
	call J3c0a
	ld a, (hl)
	cp $35
	jr z, J4187
	cp $37
	jr z, J4187
	jp J4185

J4175:
	ld a, $08
	add d
	ld d, a
	call J3c0a
	ld a, (hl)
	cp $3f
	jr z, J4187
	cp $3d
	jr z, J4187

J4185:
	and a
	ret

J4187:
	scf
	ret

J4189:
	bit 0, a
	jr nz, J41b9
	bit 1, a
	jr nz, J41dc
	bit 2, a
	jr nz, J41ff
	ld a, $02
	add e
	ld b, a
	ld e, a
	call J3c0a
	ld a, (hl)
	cp $4a
	jp z, J4222
	cp $45
	jr z, J4222
	ld a, b
	add a, $02
	ld e, a
	call J3c0a
	ld a, (hl)
	cp $41
	jr z, J4222
	cp $46
	jr z, J4222
	jr J4220

J41b9:
	ld a, d
	sub $01
	ld b, a
	ld d, a
	call J3c0a
	ld a, (hl)
	cp $45
	jr z, J4222
	cp $46
	jr z, J4222
	ld a, b
	sub $02
	ld d, a
	call J3c0a
	ld a, (hl)
	cp $4a
	jr z, J4222
	cp $41
	jr z, J4222
	jr J4220

J41dc:
	ld a, e
	sub $01
	ld b, a
	ld e, a
	call J3c0a
	ld a, (hl)
	cp $49
	jr z, J4222
	cp $43
	jr z, J4222
	ld a, b
	sub $06
	ld e, a
	call J3c0a
	ld a, (hl)
	cp $41
	jr z, J4222
	cp $46
	jr z, J4222
	jr J4220

J41ff:
	ld a, $02
	add d
	ld b, a
	ld d, a
	call J3c0a
	ld a, (hl)
	cp $44
	jr z, J4222
	cp $47
	jr z, J4222
	ld a, b
	add a, $06
	ld d, a
	call J3c0a
	ld a, (hl)
	cp $4a
	jr z, J4222
	cp $41
	jr z, J4222

J4220:
	and a
	ret

J4222:
	scf
	ret

J4224:
	ld a, (ix + $00)
	cp $02
	jr c, J4235
	jr z, J4239
	cp $04
	jr z, J423d
	inc (ix + $02)
	ret

J4235:
	dec (ix + $01)
	ret

J4239:
	dec (ix + $02)
	ret

J423d:
	inc (ix + $01)
	ret

J4241:
	ld ix, $61be
	ld d, (ix + $00)
	ld e, (ix + $01)

J424b:
	ld b, $01

J424d:
	rra
	jr nc, J425a

J4250:
	sla b
	bit 4, b
	jr z, J424d
	xor a
	jp J424b

J425a:
	ld ($61c8), a
	push bc
	ld d, b
	call J3911
	pop bc
	ld a, ($61c8)
	jr c, J4250
	ld ($61c8), a
	push bc
	ld a, b
	ld d, (ix + $00)
	ld e, (ix + $01)
	call J4130
	pop bc
	ld a, ($61c8)
	jr c, J4250
	ld d, b
	ret

J427e:
	ex af, af'
	ld a, d
	and $0f
	cp $08
	jr nz, J42b8
	ld a, e
	and $0f
	cp $06
	jr nz, J42b8
	ex af, af'
	and $05
	jr nz, J429a
	ld b, e
	ld a, d
	call J377a
	jp J429f

J429a:
	ld b, d
	ld a, e
	call J36da

J429f:
	srl d
	rr e
	jp c, J42aa

J42a6:
	add c
	jp J429f

J42aa:
	call J3703
	jr z, J42b6
	jr c, J42b8
	set 7, d
	jp J42a6

J42b6:
	scf
	ret

J42b8:
	and a
	ret

J42ba:
	push hl
	push de
	push bc
	call J43f0
	ld bc, $0003	; could be a data table address, label T0003: created
	ld hl, $61ba
	ld de, $61bd
	ldir
	xor a
	ld ($61c1), a
	ld ($61c2), a

J42d2:
	ld hl, $61bd
	ld a, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld e, (hl)
	call J427e
	jp nc, J433a
	call J42e6
	jp J43ba

J42e6:
	ld ix, $61be
	pop hl
	pop bc
	push bc
	push hl
	ld a, $04
	sub b
	ld c, a
	ld b, $00
	ld hl, $61c4
	add hl, bc
	ld d, (hl)
	call J3911
	jr c, J4311
	push de
	ld a, d
	ld hl, $61be
	ld d, (hl)
	inc hl
	ld e, (hl)
	call J4130
	pop de
	jr c, J4311

J430c:
	ld hl, $61bd
	ld (hl), d
	ret

J4311:
	ld a, ($61c1)
	or d
	ld ($61c1), a
	ld hl, $61bd
	ld a, (hl)
	ld b, a
	and e
	jr z, J4329
	ld a, b
	inc hl
	ld d, (hl)
	inc hl
	ld e, (hl)
	call J4130
	ret nc

J4329:
	ld a, ($61bd)
	ld b, a
	ld a, ($61c1)
	or b
	ld ($61c1), a
	call J4241
	jp J430c

J433a:
	ld hl, $61bd
	ld a, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld e, (hl)
	call J4189
	jr nc, J4359
	ld a, ($61bd)
	ld b, a
	srl a
	srl a
	sla b
	sla b
	or b
	and $0f
	ld ($61bd), a

J4359:
	ld hl, $61bd
	ld a, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld e, (hl)
	cp $02
	jr z, J4372
	jr c, J4379
	cp $04
	jr z, J4376
	ld a, e
	sub $04
	ld e, a
	jp J437b

J4372:
	dec e
	jp J437b

J4376:
	inc d
	inc d
	inc d

J4379:
	inc d
	inc d

J437b:
	call J3c0a
	ld a, (hl)
	cp $63
	jp nz, J43ba
	call J3fe5
	call J3d2b
	push hl
	ld hl, $6001
	set 7, (hl)
	ld hl, $605f
	res 6, (hl)
	pop hl
	pop bc
	push bc
	ld hl, $61b4
	ld a, $04
	sub b
	jr z, J43ab
	cp $02
	jr z, J43b0
	jr c, J43b5
	set 3, (hl)
	jp J43ce

J43ab:
	set 0, (hl)
	jp J43ce

J43b0:
	set 2, (hl)
	jp J43ce

J43b5:
	set 1, (hl)
	jp J43ce

J43ba:
	ld ix, $61bd
	call J4224
	ld hl, $61c2
	inc (hl)
	ld a, (hl)
	pop bc
	pop de
	push de
	push bc
	cp e
	jp nz, J42d2

J43ce:
	pop bc
	pop de
	pop hl
	push hl
	push de
	push bc
	ld a, ($61bd)
	sla a
	sla a
	sla a
	sla a
	set 1, a
	ld (hl), a
	ld a, ($61be)
	inc hl
	ld (hl), a
	ld a, ($61bf)
	inc hl
	ld (hl), a
	pop bc
	pop de
	pop hl
	ret

J43f0:
	ld de, $61ba
	ld a, (hl)
	srl a
	srl a
	srl a
	srl a
	ld (de), a
	inc de
	inc hl
	ld a, (hl)
	ld (de), a
	inc de
	inc hl
	ld a, (hl)
	ld (de), a
	ret

J4406:
	ld de, $0005	; could be a data table address, label T0005: created
	ld b, $04
	ld hl, $602b
	push hl
	push bc

J4410:
	bit 0, (hl)
	jp nz, J447a
	add hl, de
	djnz J4410
	pop bc
	pop hl

J441a:
	bit 1, (hl)
	jr z, J4441
	add hl, de
	djnz J441a
	ld hl, $605f
	bit 6, (hl)
	ret nz
	ld ix, $6021
	ld (ix + $00), $82
	ld (ix + $01), $58
	ld (ix + $02), $86
	call J1f7f
	ld ix, a
	inc bc
	ld ix, b
	inc b
	ret

J4441:
	push hl
	push bc
	ld b, $04
	ld hl, $602b

J4448:
	bit 1, (hl)
	jr z, J4467
	push hl
	pop ix
	ld a, $58
	cp (ix + $01)
	jr nz, J4467
	ld a, $86
	cp (ix + $02)
	jr c, J4467
	ld a, $94
	cp (ix + $02)
	jr nc, J4467
	pop bc
	pop hl
	ret

J4467:
	add hl, de
	djnz J4448
	pop bc
	ld a, b
	sub $04
	neg
	ld c, a
	call J3061
	pop hl
	res 1, (hl)
	set 0, (hl)
	ret

J447a:
	pop bc
	pop hl
	ret

J447d:
	ld a, ($605f)
	bit 3, a
	jp z, J449a
	ld bc, ($61d3)
	ld de, ($61d5)
	ld h, $62
	ld a, ($61d7)
	cp $00
	jp z, J44ca
	jp J4542

J449a:
	call J45c4
	ld bc, $62cf
	ld de, $62ff
	ld a, $ff
	ld (bc), a
	ld (de), a
	ld hl, $6026
	bit 1, (hl)
	ret z
	inc hl
	push de
	push bc
	ld d, (hl)
	inc hl
	ld e, (hl)
	ld a, $35
	cp e
	jp c, J44bc
	pop bc
	pop de
	ret

J44bc:
	call J45dc
	pop bc
	pop de
	dec c
	ld (bc), a
	ld h, $62
	ld l, a
	ld a, (hl)
	or $0f
	ld (hl), a

J44ca:
	ld a, (bc)
	cp $ff
	jp z, J453c
	ld l, a
	bit 7, (hl)
	jr z, J44e7
	push hl
	push de
	ld de, $fff0
	add hl, de
	pop de
	ld a, (hl)
	and $0f
	jr nz, J44e6
	set 1, (hl)
	dec e
	ld a, l
	ld (de), a

J44e6:
	pop hl

J44e7:
	bit 6, (hl)
	jr z, J44f8
	push hl
	inc l
	ld a, (hl)
	and $0f
	jr nz, J44f7
	set 0, (hl)
	dec e
	ld a, l
	ld (de), a

J44f7:
	pop hl

J44f8:
	bit 5, (hl)
	jr z, J450e
	push hl
	push de
	ld de, $0010	; could be a data table address, label T0010: created
	add hl, de
	pop de
	ld a, (hl)
	and $0f
	jr nz, J450d
	set 3, (hl)
	dec e
	ld a, l
	ld (de), a

J450d:
	pop hl

J450e:
	bit 4, (hl)
	jr z, J451f
	push hl
	dec l
	ld a, (hl)
	and $0f
	jr nz, J451e
	set 2, (hl)
	dec e
	ld a, l
	ld (de), a

J451e:
	pop hl

J451f:
	inc c
	push hl
	ld hl, $9001
	bit 7, (hl)
	pop hl
	jp z, J44ca
	ld hl, $605f
	set 3, (hl)
	ld ($61d3), bc
	ld ($61d5), de
	xor a
	ld ($61d7), a
	ret

J453c:
	ld a, (de)
	cp $ff
	jp z, J45be

J4542:
	ld a, (de)
	cp $ff
	jp z, J45b8
	ld l, a
	bit 7, (hl)
	jr z, J455f
	push hl
	push de
	ld de, $fff0
	add hl, de
	pop de
	ld a, (hl)
	and $0f
	jr nz, J455e
	set 1, (hl)
	dec c
	ld a, l
	ld (bc), a

J455e:
	pop hl

J455f:
	bit 6, (hl)
	jr z, J4570
	push hl
	inc l
	ld a, (hl)
	and $0f
	jr nz, J456f
	set 0, (hl)
	dec c
	ld a, l
	ld (bc), a

J456f:
	pop hl

J4570:
	bit 5, (hl)
	jr z, J4586
	push hl
	push de
	ld de, $0010	; could be a data table address, label T0010: created
	add hl, de
	pop de
	ld a, (hl)
	and $0f
	jr nz, J4585
	set 3, (hl)
	dec c
	ld a, l
	ld (bc), a

J4585:
	pop hl

J4586:
	bit 4, (hl)
	jr z, J4597
	push hl
	dec l
	ld a, (hl)
	and $0f
	jr nz, J4596
	set 2, (hl)
	dec c
	ld a, l
	ld (bc), a

J4596:
	pop hl

J4597:
	inc e
	push hl
	ld hl, $9001
	bit 7, (hl)
	pop hl
	jp z, J4542
	ld hl, $605f
	set 3, (hl)
	ld ($61d3), bc
	ld ($61d5), de
	set 0, a
	ld ($61d7), a
	ret
	db $c3, $42, $45

J45b8:
	ld a, (bc)
	cp $ff
	jp nz, J44ca

J45be:
	ld hl, $605f
	res 3, (hl)
	ret

J45c4:
	ld de, $0010	; could be a data table address, label T0010: created
	ld hl, $6200

J45ca:
	push hl
	ld b, $0b

J45cd:
	ld a, (hl)
	and $f0
	ld (hl), a
	inc hl
	djnz J45cd
	pop hl
	add hl, de
	ld a, $b0
	cp l
	jr nz, J45ca
	ret

J45dc:
	srl d
	srl d
	srl d
	srl d
	ld a, e
	sub $30
	srl a
	srl a
	srl a
	srl a
	ld c, a
	ld a, $0a
	sub c
	sla a
	sla a
	sla a
	sla a
	or d
	ret

J45fd:
	ld ix, $0da2	; could be a data table address, label T0da2: created
	ld hl, $62a0
	ld b, $0b
	ld de, $fff0

J4609:
	push hl
	push bc
	ld b, $05

J460d:
	ld a, (ix + $00)
	ld c, a
	and $0f
	sla a
	sla a
	sla a
	sla a
	ld (hl), a
	add hl, de
	ld a, c
	and $f0
	ld (hl), a
	add hl, de
	inc ix
	djnz J460d
	ld a, (ix + $00)
	sla a
	sla a
	sla a
	sla a
	ld (hl), a
	pop bc
	pop hl
	inc ix
	inc hl
	djnz J4609
	ret

J463a:
	ld de, $46c4	; could be a data table address, label T46c4: created
	ld ix, $0d1d	; could be a data table address, label T0d1d: created
	ld a, $01
	ld bc, $fff0

J4646:
	ld ixl, (ix + $00)
	ld ixh, (ix + $01)
	push af
	ld a, (hl)
	cp $36
	ld hl, $6200
	ld a, (de)
	ld l, a
	jr z, J4664
	res 4, (hl)
	dec hl
	res 6, (hl)
	add hl, bc
	res 6, (hl)
	inc hl
	res 4, (hl)
	jr J466f

J4664:
	res 7, (hl)
	dec hl
	res 7, (hl)
	add hl, bc
	res 5, (hl)
	inc hl
	res 5, (hl)

J466f:
	pop af
	inc de
	inc ix
	inc ix
	inc a
	cp $15
	jr nz, J4646
	ret

J467b:
	push hl
	ld hl, $46c4	; could be a data table address, label T46c4: created
	dec b
	ld c, b
	ld b, $00
	add hl, bc
	ex de, hl
	ld bc, $fff0
	pop hl
	ld a, (hl)
	ld ($61c8), a
	cp $36
	ld hl, $6200
	ld a, (de)
	ld l, a
	jr z, J46b0
	ld a, ($61c8)
	cp $3e
	ret nz
	set 7, (hl)
	res 4, (hl)
	dec hl
	set 7, (hl)
	res 6, (hl)
	add hl, bc
	set 5, (hl)
	res 6, (hl)
	inc hl
	set 5, (hl)
	res 4, (hl)
	ret

J46b0:
	set 4, (hl)
	res 7, (hl)
	dec hl
	set 6, (hl)
	res 7, (hl)
	add hl, bc
	set 6, (hl)
	res 5, (hl)
	inc hl
	set 4, (hl)
	res 5, (hl)
	ret

T46c4:
	db $31, $a2, $72, $12, $63, $33, $94, $74, $44, $24, $97, $77, $47, $27, $68, $38
	db $a9, $79, $19, $3a

J46d8:
	call J1f26
	cp $1e
	jr c, J46e1
	ld a, $1e

J46e1:
	ld hl, $4788	; could be a data table address, label T4788: created
	ld ($61c8), a
	dec a
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld a, (hl)
	ld hl, $47a6	; could be a data table address, label T47a6: created
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld a, (hl)
	ld b, a
	push af
	ld a, ($61b8)
	ld c, a
	ld a, b
	ld b, $00

J4702:
	rla
	jr c, J4708
	inc b
	jr J4702

J4708:
	push bc
	ld a, c

J470a:
	rlca
	djnz J470a
	pop bc

J470e:
	srl a
	djnz J470e
	ld b, a
	pop af
	cp b
	jr nz, J4753
	ld a, ($61b6)
	cp $3b
	jr nz, J4753
	ld hl, $61d2
	ld a, (hl)
	inc (hl)
	and $03
	ld hl, $61ce
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld a, (hl)
	cp $00
	jr nz, J4753
	push hl
	ld hl, $47ae	; could be a data table address, label T47ae: created
	ld a, ($9002)
	bit 0, a
	jr nz, J4741
	ld hl, $47cd	; could be a data table address, label T47cd: created

J4741:
	ld a, ($61b7)
	srl a
	srl a
	srl a
	add l
	ld l, a
	ld a, $00
	adc h
	ld h, a
	ld a, (hl)
	pop hl
	ld (hl), a

J4753:
	ld iy, $61c4
	ld de, $0005	; could be a data table address, label T0005: created
	ld ix, $602c
	ld hl, $61ce
	ld b, $04

J4763:
	ld a, (hl)
	cp $00
	jr z, J4780
	push de
	ld d, (ix + $00)
	ld e, (ix + $01)
	call J45dc
	ld e, a
	ld d, $62
	ld a, (de)
	and $0f
	pop de
	cp $0f
	jr z, J4780
	ld iy, a
	nop

J4780:
	inc iy
	add ix, de
	inc hl
	djnz J4763
	ret

T4788:
	db $00, $02, $03, $04, $01, $02, $03, $02, $03, $04, $03, $04, $05, $05, $06, $06
	db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07

T47a6:
	db $05, $05, $05, $04, $03, $02, $01, $01

T47ae:
	db $03, $03, $04, $04, $05, $05, $06, $06, $07, $07, $08, $08, $09, $09, $0a, $0a
	db $0b, $0b, $0c, $0c, $0d, $0d, $0e, $0e, $0f, $0f, $10, $10, $11, $11, $12

T47cd:
	db $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19
	db $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $f5
	db $e5, $d5, $c5, $dd, $e5, $06, $0c, $21, $9d, $d0, $11, $20, $00, $3e, $ff, $77
	db $23, $77, $19, $77, $2b, $77, $19, $10, $f6, $06, $0c, $21, $9d, $d4, $3e, $01
	db $77, $23, $77, $19, $77, $2b, $77, $19, $10, $f6, $06, $16, $21, $9e, $d0, $dd
	db $21, $08, $49, $dd, $7e, $00, $77, $19, $dd, $23, $10, $f7, $06, $13, $21, $9d
	db $d0, $dd, $21, $1e, $49, $dd, $7e, $00, $77, $19, $dd, $23, $10, $f7, $dd, $e1
	db $c1, $d1, $e1, $f1, $c9, $cd, $ec, $47, $e5, $d5, $c5, $f5, $e5, $d5, $c5, $f5
	db $11, $de, $d0, $06, $05, $21, $01, $00, $39, $3e, $00, $ed, $6f, $cd, $b2, $48
	db $ed, $6f, $cd, $c0, $48, $23, $10, $f1, $f1, $c1, $d1, $e1, $f1, $c1, $d1, $e1
	db $c5, $d5, $e5, $dd, $e5, $fd, $e5, $c5, $d5, $e5, $dd, $e5, $fd, $e5, $11, $5d
	db $d3, $06, $03, $21, $00, $00, $39, $3e, $00, $ed, $67, $cd, $ce, $48, $ed, $67
	db $cd, $ce, $48, $23, $ed, $67, $cd, $ce, $48, $ed, $67, $cd, $de, $48, $23, $10
	db $e6, $fd, $e1, $dd, $e1, $e1, $d1, $c1, $fd, $e1, $dd, $e1, $e1, $d1, $c1, $c9
	db $76, $cd, $d5, $22, $c9, $e5, $f5, $6b, $62, $77, $11, $20, $00, $19, $5d, $54
	db $f1, $e1, $c9, $e5, $f5, $6b, $62, $77, $11, $80, $00, $19, $5d, $54, $f1, $e1
	db $c9, $e5, $f5, $6b, $62, $77, $11, $20, $00, $a7, $ed, $52, $5d, $54, $f1, $e1
	db $c9, $e5, $f5, $6b, $62, $77, $11, $a0, $00, $a7, $ed, $52, $5d, $54, $f1, $e1
	db $c9, $21, $00, $60, $7e, $cd, $42, $48, $dd, $21, $00, $90, $dd, $cb, $00, $76
	db $20, $fa, $dd, $cb, $00, $76, $28, $fa, $23, $18, $e9, $0a, $2a, $ff, $ff, $ff
	db $0c, $2a, $ff, $ff, $ff, $0b, $2a, $ff, $ff, $ff, $0e, $2a, $ff, $ff, $ff, $0d
	db $2a, $11, $15, $2a, $ff, $ff, $ff, $ff, $ff, $12, $21, $2a, $ff, $ff, $ff, $ff
	db $ff, $12, $22, $2a

J4931:
	ld (hl), $0d
	add hl, de
	ld (hl), $ff
	add hl, de
	jp J1deb

J493a:
	ld (hl), $1d
	add hl, de
	ld (hl), $ff
	add hl, de
	jp J1dfe

J4943:
	push de
	xor a
	ld ($61e0), a
	jp J376e

J494b:
	ld a, ($6026)
	srl a
	srl a
	srl a
	jp J3677

J4957:
	ld ($605f), a
	ld ($61e3), a
	jp J02dc

J4960:
	ld hl, $605e
	dec (hl)
	dec (hl)
	ld hl, $61e2
	inc (hl)
	jp J03e1

J496c:
	ld ($6065), a
	ld hl, $61e3
	ld a, (hl)
	cp $00
	jp z, J4986
	ld a, ($605f)
	bit 1, a
	jp z, J4981
	dec (hl)

J4981:
	dec (hl)
	xor a
	ld ($61e2), a

J4986:
	jp J03e5

J4989:
	ld hl, $61e3
	inc (hl)
	call J3f2f
	jp J0a45
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $19, $58
	db $a0, $00, $41, $19, $60, $1c, $06, $21, $11, $68, $a4, $f6, $5a, $01, $44, $04
	db $80, $09, $a1, $00, $a0, $05, $01, $00, $00, $40, $22, $00, $00, $02, $10, $a0
	db $00, $04, $00, $00, $29, $01, $20, $01, $04, $85, $0d, $21, $33, $9b, $1f, $02
	db $1e, $c9, $c0, $88, $84, $84, $4a, $80, $c2, $42, $14, $c6, $46, $46, $00, $d0
	db $a4, $a1, $4c, $c2, $99, $18, $8a, $42, $e8, $42, $13, $c8, $e0, $11, $10, $18
	db $62, $22, $40, $41, $02, $80, $04, $50, $08, $18, $10, $40, $80, $f0, $20, $a0
	db $00, $0d, $04, $00, $00, $14, $60, $80, $40, $00, $10, $04, $60, $10, $16, $58
	db $87, $71, $15, $01, $92, $a5, $01, $06, $02, $02, $01, $00, $c0, $23, $01, $10
	db $85, $81, $80, $50, $22, $44, $0b, $19, $02, $8b, $b5, $af, $ac, $00, $00, $00
	db $82, $80, $24, $00, $10, $00, $00, $01, $50, $00, $80, $10, $80, $20, $00, $09
	db $04, $01, $00, $40, $00, $00, $00, $12, $00, $a0, $81, $22, $63, $5b, $4e, $0d
	db $58, $44, $c2, $93, $11, $94, $c4, $82, $41, $40, $00, $40, $fa, $66, $8b, $50
	db $c5, $2b, $81, $0f, $07, $42, $85, $80, $06, $1a, $48, $47, $89, $08, $0c, $00
	db $c8, $00, $10, $44, $00, $10, $00, $00, $00, $08, $00, $08, $44, $92, $00, $10
	db $40, $80, $01, $10, $0a, $00, $02, $42, $00, $aa, $00, $10, $60, $b1, $90, $14
	db $68, $a3, $80, $85, $12, $96, $0a, $02, $10, $21, $05, $81, $03, $20, $70, $00
	db $00, $44, $11, $09, $0d, $61, $01, $9a, $a8, $45, $b8, $9c, $a7, $a0, $c2, $83
	db $21, $40, $20, $20, $00, $08, $20, $81, $00, $35, $08, $00, $90, $b0, $00, $00
	db $00, $00, $28, $41, $00, $20, $20, $04, $10, $ac, $84, $a6, $38, $42, $62, $a2
	db $2c, $95, $84, $91, $c3, $c0, $04, $42, $01, $59, $44, $83, $c0, $4a, $64, $64
	db $30, $c0, $2e, $58, $c8, $b9, $c3, $e8, $e1, $84, $5a, $05, $ce, $00, $80, $00
	db $10, $00, $00, $08, $40, $72, $04, $40, $08, $40, $00, $00, $90, $01, $00, $00
	db $00, $01, $40, $00, $00, $90, $a0, $00, $a2, $00, $80, $90, $00, $74, $80, $29
	db $01, $f0, $30, $b1, $a1, $21, $31, $35, $1d, $09, $1d, $a5, $07, $21, $f0, $22
	db $20, $27, $a1, $01, $82, $c0, $08, $a4, $11, $38, $b5, $c8, $a5, $22, $00, $00
	db $03, $30, $e1, $a0, $01, $00, $00, $08, $00, $00, $00, $01, $00, $00, $00, $00
	db $00, $41, $80, $40, $80, $01, $00, $08, $50, $82, $20, $9f, $4d, $72, $a9, $06
	db $4e, $38, $40, $80, $2e, $04, $a6, $83, $30, $24, $02, $08, $00, $40, $30, $c2
	db $20, $62, $64, $e8, $62, $e8, $da, $03, $9b, $08, $51, $46, $16, $88, $14, $00
	db $22, $05, $c0, $00, $00, $11, $00, $02, $00, $80, $a0, $40, $00, $00, $01, $00
	db $02, $00, $08, $80, $11, $00, $00, $1e, $02, $a0, $22, $10, $00, $43, $e0, $41
	db $71, $40, $05, $14, $80, $9c, $20, $af, $3b, $4a, $f8, $01, $33, $31, $02, $51
	db $a0, $18, $7c, $80, $33, $25, $00, $1c, $24, $3e, $ec, $78, $5f, $21, $00, $00
	db $11, $04, $04, $01, $00, $00, $04, $00, $00, $10, $00, $00, $14, $80, $20, $40
	db $20, $20, $16, $00, $90, $08, $04, $00, $10, $23, $40, $08, $09, $c8, $8a, $c8
	db $c8, $ca, $82, $82, $52, $4a, $c0, $0a, $4a, $8a, $c0, $02, $4a, $4a, $ca, $c0
	db $ca, $c8, $ca, $ca, $88, $48, $4a, $4a, $4a, $4a, $62, $02, $c0, $da, $ca, $08
	db $ea, $ca, $4a, $ca, $ea, $ca, $8a, $ca, $c0, $08, $ca, $82, $88, $80, $c8, $ca
	db $c8, $42, $8a, $c2, $8a, $8a, $08, $ca, $ca, $40, $ca, $c8, $9a, $30, $34, $15
	db $34, $25, $35, $24, $25, $10, $10, $35, $15, $20, $35, $31, $15, $10, $35, $35
	db $34, $74, $34, $11, $14, $20, $34, $04, $31, $34, $35, $35, $25, $2d, $25, $15
	db $14, $34, $34, $35, $01, $35, $05, $35, $24, $35, $35, $35, $35, $33, $35, $15
	db $31, $15, $35, $35, $15, $31, $35, $34, $35, $34, $15, $3d, $35, $ca, $c0, $ca
	db $ca, $88, $88, $ca, $8a, $4a, $c8, $c8, $c2, $c2, $c8, $4a, $4a, $00, $ca, $4a
	db $ca, $80, $4a, $ca, $ca, $42, $c8, $ca, $42, $4a, $0a, $40, $ca, $ca, $ca, $5a
	db $ca, $ca, $ca, $ca, $4a, $8a, $a8, $02, $4a, $ca, $8a, $4a, $42, $c2, $8a, $0a
	db $c2, $ca, $4a, $ca, $ca, $48, $c2, $88, $ca, $ca, $c8, $c2, $c2, $04, $14, $31
	db $35, $30, $34, $20, $35, $31, $34, $34, $34, $34, $31, $11, $34, $25, $31, $35
	db $35, $30, $30, $10, $14, $34, $31, $04, $30, $34, $35, $15, $21, $31, $15, $30
	db $00, $34, $35, $31, $30, $04, $11, $04, $34, $14, $24, $15, $35, $25, $24, $15
	db $01, $35, $15, $35, $35, $35, $05, $35, $35, $35, $35, $25, $31, $da, $88, $40
	db $9a, $c2, $ca, $48, $ca, $ca, $48, $42, $c0, $0a, $48, $ca, $c0, $08, $c2, $42
	db $ca, $c8, $42, $c0, $4a, $c2, $4a, $48, $ca, $4a, $e8, $42, $ca, $c2, $ca, $ca
	db $c2, $8e, $8a, $c8, $8a, $4a, $ca, $ca, $8a, $8a, $ca, $ca, $4a, $c8, $ca, $c2
	db $80, $c8, $4a, $5a, $42, $c2, $c0, $8a, $0a, $80, $ca, $ca, $c2, $35, $31, $31
	db $31, $25, $00, $11, $35, $15, $11, $15, $31, $31, $11, $04, $25, $05, $15, $35
	db $71, $25, $25, $30, $31, $34, $15, $11, $15, $25, $35, $35, $11, $3c, $25, $35
	db $35, $35, $35, $55, $15, $25, $31, $31, $14, $35, $3c, $24, $35, $34, $25, $35
	db $25, $31, $25, $35, $31, $25, $35, $35, $14, $3d, $25, $35, $b5, $c8, $ca, $8a
	db $ca, $4a, $ca, $00, $c8, $0a, $00, $8a, $ca, $e2, $82, $ca, $c0, $ca, $c2, $48
	db $ca, $0a, $ca, $ca, $c8, $c8, $88, $8a, $c8, $c2, $4a, $42, $0a, $ca, $ca, $9a
	db $ca, $88, $c2, $ca, $c2, $ca, $8a, $ca, $c2, $82, $ca, $4a, $ca, $ca, $c2, $da
	db $44, $ca, $c8, $ce, $0a, $c8, $ca, $48, $0a, $02, $ea, $c8, $48, $35, $01, $34
	db $15, $01, $35, $05, $31, $15, $25, $15, $35, $35, $15, $01, $05, $35, $34, $35
	db $35, $15, $34, $35, $21, $21, $30, $31, $31, $35, $a5, $15, $31, $30, $34, $01
	db $b5, $35, $21, $35, $34, $13, $35, $31, $15, $35, $21, $35, $35, $15, $00, $35
	db $35, $25, $35, $54, $31, $25, $35, $35, $30, $39, $1d, $35, $15, $88, $80, $c8
	db $4a, $80, $ca, $48, $82, $ca, $c8, $ca, $c2, $42, $ca, $c8, $8a, $88, $42, $8a
	db $8a, $c0, $40, $c2, $ca, $42, $ca, $ca, $c2, $0a, $88, $4a, $4a, $82, $ca, $c6
	db $ca, $08, $8a, $8a, $c2, $ca, $ca, $c8, $ca, $c2, $ca, $4a, $ca, $ca, $c8, $ca
	db $8a, $ca, $ca, $da, $c8, $ca, $88, $02, $ca, $8a, $4a, $ca, $80, $10, $24, $14
	db $24, $15, $11, $25, $11, $01, $01, $34, $30, $3d, $05, $14, $31, $34, $25, $04
	db $24, $34, $35, $14, $35, $74, $35, $31, $34, $34, $35, $35, $31, $35, $10, $05
	db $15, $95, $15, $14, $14, $35, $35, $35, $00, $35, $17, $30, $3d, $05, $24, $05
	db $35, $25, $25, $24, $3d, $35, $71, $34, $01, $14, $35, $35, $3c, $8a, $c2, $ca
	db $ca, $c0, $c8, $40, $c8, $ca, $c2, $4a, $c2, $c2, $ca, $80, $00, $ca, $c6, $08
	db $ca, $4a, $c8, $80, $c8, $c2, $ca, $ca, $88, $c2, $c8, $ca, $ca, $ca, $ca, $ca
	db $ca, $c2, $ca, $c8, $ca, $ca, $ca, $ca, $c2, $ca, $ca, $ca, $ca, $c2, $ca, $ca
	db $c2, $da, $4a, $ca, $ca, $ca, $8a, $c2, $c0, $ca, $6a, $ca, $c2, $24, $15, $11
	db $34, $35, $35, $35, $05, $25, $11, $01, $21, $25, $21, $15, $21, $25, $11, $11
	db $35, $15, $35, $34, $31, $35, $31, $14, $34, $35, $35, $35, $35, $34, $11, $35
	db $35, $15, $15, $14, $21, $25, $35, $31, $34, $34, $31, $34, $3d, $35, $31, $11
	db $31, $34, $31, $34, $05, $35, $15, $21, $11, $35, $bd, $b5, $b4, $c8, $88, $ca
	db $8a, $88, $c8, $ca, $4a, $4a, $c8, $ca, $02, $ca, $c8, $ca, $c8, $ca, $ca, $ca
	db $40, $c2, $ca, $4a, $8a, $ca, $ca, $48, $8a, $0a, $ca, $4a, $e0, $ca, $c2, $4a
	db $ca, $ca, $ca, $8a, $c2, $ca, $ca, $ca, $08, $8a, $da, $82, $4a, $0a, $c2, $02
	db $48, $ca, $ca, $ca, $0a, $0a, $c2, $c2, $88, $c2, $42, $ca, $42, $14, $30, $14
	db $34, $31, $21, $31, $25, $27, $14, $35, $31, $24, $24, $35, $31, $04, $25, $b4
	db $15, $25, $31, $30, $34, $21, $25, $24, $00, $35, $35, $35, $a5, $b5, $14, $01
	db $31, $34, $35, $24, $21, $35, $34, $25, $31, $35, $11, $14, $35, $35, $34, $30
	db $35, $24, $05, $30, $35, $35, $05, $35, $21, $15, $35, $15, $35, $c0, $ca, $c2
	db $c2, $ca, $c8, $0a, $c8, $4a, $40, $02, $42, $c2, $c8, $ca, $c2, $4a, $ca, $c8
	db $8a, $42, $8a, $c8, $4a, $08, $ca, $c2, $40, $48, $c8, $0a, $ca, $ca, $8a, $4a
	db $c2, $ca, $c2, $ca, $ca, $4a, $ca, $c2, $8a, $42, $c2, $c2, $c8, $8e, $8a, $8a
	db $ca, $8a, $c8, $8a, $ea, $8a, $02, $02, $c2, $c2, $4a, $0a, $c8, $31, $25, $14
	db $21, $14, $01, $34, $35, $05, $35, $11, $04, $25, $15, $34, $25, $30, $35, $75
	db $25, $35, $05, $35, $21, $11, $01, $04, $34, $14, $35, $34, $35, $35, $15, $35
	db $31, $34, $11, $34, $14, $35, $35, $35, $25, $35, $31, $34, $15, $35, $15, $25
	db $25, $11, $35, $31, $25, $15, $15, $35, $25, $31, $35, $3d, $3d

J5000:
	jp J5060
	db $ff, $ff, $ff, $ff, $ff

J5008:
	jp J54c1
	db $ff, $ff, $ff, $ff, $ff

J5010:
	jp J561b
	db $ff, $ff, $ff, $ff, $ff

J5018:
	jp J57af
	db $ff, $ff, $ff, $ff, $ff

J5020:
	jp J58bf
	db $ff, $ff, $ff, $ff, $ff

J5028:
	jp J5ba6
	db $ff, $ff, $ff, $ff, $ff

J5030:
	jp J5bf1
	db $ff, $ff, $ff, $ff, $ff

J5038:
	jp J5bfb
	db $ff, $ff, $ff, $ff, $ff

J5040:
	ld hl, $6830
	ld b, $10

J5045:
	ld (hl), a
	inc hl
	djnz J5045
	ret
	db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	db $ff, $ff, $ff, $68, $cb, $1a

J5060:
	ld de, $6068
	ld a, ($6065)
	and a
	jr z, J506c
	ld de, $606b

J506c:
	call J50a4
	call nc, J50f6
	ld a, ($605f)
	jp J5ec0

J5078:
	ld de, $606b
	ld a, ($6065)
	and a
	jr z, J5084
	ld de, $6068

J5084:
	jp J5ed0
	db $d8

J5088:
	ld a, ($6065)
	and a
	jr z, J5090
	ld a, $ff

J5090:
	cpl
	ld ($6065), a
	ld b, a
	ld a, ($9002)
	and $20
	jr z, J50a0
	ld a, b
	ld ($a000), a

J50a0:
	jp J5ee0
	db $c9

J50a4:
	ld hl, $6073
	ld bc, $0900	; could be a data table address, label T0900: created

J50aa:
	push bc
	push de
	push hl
	call J5d2c
	jr nc, J50be
	pop hl
	ld bc, $0003	; could be a data table address, label T0003: created
	add hl, bc
	pop de
	pop bc
	inc c
	djnz J50aa
	scf
	ret

J50be:
	pop hl
	pop de
	pop bc
	ld ix, $6800
	ld (ix + $00), $5c
	ld (ix + $01), $4e
	ld (ix + $02), $0a
	ld a, ($9002)
	and $04
	jr nz, J50dc
	ld (ix + $02), $03

J50dc:
	ld (ix + $03), $00
	ld ix, c
	inc b
	ex de, hl
	ld de, $6805
	ld bc, $0003	; could be a data table address, label T0003: created
	ldir
	ex de, hl
	ld b, $0a

J50ef:
	ld (hl), $ff
	inc hl
	djnz J50ef
	and a
	ret

J50f6:
	ld iy, $6812
	ld (iy + $00), $82
	ld (iy + $01), $58
	ld (iy + $02), $36
	ld hl, $d085
	ld bc, $1a18	; could be a data table address, label T1a18: created
	call J5d52
	ld hl, $544e	; could be a data table address, label T544e: created
	call J5d36
	ld hl, $5459	; could be a data table address, label T5459: created
	call J5d36
	ld hl, $5465	; could be a data table address, label T5465: created
	call J5d36
	ld a, (ix + $04)
	ld b, a
	add a
	add b
	ld e, a
	ld d, $00
	ld hl, $546f	; could be a data table address, label T546f: created
	add hl, de
	ex de, hl
	push de
	ld hl, $d1de
	ld bc, $0306	; could be a data table address, label T0306: created
	call J5d3f
	pop de
	ld hl, $d0dd
	ld bc, $0307	; could be a data table address, label T0307: created
	call J5d3f
	call J5d6d
	call J5dbc
	ld bc, $050a	; could be a data table address, label T050a: created
	ld hl, $d0e7
	ld de, $0020	; could be a data table address, label T0020: created

J5152:
	push bc
	push hl

J5154:
	ld (hl), $31
	add hl, de
	ld (hl), $31
	add hl, de
	ld (hl), $33
	add hl, de
	add hl, de
	djnz J5154
	pop hl
	inc hl
	inc hl
	pop bc
	dec c
	jr nz, J5152
	ld a, $0a
	ld b, $03
	ld hl, $d198
	call J5415
	ld bc, $0504	; could be a data table address, label T0504: created
	ld hl, $d116

J5177:
	push bc
	push hl
	call J5415
	pop hl
	dec hl
	dec hl
	pop bc
	dec c
	jr nz, J5177
	ld b, $03
	call J5415
	ld a, $01
	ld b, $02
	call J5415
	ld b, $05
	ld hl, $d10c
	call J5415
	ld b, $02
	ld hl, $d10a
	call J5415
	ld a, $27
	ld b, $01
	call J5415
	ld a, $28
	ld b, $01
	call J5415
	ld a, $24
	ld b, $01
	call J5415
	ld a, $2d
	ld b, $01
	ld hl, $d188
	call J5415
	ld a, $29
	ld b, $01
	ld hl, $d288
	call J5415
	ld hl, $d0f8
	call J5428
	ld hl, $d2f8
	call J5428
	ld hl, $d0e8
	call J5428
	call J543c
	call J5e47

J51e0:
	call J5e9c
	push ix
	push iy
	call J1fc7
	call J178f
	pop iy
	pop ix
	dec (ix + $01)
	jr nz, J5208
	ld (ix + $01), $4e
	call J53ca
	ld hl, $6000
	set 4, (hl)
	dec (ix + $00)
	jp z, J5329

J5208:
	ld a, ($6065)
	and a
	jr nz, J5213
	ld a, ($9000)
	jr J5216

J5213:
	ld a, ($9001)

J5216:
	cpl
	and $0f
	jr z, J51e0
	rra
	jr c, J5286
	rra
	jr c, J5265
	rra
	jr c, J5245
	ld (iy + $00), $82
	ld a, (iy + $02)
	cp $d6
	jp nc, J51e0
	ld c, (iy + $01)
	ld hl, $53bd	; could be a data table address, label T53bd: created
	call J539f
	jp nc, J51e0
	ld iy, c
	ld bc, $34fd	; could be a data table address, label T34fd: created
	ld (bc), a
	jp J51e0

J5245:
	ld (iy + $00), $42
	ld a, (iy + $01)
	cp $a8
	jp nc, J51e0
	ld c, (iy + $02)
	ld hl, $53b1	; could be a data table address, label T53b1: created
	call J539f
	jp nc, J51e0
	ld iy, c
	ld (bc), a
	inc (iy + $01)
	jr J52a4

J5265:
	ld (iy + $00), $22
	ld a, (iy + $02)
	cp $37
	jp c, J51e0
	ld c, (iy + $01)
	ld hl, $53bd	; could be a data table address, label T53bd: created
	call J539f
	jp nc, J51e0
	ld iy, c
	ld bc, $35fd	; could be a data table address, label T35fd: created
	ld (bc), a
	jp J51e0

J5286:
	ld (iy + $00), $12
	ld a, (iy + $01)
	cp $09
	jp c, J51e0
	ld c, (iy + $02)
	ld hl, $53b1	; could be a data table address, label T53b1: created
	call J539f
	jp nc, J51e0
	ld iy, c
	ld (bc), a
	dec (iy + $01)

J52a4:
	ld a, b
	sub $02
	jp c, J51e0
	cp $09
	jp nc, J51e0
	ld b, a
	add a
	add a
	add b
	ld d, a
	ld c, (iy + $01)
	ld hl, $53c4	; could be a data table address, label T53c4: created
	call J539f
	and a
	jp nz, J51e0
	ld a, b
	dec a
	add d
	ld e, a
	ld d, $00
	ld hl, $5494	; could be a data table address, label T5494: created
	add hl, de
	ld a, (hl)
	and a
	jr nz, J52d6
	ld hl, $6000
	set 7, (hl)
	jr J5329

J52d6:
	cp $80
	jr nz, J52f9
	ld hl, $6001
	set 1, (hl)
	ld a, (ix + $03)
	and a
	jp z, J51e0
	dec (ix + $03)
	ld hl, $6810
	ld de, $6811
	ld bc, $0009	; could be a data table address, label T0009: created
	lddr
	ex de, hl
	ld (hl), $ff
	jr J531a

J52f9:
	ld b, a
	ld hl, $6000
	set 0, (hl)
	ld a, (ix + $03)
	cp (ix + $02)
	jp nc, J51e0
	inc (ix + $03)
	push bc
	ld hl, $6809
	ld de, $6808
	ld bc, $0009	; could be a data table address, label T0009: created
	ldir
	ex de, hl
	pop bc
	ld (hl), b

J531a:
	ld bc, $0a07	; could be a data table address, label T0a07: created
	ld de, $6808
	ld hl, $d17d
	call J5d3f
	jp J51e0

J5329:
	ld hl, $6808
	ld b, $0a
	ld a, $ff

J5330:
	cp (hl)
	jr nz, J5341
	inc hl
	djnz J5330
	ld hl, $548a	; could be a data table address, label T548a: created
	ld de, $6808
	ld bc, $000a	; could be a data table address, label T000a: created
	ldir

J5341:
	ld de, $608d
	ld a, (ix + $04)
	sub $08
	jr nc, J5358
	neg
	ld b, a
	add a
	add b
	ld c, a
	ld b, $00
	ld hl, $608a
	lddr

J5358:
	ld hl, $6807
	ld bc, $0003	; could be a data table address, label T0003: created
	lddr
	ld de, $d3eb
	ld a, (ix + $04)
	sub $08
	jr nc, J5379
	neg
	add a
	add a
	ld b, a
	add a
	add b
	ld c, a
	ld b, $00
	ld hl, $d3df
	lddr

J5379:
	ld a, $ff
	ld (de), a
	dec de
	ld hl, $6811
	ld bc, $000a	; could be a data table address, label T000a: created
	lddr
	ld (de), a
	xor a
	ld ($6026), a
	call J1fc7
	call J178f
	ld hl, $d080
	ld bc, $2018	; could be a data table address, label T2018: created
	call J5d52
	ret
	db $00, $00, $00, $00, $c9

J539f:
	ld b, (hl)
	inc hl

J53a1:
	ld a, (hl)
	sub c
	jr nc, J53a7
	neg

J53a7:
	cp $07
	jr c, J53af
	inc hl
	djnz J53a1
	ret

J53af:
	ld c, (hl)
	ret

T53b1:
	db $0b, $36, $46, $56, $66, $76, $86, $96, $a6, $b6, $c6, $d6

T53bd:
	db $06, $08, $28, $48, $68, $88, $a8

T53c4:
	db $05, $1b, $3b, $5b, $7b, $9b

J53ca:
	ld a, (ix + $00)
	cp $0c
	jr c, J53fd
	cp $23
	jr c, J53f4
	cp $3a
	jr c, J53ed
	cp $51
	jr c, J53e6
	sub $5c
	neg
	ld de, $d61c
	jr J5404

J53e6:
	sub $3a
	ld de, $d765
	jr J540e

J53ed:
	sub $23
	ld de, $d485
	jr J5404

J53f4:
	sub $22
	neg
	ld de, $d486
	jr J540e

J53fd:
	sub $0b
	neg
	ld de, $d4bc

J5404:
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	jr J5411

J540e:
	ld l, a
	ld h, $00

J5411:
	add hl, de
	ld (hl), $05
	ret

J5415:
	ld de, $0400	; could be a data table address, label T0400: created

J5418:
	push bc
	push hl
	ld (hl), a
	add hl, de
	ld (hl), $05
	pop hl
	ld bc, $0080	; could be a data table address, label T0080: created
	add hl, bc
	pop bc
	inc a
	djnz J5418
	ret

J5428:
	ld bc, $0020	; could be a data table address, label T0020: created
	ld de, $0400	; could be a data table address, label T0400: created
	push hl
	ld (hl), $0c
	add hl, de
	ld (hl), $06
	pop hl
	add hl, bc
	ld (hl), $15
	add hl, de
	ld (hl), $06
	ret

J543c:
	ld a, $57
	ld ($d2e8), a
	inc a
	ld ($d308), a
	ld a, $07
	ld ($d6e8), a
	ld ($d708), a
	ret

T544e:
	db $de, $d0, $06, $07, $22, $18, $1e, $ff, $10, $0e, $1d

T5459:
	db $5e, $d2, $06, $08, $11, $12, $ff, $1c, $0c, $18, $1b, $0e

T5465:
	db $dd, $d2, $07, $06, $ff, $ff, $ff, $ff, $ff, $ff

T546f:
	db $1d, $18, $19, $02, $17, $0d, $03, $1b, $0d, $04, $1d, $11, $05, $1d, $11, $06
	db $1d, $11, $07, $1d, $11, $08, $1d, $11, $09, $1d, $11

T548a:
	db $ff, $ff, $15, $0a, $0d, $22, $ff, $0b, $1e, $10

T5494:
	db $80, $0c, $0b, $0a, $80, $11, $10, $0f, $0e, $0d, $16, $15, $14, $13, $12, $1b
	db $1a, $19, $18, $17, $20, $1f, $1e, $1d, $1c, $02, $01, $23, $22, $21, $07, $06
	db $05, $04, $03, $24, $28, $27, $09, $08, $00, $29, $ff, $2d, $80

J54c1:
	push af
	push bc
	push de
	push hl
	push iy
	call J5d9c
	ld hl, $55c3	; could be a data table address, label T55c3: created
	call J571b
	ld a, $c1
	ld c, $08
	ld hl, $55d8	; could be a data table address, label T55d8: created
	ld b, $05

J54d9:
	push bc
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld b, (hl)
	inc hl
	push hl
	ex de, hl
	call J55c9
	pop hl
	pop bc
	djnz J54d9
	ld a, $c0
	ld hl, $55d8	; could be a data table address, label T55d8: created
	ld b, $05

J54f0:
	push bc
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld b, (hl)
	inc hl
	push hl
	ex de, hl
	dec hl
	call J55c9
	pop hl
	pop bc
	djnz J54f0
	ld hl, $55e7	; could be a data table address, label T55e7: created
	call J5d36
	ex de, hl
	call J5d36
	ex de, hl
	call J5d36
	ex de, hl
	call J5d36
	ld iy, $6812
	ld (iy + $00), $22
	ld (iy + $01), $58
	ld (iy + $02), $d6
	ld (iy + $03), $10

J5527:
	push iy
	call J5eae
	call J1fc7
	call J178f
	pop iy
	dec (iy + $03)
	jr nz, J5527
	ld hl, $55b4	; could be a data table address, label T55b4: created
	ld iy, iyh
	inc b
	ld iy, iyl
	dec b
	ld hl, $6001
	set 2, (hl)

J5547:
	ld iyh, (iy + $04)
	ld iyl, (iy + $05)
	ld a, (hl)
	and a
	jr z, J5592
	ld iy, a
	nop
	inc hl
	ld a, (hl)
	ld iy, a
	inc bc
	inc hl
	ld iy, iyh
	inc b
	ld iy, iyl
	dec b

J5560:
	ld a, (iy + $00)
	rla
	jr c, J557b
	rla
	jr c, J5576
	rla
	jr c, J5571
	dec (iy + $01)
	jr J557e

J5571:
	dec (iy + $02)
	jr J557e

J5576:
	inc (iy + $01)
	jr J557e

J557b:
	inc (iy + $02)

J557e:
	push iy
	call J5eae
	call J1fc7
	call J178f
	pop iy
	dec (iy + $03)
	jr nz, J5560
	jr J5547

J5592:
	ld hl, $603f
	ld (hl), $00
	ld (iy + $03), $10

J559b:
	push iy
	call J1fc7
	call J178f
	pop iy
	dec (iy + $03)
	jr nz, J559b
	call J5d9c
	pop iy
	pop hl
	pop de
	pop bc
	pop af
	ret

T55b4:
	db $22, $40, $12, $10, $22, $20, $42, $20, $82, $20, $12, $60, $22, $78, $00

T55c3:
	db $17, $d1, $03, $10, $c2, $0b

J55c9:
	ld de, $0400	; could be a data table address, label T0400: created
	push hl
	ld (hl), a
	add hl, de
	ld (hl), c
	pop hl
	ld de, $0020	; could be a data table address, label T0020: created
	add hl, de
	djnz J55c9
	ret

T55d8:
	db $f5, $d0, $07, $55, $d2, $07, $f1, $d1, $02, $ef, $d0, $05, $8f, $d2, $05

T55e7:
	db $0c, $d1, $02, $10, $0c, $18, $17, $10, $1b, $0a, $1d, $1e, $15, $0a, $1d, $12
	db $18, $17, $1c, $28, $aa, $d1, $02, $07, $22, $18, $1e, $ff, $20, $12, $17, $28
	db $d1, $06, $05, $0e, $21, $1d, $1b, $0a, $e8, $d1, $02, $08, $15, $0a, $0d, $22
	db $ff, $0b, $1e, $10

J561b:
	push af
	ex af, af'
	push af
	push bc
	push de
	push hl
	push iy
	call J5d9c
	ld iy, $6812
	ld a, ($6027)
	ld iy, a
	ld bc, $283a	; could be a data table address, label T283a: created
	ld h, b
	ld iy, a
	ld (bc), a
	ld hl, $5767	; could be a data table address, label T5767: created
	call J5d36
	ex de, hl
	call J5d36
	ld b, $10
	call J5710
	ld hl, $6001
	set 3, (hl)
	ld hl, $5743	; could be a data table address, label T5743: created
	call J571b
	ld hl, $5749	; could be a data table address, label T5749: created
	call J571b
	ld b, $18
	call J5710
	ld hl, $574f	; could be a data table address, label T574f: created
	call J571b
	ld hl, $5755	; could be a data table address, label T5755: created
	call J571b
	ld hl, $575b	; could be a data table address, label T575b: created
	call J571b
	ld hl, $5773	; could be a data table address, label T5773: created
	call J5d36
	ex de, hl
	call J5d36
	ld b, $48
	call J5710
	ld hl, $5761	; could be a data table address, label T5761: created
	call J571b
	ld a, $0a
	ld ($d609), a
	ld ($d629), a
	ld b, $30
	call J5710
	ld hl, $5791	; could be a data table address, label T5791: created
	ld b, $06

J5694:
	push bc
	call J5d36
	pop bc
	ex de, hl
	djnz J5694
	ld b, $30
	call J5710

J56a1:
	ld iy, $6812
	ld a, (iy + $01)
	cp $0f
	jr z, J56c9
	jr c, J56b7
	ld (iy + $00), $12
	dec (iy + $01)
	jr J56be

J56b7:
	ld (iy + $00), $42
	inc (iy + $01)

J56be:
	call J5e9c
	call J1fc7
	call J178f
	jr J56a1

J56c9:
	ld iy, $6812
	ld a, (iy + $02)
	cp $cf
	jr z, J56f1
	jr c, J56df
	ld (iy + $00), $22
	dec (iy + $02)
	jr J56e6

J56df:
	ld (iy + $00), $82
	inc (iy + $02)

J56e6:
	call J5e9c
	call J1fc7
	call J178f
	jr J56c9

J56f1:
	ld bc, $0202	; could be a data table address, label T0202: created
	ld hl, $d0d9
	call J5d52
	xor a
	ld ($6026), a
	ld bc, $1515	; could be a data table address, label T1515: created
	ld hl, $d0c6
	call J5d52
	pop iy
	pop hl
	pop de
	pop bc
	pop af
	ex af, af'
	pop af
	ret

J5710:
	push bc
	call J1fc7
	call J178f
	pop bc
	djnz J5710
	ret

J571b:
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld b, (hl)
	inc hl
	ld c, (hl)
	inc hl
	ld a, (hl)
	inc hl
	ex af, af'
	ld a, (hl)
	ex af, af'
	ex de, hl

J5729:
	push bc
	push hl
	ld de, $0400	; could be a data table address, label T0400: created

J572e:
	push hl
	ld (hl), a
	add hl, de
	ex af, af'
	ld (hl), a
	ex af, af'
	inc a
	pop hl
	inc hl
	djnz J572e
	pop hl
	ld de, $0020	; could be a data table address, label T0020: created
	add hl, de
	pop bc
	dec c
	jr nz, J5729
	ret

T5743:
	db $c6, $d0, $08, $06, $10, $0c

T5749:
	db $86, $d2, $08, $06, $90, $0c

T574f:
	db $cc, $d1, $08, $04, $40, $0a

T5755:
	db $88, $d1, $08, $02, $60, $0a

T575b:
	db $48, $d2, $08, $02, $70, $0a

T5761:
	db $c8, $d1, $04, $04, $00, $0b

T5767:
	db $d9, $d0, $02, $02, $e9, $e6, $da, $d0, $02, $02, $e8, $e7

T5773:
	db $46, $d1, $0a, $0c, $80, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $88
	db $67, $d1, $0a, $0a, $82, $83, $84, $81, $81, $81, $81, $85, $86, $87

T5791:
	db $71, $d1, $07, $01, $29, $93, $d1, $07, $01, $29, $d4, $d1, $07, $01, $29, $34
	db $d2, $07, $01, $29, $73, $d2, $07, $01, $29, $91, $d2, $07, $01, $29

J57af:
	ld hl, $b000
	ld (hl), $9f
	ld (hl), $bf
	ld (hl), $df
	ld (hl), $ff
	ld hl, $c000
	ld (hl), $9f
	ld (hl), $bf
	ld (hl), $df
	ld (hl), $ff
	ld hl, $d000

J57c8:
	ld (hl), $ff
	inc hl
	ld a, h
	cp $d4
	jr c, J57c8

J57d0:
	ld (hl), $00
	inc hl
	ld a, h
	cp $d8
	jr c, J57d0
	ld c, $40
	ld de, $0020	; could be a data table address, label T0020: created

J57dd:
	ld hl, $7000
	ld b, $20

J57e2:
	ld (hl), $00
	add hl, de
	djnz J57e2
	dec c
	jr nz, J57dd
	ld hl, $0000	; could be a data table address, label T0000: created
	xor a
	ld b, $60

J57f0:
	add (hl)
	inc l
	jr nz, J57f0
	inc h
	djnz J57f0
	and a
	nop
	nop
	exx	; exchange bc de hl <- -> bc' de' hl'
	ld b, a
	exx	; exchange bc de hl <- -> bc' de' hl'
	exx	; exchange bc de hl <- -> bc' de' hl'
	ld c, $00
	exx	; exchange bc de hl <- -> bc' de' hl'
	ld e, $ff

J5803:
	ld hl, $6000
	ld d, $10
	ld a, e

J5809:
	ld c, $10

J580b:
	ld b, $10

J580d:
	add a, $2f
	ld (hl), a
	inc hl
	djnz J580d
	dec a
	dec c
	jr nz, J580b
	dec a
	dec d
	jr nz, J5809
	ld hl, $6000
	ld d, $10
	ld a, e

J5821:
	ld c, $10

J5823:
	ld b, $10

J5825:
	add a, $2f
	cp (hl)
	jr z, J582e
	exx	; exchange bc de hl <- -> bc' de' hl'
	ld c, $ff
	exx	; exchange bc de hl <- -> bc' de' hl'

J582e:
	inc hl
	djnz J5825
	dec a
	dec c
	jr nz, J5823
	dec a
	dec d
	jr nz, J5821
	ld a, e
	sub $0f
	ld e, a
	jr nc, J5803
	ld a, $1b
	ld ($d192), a
	ld ($d18f), a
	ld a, $18
	ld ($d1b2), a
	ld a, $0a
	ld ($d1af), a
	ld a, $16
	ld ($d1d2), a
	ld ($d1cf), a
	exx	; exchange bc de hl <- -> bc' de' hl'
	ld a, b
	and a
	jr nz, J586a
	ld a, $18
	ld ($d212), a
	ld a, $14
	ld ($d232), a
	jr J5886

J586a:
	and $f0
	rrca
	rrca
	rrca
	rrca
	ld ($d292), a
	ld a, b
	and $0f
	ld ($d2b2), a
	ld a, $0e
	ld ($d212), a
	ld a, $1b
	ld ($d232), a
	ld ($d252), a

J5886:
	ld a, c
	and a
	jr nz, J5896
	ld a, $18
	ld ($d20f), a
	ld a, $14
	ld ($d22f), a
	jr J58a3

J5896:
	ld a, $0e
	ld ($d20f), a
	ld a, $1b
	ld ($d22f), a
	ld ($d24f), a

J58a3:
	ld a, b
	or c
	exx	; exchange bc de hl <- -> bc' de' hl'
	ld de, $0003	; could be a data table address, label T0003: created
	jr z, J58ae
	ld de, $0012	; could be a data table address, label T0012: created

J58ae:
	ld bc, $0000	; could be a data table address, label T0000: created

J58b1:
	dec bc
	ld a, b
	or c
	jr nz, J58b1
	dec de
	ld a, d
	or e
	jr nz, J58b1
	jp J0100
	db $a2

J58bf:
	call J5d9c
	call J1be5
	ld hl, $5aff	; could be a data table address, label T5aff: created
	ld b, $0d

J58ca:
	push bc
	call J5d36
	ex de, hl
	pop bc
	djnz J58ca
	call J5e47
	ld ix, $681a
	ld (ix + $00), $ff
	ld a, ($5adf)
	ld ix, a
	ld bc, $e021
	ld e, d
	ld ix, ixh
	ld (bc), a
	ld ix, ixl
	inc bc
	ld (ix + $04), $07
	ld (ix + $05), $1e
	ld (ix + $06), $00
	ld iy, $6812
	ld (iy + $00), $42
	ld (iy + $01), $08
	ld (iy + $02), $b7

J5908:
	call J5e9c
	push ix
	push iy
	call J1fc7
	call J178f
	pop iy
	pop ix
	dec (ix + $05)
	jr nz, J5925
	ld (ix + $05), $1e
	call J5a93

J5925:
	ld a, (ix + $00)
	and a
	jr z, J5933
	dec (ix + $01)
	call z, J5a7a
	jr J5908

J5933:
	inc (iy + $01)
	dec (ix + $01)
	jr nz, J5908
	call J5a44
	ld a, (ix + $06)
	cp $0f
	jr nc, J596d
	call J59b8
	call J5a7a
	inc (ix + $06)
	ld a, (ix + $06)
	cp $0c
	jr z, J5963
	cp $05
	jr nz, J5908
	ld (iy + $01), $08
	ld (iy + $02), $9f
	jr J5908

J5963:
	ld (iy + $01), $08
	ld (iy + $02), $87
	jr J5908

J596d:
	ld a, $81
	ld ($6026), a
	ld hl, $599a	; could be a data table address, label T599a: created
	ld c, $0f
	ld b, $1e

J5979:
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld ($6029), de
	push bc
	push hl
	call J5710
	pop hl
	pop bc
	ld b, $05
	dec c
	jr nz, J5979
	ld b, $3c
	call J5710
	xor a
	ld ($6026), a
	jp J5ef0
	db $c9

T599a:
	db $e4, $00, $e8, $00, $ec, $00, $f0, $00, $f4, $00, $f8, $00, $fc, $00, $fc, $09
	db $48, $19, $4c, $19, $50, $19, $54, $19, $58, $19, $5c, $19, $60, $19

J59b8:
	ld a, (ix + $06)
	cp $0c
	jr nc, J59f6
	cp $05
	jr nc, J59da
	call J5a20
	ld de, $d5dd
	add hl, de
	ld (hl), $06
	cp $04
	ret nz
	ld hl, $5a2c	; could be a data table address, label T5a2c: created
	call J5d36
	ex de, hl
	call J5d36
	ret

J59da:
	sub $05
	call J5a20
	ld de, $d4bd
	add hl, de
	ld (hl), $07
	ld a, (ix + $06)
	cp $0b
	ret nz
	ld hl, $5a38	; could be a data table address, label T5a38: created
	call J5d36
	ex de, hl
	call J5d36
	ret

J59f6:
	sub $0c
	add a
	call J5a20
	ld de, $d6bd
	add hl, de
	ld (hl), $05
	ld de, $0020	; could be a data table address, label T0020: created
	add hl, de
	ld (hl), $05
	rrca
	ld e, a
	ld d, $00
	ld hl, $5a29	; could be a data table address, label T5a29: created
	add hl, de
	ld a, $56
	ld ($d2ed), a
	ld ($d2ea), a
	ld a, (hl)
	ld ($d30d), a
	ld ($d30a), a
	ret

J5a20:
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ret

T5a29:
	db $02, $03, $05

T5a2c:
	db $17, $d3, $01, $02, $e3, $e4, $16, $d3, $01, $02, $e1, $e2

T5a38:
	db $14, $d3, $02, $02, $e8, $e7, $13, $d3, $02, $02, $e9, $e6

J5a44:
	ld a, (ix + $06)
	add a
	ld e, a
	ld d, $00
	ld hl, $5a5a	; could be a data table address, label T5a5a: created
	add hl, de
	ld e, (hl)
	inc hl
	ld d, (hl)
	ex de, hl
	ld bc, $0202	; could be a data table address, label T0202: created
	call J5d52
	ret

T5a5a:
	db $36, $d1, $76, $d1, $b6, $d1, $f6, $d1, $36, $d2, $33, $d1, $73, $d1, $b3, $d1
	db $f3, $d1, $33, $d2, $73, $d2, $b3, $d2, $30, $d1, $b0, $d1, $30, $d2, $10, $d3

J5a7a:
	ld a, (ix + $00)
	cpl
	ld ix, a
	nop
	ld ixh, (ix + $02)
	ld ixl, (ix + $03)
	ld a, (hl)
	ld ix, a
	ld bc, $dd23
	ld (hl), h
	ld (bc), a
	ld ix, ixl
	inc bc
	ret

J5a93:
	ld a, (ix + $04)
	dec a
	cp $05
	jr nc, J5a9d
	ld a, $07

J5a9d:
	ld ix, a
	inc b
	ld hl, $d537
	ld b, $0a
	call J5aca
	dec hl
	ld b, $0e
	call J5aca
	dec hl
	ld b, $0a
	call J5aca
	ld hl, $d52b
	ld b, $02
	call J5aca
	sub $05
	ld e, a
	ld d, $00
	ld hl, $5adc	; could be a data table address, label T5adc: created
	add hl, de
	ld a, (hl)
	ld ($d18a), a
	ret

J5aca:
	ld c, $02
	ld de, $0020	; could be a data table address, label T0020: created

J5acf:
	push bc
	push hl

J5ad1:
	ld (hl), a
	add hl, de
	djnz J5ad1
	pop hl
	dec hl
	pop bc
	dec c
	jr nz, J5acf
	ret

T5adc:
	db $01, $03, $08, $68, $20, $4a, $10, $4a, $10, $4a, $10, $4a, $10, $1c, $20, $4a
	db $10, $4a, $10, $4a, $10, $4a, $10, $4a, $10, $4a, $10, $1c, $20, $3a, $20, $3a
	db $20, $3a, $38

T5aff:
	db $79, $d1, $02, $0b, $12, $17, $1c, $1d, $1b, $1e, $0c, $1d, $12, $18, $17, $37
	db $d1, $07, $0a, $f1, $65, $f4, $6d, $f5, $6f, $f1, $67, $f1, $67, $36, $d1, $07
	db $0a, $95, $5b, $9d, $5f, $9f, $60, $93, $61, $9b, $5e, $34, $d1, $07, $0e, $f1
	db $65, $f1, $67, $f1, $65, $f1, $65, $f2, $69, $f1, $67, $f3, $6b, $33, $d1, $07
	db $0e, $91, $59, $93, $5a, $95, $5b, $97, $5c, $99, $5d, $9b, $5e, $97, $5c, $31
	db $d1, $07, $0a, $ef, $71, $ff, $ff, $ef, $71, $ff, $ff, $ef, $71, $30, $d1, $07
	db $0a, $a1, $62, $ff, $ff, $a1, $62, $ff, $ff, $a1, $62, $11, $d3, $06, $02, $f0
	db $73, $10, $d3, $06, $02, $a3, $63, $4d, $d1, $02, $0f, $e5, $ff, $ff, $01, $00
	db $ff, $19, $18, $12, $17, $1d, $1c, $ff, $ff, $ff, $2b, $d1, $07, $02, $f4, $6d
	db $2a, $d1, $07, $02, $9d, $5f, $8a, $d1, $02, $0d, $08, $00, $00, $ff, $19, $18
	db $12, $17, $1d, $1c, $ff, $ff, $ff

J5ba6:
	jp J5f00

J5ba9:
	ld de, $601c
	ld bc, $0032	; could be a data table address, label T0032: created
	ldir

J5bb1:
	ld hl, $5c56	; could be a data table address, label T5c56: created
	call J5d36
	ld a, ($9003)
	and $0f
	push af
	ld hl, $d126
	call J5c41
	pop af
	ld b, a
	ld a, $06
	ld ($d526), a
	ld ($d626), a
	ld a, ($9003)
	and $f0
	rrca
	rrca
	rrca
	rrca
	cp b
	ret z
	ld hl, $d123
	call J5c41
	ld a, $06
	ld ($d523), a
	ld ($d623), a
	ld hl, $5d1b	; could be a data table address, label T5d1b: created
	call J5d36
	ex de, hl
	call J5d36
	ret

J5bf1:
	push af
	push bc
	ld b, $1f
	call J5710
	pop bc
	pop af
	ret

J5bfb:
	ld hl, $601c
	ld (hl), $00
	ld de, $601d
	ld bc, $0031	; could be a data table address, label T0031: created
	ldir
	call J1fc7
	jp J5f10
	db $c9

T5c0f:
	db $42, $17, $af, $30, $02, $82, $3f, $df, $78, $05, $82, $5f, $a7, $60, $04, $12
	db $97, $cf, $18, $01, $42, $10, $50, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00

J5c41:
	push hl
	add a
	ld e, a
	ld d, $00
	ld hl, $5c65	; could be a data table address, label T5c65: created
	add hl, de
	ld e, (hl)
	inc hl
	ld d, (hl)
	pop hl
	ld b, $0f
	ld c, $02
	call J5d3f
	ret

T5c56:
	db $69, $d1, $00, $0b, $12, $17, $1c, $0e, $1b, $1d, $ff, $0c, $18, $12, $17

T5c65:
	db $85, $5c, $85, $5c, $85, $5c, $85, $5c, $85, $5c, $85, $5c, $0c, $5d, $fd, $5c
	db $ee, $5c, $df, $5c, $d0, $5c, $c1, $5c, $b2, $5c, $a3, $5c, $94, $5c, $85, $5c
	db $01, $ff, $0c, $18, $12, $17, $ff, $ff, $01, $ff, $19, $15, $0a, $22, $ff, $01
	db $ff, $0c, $18, $12, $17, $ff, $ff, $02, $ff, $19, $15, $0a, $22, $1c, $01, $ff
	db $0c, $18, $12, $17, $ff, $ff, $03, $ff, $19, $15, $0a, $22, $1c, $01, $ff, $0c
	db $18, $12, $17, $ff, $ff, $04, $ff, $19, $15, $0a, $22, $1c, $01, $ff, $0c, $18
	db $12, $17, $ff, $ff, $05, $ff, $19, $15, $0a, $22, $1c, $02, $ff, $0c, $18, $12
	db $17, $1c, $ff, $01, $ff, $19, $15, $0a, $22, $ff, $02, $ff, $0c, $18, $12, $17
	db $1c, $ff, $03, $ff, $19, $15, $0a, $22, $1c, $03, $ff, $0c, $18, $12, $17, $1c
	db $ff, $01, $ff, $19, $15, $0a, $22, $ff, $03, $ff, $0c, $18, $12, $17, $1c, $ff
	db $02, $ff, $19, $15, $0a, $22, $1c, $04, $ff, $0c, $18, $12, $17, $1c, $ff, $01
	db $ff, $19, $15, $0a, $22, $ff

T5d1b:
	db $e7, $d0, $01, $05, $1b, $12, $10, $11, $1d, $e4, $d0, $01, $04, $15, $0e, $0f
	db $1d

J5d2c:
	ld b, $03

J5d2e:
	ld a, (de)
	cp (hl)
	ret nz
	inc de
	inc hl
	djnz J5d2e
	ret

J5d36:
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld c, (hl)
	inc hl
	ld b, (hl)
	inc hl
	ex de, hl

J5d3f:
	push de
	push hl
	ld a, (de)
	ld (hl), a
	ld de, $0400	; could be a data table address, label T0400: created
	add hl, de
	ld (hl), c
	pop hl
	ld de, $0020	; could be a data table address, label T0020: created
	add hl, de
	pop de
	inc de
	djnz J5d3f
	ret

J5d52:
	push de
	ld de, $0400	; could be a data table address, label T0400: created

J5d56:
	push bc
	push hl

J5d58:
	push hl
	ld (hl), $ff
	add hl, de
	ld (hl), $00
	pop hl
	inc hl
	djnz J5d58
	pop hl
	ld bc, $0020	; could be a data table address, label T0020: created
	add hl, bc
	pop bc
	dec c
	jr nz, J5d56
	pop de
	ret

J5d6d:
	ld de, $d2dd
	ld hl, $6805
	xor a
	ld b, $06

J5d76:
	rld
	jr z, J5d83
	or $80
	push af
	and $0f
	add a, $00
	ld (de), a
	pop af

J5d83:
	push hl
	ld hl, $0020	; could be a data table address, label T0020: created
	add hl, de
	ex de, hl
	pop hl
	bit 0, b
	jr z, J5d93
	rld
	inc hl
	jr J5d99

J5d93:
	bit 1, b
	jr nz, J5d99
	or $80

J5d99:
	djnz J5d76
	ret

J5d9c:
	ld bc, $1818	; could be a data table address, label T1818: created
	ld hl, $d085
	call J5d52
	ld hl, $601c
	ld de, $0005	; could be a data table address, label T0005: created
	ld (hl), $00
	add hl, de
	ld (hl), $00
	add hl, de
	ld b, $07

J5db3:
	add hl, de
	ld (hl), $00
	djnz J5db3
	call J5dbc
	ret

J5dbc:
	ld c, $06
	ld a, $4e
	ld ($d09c), a
	ld a, c
	ld ($d49c), a
	ld a, $4f
	ld ($d37c), a
	ld a, c
	ld ($d77c), a
	ld a, $51
	ld ($d085), a
	ld a, c
	ld ($d485), a
	ld a, $50
	ld ($d365), a
	ld a, c
	ld ($d765), a
	ld a, $52
	ld b, $16
	ld hl, $d0bc
	call J5e2a
	ld a, $54
	ld b, $16
	ld hl, $d0a5
	call J5e2a
	ld a, $55
	ld b, $16
	ld hl, $d086
	call J5e3b
	ld a, $53
	ld b, $16
	ld hl, $d366
	call J5e3b
	ld c, $00
	ld a, $30
	ld ($d0bb), a
	ld a, c
	ld ($d4bb), a
	ld a, $31
	ld b, $15
	ld hl, $d0db
	call J5e2a
	ld a, $32
	ld b, $15
	ld hl, $d0a6
	call J5e3b
	ret

J5e2a:
	ld de, $0400	; could be a data table address, label T0400: created

J5e2d:
	push bc
	push hl
	ld (hl), a
	add hl, de
	ld (hl), c
	pop hl
	ld bc, $0020	; could be a data table address, label T0020: created
	add hl, bc
	pop bc
	djnz J5e2d
	ret

J5e3b:
	ld de, $0400	; could be a data table address, label T0400: created

J5e3e:
	push hl
	ld (hl), a
	add hl, de
	ld (hl), c
	pop hl
	inc hl
	djnz J5e3e
	ret

J5e47:
	push ix
	push iy
	call J1dd1
	call J1e8b
	ld b, $06
	ld a, $05
	ld hl, $d5a1
	call J1e7d
	call J1ee0
	call J2826
	ld b, $05
	ld a, $01
	ld hl, $d4e1
	call J1e7d
	ld hl, $d0e1
	ld (hl), $2a
	add hl, de
	call J1f44
	ld ix, $601c
	ld (ix + $00), $82
	ld (ix + $01), $08
	ld (ix + $02), $0f
	call J1f7f
	ld ix, a
	inc bc
	ld ix, b
	inc b
	call J1fc7
	call J178f
	ld (ix + $00), $81
	pop iy
	pop ix
	ret

J5e9c:
	ld de, $6026

J5e9f:
	ld hl, $6812
	ld bc, $0003	; could be a data table address, label T0003: created
	ldir
	ex de, hl
	ld (hl), $00
	inc hl
	ld (hl), $00
	ret

J5eae:
	ld de, $603f
	jr J5e9f
	db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

J5ec0:
	and $02
	jp z, J5ee3
	jp J5078
	db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

J5ed0:
	call J50a4
	jp c, J5ee3
	jp J5088
	db $ff, $ff, $ff, $ff, $ff, $ff, $ff

J5ee0:
	call J50f6

J5ee3:
	call J253e
	call J2607
	call J5bb1
	nop
	nop
	nop
	ret

J5ef0:
	call J1fc7
	call J178f
	ret
	db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

J5f00:
	xor a
	ld ($6065), a
	ld hl, $5c0f	; could be a data table address, label T5c0f: created
	jp J5ba9
	db $ff, $ff, $ff, $ff, $ff, $ff

J5f10:
	call J178f
	ld hl, $d080
	ld bc, $2018	; could be a data table address, label T2018: created
	call J5d52
	ret
	db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

T5fed:
	db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	db $ff, $ff, $ff
