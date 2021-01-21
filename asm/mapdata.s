.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

.global relSetBtlAddr
relSetBtlAddr:
/* 8003893C 0003593C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80038940 00035940  7C 08 02 A6 */	mflr r0
/* 80038944 00035944  3C C0 80 30 */	lis r6, lbl_80304224@ha
/* 80038948 00035948  90 01 00 34 */	stw r0, 0x34(r1)
/* 8003894C 0003594C  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 80038950 00035950  3B C6 42 24 */	addi r30, r6, lbl_80304224@l
/* 80038954 00035954  7C 79 1B 78 */	mr r25, r3
/* 80038958 00035958  7C 9A 23 78 */	mr r26, r4
/* 8003895C 0003595C  7C BB 2B 78 */	mr r27, r5
/* 80038960 00035960  3B A0 00 00 */	li r29, 0
/* 80038964 00035964  7F C3 F3 78 */	mr r3, r30
/* 80038968 00035968  48 00 00 0C */	b lbl_80038974
lbl_8003896C:
/* 8003896C 0003596C  38 63 00 04 */	addi r3, r3, 4
/* 80038970 00035970  3B BD 00 01 */	addi r29, r29, 1
lbl_80038974:
/* 80038974 00035974  80 03 00 08 */	lwz r0, 8(r3)
/* 80038978 00035978  28 00 00 00 */	cmplwi r0, 0
/* 8003897C 0003597C  40 82 FF F0 */	bne lbl_8003896C
/* 80038980 00035980  7F DC F3 78 */	mr r28, r30
/* 80038984 00035984  3B E0 00 00 */	li r31, 0
/* 80038988 00035988  48 00 00 34 */	b lbl_800389BC
lbl_8003898C:
/* 8003898C 0003598C  80 7C 00 08 */	lwz r3, 8(r28)
/* 80038990 00035990  7F 24 CB 78 */	mr r4, r25
/* 80038994 00035994  80 63 00 00 */	lwz r3, 0(r3)
/* 80038998 00035998  48 22 EA B5 */	bl strcmp
/* 8003899C 0003599C  2C 03 00 00 */	cmpwi r3, 0
/* 800389A0 000359A0  40 82 00 14 */	bne lbl_800389B4
/* 800389A4 000359A4  57 E0 10 3A */	slwi r0, r31, 2
/* 800389A8 000359A8  7C 7E 02 14 */	add r3, r30, r0
/* 800389AC 000359AC  80 63 00 08 */	lwz r3, 8(r3)
/* 800389B0 000359B0  48 00 00 18 */	b lbl_800389C8
lbl_800389B4:
/* 800389B4 000359B4  3B 9C 00 04 */	addi r28, r28, 4
/* 800389B8 000359B8  3B FF 00 01 */	addi r31, r31, 1
lbl_800389BC:
/* 800389BC 000359BC  7C 1F E8 00 */	cmpw r31, r29
/* 800389C0 000359C0  41 80 FF CC */	blt lbl_8003898C
/* 800389C4 000359C4  38 60 00 00 */	li r3, 0
lbl_800389C8:
/* 800389C8 000359C8  28 03 00 00 */	cmplwi r3, 0
/* 800389CC 000359CC  41 82 00 0C */	beq lbl_800389D8
/* 800389D0 000359D0  93 43 00 08 */	stw r26, 8(r3)
/* 800389D4 000359D4  93 63 00 0C */	stw r27, 0xc(r3)
lbl_800389D8:
/* 800389D8 000359D8  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 800389DC 000359DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800389E0 000359E0  7C 08 03 A6 */	mtlr r0
/* 800389E4 000359E4  38 21 00 30 */	addi r1, r1, 0x30
/* 800389E8 000359E8  4E 80 00 20 */	blr 

.global relSetEvtAddr
relSetEvtAddr:
/* 800389EC 000359EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800389F0 000359F0  7C 08 02 A6 */	mflr r0
/* 800389F4 000359F4  3C A0 80 30 */	lis r5, lbl_80304224@ha
/* 800389F8 000359F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 800389FC 000359FC  BE 41 00 08 */	stmw r18, 8(r1)
/* 80038A00 00035A00  3B 45 42 24 */	addi r26, r5, lbl_80304224@l
/* 80038A04 00035A04  7C 78 1B 78 */	mr r24, r3
/* 80038A08 00035A08  7C 99 23 78 */	mr r25, r4
/* 80038A0C 00035A0C  3B C0 00 00 */	li r30, 0
/* 80038A10 00035A10  7F 5D D3 78 */	mr r29, r26
/* 80038A14 00035A14  7F 56 D3 78 */	mr r22, r26
/* 80038A18 00035A18  7F 57 D3 78 */	mr r23, r26
/* 80038A1C 00035A1C  48 00 00 DC */	b lbl_80038AF8
lbl_80038A20:
/* 80038A20 00035A20  3B E0 00 00 */	li r31, 0
/* 80038A24 00035A24  3B 7A 00 08 */	addi r27, r26, 8
/* 80038A28 00035A28  7F FC FB 78 */	mr r28, r31
/* 80038A2C 00035A2C  48 00 00 30 */	b lbl_80038A5C
lbl_80038A30:
/* 80038A30 00035A30  80 7B 00 00 */	lwz r3, 0(r27)
/* 80038A34 00035A34  38 1C 00 10 */	addi r0, r28, 0x10
/* 80038A38 00035A38  7F 04 C3 78 */	mr r4, r24
/* 80038A3C 00035A3C  7E A3 00 2E */	lwzx r21, r3, r0
/* 80038A40 00035A40  80 75 00 00 */	lwz r3, 0(r21)
/* 80038A44 00035A44  48 22 EA 09 */	bl strcmp
/* 80038A48 00035A48  2C 03 00 00 */	cmpwi r3, 0
/* 80038A4C 00035A4C  40 82 00 08 */	bne lbl_80038A54
/* 80038A50 00035A50  48 00 00 D4 */	b lbl_80038B24
lbl_80038A54:
/* 80038A54 00035A54  3B 9C 00 04 */	addi r28, r28, 4
/* 80038A58 00035A58  3B FF 00 01 */	addi r31, r31, 1
lbl_80038A5C:
/* 80038A5C 00035A5C  80 7B 00 00 */	lwz r3, 0(r27)
/* 80038A60 00035A60  7E C4 B3 78 */	mr r4, r22
/* 80038A64 00035A64  3A 60 00 00 */	li r19, 0
/* 80038A68 00035A68  82 A3 00 00 */	lwz r21, 0(r3)
/* 80038A6C 00035A6C  48 00 00 0C */	b lbl_80038A78
lbl_80038A70:
/* 80038A70 00035A70  38 84 00 04 */	addi r4, r4, 4
/* 80038A74 00035A74  3A 73 00 01 */	addi r19, r19, 1
lbl_80038A78:
/* 80038A78 00035A78  80 04 00 08 */	lwz r0, 8(r4)
/* 80038A7C 00035A7C  28 00 00 00 */	cmplwi r0, 0
/* 80038A80 00035A80  40 82 FF F0 */	bne lbl_80038A70
/* 80038A84 00035A84  7F B2 EB 78 */	mr r18, r29
/* 80038A88 00035A88  3A 80 00 00 */	li r20, 0
/* 80038A8C 00035A8C  48 00 00 34 */	b lbl_80038AC0
lbl_80038A90:
/* 80038A90 00035A90  80 72 00 08 */	lwz r3, 8(r18)
/* 80038A94 00035A94  7E A4 AB 78 */	mr r4, r21
/* 80038A98 00035A98  80 63 00 00 */	lwz r3, 0(r3)
/* 80038A9C 00035A9C  48 22 E9 B1 */	bl strcmp
/* 80038AA0 00035AA0  2C 03 00 00 */	cmpwi r3, 0
/* 80038AA4 00035AA4  40 82 00 14 */	bne lbl_80038AB8
/* 80038AA8 00035AA8  56 83 10 3A */	slwi r3, r20, 2
/* 80038AAC 00035AAC  38 03 00 08 */	addi r0, r3, 8
/* 80038AB0 00035AB0  7C 9D 00 2E */	lwzx r4, r29, r0
/* 80038AB4 00035AB4  48 00 00 18 */	b lbl_80038ACC
lbl_80038AB8:
/* 80038AB8 00035AB8  3A 52 00 04 */	addi r18, r18, 4
/* 80038ABC 00035ABC  3A 94 00 01 */	addi r20, r20, 1
lbl_80038AC0:
/* 80038AC0 00035AC0  7C 14 98 00 */	cmpw r20, r19
/* 80038AC4 00035AC4  41 80 FF CC */	blt lbl_80038A90
/* 80038AC8 00035AC8  38 80 00 00 */	li r4, 0
lbl_80038ACC:
/* 80038ACC 00035ACC  38 60 00 00 */	li r3, 0
/* 80038AD0 00035AD0  48 00 00 0C */	b lbl_80038ADC
lbl_80038AD4:
/* 80038AD4 00035AD4  38 84 00 04 */	addi r4, r4, 4
/* 80038AD8 00035AD8  38 63 00 01 */	addi r3, r3, 1
lbl_80038ADC:
/* 80038ADC 00035ADC  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80038AE0 00035AE0  28 00 00 00 */	cmplwi r0, 0
/* 80038AE4 00035AE4  40 82 FF F0 */	bne lbl_80038AD4
/* 80038AE8 00035AE8  7C 1F 18 00 */	cmpw r31, r3
/* 80038AEC 00035AEC  41 80 FF 44 */	blt lbl_80038A30
/* 80038AF0 00035AF0  3B 5A 00 04 */	addi r26, r26, 4
/* 80038AF4 00035AF4  3B DE 00 01 */	addi r30, r30, 1
lbl_80038AF8:
/* 80038AF8 00035AF8  7E E4 BB 78 */	mr r4, r23
/* 80038AFC 00035AFC  38 60 00 00 */	li r3, 0
/* 80038B00 00035B00  48 00 00 0C */	b lbl_80038B0C
lbl_80038B04:
/* 80038B04 00035B04  38 84 00 04 */	addi r4, r4, 4
/* 80038B08 00035B08  38 63 00 01 */	addi r3, r3, 1
lbl_80038B0C:
/* 80038B0C 00035B0C  80 04 00 08 */	lwz r0, 8(r4)
/* 80038B10 00035B10  28 00 00 00 */	cmplwi r0, 0
/* 80038B14 00035B14  40 82 FF F0 */	bne lbl_80038B04
/* 80038B18 00035B18  7C 1E 18 00 */	cmpw r30, r3
/* 80038B1C 00035B1C  41 80 FF 04 */	blt lbl_80038A20
/* 80038B20 00035B20  3A A0 00 00 */	li r21, 0
lbl_80038B24:
/* 80038B24 00035B24  28 15 00 00 */	cmplwi r21, 0
/* 80038B28 00035B28  41 82 00 08 */	beq lbl_80038B30
/* 80038B2C 00035B2C  93 35 00 04 */	stw r25, 4(r21)
lbl_80038B30:
/* 80038B30 00035B30  BA 41 00 08 */	lmw r18, 8(r1)
/* 80038B34 00035B34  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80038B38 00035B38  7C 08 03 A6 */	mtlr r0
/* 80038B3C 00035B3C  38 21 00 40 */	addi r1, r1, 0x40
/* 80038B40 00035B40  4E 80 00 20 */	blr 

.global areaDataPtr
areaDataPtr:
/* 80038B44 00035B44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80038B48 00035B48  7C 08 02 A6 */	mflr r0
/* 80038B4C 00035B4C  3C 80 80 30 */	lis r4, lbl_80304224@ha
/* 80038B50 00035B50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80038B54 00035B54  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 80038B58 00035B58  7C 7B 1B 78 */	mr r27, r3
/* 80038B5C 00035B5C  38 64 42 24 */	addi r3, r4, lbl_80304224@l
/* 80038B60 00035B60  3B E0 00 00 */	li r31, 0
/* 80038B64 00035B64  7C 7D 1B 78 */	mr r29, r3
/* 80038B68 00035B68  48 00 00 0C */	b lbl_80038B74
lbl_80038B6C:
/* 80038B6C 00035B6C  38 63 00 04 */	addi r3, r3, 4
/* 80038B70 00035B70  3B FF 00 01 */	addi r31, r31, 1
lbl_80038B74:
/* 80038B74 00035B74  80 03 00 08 */	lwz r0, 8(r3)
/* 80038B78 00035B78  28 00 00 00 */	cmplwi r0, 0
/* 80038B7C 00035B7C  40 82 FF F0 */	bne lbl_80038B6C
/* 80038B80 00035B80  7F BE EB 78 */	mr r30, r29
/* 80038B84 00035B84  3B 80 00 00 */	li r28, 0
/* 80038B88 00035B88  48 00 00 34 */	b lbl_80038BBC
lbl_80038B8C:
/* 80038B8C 00035B8C  80 7E 00 08 */	lwz r3, 8(r30)
/* 80038B90 00035B90  7F 64 DB 78 */	mr r4, r27
/* 80038B94 00035B94  80 63 00 00 */	lwz r3, 0(r3)
/* 80038B98 00035B98  48 22 E8 B5 */	bl strcmp
/* 80038B9C 00035B9C  2C 03 00 00 */	cmpwi r3, 0
/* 80038BA0 00035BA0  40 82 00 14 */	bne lbl_80038BB4
/* 80038BA4 00035BA4  57 80 10 3A */	slwi r0, r28, 2
/* 80038BA8 00035BA8  7C 7D 02 14 */	add r3, r29, r0
/* 80038BAC 00035BAC  80 63 00 08 */	lwz r3, 8(r3)
/* 80038BB0 00035BB0  48 00 00 18 */	b lbl_80038BC8
lbl_80038BB4:
/* 80038BB4 00035BB4  3B DE 00 04 */	addi r30, r30, 4
/* 80038BB8 00035BB8  3B 9C 00 01 */	addi r28, r28, 1
lbl_80038BBC:
/* 80038BBC 00035BBC  7C 1C F8 00 */	cmpw r28, r31
/* 80038BC0 00035BC0  41 80 FF CC */	blt lbl_80038B8C
/* 80038BC4 00035BC4  38 60 00 00 */	li r3, 0
lbl_80038BC8:
/* 80038BC8 00035BC8  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80038BCC 00035BCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80038BD0 00035BD0  7C 08 03 A6 */	mtlr r0
/* 80038BD4 00035BD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80038BD8 00035BD8  4E 80 00 20 */	blr 

.global mapDataPtr
mapDataPtr:
/* 80038BDC 00035BDC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80038BE0 00035BE0  7C 08 02 A6 */	mflr r0
/* 80038BE4 00035BE4  3C 80 80 30 */	lis r4, lbl_80304224@ha
/* 80038BE8 00035BE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80038BEC 00035BEC  BE 61 00 0C */	stmw r19, 0xc(r1)
/* 80038BF0 00035BF0  3B 84 42 24 */	addi r28, r4, lbl_80304224@l
/* 80038BF4 00035BF4  7C 79 1B 78 */	mr r25, r3
/* 80038BF8 00035BF8  3B 60 00 00 */	li r27, 0
/* 80038BFC 00035BFC  7F 9F E3 78 */	mr r31, r28
/* 80038C00 00035C00  7F 97 E3 78 */	mr r23, r28
/* 80038C04 00035C04  7F 98 E3 78 */	mr r24, r28
/* 80038C08 00035C08  48 00 00 E0 */	b lbl_80038CE8
lbl_80038C0C:
/* 80038C0C 00035C0C  3B BC 00 08 */	addi r29, r28, 8
/* 80038C10 00035C10  3B 40 00 00 */	li r26, 0
/* 80038C14 00035C14  3B C0 00 00 */	li r30, 0
/* 80038C18 00035C18  48 00 00 34 */	b lbl_80038C4C
lbl_80038C1C:
/* 80038C1C 00035C1C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80038C20 00035C20  38 1E 00 10 */	addi r0, r30, 0x10
/* 80038C24 00035C24  7F 24 CB 78 */	mr r4, r25
/* 80038C28 00035C28  7E 63 00 2E */	lwzx r19, r3, r0
/* 80038C2C 00035C2C  80 73 00 00 */	lwz r3, 0(r19)
/* 80038C30 00035C30  48 22 E8 1D */	bl strcmp
/* 80038C34 00035C34  2C 03 00 00 */	cmpwi r3, 0
/* 80038C38 00035C38  40 82 00 0C */	bne lbl_80038C44
/* 80038C3C 00035C3C  7E 63 9B 78 */	mr r3, r19
/* 80038C40 00035C40  48 00 00 D4 */	b lbl_80038D14
lbl_80038C44:
/* 80038C44 00035C44  3B DE 00 04 */	addi r30, r30, 4
/* 80038C48 00035C48  3B 5A 00 01 */	addi r26, r26, 1
lbl_80038C4C:
/* 80038C4C 00035C4C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80038C50 00035C50  7E E4 BB 78 */	mr r4, r23
/* 80038C54 00035C54  3A 80 00 00 */	li r20, 0
/* 80038C58 00035C58  82 C3 00 00 */	lwz r22, 0(r3)
/* 80038C5C 00035C5C  48 00 00 0C */	b lbl_80038C68
lbl_80038C60:
/* 80038C60 00035C60  38 84 00 04 */	addi r4, r4, 4
/* 80038C64 00035C64  3A 94 00 01 */	addi r20, r20, 1
lbl_80038C68:
/* 80038C68 00035C68  80 04 00 08 */	lwz r0, 8(r4)
/* 80038C6C 00035C6C  28 00 00 00 */	cmplwi r0, 0
/* 80038C70 00035C70  40 82 FF F0 */	bne lbl_80038C60
/* 80038C74 00035C74  7F F3 FB 78 */	mr r19, r31
/* 80038C78 00035C78  3A A0 00 00 */	li r21, 0
/* 80038C7C 00035C7C  48 00 00 34 */	b lbl_80038CB0
lbl_80038C80:
/* 80038C80 00035C80  80 73 00 08 */	lwz r3, 8(r19)
/* 80038C84 00035C84  7E C4 B3 78 */	mr r4, r22
/* 80038C88 00035C88  80 63 00 00 */	lwz r3, 0(r3)
/* 80038C8C 00035C8C  48 22 E7 C1 */	bl strcmp
/* 80038C90 00035C90  2C 03 00 00 */	cmpwi r3, 0
/* 80038C94 00035C94  40 82 00 14 */	bne lbl_80038CA8
/* 80038C98 00035C98  56 A3 10 3A */	slwi r3, r21, 2
/* 80038C9C 00035C9C  38 03 00 08 */	addi r0, r3, 8
/* 80038CA0 00035CA0  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80038CA4 00035CA4  48 00 00 18 */	b lbl_80038CBC
lbl_80038CA8:
/* 80038CA8 00035CA8  3A 73 00 04 */	addi r19, r19, 4
/* 80038CAC 00035CAC  3A B5 00 01 */	addi r21, r21, 1
lbl_80038CB0:
/* 80038CB0 00035CB0  7C 15 A0 00 */	cmpw r21, r20
/* 80038CB4 00035CB4  41 80 FF CC */	blt lbl_80038C80
/* 80038CB8 00035CB8  38 80 00 00 */	li r4, 0
lbl_80038CBC:
/* 80038CBC 00035CBC  38 60 00 00 */	li r3, 0
/* 80038CC0 00035CC0  48 00 00 0C */	b lbl_80038CCC
lbl_80038CC4:
/* 80038CC4 00035CC4  38 84 00 04 */	addi r4, r4, 4
/* 80038CC8 00035CC8  38 63 00 01 */	addi r3, r3, 1
lbl_80038CCC:
/* 80038CCC 00035CCC  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80038CD0 00035CD0  28 00 00 00 */	cmplwi r0, 0
/* 80038CD4 00035CD4  40 82 FF F0 */	bne lbl_80038CC4
/* 80038CD8 00035CD8  7C 1A 18 00 */	cmpw r26, r3
/* 80038CDC 00035CDC  41 80 FF 40 */	blt lbl_80038C1C
/* 80038CE0 00035CE0  3B 9C 00 04 */	addi r28, r28, 4
/* 80038CE4 00035CE4  3B 7B 00 01 */	addi r27, r27, 1
lbl_80038CE8:
/* 80038CE8 00035CE8  7F 04 C3 78 */	mr r4, r24
/* 80038CEC 00035CEC  38 60 00 00 */	li r3, 0
/* 80038CF0 00035CF0  48 00 00 0C */	b lbl_80038CFC
lbl_80038CF4:
/* 80038CF4 00035CF4  38 84 00 04 */	addi r4, r4, 4
/* 80038CF8 00035CF8  38 63 00 01 */	addi r3, r3, 1
lbl_80038CFC:
/* 80038CFC 00035CFC  80 04 00 08 */	lwz r0, 8(r4)
/* 80038D00 00035D00  28 00 00 00 */	cmplwi r0, 0
/* 80038D04 00035D04  40 82 FF F0 */	bne lbl_80038CF4
/* 80038D08 00035D08  7C 1B 18 00 */	cmpw r27, r3
/* 80038D0C 00035D0C  41 80 FF 00 */	blt lbl_80038C0C
/* 80038D10 00035D10  38 60 00 00 */	li r3, 0
lbl_80038D14:
/* 80038D14 00035D14  BA 61 00 0C */	lmw r19, 0xc(r1)
/* 80038D18 00035D18  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80038D1C 00035D1C  7C 08 03 A6 */	mtlr r0
/* 80038D20 00035D20  38 21 00 40 */	addi r1, r1, 0x40
/* 80038D24 00035D24  4E 80 00 20 */	blr 