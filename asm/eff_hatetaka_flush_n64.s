.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

.global effHagetakaFlushDisp
effHagetakaFlushDisp:
/* 801BF608 001BC608  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 801BF60C 001BC60C  7C 08 02 A6 */	mflr r0
/* 801BF610 001BC610  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 801BF614 001BC614  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 801BF618 001BC618  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 801BF61C 001BC61C  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 801BF620 001BC620  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 801BF624 001BC624  93 A1 00 C4 */	stw r29, 0xc4(r1)
/* 801BF628 001BC628  7C 9D 23 78 */	mr r29, r4
/* 801BF62C 001BC62C  4B E4 FB 25 */	bl camGetPtr
/* 801BF630 001BC630  83 DD 00 0C */	lwz r30, 0xc(r29)
/* 801BF634 001BC634  7C 7F 1B 78 */	mr r31, r3
/* 801BF638 001BC638  38 61 00 90 */	addi r3, r1, 0x90
/* 801BF63C 001BC63C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 801BF640 001BC640  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 801BF644 001BC644  83 BE 00 24 */	lwz r29, 0x24(r30)
/* 801BF648 001BC648  EF E1 00 32 */	fmuls f31, f1, f0
/* 801BF64C 001BC64C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 801BF650 001BC650  C0 5E 00 08 */	lfs f2, 8(r30)
/* 801BF654 001BC654  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 801BF658 001BC658  48 0D 8D D5 */	bl PSMTXTrans
/* 801BF65C 001BC65C  38 60 00 04 */	li r3, 4
/* 801BF660 001BC660  4B E4 FA F1 */	bl camGetPtr
/* 801BF664 001BC664  C0 23 01 14 */	lfs f1, 0x114(r3)
/* 801BF668 001BC668  38 61 00 30 */	addi r3, r1, 0x30
/* 801BF66C 001BC66C  C0 02 DD 48 */	lfs f0, lbl_8041F0C8-_SDA2_BASE_(r2)
/* 801BF670 001BC670  38 80 00 79 */	li r4, 0x79
/* 801BF674 001BC674  FC 20 08 50 */	fneg f1, f1
/* 801BF678 001BC678  EC 20 00 72 */	fmuls f1, f0, f1
/* 801BF67C 001BC67C  48 0D 8B 71 */	bl PSMTXRotRad
/* 801BF680 001BC680  FC 20 F8 90 */	fmr f1, f31
/* 801BF684 001BC684  38 61 00 60 */	addi r3, r1, 0x60
/* 801BF688 001BC688  FC 40 F8 90 */	fmr f2, f31
/* 801BF68C 001BC68C  FC 60 F8 90 */	fmr f3, f31
/* 801BF690 001BC690  48 0D 8E 1D */	bl PSMTXScale
/* 801BF694 001BC694  38 61 00 90 */	addi r3, r1, 0x90
/* 801BF698 001BC698  38 81 00 30 */	addi r4, r1, 0x30
/* 801BF69C 001BC69C  7C 65 1B 78 */	mr r5, r3
/* 801BF6A0 001BC6A0  48 0D 88 C1 */	bl PSMTXConcat
/* 801BF6A4 001BC6A4  38 61 00 90 */	addi r3, r1, 0x90
/* 801BF6A8 001BC6A8  38 81 00 60 */	addi r4, r1, 0x60
/* 801BF6AC 001BC6AC  7C 65 1B 78 */	mr r5, r3
/* 801BF6B0 001BC6B0  48 0D 88 B1 */	bl PSMTXConcat
/* 801BF6B4 001BC6B4  38 81 00 90 */	addi r4, r1, 0x90
/* 801BF6B8 001BC6B8  38 7F 01 1C */	addi r3, r31, 0x11c
/* 801BF6BC 001BC6BC  7C 85 23 78 */	mr r5, r4
/* 801BF6C0 001BC6C0  48 0D 88 A1 */	bl PSMTXConcat
/* 801BF6C4 001BC6C4  38 61 00 90 */	addi r3, r1, 0x90
/* 801BF6C8 001BC6C8  38 80 00 00 */	li r4, 0
/* 801BF6CC 001BC6CC  48 0F 4E 2D */	bl GXLoadPosMtxImm
/* 801BF6D0 001BC6D0  38 60 00 00 */	li r3, 0
/* 801BF6D4 001BC6D4  48 0F 4E C5 */	bl GXSetCurrentMtx
/* 801BF6D8 001BC6D8  38 60 00 00 */	li r3, 0
/* 801BF6DC 001BC6DC  48 0F 1A 5D */	bl GXSetNumChans
/* 801BF6E0 001BC6E0  38 60 00 01 */	li r3, 1
/* 801BF6E4 001BC6E4  48 0F 3A E5 */	bl GXSetNumTevStages
/* 801BF6E8 001BC6E8  38 60 00 00 */	li r3, 0
/* 801BF6EC 001BC6EC  38 80 00 00 */	li r4, 0
/* 801BF6F0 001BC6F0  38 A0 00 00 */	li r5, 0
/* 801BF6F4 001BC6F4  38 C0 00 FF */	li r6, 0xff
/* 801BF6F8 001BC6F8  48 0F 39 35 */	bl GXSetTevOrder
/* 801BF6FC 001BC6FC  38 60 00 00 */	li r3, 0
/* 801BF700 001BC700  38 80 00 00 */	li r4, 0
/* 801BF704 001BC704  38 A0 00 00 */	li r5, 0
/* 801BF708 001BC708  38 C0 00 00 */	li r6, 0
/* 801BF70C 001BC70C  38 E0 00 01 */	li r7, 1
/* 801BF710 001BC710  39 00 00 00 */	li r8, 0
/* 801BF714 001BC714  48 0F 34 D1 */	bl GXSetTevColorOp
/* 801BF718 001BC718  38 60 00 00 */	li r3, 0
/* 801BF71C 001BC71C  38 80 00 00 */	li r4, 0
/* 801BF720 001BC720  38 A0 00 00 */	li r5, 0
/* 801BF724 001BC724  38 C0 00 00 */	li r6, 0
/* 801BF728 001BC728  38 E0 00 01 */	li r7, 1
/* 801BF72C 001BC72C  39 00 00 00 */	li r8, 0
/* 801BF730 001BC730  48 0F 35 1D */	bl GXSetTevAlphaOp
/* 801BF734 001BC734  38 60 00 00 */	li r3, 0
/* 801BF738 001BC738  38 80 00 0F */	li r4, 0xf
/* 801BF73C 001BC73C  38 A0 00 0F */	li r5, 0xf
/* 801BF740 001BC740  38 C0 00 0F */	li r6, 0xf
/* 801BF744 001BC744  38 E0 00 02 */	li r7, 2
/* 801BF748 001BC748  48 0F 34 15 */	bl GXSetTevColorIn
/* 801BF74C 001BC74C  38 60 00 00 */	li r3, 0
/* 801BF750 001BC750  38 80 00 07 */	li r4, 7
/* 801BF754 001BC754  38 A0 00 01 */	li r5, 1
/* 801BF758 001BC758  38 C0 00 04 */	li r6, 4
/* 801BF75C 001BC75C  38 E0 00 07 */	li r7, 7
/* 801BF760 001BC760  48 0F 34 41 */	bl GXSetTevAlphaIn
/* 801BF764 001BC764  38 60 00 01 */	li r3, 1
/* 801BF768 001BC768  48 0E FB 19 */	bl GXSetNumTexGens
/* 801BF76C 001BC76C  38 60 00 00 */	li r3, 0
/* 801BF770 001BC770  38 80 00 01 */	li r4, 1
/* 801BF774 001BC774  38 A0 00 04 */	li r5, 4
/* 801BF778 001BC778  38 C0 00 1E */	li r6, 0x1e
/* 801BF77C 001BC77C  38 E0 00 00 */	li r7, 0
/* 801BF780 001BC780  39 00 00 7D */	li r8, 0x7d
/* 801BF784 001BC784  48 0E F8 7D */	bl GXSetTexCoordGen2
/* 801BF788 001BC788  C0 22 DD 4C */	lfs f1, lbl_8041F0CC-_SDA2_BASE_(r2)
/* 801BF78C 001BC78C  38 61 00 60 */	addi r3, r1, 0x60
/* 801BF790 001BC790  C0 62 DD 50 */	lfs f3, lbl_8041F0D0-_SDA2_BASE_(r2)
/* 801BF794 001BC794  FC 40 08 90 */	fmr f2, f1
/* 801BF798 001BC798  48 0D 8D 15 */	bl PSMTXScale
/* 801BF79C 001BC79C  38 61 00 60 */	addi r3, r1, 0x60
/* 801BF7A0 001BC7A0  38 80 00 1E */	li r4, 0x1e
/* 801BF7A4 001BC7A4  38 A0 00 01 */	li r5, 1
/* 801BF7A8 001BC7A8  48 0F 4E 25 */	bl GXLoadTexMtxImm
/* 801BF7AC 001BC7AC  38 81 00 10 */	addi r4, r1, 0x10
/* 801BF7B0 001BC7B0  38 60 00 1C */	li r3, 0x1c
/* 801BF7B4 001BC7B4  48 01 20 91 */	bl effGetTexObjN64
/* 801BF7B8 001BC7B8  38 61 00 10 */	addi r3, r1, 0x10
/* 801BF7BC 001BC7BC  38 80 00 00 */	li r4, 0
/* 801BF7C0 001BC7C0  48 0F 22 BD */	bl GXLoadTexObj
/* 801BF7C4 001BC7C4  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 801BF7C8 001BC7C8  3C 60 2A AB */	lis r3, 0x2AAAAAAB@ha
/* 801BF7CC 001BC7CC  80 02 1D B0 */	lwz r0, lbl_80423130-_SDA2_BASE_(r2)
/* 801BF7D0 001BC7D0  38 63 AA AB */	addi r3, r3, 0x2AAAAAAB@l
/* 801BF7D4 001BC7D4  1C E4 00 03 */	mulli r7, r4, 3
/* 801BF7D8 001BC7D8  38 AD C7 50 */	addi r5, r13, lbl_804139B0-_SDA_BASE_
/* 801BF7DC 001BC7DC  90 01 00 08 */	stw r0, 8(r1)
/* 801BF7E0 001BC7E0  38 81 00 0C */	addi r4, r1, 0xc
/* 801BF7E4 001BC7E4  7C 03 38 96 */	mulhw r0, r3, r7
/* 801BF7E8 001BC7E8  9B A1 00 0B */	stb r29, 0xb(r1)
/* 801BF7EC 001BC7EC  38 60 00 01 */	li r3, 1
/* 801BF7F0 001BC7F0  7C 00 16 70 */	srawi r0, r0, 2
/* 801BF7F4 001BC7F4  54 06 0F FE */	srwi r6, r0, 0x1f
/* 801BF7F8 001BC7F8  7C 00 32 14 */	add r0, r0, r6
/* 801BF7FC 001BC7FC  1C 00 00 18 */	mulli r0, r0, 0x18
/* 801BF800 001BC800  7C E0 38 50 */	subf r7, r0, r7
/* 801BF804 001BC804  7C C5 3A 14 */	add r6, r5, r7
/* 801BF808 001BC808  7C E5 38 AE */	lbzx r7, r5, r7
/* 801BF80C 001BC80C  88 A6 00 01 */	lbz r5, 1(r6)
/* 801BF810 001BC810  88 06 00 02 */	lbz r0, 2(r6)
/* 801BF814 001BC814  98 E1 00 08 */	stb r7, 8(r1)
/* 801BF818 001BC818  98 A1 00 09 */	stb r5, 9(r1)
/* 801BF81C 001BC81C  98 01 00 0A */	stb r0, 0xa(r1)
/* 801BF820 001BC820  80 01 00 08 */	lwz r0, 8(r1)
/* 801BF824 001BC824  90 01 00 0C */	stw r0, 0xc(r1)
/* 801BF828 001BC828  48 0F 34 8D */	bl GXSetTevColor
/* 801BF82C 001BC82C  38 60 00 00 */	li r3, 0
/* 801BF830 001BC830  48 0F 06 59 */	bl GXSetCullMode
/* 801BF834 001BC834  3C 60 80 3A */	lis r3, lbl_8039D480@ha
/* 801BF838 001BC838  38 63 D4 80 */	addi r3, r3, lbl_8039D480@l
/* 801BF83C 001BC83C  48 01 1E 75 */	bl effSetVtxDescN64
/* 801BF840 001BC840  38 60 00 90 */	li r3, 0x90
/* 801BF844 001BC844  38 80 00 00 */	li r4, 0
/* 801BF848 001BC848  38 A0 00 06 */	li r5, 6
/* 801BF84C 001BC84C  48 0F 04 1D */	bl GXBegin
/* 801BF850 001BC850  38 60 00 00 */	li r3, 0
/* 801BF854 001BC854  38 80 00 01 */	li r4, 1
/* 801BF858 001BC858  38 A0 00 02 */	li r5, 2
/* 801BF85C 001BC85C  38 C0 00 00 */	li r6, 0
/* 801BF860 001BC860  38 E0 00 00 */	li r7, 0
/* 801BF864 001BC864  39 00 00 02 */	li r8, 2
/* 801BF868 001BC868  39 20 00 03 */	li r9, 3
/* 801BF86C 001BC86C  39 40 00 00 */	li r10, 0
/* 801BF870 001BC870  48 01 1D C5 */	bl tri2
/* 801BF874 001BC874  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 801BF878 001BC878  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 801BF87C 001BC87C  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 801BF880 001BC880  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 801BF884 001BC884  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 801BF888 001BC888  83 A1 00 C4 */	lwz r29, 0xc4(r1)
/* 801BF88C 001BC88C  7C 08 03 A6 */	mtlr r0
/* 801BF890 001BC890  38 21 00 E0 */	addi r1, r1, 0xe0
/* 801BF894 001BC894  4E 80 00 20 */	blr 
effHagetakaFlushMain:
/* 801BF898 001BC898  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801BF89C 001BC89C  7C 08 02 A6 */	mflr r0
/* 801BF8A0 001BC8A0  3C 80 80 30 */	lis r4, lbl_802FA748@ha
/* 801BF8A4 001BC8A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 801BF8A8 001BC8A8  38 A4 A7 48 */	addi r5, r4, lbl_802FA748@l
/* 801BF8AC 001BC8AC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801BF8B0 001BC8B0  7C 7F 1B 78 */	mr r31, r3
/* 801BF8B4 001BC8B4  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 801BF8B8 001BC8B8  80 85 00 00 */	lwz r4, 0(r5)
/* 801BF8BC 001BC8BC  80 65 00 04 */	lwz r3, 4(r5)
/* 801BF8C0 001BC8C0  80 05 00 08 */	lwz r0, 8(r5)
/* 801BF8C4 001BC8C4  90 81 00 08 */	stw r4, 8(r1)
/* 801BF8C8 001BC8C8  C0 06 00 04 */	lfs f0, 4(r6)
/* 801BF8CC 001BC8CC  90 61 00 0C */	stw r3, 0xc(r1)
/* 801BF8D0 001BC8D0  C0 26 00 08 */	lfs f1, 8(r6)
/* 801BF8D4 001BC8D4  D0 01 00 08 */	stfs f0, 8(r1)
/* 801BF8D8 001BC8D8  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 801BF8DC 001BC8DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 801BF8E0 001BC8E0  80 81 00 08 */	lwz r4, 8(r1)
/* 801BF8E4 001BC8E4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801BF8E8 001BC8E8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801BF8EC 001BC8EC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 801BF8F0 001BC8F0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801BF8F4 001BC8F4  90 81 00 14 */	stw r4, 0x14(r1)
/* 801BF8F8 001BC8F8  90 61 00 18 */	stw r3, 0x18(r1)
/* 801BF8FC 001BC8FC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801BF900 001BC900  80 7F 00 00 */	lwz r3, 0(r31)
/* 801BF904 001BC904  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 801BF908 001BC908  41 82 00 14 */	beq lbl_801BF91C
/* 801BF90C 001BC90C  54 63 07 B8 */	rlwinm r3, r3, 0, 0x1e, 0x1c
/* 801BF910 001BC910  38 00 00 0A */	li r0, 0xa
/* 801BF914 001BC914  90 7F 00 00 */	stw r3, 0(r31)
/* 801BF918 001BC918  90 06 00 10 */	stw r0, 0x10(r6)
lbl_801BF91C:
/* 801BF91C 001BC91C  80 66 00 10 */	lwz r3, 0x10(r6)
/* 801BF920 001BC920  2C 03 03 E8 */	cmpwi r3, 0x3e8
/* 801BF924 001BC924  40 80 00 0C */	bge lbl_801BF930
/* 801BF928 001BC928  38 03 FF FF */	addi r0, r3, -1
/* 801BF92C 001BC92C  90 06 00 10 */	stw r0, 0x10(r6)
lbl_801BF930:
/* 801BF930 001BC930  80 66 00 14 */	lwz r3, 0x14(r6)
/* 801BF934 001BC934  38 03 00 01 */	addi r0, r3, 1
/* 801BF938 001BC938  90 06 00 14 */	stw r0, 0x14(r6)
/* 801BF93C 001BC93C  80 06 00 10 */	lwz r0, 0x10(r6)
/* 801BF940 001BC940  2C 00 00 00 */	cmpwi r0, 0
/* 801BF944 001BC944  40 80 00 10 */	bge lbl_801BF954
/* 801BF948 001BC948  7F E3 FB 78 */	mr r3, r31
/* 801BF94C 001BC94C  4B E9 E2 39 */	bl effDelete
/* 801BF950 001BC950  48 00 00 74 */	b lbl_801BF9C4
lbl_801BF954:
/* 801BF954 001BC954  2C 00 00 04 */	cmpwi r0, 4
/* 801BF958 001BC958  80 06 00 14 */	lwz r0, 0x14(r6)
/* 801BF95C 001BC95C  40 80 00 18 */	bge lbl_801BF974
/* 801BF960 001BC960  C0 26 00 2C */	lfs f1, 0x2c(r6)
/* 801BF964 001BC964  C0 02 DD 54 */	lfs f0, lbl_8041F0D4-_SDA2_BASE_(r2)
/* 801BF968 001BC968  EC 01 00 32 */	fmuls f0, f1, f0
/* 801BF96C 001BC96C  D0 06 00 2C */	stfs f0, 0x2c(r6)
/* 801BF970 001BC970  48 00 00 34 */	b lbl_801BF9A4
lbl_801BF974:
/* 801BF974 001BC974  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 801BF978 001BC978  3C 00 43 30 */	lis r0, 0x4330
/* 801BF97C 001BC97C  90 61 00 24 */	stw r3, 0x24(r1)
/* 801BF980 001BC980  3C 80 80 30 */	lis r4, lbl_802FA758@ha
/* 801BF984 001BC984  C8 44 A7 58 */	lfd f2, lbl_802FA758@l(r4)
/* 801BF988 001BC988  90 01 00 20 */	stw r0, 0x20(r1)
/* 801BF98C 001BC98C  C0 62 DD 5C */	lfs f3, lbl_8041F0DC-_SDA2_BASE_(r2)
/* 801BF990 001BC990  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 801BF994 001BC994  C0 02 DD 58 */	lfs f0, lbl_8041F0D8-_SDA2_BASE_(r2)
/* 801BF998 001BC998  EC 21 10 28 */	fsubs f1, f1, f2
/* 801BF99C 001BC99C  EC 03 00 7A */	fmadds f0, f3, f1, f0
/* 801BF9A0 001BC9A0  D0 06 00 2C */	stfs f0, 0x2c(r6)
lbl_801BF9A4:
/* 801BF9A4 001BC9A4  38 61 00 14 */	addi r3, r1, 0x14
/* 801BF9A8 001BC9A8  4B E5 0D 19 */	bl dispCalcZ
/* 801BF9AC 001BC9AC  3C 60 80 1C */	lis r3, effHagetakaFlushDisp@ha
/* 801BF9B0 001BC9B0  7F E6 FB 78 */	mr r6, r31
/* 801BF9B4 001BC9B4  38 A3 F6 08 */	addi r5, r3, effHagetakaFlushDisp@l
/* 801BF9B8 001BC9B8  38 80 00 02 */	li r4, 2
/* 801BF9BC 001BC9BC  38 60 00 04 */	li r3, 4
/* 801BF9C0 001BC9C0  4B E5 10 59 */	bl dispEntry
lbl_801BF9C4:
/* 801BF9C4 001BC9C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801BF9C8 001BC9C8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801BF9CC 001BC9CC  7C 08 03 A6 */	mtlr r0
/* 801BF9D0 001BC9D0  38 21 00 30 */	addi r1, r1, 0x30
/* 801BF9D4 001BC9D4  4E 80 00 20 */	blr 

.global effHagetakaFlushN64Entry
effHagetakaFlushN64Entry:
/* 801BF9D8 001BC9D8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801BF9DC 001BC9DC  7C 08 02 A6 */	mflr r0
/* 801BF9E0 001BC9E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 801BF9E4 001BC9E4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801BF9E8 001BC9E8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 801BF9EC 001BC9EC  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 801BF9F0 001BC9F0  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 801BF9F4 001BC9F4  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 801BF9F8 001BC9F8  F3 A1 00 28 */	psq_st f29, 40(r1), 0, qr0
/* 801BF9FC 001BC9FC  DB 81 00 10 */	stfd f28, 0x10(r1)
/* 801BFA00 001BCA00  F3 81 00 18 */	psq_st f28, 24(r1), 0, qr0
/* 801BFA04 001BCA04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801BFA08 001BCA08  93 C1 00 08 */	stw r30, 8(r1)
/* 801BFA0C 001BCA0C  FF 80 08 90 */	fmr f28, f1
/* 801BFA10 001BCA10  7C 7E 1B 78 */	mr r30, r3
/* 801BFA14 001BCA14  FF A0 10 90 */	fmr f29, f2
/* 801BFA18 001BCA18  FF C0 18 90 */	fmr f30, f3
/* 801BFA1C 001BCA1C  FF E0 20 90 */	fmr f31, f4
/* 801BFA20 001BCA20  4B E9 E3 9D */	bl effEntry
/* 801BFA24 001BCA24  3C 80 80 30 */	lis r4, lbl_802FA760@ha
/* 801BFA28 001BCA28  7C 7F 1B 78 */	mr r31, r3
/* 801BFA2C 001BCA2C  38 84 A7 60 */	addi r4, r4, lbl_802FA760@l
/* 801BFA30 001BCA30  38 00 00 01 */	li r0, 1
/* 801BFA34 001BCA34  90 9F 00 14 */	stw r4, 0x14(r31)
/* 801BFA38 001BCA38  38 60 00 03 */	li r3, 3
/* 801BFA3C 001BCA3C  38 80 00 30 */	li r4, 0x30
/* 801BFA40 001BCA40  90 1F 00 08 */	stw r0, 8(r31)
/* 801BFA44 001BCA44  4B E7 00 49 */	bl __memAlloc
/* 801BFA48 001BCA48  3C 80 80 1C */	lis r4, effHagetakaFlushMain@ha
/* 801BFA4C 001BCA4C  90 7F 00 0C */	stw r3, 0xc(r31)
/* 801BFA50 001BCA50  38 04 F8 98 */	addi r0, r4, effHagetakaFlushMain@l
/* 801BFA54 001BCA54  39 00 00 00 */	li r8, 0
/* 801BFA58 001BCA58  90 1F 00 10 */	stw r0, 0x10(r31)
/* 801BFA5C 001BCA5C  38 E0 00 0A */	li r7, 0xa
/* 801BFA60 001BCA60  38 C0 00 FF */	li r6, 0xff
/* 801BFA64 001BCA64  38 A0 00 46 */	li r5, 0x46
/* 801BFA68 001BCA68  81 3F 00 00 */	lwz r9, 0(r31)
/* 801BFA6C 001BCA6C  38 80 00 B4 */	li r4, 0xb4
/* 801BFA70 001BCA70  38 00 00 78 */	li r0, 0x78
/* 801BFA74 001BCA74  C0 02 DD 50 */	lfs f0, lbl_8041F0D0-_SDA2_BASE_(r2)
/* 801BFA78 001BCA78  61 29 00 02 */	ori r9, r9, 2
/* 801BFA7C 001BCA7C  91 3F 00 00 */	stw r9, 0(r31)
/* 801BFA80 001BCA80  93 C3 00 00 */	stw r30, 0(r3)
/* 801BFA84 001BCA84  91 03 00 14 */	stw r8, 0x14(r3)
/* 801BFA88 001BCA88  90 E3 00 10 */	stw r7, 0x10(r3)
/* 801BFA8C 001BCA8C  90 C3 00 24 */	stw r6, 0x24(r3)
/* 801BFA90 001BCA90  D3 83 00 04 */	stfs f28, 4(r3)
/* 801BFA94 001BCA94  D3 A3 00 08 */	stfs f29, 8(r3)
/* 801BFA98 001BCA98  D3 C3 00 0C */	stfs f30, 0xc(r3)
/* 801BFA9C 001BCA9C  D3 E3 00 28 */	stfs f31, 0x28(r3)
/* 801BFAA0 001BCAA0  90 A3 00 18 */	stw r5, 0x18(r3)
/* 801BFAA4 001BCAA4  90 83 00 1C */	stw r4, 0x1c(r3)
/* 801BFAA8 001BCAA8  90 03 00 20 */	stw r0, 0x20(r3)
/* 801BFAAC 001BCAAC  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 801BFAB0 001BCAB0  7F E3 FB 78 */	mr r3, r31
/* 801BFAB4 001BCAB4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 801BFAB8 001BCAB8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801BFABC 001BCABC  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 801BFAC0 001BCAC0  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 801BFAC4 001BCAC4  E3 A1 00 28 */	psq_l f29, 40(r1), 0, qr0
/* 801BFAC8 001BCAC8  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 801BFACC 001BCACC  E3 81 00 18 */	psq_l f28, 24(r1), 0, qr0
/* 801BFAD0 001BCAD0  CB 81 00 10 */	lfd f28, 0x10(r1)
/* 801BFAD4 001BCAD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801BFAD8 001BCAD8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801BFADC 001BCADC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801BFAE0 001BCAE0  7C 08 03 A6 */	mtlr r0
/* 801BFAE4 001BCAE4  38 21 00 50 */	addi r1, r1, 0x50
/* 801BFAE8 001BCAE8  4E 80 00 20 */	blr 
