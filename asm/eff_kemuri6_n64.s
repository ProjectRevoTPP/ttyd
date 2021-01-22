.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

.global effKemuri6Disp
effKemuri6Disp:
/* 801C68EC 001C38EC  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 801C68F0 001C38F0  7C 08 02 A6 */	mflr r0
/* 801C68F4 001C38F4  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 801C68F8 001C38F8  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 801C68FC 001C38FC  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 801C6900 001C3900  93 A1 00 C4 */	stw r29, 0xc4(r1)
/* 801C6904 001C3904  93 81 00 C0 */	stw r28, 0xc0(r1)
/* 801C6908 001C3908  7C 9C 23 78 */	mr r28, r4
/* 801C690C 001C390C  4B E4 88 45 */	bl camGetPtr
/* 801C6910 001C3910  83 DC 00 0C */	lwz r30, 0xc(r28)
/* 801C6914 001C3914  7C 7F 1B 78 */	mr r31, r3
/* 801C6918 001C3918  38 60 00 00 */	li r3, 0
/* 801C691C 001C391C  48 0E A8 1D */	bl GXSetNumChans
/* 801C6920 001C3920  38 60 00 01 */	li r3, 1
/* 801C6924 001C3924  48 0E 89 5D */	bl GXSetNumTexGens
/* 801C6928 001C3928  38 60 00 00 */	li r3, 0
/* 801C692C 001C392C  38 80 00 01 */	li r4, 1
/* 801C6930 001C3930  38 A0 00 04 */	li r5, 4
/* 801C6934 001C3934  38 C0 00 1E */	li r6, 0x1e
/* 801C6938 001C3938  38 E0 00 00 */	li r7, 0
/* 801C693C 001C393C  39 00 00 7D */	li r8, 0x7d
/* 801C6940 001C3940  48 0E 86 C1 */	bl GXSetTexCoordGen2
/* 801C6944 001C3944  C0 22 E0 2C */	lfs f1, lbl_8041F3AC-_SDA2_BASE_(r2)
/* 801C6948 001C3948  38 61 00 60 */	addi r3, r1, 0x60
/* 801C694C 001C394C  C0 62 E0 30 */	lfs f3, lbl_8041F3B0-_SDA2_BASE_(r2)
/* 801C6950 001C3950  FC 40 08 90 */	fmr f2, f1
/* 801C6954 001C3954  48 0D 1B 59 */	bl PSMTXScale
/* 801C6958 001C3958  38 61 00 60 */	addi r3, r1, 0x60
/* 801C695C 001C395C  38 80 00 1E */	li r4, 0x1e
/* 801C6960 001C3960  38 A0 00 01 */	li r5, 1
/* 801C6964 001C3964  48 0E DC 69 */	bl GXLoadTexMtxImm
/* 801C6968 001C3968  38 60 00 01 */	li r3, 1
/* 801C696C 001C396C  48 0E C8 5D */	bl GXSetNumTevStages
/* 801C6970 001C3970  38 60 00 00 */	li r3, 0
/* 801C6974 001C3974  38 80 00 00 */	li r4, 0
/* 801C6978 001C3978  38 A0 00 00 */	li r5, 0
/* 801C697C 001C397C  38 C0 00 FF */	li r6, 0xff
/* 801C6980 001C3980  48 0E C6 AD */	bl GXSetTevOrder
/* 801C6984 001C3984  38 60 00 00 */	li r3, 0
/* 801C6988 001C3988  38 80 00 00 */	li r4, 0
/* 801C698C 001C398C  38 A0 00 00 */	li r5, 0
/* 801C6990 001C3990  38 C0 00 00 */	li r6, 0
/* 801C6994 001C3994  38 E0 00 01 */	li r7, 1
/* 801C6998 001C3998  39 00 00 00 */	li r8, 0
/* 801C699C 001C399C  48 0E C2 49 */	bl GXSetTevColorOp
/* 801C69A0 001C39A0  38 60 00 00 */	li r3, 0
/* 801C69A4 001C39A4  38 80 00 00 */	li r4, 0
/* 801C69A8 001C39A8  38 A0 00 00 */	li r5, 0
/* 801C69AC 001C39AC  38 C0 00 00 */	li r6, 0
/* 801C69B0 001C39B0  38 E0 00 01 */	li r7, 1
/* 801C69B4 001C39B4  39 00 00 00 */	li r8, 0
/* 801C69B8 001C39B8  48 0E C2 95 */	bl GXSetTevAlphaOp
/* 801C69BC 001C39BC  38 60 00 00 */	li r3, 0
/* 801C69C0 001C39C0  38 80 00 08 */	li r4, 8
/* 801C69C4 001C39C4  38 A0 00 0F */	li r5, 0xf
/* 801C69C8 001C39C8  38 C0 00 0F */	li r6, 0xf
/* 801C69CC 001C39CC  38 E0 00 02 */	li r7, 2
/* 801C69D0 001C39D0  48 0E C1 8D */	bl GXSetTevColorIn
/* 801C69D4 001C39D4  38 60 00 00 */	li r3, 0
/* 801C69D8 001C39D8  38 80 00 07 */	li r4, 7
/* 801C69DC 001C39DC  38 A0 00 04 */	li r5, 4
/* 801C69E0 001C39E0  38 C0 00 01 */	li r6, 1
/* 801C69E4 001C39E4  38 E0 00 07 */	li r7, 7
/* 801C69E8 001C39E8  48 0E C1 B9 */	bl GXSetTevAlphaIn
/* 801C69EC 001C39EC  38 81 00 10 */	addi r4, r1, 0x10
/* 801C69F0 001C39F0  38 60 00 4E */	li r3, 0x4e
/* 801C69F4 001C39F4  48 00 AE 51 */	bl effGetTexObjN64
/* 801C69F8 001C39F8  38 61 00 10 */	addi r3, r1, 0x10
/* 801C69FC 001C39FC  38 80 00 00 */	li r4, 0
/* 801C6A00 001C3A00  48 0E B0 7D */	bl GXLoadTexObj
/* 801C6A04 001C3A04  38 60 00 00 */	li r3, 0
/* 801C6A08 001C3A08  48 0E 94 81 */	bl GXSetCullMode
/* 801C6A0C 001C3A0C  3C 60 80 3A */	lis r3, lbl_803A1DB8@ha
/* 801C6A10 001C3A10  38 63 1D B8 */	addi r3, r3, lbl_803A1DB8@l
/* 801C6A14 001C3A14  48 00 AC 9D */	bl effSetVtxDescN64
/* 801C6A18 001C3A18  3B A0 00 00 */	li r29, 0
/* 801C6A1C 001C3A1C  48 00 01 20 */	b lbl_801C6B3C
lbl_801C6A20:
/* 801C6A20 001C3A20  80 1E 00 00 */	lwz r0, 0(r30)
/* 801C6A24 001C3A24  2C 00 00 00 */	cmpwi r0, 0
/* 801C6A28 001C3A28  41 82 01 0C */	beq lbl_801C6B34
/* 801C6A2C 001C3A2C  80 A2 E0 28 */	lwz r5, lbl_8041F3A8-_SDA2_BASE_(r2)
/* 801C6A30 001C3A30  38 81 00 0C */	addi r4, r1, 0xc
/* 801C6A34 001C3A34  88 1E 00 08 */	lbz r0, 8(r30)
/* 801C6A38 001C3A38  38 60 00 01 */	li r3, 1
/* 801C6A3C 001C3A3C  90 A1 00 08 */	stw r5, 8(r1)
/* 801C6A40 001C3A40  98 01 00 0B */	stb r0, 0xb(r1)
/* 801C6A44 001C3A44  80 01 00 08 */	lwz r0, 8(r1)
/* 801C6A48 001C3A48  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C6A4C 001C3A4C  48 0E C2 69 */	bl GXSetTevColor
/* 801C6A50 001C3A50  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 801C6A54 001C3A54  38 61 00 90 */	addi r3, r1, 0x90
/* 801C6A58 001C3A58  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 801C6A5C 001C3A5C  C0 7E 00 14 */	lfs f3, 0x14(r30)
/* 801C6A60 001C3A60  48 0D 19 CD */	bl PSMTXTrans
/* 801C6A64 001C3A64  38 60 00 04 */	li r3, 4
/* 801C6A68 001C3A68  4B E4 86 E9 */	bl camGetPtr
/* 801C6A6C 001C3A6C  C0 23 01 14 */	lfs f1, 0x114(r3)
/* 801C6A70 001C3A70  38 61 00 30 */	addi r3, r1, 0x30
/* 801C6A74 001C3A74  C0 02 E0 34 */	lfs f0, lbl_8041F3B4-_SDA2_BASE_(r2)
/* 801C6A78 001C3A78  38 80 00 79 */	li r4, 0x79
/* 801C6A7C 001C3A7C  FC 20 08 50 */	fneg f1, f1
/* 801C6A80 001C3A80  EC 20 00 72 */	fmuls f1, f0, f1
/* 801C6A84 001C3A84  48 0D 17 69 */	bl PSMTXRotRad
/* 801C6A88 001C3A88  38 61 00 90 */	addi r3, r1, 0x90
/* 801C6A8C 001C3A8C  38 81 00 30 */	addi r4, r1, 0x30
/* 801C6A90 001C3A90  7C 65 1B 78 */	mr r5, r3
/* 801C6A94 001C3A94  48 0D 14 CD */	bl PSMTXConcat
/* 801C6A98 001C3A98  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 801C6A9C 001C3A9C  38 61 00 60 */	addi r3, r1, 0x60
/* 801C6AA0 001C3AA0  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 801C6AA4 001C3AA4  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 801C6AA8 001C3AA8  48 0D 1A 05 */	bl PSMTXScale
/* 801C6AAC 001C3AAC  38 61 00 90 */	addi r3, r1, 0x90
/* 801C6AB0 001C3AB0  38 81 00 60 */	addi r4, r1, 0x60
/* 801C6AB4 001C3AB4  7C 65 1B 78 */	mr r5, r3
/* 801C6AB8 001C3AB8  48 0D 14 A9 */	bl PSMTXConcat
/* 801C6ABC 001C3ABC  C0 22 E0 34 */	lfs f1, lbl_8041F3B4-_SDA2_BASE_(r2)
/* 801C6AC0 001C3AC0  38 61 00 30 */	addi r3, r1, 0x30
/* 801C6AC4 001C3AC4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 801C6AC8 001C3AC8  38 80 00 7A */	li r4, 0x7a
/* 801C6ACC 001C3ACC  EC 21 00 32 */	fmuls f1, f1, f0
/* 801C6AD0 001C3AD0  48 0D 17 1D */	bl PSMTXRotRad
/* 801C6AD4 001C3AD4  38 61 00 90 */	addi r3, r1, 0x90
/* 801C6AD8 001C3AD8  38 81 00 30 */	addi r4, r1, 0x30
/* 801C6ADC 001C3ADC  7C 65 1B 78 */	mr r5, r3
/* 801C6AE0 001C3AE0  48 0D 14 81 */	bl PSMTXConcat
/* 801C6AE4 001C3AE4  38 81 00 90 */	addi r4, r1, 0x90
/* 801C6AE8 001C3AE8  38 7F 01 1C */	addi r3, r31, 0x11c
/* 801C6AEC 001C3AEC  7C 85 23 78 */	mr r5, r4
/* 801C6AF0 001C3AF0  48 0D 14 71 */	bl PSMTXConcat
/* 801C6AF4 001C3AF4  38 61 00 90 */	addi r3, r1, 0x90
/* 801C6AF8 001C3AF8  38 80 00 00 */	li r4, 0
/* 801C6AFC 001C3AFC  48 0E D9 FD */	bl GXLoadPosMtxImm
/* 801C6B00 001C3B00  38 60 00 90 */	li r3, 0x90
/* 801C6B04 001C3B04  38 80 00 00 */	li r4, 0
/* 801C6B08 001C3B08  38 A0 00 06 */	li r5, 6
/* 801C6B0C 001C3B0C  48 0E 91 5D */	bl GXBegin
/* 801C6B10 001C3B10  38 60 00 00 */	li r3, 0
/* 801C6B14 001C3B14  38 80 00 03 */	li r4, 3
/* 801C6B18 001C3B18  38 A0 00 01 */	li r5, 1
/* 801C6B1C 001C3B1C  38 C0 00 00 */	li r6, 0
/* 801C6B20 001C3B20  38 E0 00 00 */	li r7, 0
/* 801C6B24 001C3B24  39 00 00 02 */	li r8, 2
/* 801C6B28 001C3B28  39 20 00 03 */	li r9, 3
/* 801C6B2C 001C3B2C  39 40 00 00 */	li r10, 0
/* 801C6B30 001C3B30  48 00 AB 05 */	bl tri2
lbl_801C6B34:
/* 801C6B34 001C3B34  3B BD 00 01 */	addi r29, r29, 1
/* 801C6B38 001C3B38  3B DE 00 50 */	addi r30, r30, 0x50
lbl_801C6B3C:
/* 801C6B3C 001C3B3C  80 1C 00 08 */	lwz r0, 8(r28)
/* 801C6B40 001C3B40  7C 1D 00 00 */	cmpw r29, r0
/* 801C6B44 001C3B44  41 80 FE DC */	blt lbl_801C6A20
/* 801C6B48 001C3B48  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 801C6B4C 001C3B4C  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 801C6B50 001C3B50  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 801C6B54 001C3B54  83 A1 00 C4 */	lwz r29, 0xc4(r1)
/* 801C6B58 001C3B58  83 81 00 C0 */	lwz r28, 0xc0(r1)
/* 801C6B5C 001C3B5C  7C 08 03 A6 */	mtlr r0
/* 801C6B60 001C3B60  38 21 00 D0 */	addi r1, r1, 0xd0
/* 801C6B64 001C3B64  4E 80 00 20 */	blr 
effKemuri6Main:
/* 801C6B68 001C3B68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C6B6C 001C3B6C  7C 08 02 A6 */	mflr r0
/* 801C6B70 001C3B70  3C 80 80 30 */	lis r4, lbl_802FA938@ha
/* 801C6B74 001C3B74  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C6B78 001C3B78  38 A4 A9 38 */	addi r5, r4, lbl_802FA938@l
/* 801C6B7C 001C3B7C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801C6B80 001C3B80  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801C6B84 001C3B84  3B C0 00 00 */	li r30, 0
/* 801C6B88 001C3B88  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801C6B8C 001C3B8C  3B A0 00 00 */	li r29, 0
/* 801C6B90 001C3B90  93 81 00 20 */	stw r28, 0x20(r1)
/* 801C6B94 001C3B94  7C 7C 1B 78 */	mr r28, r3
/* 801C6B98 001C3B98  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 801C6B9C 001C3B9C  80 85 00 00 */	lwz r4, 0(r5)
/* 801C6BA0 001C3BA0  80 65 00 04 */	lwz r3, 4(r5)
/* 801C6BA4 001C3BA4  80 05 00 08 */	lwz r0, 8(r5)
/* 801C6BA8 001C3BA8  90 81 00 08 */	stw r4, 8(r1)
/* 801C6BAC 001C3BAC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 801C6BB0 001C3BB0  90 61 00 0C */	stw r3, 0xc(r1)
/* 801C6BB4 001C3BB4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 801C6BB8 001C3BB8  D0 01 00 08 */	stfs f0, 8(r1)
/* 801C6BBC 001C3BBC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 801C6BC0 001C3BC0  90 01 00 10 */	stw r0, 0x10(r1)
/* 801C6BC4 001C3BC4  80 81 00 08 */	lwz r4, 8(r1)
/* 801C6BC8 001C3BC8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801C6BCC 001C3BCC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801C6BD0 001C3BD0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 801C6BD4 001C3BD4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801C6BD8 001C3BD8  90 81 00 14 */	stw r4, 0x14(r1)
/* 801C6BDC 001C3BDC  90 61 00 18 */	stw r3, 0x18(r1)
/* 801C6BE0 001C3BE0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801C6BE4 001C3BE4  48 00 01 5C */	b lbl_801C6D40
lbl_801C6BE8:
/* 801C6BE8 001C3BE8  80 1F 00 00 */	lwz r0, 0(r31)
/* 801C6BEC 001C3BEC  2C 00 00 00 */	cmpwi r0, 0
/* 801C6BF0 001C3BF0  41 82 01 48 */	beq lbl_801C6D38
/* 801C6BF4 001C3BF4  A8 7F 00 06 */	lha r3, 6(r31)
/* 801C6BF8 001C3BF8  38 63 FF FF */	addi r3, r3, -1
/* 801C6BFC 001C3BFC  7C 60 07 35 */	extsh. r0, r3
/* 801C6C00 001C3C00  B0 7F 00 06 */	sth r3, 6(r31)
/* 801C6C04 001C3C04  41 81 00 10 */	bgt lbl_801C6C14
/* 801C6C08 001C3C08  38 00 00 00 */	li r0, 0
/* 801C6C0C 001C3C0C  90 1F 00 00 */	stw r0, 0(r31)
/* 801C6C10 001C3C10  48 00 01 28 */	b lbl_801C6D38
lbl_801C6C14:
/* 801C6C14 001C3C14  C0 22 E0 38 */	lfs f1, lbl_8041F3B8-_SDA2_BASE_(r2)
/* 801C6C18 001C3C18  3B A0 00 01 */	li r29, 1
/* 801C6C1C 001C3C1C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 801C6C20 001C3C20  EC 21 00 2A */	fadds f1, f1, f0
/* 801C6C24 001C3C24  4B E4 06 85 */	bl reviseAngle
/* 801C6C28 001C3C28  D0 3F 00 30 */	stfs f1, 0x30(r31)
/* 801C6C2C 001C3C2C  C0 42 E0 3C */	lfs f2, lbl_8041F3BC-_SDA2_BASE_(r2)
/* 801C6C30 001C3C30  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 801C6C34 001C3C34  C0 02 E0 40 */	lfs f0, lbl_8041F3C0-_SDA2_BASE_(r2)
/* 801C6C38 001C3C38  EC 22 00 72 */	fmuls f1, f2, f1
/* 801C6C3C 001C3C3C  EC 21 00 24 */	fdivs f1, f1, f0
/* 801C6C40 001C3C40  48 0A 57 B9 */	bl sin
/* 801C6C44 001C3C44  FC 60 08 18 */	frsp f3, f1
/* 801C6C48 001C3C48  C0 22 E0 44 */	lfs f1, lbl_8041F3C4-_SDA2_BASE_(r2)
/* 801C6C4C 001C3C4C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 801C6C50 001C3C50  C0 42 E0 3C */	lfs f2, lbl_8041F3BC-_SDA2_BASE_(r2)
/* 801C6C54 001C3C54  EC 21 00 FA */	fmadds f1, f1, f3, f0
/* 801C6C58 001C3C58  C0 02 E0 40 */	lfs f0, lbl_8041F3C0-_SDA2_BASE_(r2)
/* 801C6C5C 001C3C5C  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 801C6C60 001C3C60  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 801C6C64 001C3C64  EC 22 00 72 */	fmuls f1, f2, f1
/* 801C6C68 001C3C68  EC 21 00 24 */	fdivs f1, f1, f0
/* 801C6C6C 001C3C6C  48 0A 52 25 */	bl cos
/* 801C6C70 001C3C70  FC 40 08 18 */	frsp f2, f1
/* 801C6C74 001C3C74  C0 22 E0 44 */	lfs f1, lbl_8041F3C4-_SDA2_BASE_(r2)
/* 801C6C78 001C3C78  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 801C6C7C 001C3C7C  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 801C6C80 001C3C80  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 801C6C84 001C3C84  A0 1F 00 04 */	lhz r0, 4(r31)
/* 801C6C88 001C3C88  28 00 00 00 */	cmplwi r0, 0
/* 801C6C8C 001C3C8C  40 82 00 38 */	bne lbl_801C6CC4
/* 801C6C90 001C3C90  A8 1F 00 06 */	lha r0, 6(r31)
/* 801C6C94 001C3C94  2C 00 00 04 */	cmpwi r0, 4
/* 801C6C98 001C3C98  40 81 00 2C */	ble lbl_801C6CC4
/* 801C6C9C 001C3C9C  2C 00 00 05 */	cmpwi r0, 5
/* 801C6CA0 001C3CA0  41 81 00 24 */	bgt lbl_801C6CC4
/* 801C6CA4 001C3CA4  4B E9 65 71 */	bl marioGetPtr
/* 801C6CA8 001C3CA8  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 801C6CAC 001C3CAC  28 00 00 00 */	cmplwi r0, 0
/* 801C6CB0 001C3CB0  40 82 00 14 */	bne lbl_801C6CC4
/* 801C6CB4 001C3CB4  A8 7F 00 06 */	lha r3, 6(r31)
/* 801C6CB8 001C3CB8  38 03 00 01 */	addi r0, r3, 1
/* 801C6CBC 001C3CBC  B0 1F 00 06 */	sth r0, 6(r31)
/* 801C6CC0 001C3CC0  48 00 00 C0 */	b lbl_801C6D80
lbl_801C6CC4:
/* 801C6CC4 001C3CC4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 801C6CC8 001C3CC8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801C6CCC 001C3CCC  C0 42 E0 48 */	lfs f2, lbl_8041F3C8-_SDA2_BASE_(r2)
/* 801C6CD0 001C3CD0  EC 61 00 2A */	fadds f3, f1, f0
/* 801C6CD4 001C3CD4  C0 22 E0 4C */	lfs f1, lbl_8041F3CC-_SDA2_BASE_(r2)
/* 801C6CD8 001C3CD8  C0 02 E0 30 */	lfs f0, lbl_8041F3B0-_SDA2_BASE_(r2)
/* 801C6CDC 001C3CDC  D0 7F 00 3C */	stfs f3, 0x3c(r31)
/* 801C6CE0 001C3CE0  C0 9F 00 38 */	lfs f4, 0x38(r31)
/* 801C6CE4 001C3CE4  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 801C6CE8 001C3CE8  EC 64 18 2A */	fadds f3, f4, f3
/* 801C6CEC 001C3CEC  D0 7F 00 38 */	stfs f3, 0x38(r31)
/* 801C6CF0 001C3CF0  C0 9F 00 10 */	lfs f4, 0x10(r31)
/* 801C6CF4 001C3CF4  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 801C6CF8 001C3CF8  EC 64 18 2A */	fadds f3, f4, f3
/* 801C6CFC 001C3CFC  D0 7F 00 10 */	stfs f3, 0x10(r31)
/* 801C6D00 001C3D00  88 7F 00 08 */	lbz r3, 8(r31)
/* 801C6D04 001C3D04  38 03 FF F1 */	addi r0, r3, -15
/* 801C6D08 001C3D08  98 1F 00 08 */	stb r0, 8(r31)
/* 801C6D0C 001C3D0C  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 801C6D10 001C3D10  EC 43 10 2A */	fadds f2, f3, f2
/* 801C6D14 001C3D14  D0 5F 00 28 */	stfs f2, 0x28(r31)
/* 801C6D18 001C3D18  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 801C6D1C 001C3D1C  EC 22 00 72 */	fmuls f1, f2, f1
/* 801C6D20 001C3D20  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 801C6D24 001C3D24  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 801C6D28 001C3D28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C6D2C 001C3D2C  40 80 00 0C */	bge lbl_801C6D38
/* 801C6D30 001C3D30  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 801C6D34 001C3D34  D0 1F 00 38 */	stfs f0, 0x38(r31)
lbl_801C6D38:
/* 801C6D38 001C3D38  3B DE 00 01 */	addi r30, r30, 1
/* 801C6D3C 001C3D3C  3B FF 00 50 */	addi r31, r31, 0x50
lbl_801C6D40:
/* 801C6D40 001C3D40  80 1C 00 08 */	lwz r0, 8(r28)
/* 801C6D44 001C3D44  7C 1E 00 00 */	cmpw r30, r0
/* 801C6D48 001C3D48  41 80 FE A0 */	blt lbl_801C6BE8
/* 801C6D4C 001C3D4C  2C 1D 00 00 */	cmpwi r29, 0
/* 801C6D50 001C3D50  40 82 00 10 */	bne lbl_801C6D60
/* 801C6D54 001C3D54  7F 83 E3 78 */	mr r3, r28
/* 801C6D58 001C3D58  4B E9 6E 2D */	bl effDelete
/* 801C6D5C 001C3D5C  48 00 00 24 */	b lbl_801C6D80
lbl_801C6D60:
/* 801C6D60 001C3D60  38 61 00 14 */	addi r3, r1, 0x14
/* 801C6D64 001C3D64  4B E4 99 5D */	bl dispCalcZ
/* 801C6D68 001C3D68  3C 60 80 1C */	lis r3, effKemuri6Disp@ha
/* 801C6D6C 001C3D6C  7F 86 E3 78 */	mr r6, r28
/* 801C6D70 001C3D70  38 A3 68 EC */	addi r5, r3, effKemuri6Disp@l
/* 801C6D74 001C3D74  38 80 00 02 */	li r4, 2
/* 801C6D78 001C3D78  38 60 00 04 */	li r3, 4
/* 801C6D7C 001C3D7C  4B E4 9C 9D */	bl dispEntry
lbl_801C6D80:
/* 801C6D80 001C3D80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C6D84 001C3D84  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801C6D88 001C3D88  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801C6D8C 001C3D8C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801C6D90 001C3D90  83 81 00 20 */	lwz r28, 0x20(r1)
/* 801C6D94 001C3D94  7C 08 03 A6 */	mtlr r0
/* 801C6D98 001C3D98  38 21 00 30 */	addi r1, r1, 0x30
/* 801C6D9C 001C3D9C  4E 80 00 20 */	blr 

.global effKemuri6N64Entry
effKemuri6N64Entry:
/* 801C6DA0 001C3DA0  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801C6DA4 001C3DA4  7C 08 02 A6 */	mflr r0
/* 801C6DA8 001C3DA8  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801C6DAC 001C3DAC  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 801C6DB0 001C3DB0  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 801C6DB4 001C3DB4  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 801C6DB8 001C3DB8  F3 C1 00 98 */	psq_st f30, 152(r1), 0, qr0
/* 801C6DBC 001C3DBC  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 801C6DC0 001C3DC0  F3 A1 00 88 */	psq_st f29, 136(r1), 0, qr0
/* 801C6DC4 001C3DC4  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 801C6DC8 001C3DC8  F3 81 00 78 */	psq_st f28, 120(r1), 0, qr0
/* 801C6DCC 001C3DCC  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 801C6DD0 001C3DD0  F3 61 00 68 */	psq_st f27, 104(r1), 0, qr0
/* 801C6DD4 001C3DD4  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 801C6DD8 001C3DD8  F3 41 00 58 */	psq_st f26, 88(r1), 0, qr0
/* 801C6DDC 001C3DDC  BF 21 00 34 */	stmw r25, 0x34(r1)
/* 801C6DE0 001C3DE0  FF 80 08 90 */	fmr f28, f1
/* 801C6DE4 001C3DE4  7C 7C 1B 78 */	mr r28, r3
/* 801C6DE8 001C3DE8  FF A0 10 90 */	fmr f29, f2
/* 801C6DEC 001C3DEC  FF C0 18 90 */	fmr f30, f3
/* 801C6DF0 001C3DF0  4B E9 6F CD */	bl effEntry
/* 801C6DF4 001C3DF4  3C 80 80 30 */	lis r4, lbl_802FA944@ha
/* 801C6DF8 001C3DF8  7C 7D 1B 78 */	mr r29, r3
/* 801C6DFC 001C3DFC  38 84 A9 44 */	addi r4, r4, lbl_802FA944@l
/* 801C6E00 001C3E00  38 00 00 01 */	li r0, 1
/* 801C6E04 001C3E04  90 9D 00 14 */	stw r4, 0x14(r29)
/* 801C6E08 001C3E08  38 60 00 03 */	li r3, 3
/* 801C6E0C 001C3E0C  38 80 00 50 */	li r4, 0x50
/* 801C6E10 001C3E10  90 1D 00 08 */	stw r0, 8(r29)
/* 801C6E14 001C3E14  4B E6 8C 79 */	bl __memAlloc
/* 801C6E18 001C3E18  7C 7E 1B 78 */	mr r30, r3
/* 801C6E1C 001C3E1C  3C 60 80 1C */	lis r3, effKemuri6Main@ha
/* 801C6E20 001C3E20  93 DD 00 0C */	stw r30, 0xc(r29)
/* 801C6E24 001C3E24  38 03 6B 68 */	addi r0, r3, effKemuri6Main@l
/* 801C6E28 001C3E28  3C 60 80 30 */	lis r3, lbl_802FA950@ha
/* 801C6E2C 001C3E2C  3C C0 2E 8C */	lis r6, 0x2E8BA2E9@ha
/* 801C6E30 001C3E30  90 1D 00 10 */	stw r0, 0x10(r29)
/* 801C6E34 001C3E34  38 A3 A9 50 */	addi r5, r3, lbl_802FA950@l
/* 801C6E38 001C3E38  38 00 00 01 */	li r0, 1
/* 801C6E3C 001C3E3C  3C 80 43 26 */	lis r4, 0x4325C53F@ha
/* 801C6E40 001C3E40  90 1E 00 00 */	stw r0, 0(r30)
/* 801C6E44 001C3E44  3C 60 5A C5 */	lis r3, 0x5AC5242B@ha
/* 801C6E48 001C3E48  C0 22 E0 30 */	lfs f1, lbl_8041F3B0-_SDA2_BASE_(r2)
/* 801C6E4C 001C3E4C  38 00 00 FF */	li r0, 0xff
/* 801C6E50 001C3E50  B3 9E 00 04 */	sth r28, 4(r30)
/* 801C6E54 001C3E54  3B 26 A2 E9 */	addi r25, r6, 0x2E8BA2E9@l
/* 801C6E58 001C3E58  C0 02 E0 50 */	lfs f0, lbl_8041F3D0-_SDA2_BASE_(r2)
/* 801C6E5C 001C3E5C  3B 44 C5 3F */	addi r26, r4, 0x4325C53F@l
/* 801C6E60 001C3E60  D0 3E 00 40 */	stfs f1, 0x40(r30)
/* 801C6E64 001C3E64  3B 63 24 2B */	addi r27, r3, 0x5AC5242B@l
/* 801C6E68 001C3E68  CB 45 00 00 */	lfd f26, 0(r5)
/* 801C6E6C 001C3E6C  3F E0 43 30 */	lis r31, 0x4330
/* 801C6E70 001C3E70  D0 3E 00 44 */	stfs f1, 0x44(r30)
/* 801C6E74 001C3E74  C3 62 E0 58 */	lfs f27, lbl_8041F3D8-_SDA2_BASE_(r2)
/* 801C6E78 001C3E78  D3 9E 00 0C */	stfs f28, 0xc(r30)
/* 801C6E7C 001C3E7C  C3 82 E0 54 */	lfs f28, lbl_8041F3D4-_SDA2_BASE_(r2)
/* 801C6E80 001C3E80  D3 BE 00 10 */	stfs f29, 0x10(r30)
/* 801C6E84 001C3E84  C3 A2 E0 5C */	lfs f29, lbl_8041F3DC-_SDA2_BASE_(r2)
/* 801C6E88 001C3E88  D3 DE 00 14 */	stfs f30, 0x14(r30)
/* 801C6E8C 001C3E8C  C3 C2 E0 60 */	lfs f30, lbl_8041F3E0-_SDA2_BASE_(r2)
/* 801C6E90 001C3E90  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 801C6E94 001C3E94  C3 E2 E0 64 */	lfs f31, lbl_8041F3E4-_SDA2_BASE_(r2)
/* 801C6E98 001C3E98  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 801C6E9C 001C3E9C  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 801C6EA0 001C3EA0  98 1E 00 08 */	stb r0, 8(r30)
/* 801C6EA4 001C3EA4  48 09 F4 D1 */	bl rand
/* 801C6EA8 001C3EA8  7C 19 18 96 */	mulhw r0, r25, r3
/* 801C6EAC 001C3EAC  93 E1 00 08 */	stw r31, 8(r1)
/* 801C6EB0 001C3EB0  7C 00 0E 70 */	srawi r0, r0, 1
/* 801C6EB4 001C3EB4  54 04 0F FE */	srwi r4, r0, 0x1f
/* 801C6EB8 001C3EB8  7C 00 22 14 */	add r0, r0, r4
/* 801C6EBC 001C3EBC  1C 00 00 0B */	mulli r0, r0, 0xb
/* 801C6EC0 001C3EC0  7C 00 18 50 */	subf r0, r0, r3
/* 801C6EC4 001C3EC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C6EC8 001C3EC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C6ECC 001C3ECC  C8 01 00 08 */	lfd f0, 8(r1)
/* 801C6ED0 001C3ED0  EC 00 D0 28 */	fsubs f0, f0, f26
/* 801C6ED4 001C3ED4  EC 1B E0 3A */	fmadds f0, f27, f0, f28
/* 801C6ED8 001C3ED8  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 801C6EDC 001C3EDC  48 09 F4 99 */	bl rand
/* 801C6EE0 001C3EE0  7C 19 18 96 */	mulhw r0, r25, r3
/* 801C6EE4 001C3EE4  93 E1 00 10 */	stw r31, 0x10(r1)
/* 801C6EE8 001C3EE8  7C 00 0E 70 */	srawi r0, r0, 1
/* 801C6EEC 001C3EEC  54 04 0F FE */	srwi r4, r0, 0x1f
/* 801C6EF0 001C3EF0  7C 00 22 14 */	add r0, r0, r4
/* 801C6EF4 001C3EF4  1C 00 00 0B */	mulli r0, r0, 0xb
/* 801C6EF8 001C3EF8  7C 00 18 50 */	subf r0, r0, r3
/* 801C6EFC 001C3EFC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C6F00 001C3F00  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C6F04 001C3F04  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801C6F08 001C3F08  EC 00 D0 28 */	fsubs f0, f0, f26
/* 801C6F0C 001C3F0C  EC 1B E8 3A */	fmadds f0, f27, f0, f29
/* 801C6F10 001C3F10  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 801C6F14 001C3F14  48 09 F4 61 */	bl rand
/* 801C6F18 001C3F18  7C 9A 18 96 */	mulhw r4, r26, r3
/* 801C6F1C 001C3F1C  93 E1 00 18 */	stw r31, 0x18(r1)
/* 801C6F20 001C3F20  38 00 00 0F */	li r0, 0xf
/* 801C6F24 001C3F24  7C 84 26 70 */	srawi r4, r4, 4
/* 801C6F28 001C3F28  54 85 0F FE */	srwi r5, r4, 0x1f
/* 801C6F2C 001C3F2C  7C 84 2A 14 */	add r4, r4, r5
/* 801C6F30 001C3F30  1C 84 00 3D */	mulli r4, r4, 0x3d
/* 801C6F34 001C3F34  7C 64 18 50 */	subf r3, r4, r3
/* 801C6F38 001C3F38  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 801C6F3C 001C3F3C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 801C6F40 001C3F40  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801C6F44 001C3F44  EC 00 D0 28 */	fsubs f0, f0, f26
/* 801C6F48 001C3F48  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 801C6F4C 001C3F4C  B3 9E 00 04 */	sth r28, 4(r30)
/* 801C6F50 001C3F50  D3 DE 00 38 */	stfs f30, 0x38(r30)
/* 801C6F54 001C3F54  D3 FE 00 3C */	stfs f31, 0x3c(r30)
/* 801C6F58 001C3F58  B0 1E 00 06 */	sth r0, 6(r30)
/* 801C6F5C 001C3F5C  48 09 F4 19 */	bl rand
/* 801C6F60 001C3F60  7C 9B 18 96 */	mulhw r4, r27, r3
/* 801C6F64 001C3F64  93 E1 00 20 */	stw r31, 0x20(r1)
/* 801C6F68 001C3F68  38 00 00 FF */	li r0, 0xff
/* 801C6F6C 001C3F6C  7C 84 3E 70 */	srawi r4, r4, 7
/* 801C6F70 001C3F70  54 85 0F FE */	srwi r5, r4, 0x1f
/* 801C6F74 001C3F74  7C 84 2A 14 */	add r4, r4, r5
/* 801C6F78 001C3F78  1C 84 01 69 */	mulli r4, r4, 0x169
/* 801C6F7C 001C3F7C  7C 84 18 50 */	subf r4, r4, r3
/* 801C6F80 001C3F80  7F A3 EB 78 */	mr r3, r29
/* 801C6F84 001C3F84  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 801C6F88 001C3F88  90 81 00 24 */	stw r4, 0x24(r1)
/* 801C6F8C 001C3F8C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801C6F90 001C3F90  EC 00 D0 28 */	fsubs f0, f0, f26
/* 801C6F94 001C3F94  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 801C6F98 001C3F98  98 1E 00 08 */	stb r0, 8(r30)
/* 801C6F9C 001C3F9C  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 801C6FA0 001C3FA0  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 801C6FA4 001C3FA4  E3 C1 00 98 */	psq_l f30, 152(r1), 0, qr0
/* 801C6FA8 001C3FA8  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 801C6FAC 001C3FAC  E3 A1 00 88 */	psq_l f29, 136(r1), 0, qr0
/* 801C6FB0 001C3FB0  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 801C6FB4 001C3FB4  E3 81 00 78 */	psq_l f28, 120(r1), 0, qr0
/* 801C6FB8 001C3FB8  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 801C6FBC 001C3FBC  E3 61 00 68 */	psq_l f27, 104(r1), 0, qr0
/* 801C6FC0 001C3FC0  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 801C6FC4 001C3FC4  E3 41 00 58 */	psq_l f26, 88(r1), 0, qr0
/* 801C6FC8 001C3FC8  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 801C6FCC 001C3FCC  BB 21 00 34 */	lmw r25, 0x34(r1)
/* 801C6FD0 001C3FD0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801C6FD4 001C3FD4  7C 08 03 A6 */	mtlr r0
/* 801C6FD8 001C3FD8  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801C6FDC 001C3FDC  4E 80 00 20 */	blr 
