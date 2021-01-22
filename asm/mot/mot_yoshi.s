.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

.global mot_yoshi_post
mot_yoshi_post:
/* 80136278 00133278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013627C 0013327C  7C 08 02 A6 */	mflr r0
/* 80136280 00133280  90 01 00 14 */	stw r0, 0x14(r1)
/* 80136284 00133284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80136288 00133288  93 C1 00 08 */	stw r30, 8(r1)
/* 8013628C 0013328C  48 00 57 CD */	bl marioGetPartyId
/* 80136290 00133290  4B F8 6B A1 */	bl partyGetPtr
/* 80136294 00133294  7C 7E 1B 78 */	mr r30, r3
/* 80136298 00133298  4B F2 6F 7D */	bl marioGetPtr
/* 8013629C 0013329C  80 9E 01 68 */	lwz r4, 0x168(r30)
/* 801362A0 001332A0  7C 7F 1B 78 */	mr r31, r3
/* 801362A4 001332A4  3C 04 00 01 */	addis r0, r4, 1
/* 801362A8 001332A8  28 00 FF FF */	cmplwi r0, 0xffff
/* 801362AC 001332AC  41 82 00 14 */	beq lbl_801362C0
/* 801362B0 001332B0  7C 83 23 78 */	mr r3, r4
/* 801362B4 001332B4  4B F9 EF 49 */	bl psndSFXOff
/* 801362B8 001332B8  38 00 FF FF */	li r0, -1
/* 801362BC 001332BC  90 1E 01 68 */	stw r0, 0x168(r30)
lbl_801362C0:
/* 801362C0 001332C0  4B F4 3E 3D */	bl bero_clear_Offset
/* 801362C4 001332C4  80 1F 00 04 */	lwz r0, 4(r31)
/* 801362C8 001332C8  3C 80 80 2F */	lis r4, lbl_802F32E0@ha
/* 801362CC 001332CC  3C 60 80 2F */	lis r3, lbl_802F32EC@ha
/* 801362D0 001332D0  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 801362D4 001332D4  38 A4 32 E0 */	addi r5, r4, lbl_802F32E0@l
/* 801362D8 001332D8  90 1F 00 04 */	stw r0, 4(r31)
/* 801362DC 001332DC  38 83 32 EC */	addi r4, r3, lbl_802F32EC@l
/* 801362E0 001332E0  80 1F 00 04 */	lwz r0, 4(r31)
/* 801362E4 001332E4  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 801362E8 001332E8  90 1F 00 04 */	stw r0, 4(r31)
/* 801362EC 001332EC  80 65 00 00 */	lwz r3, 0(r5)
/* 801362F0 001332F0  80 05 00 04 */	lwz r0, 4(r5)
/* 801362F4 001332F4  90 7F 00 98 */	stw r3, 0x98(r31)
/* 801362F8 001332F8  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 801362FC 001332FC  80 05 00 08 */	lwz r0, 8(r5)
/* 80136300 00133300  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 80136304 00133304  80 64 00 00 */	lwz r3, 0(r4)
/* 80136308 00133308  80 04 00 04 */	lwz r0, 4(r4)
/* 8013630C 0013330C  90 7F 00 A4 */	stw r3, 0xa4(r31)
/* 80136310 00133310  90 1F 00 A8 */	stw r0, 0xa8(r31)
/* 80136314 00133314  80 04 00 08 */	lwz r0, 8(r4)
/* 80136318 00133318  90 1F 00 AC */	stw r0, 0xac(r31)
/* 8013631C 0013331C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80136320 00133320  83 C1 00 08 */	lwz r30, 8(r1)
/* 80136324 00133324  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80136328 00133328  7C 08 03 A6 */	mtlr r0
/* 8013632C 0013332C  38 21 00 10 */	addi r1, r1, 0x10
/* 80136330 00133330  4E 80 00 20 */	blr 

.global mot_yoshi
mot_yoshi:
/* 80136334 00133334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80136338 00133338  7C 08 02 A6 */	mflr r0
/* 8013633C 0013333C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80136340 00133340  4B F2 6E D5 */	bl marioGetPtr
/* 80136344 00133344  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80136348 00133348  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 8013634C 0013334C  41 82 00 64 */	beq lbl_801363B0
/* 80136350 00133350  54 84 00 3C */	rlwinm r4, r4, 0, 0, 0x1e
/* 80136354 00133354  38 00 00 00 */	li r0, 0
/* 80136358 00133358  90 83 00 0C */	stw r4, 0xc(r3)
/* 8013635C 0013335C  C0 02 B5 58 */	lfs f0, lbl_8041C8D8-_SDA2_BASE_(r2)
/* 80136360 00133360  80 83 00 00 */	lwz r4, 0(r3)
/* 80136364 00133364  54 84 04 16 */	rlwinm r4, r4, 0, 0x10, 0xb
/* 80136368 00133368  90 83 00 00 */	stw r4, 0(r3)
/* 8013636C 0013336C  80 83 00 04 */	lwz r4, 4(r3)
/* 80136370 00133370  60 84 00 04 */	ori r4, r4, 4
/* 80136374 00133374  90 83 00 04 */	stw r4, 4(r3)
/* 80136378 00133378  80 83 00 04 */	lwz r4, 4(r3)
/* 8013637C 0013337C  60 84 10 00 */	ori r4, r4, 0x1000
/* 80136380 00133380  90 83 00 04 */	stw r4, 4(r3)
/* 80136384 00133384  90 03 00 48 */	stw r0, 0x48(r3)
/* 80136388 00133388  B0 03 00 50 */	sth r0, 0x50(r3)
/* 8013638C 0013338C  90 03 00 44 */	stw r0, 0x44(r3)
/* 80136390 00133390  D0 03 01 80 */	stfs f0, 0x180(r3)
/* 80136394 00133394  90 03 01 DC */	stw r0, 0x1dc(r3)
/* 80136398 00133398  90 03 01 E0 */	stw r0, 0x1e0(r3)
/* 8013639C 0013339C  90 03 01 E4 */	stw r0, 0x1e4(r3)
/* 801363A0 001333A0  90 03 01 EC */	stw r0, 0x1ec(r3)
/* 801363A4 001333A4  90 03 01 F0 */	stw r0, 0x1f0(r3)
/* 801363A8 001333A8  90 03 01 F4 */	stw r0, 0x1f4(r3)
/* 801363AC 001333AC  90 03 01 F8 */	stw r0, 0x1f8(r3)
lbl_801363B0:
/* 801363B0 001333B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801363B4 001333B4  7C 08 03 A6 */	mtlr r0
/* 801363B8 001333B8  38 21 00 10 */	addi r1, r1, 0x10
/* 801363BC 001333BC  4E 80 00 20 */	blr 