#name: FRV uClinux PIC relocs to local symbols, shared linking
#source: fdpic1.s
#objdump: -DR -j .text -j .data -j .got -j .plt
#as: -mfdpic
#ld: -shared

.*:     file format elf.*frv.*

Disassembly of section \.text:

000003dc <F1>:
 3dc:	80 3c 00 01 	call 3e0 <\.F0>

000003e0 <\.F0>:
 3e0:	80 40 f0 0c 	addi gr15,12,gr0
 3e4:	80 fc 00 0c 	setlos 0xc,gr0
 3e8:	80 f4 00 0c 	setlo 0xc,gr0
 3ec:	80 f8 00 00 	sethi hi\(0x0\),gr0
 3f0:	80 40 f0 10 	addi gr15,16,gr0
 3f4:	80 fc 00 10 	setlos 0x10,gr0
 3f8:	80 f4 00 10 	setlo 0x10,gr0
 3fc:	80 f8 00 00 	sethi hi\(0x0\),gr0
 400:	80 40 ff f8 	addi gr15,-8,gr0
 404:	80 fc ff f8 	setlos 0xfffffff8,gr0
 408:	80 f4 ff f8 	setlo 0xfff8,gr0
 40c:	80 f8 ff ff 	sethi 0xffff,gr0
 410:	80 40 ff 78 	addi gr15,-136,gr0
 414:	80 fc ff 78 	setlos 0xffffff78,gr0
 418:	80 f4 ff 78 	setlo 0xff78,gr0
 41c:	80 f8 ff ff 	sethi 0xffff,gr0
 420:	80 f4 00 14 	setlo 0x14,gr0
 424:	80 f8 00 00 	sethi hi\(0x0\),gr0
Disassembly of section \.data:

0001042c <D1>:
   1042c:	00 00 00 04 	add\.p gr0,gr4,gr0
			1042c: R_FRV_32	\.data

00010430 <\.D0>:
   10430:	00 00 00 00 	add\.p gr0,gr0,gr0
			10430: R_FRV_32	\.got
   10434:	00 00 00 04 	add\.p gr0,gr4,gr0
			10434: R_FRV_32	\.text
Disassembly of section \.got:

000104b0 <_GLOBAL_OFFSET_TABLE_-0x8>:
   104b0:	00 00 00 04 	add\.p gr0,gr4,gr0
			104b0: R_FRV_FUNCDESC_VALUE	\.text
   104b4:	00 00 00 00 	add\.p gr0,gr0,gr0

000104b8 <_GLOBAL_OFFSET_TABLE_>:
	\.\.\.
   104c4:	00 00 00 04 	add\.p gr0,gr4,gr0
			104c4: R_FRV_32	\.text
   104c8:	00 00 00 00 	add\.p gr0,gr0,gr0
			104c8: R_FRV_32	\.got
   104cc:	00 00 00 04 	add\.p gr0,gr4,gr0
			104cc: R_FRV_32	\.data
