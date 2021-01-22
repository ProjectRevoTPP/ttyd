.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

.global effOpukuWcurtainDisp
effOpukuWcurtainDisp:
/* 801D36C0 001D06C0  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 801D36C4 001D06C4  7C 08 02 A6 */	mflr r0
/* 801D36C8 001D06C8  90 01 01 14 */	stw r0, 0x114(r1)
/* 801D36CC 001D06CC  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 801D36D0 001D06D0  F3 E1 01 08 */	psq_st f31, 264(r1), 0, qr0
/* 801D36D4 001D06D4  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 801D36D8 001D06D8  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, qr0
/* 801D36DC 001D06DC  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 801D36E0 001D06E0  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, qr0
/* 801D36E4 001D06E4  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 801D36E8 001D06E8  F3 81 00 D8 */	psq_st f28, 216(r1), 0, qr0
/* 801D36EC 001D06EC  BF 41 00 B8 */	stmw r26, 0xb8(r1)
/* 801D36F0 001D06F0  7C 9A 23 78 */	mr r26, r4
/* 801D36F4 001D06F4  4B E3 BA 5D */	bl camGetPtr
/* 801D36F8 001D06F8  83 DA 00 0C */	lwz r30, 0xc(r26)
/* 801D36FC 001D06FC  7C 7F 1B 78 */	mr r31, r3
/* 801D3700 001D0700  80 02 1E 60 */	lwz r0, lbl_804231E0-_SDA2_BASE_(r2)
/* 801D3704 001D0704  38 81 00 18 */	addi r4, r1, 0x18
/* 801D3708 001D0708  80 FE 00 18 */	lwz r7, 0x18(r30)
/* 801D370C 001D070C  38 60 00 01 */	li r3, 1
/* 801D3710 001D0710  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D3714 001D0714  80 DE 00 1C */	lwz r6, 0x1c(r30)
/* 801D3718 001D0718  80 BE 00 20 */	lwz r5, 0x20(r30)
/* 801D371C 001D071C  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 801D3720 001D0720  98 E1 00 14 */	stb r7, 0x14(r1)
/* 801D3724 001D0724  C0 22 E4 98 */	lfs f1, lbl_8041F818-_SDA2_BASE_(r2)
/* 801D3728 001D0728  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 801D372C 001D072C  98 C1 00 15 */	stb r6, 0x15(r1)
/* 801D3730 001D0730  83 5E 00 14 */	lwz r26, 0x14(r30)
/* 801D3734 001D0734  EF 81 00 32 */	fmuls f28, f1, f0
/* 801D3738 001D0738  98 A1 00 16 */	stb r5, 0x16(r1)
/* 801D373C 001D073C  98 01 00 17 */	stb r0, 0x17(r1)
/* 801D3740 001D0740  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D3744 001D0744  90 01 00 18 */	stw r0, 0x18(r1)
/* 801D3748 001D0748  48 0D F5 6D */	bl GXSetTevColor
/* 801D374C 001D074C  38 60 00 01 */	li r3, 1
/* 801D3750 001D0750  48 0D D9 E9 */	bl GXSetNumChans
/* 801D3754 001D0754  38 60 00 04 */	li r3, 4
/* 801D3758 001D0758  38 80 00 00 */	li r4, 0
/* 801D375C 001D075C  38 A0 00 00 */	li r5, 0
/* 801D3760 001D0760  38 C0 00 01 */	li r6, 1
/* 801D3764 001D0764  38 E0 00 00 */	li r7, 0
/* 801D3768 001D0768  39 00 00 00 */	li r8, 0
/* 801D376C 001D076C  39 20 00 02 */	li r9, 2
/* 801D3770 001D0770  48 0D DA 05 */	bl GXSetChanCtrl
/* 801D3774 001D0774  38 60 00 01 */	li r3, 1
/* 801D3778 001D0778  48 0D FA 51 */	bl GXSetNumTevStages
/* 801D377C 001D077C  38 60 00 00 */	li r3, 0
/* 801D3780 001D0780  38 80 00 00 */	li r4, 0
/* 801D3784 001D0784  38 A0 00 00 */	li r5, 0
/* 801D3788 001D0788  38 C0 00 04 */	li r6, 4
/* 801D378C 001D078C  48 0D F8 A1 */	bl GXSetTevOrder
/* 801D3790 001D0790  38 60 00 00 */	li r3, 0
/* 801D3794 001D0794  38 80 00 00 */	li r4, 0
/* 801D3798 001D0798  38 A0 00 00 */	li r5, 0
/* 801D379C 001D079C  38 C0 00 00 */	li r6, 0
/* 801D37A0 001D07A0  38 E0 00 01 */	li r7, 1
/* 801D37A4 001D07A4  39 00 00 00 */	li r8, 0
/* 801D37A8 001D07A8  48 0D F4 3D */	bl GXSetTevColorOp
/* 801D37AC 001D07AC  38 60 00 00 */	li r3, 0
/* 801D37B0 001D07B0  38 80 00 00 */	li r4, 0
/* 801D37B4 001D07B4  38 A0 00 00 */	li r5, 0
/* 801D37B8 001D07B8  38 C0 00 00 */	li r6, 0
/* 801D37BC 001D07BC  38 E0 00 01 */	li r7, 1
/* 801D37C0 001D07C0  39 00 00 00 */	li r8, 0
/* 801D37C4 001D07C4  48 0D F4 89 */	bl GXSetTevAlphaOp
/* 801D37C8 001D07C8  38 60 00 00 */	li r3, 0
/* 801D37CC 001D07CC  38 80 00 02 */	li r4, 2
/* 801D37D0 001D07D0  38 A0 00 0C */	li r5, 0xc
/* 801D37D4 001D07D4  38 C0 00 08 */	li r6, 8
/* 801D37D8 001D07D8  38 E0 00 0F */	li r7, 0xf
/* 801D37DC 001D07DC  48 0D F3 81 */	bl GXSetTevColorIn
/* 801D37E0 001D07E0  38 60 00 00 */	li r3, 0
/* 801D37E4 001D07E4  38 80 00 07 */	li r4, 7
/* 801D37E8 001D07E8  38 A0 00 04 */	li r5, 4
/* 801D37EC 001D07EC  38 C0 00 05 */	li r6, 5
/* 801D37F0 001D07F0  38 E0 00 07 */	li r7, 7
/* 801D37F4 001D07F4  48 0D F3 AD */	bl GXSetTevAlphaIn
/* 801D37F8 001D07F8  38 81 00 28 */	addi r4, r1, 0x28
/* 801D37FC 001D07FC  38 60 00 8F */	li r3, 0x8f
/* 801D3800 001D0800  4B FF E0 45 */	bl effGetTexObjN64
/* 801D3804 001D0804  38 61 00 28 */	addi r3, r1, 0x28
/* 801D3808 001D0808  38 80 00 00 */	li r4, 0
/* 801D380C 001D080C  48 0D E2 71 */	bl GXLoadTexObj
/* 801D3810 001D0810  38 60 00 01 */	li r3, 1
/* 801D3814 001D0814  48 0D BA 6D */	bl GXSetNumTexGens
/* 801D3818 001D0818  38 60 00 00 */	li r3, 0
/* 801D381C 001D081C  38 80 00 01 */	li r4, 1
/* 801D3820 001D0820  38 A0 00 04 */	li r5, 4
/* 801D3824 001D0824  38 C0 00 1E */	li r6, 0x1e
/* 801D3828 001D0828  38 E0 00 00 */	li r7, 0
/* 801D382C 001D082C  39 00 00 7D */	li r8, 0x7d
/* 801D3830 001D0830  48 0D B7 D1 */	bl GXSetTexCoordGen2
/* 801D3834 001D0834  C0 22 E4 9C */	lfs f1, lbl_8041F81C-_SDA2_BASE_(r2)
/* 801D3838 001D0838  38 61 00 48 */	addi r3, r1, 0x48
/* 801D383C 001D083C  C0 62 E4 A0 */	lfs f3, lbl_8041F820-_SDA2_BASE_(r2)
/* 801D3840 001D0840  FC 40 08 90 */	fmr f2, f1
/* 801D3844 001D0844  48 0C 4C 69 */	bl PSMTXScale
/* 801D3848 001D0848  38 61 00 48 */	addi r3, r1, 0x48
/* 801D384C 001D084C  38 80 00 1E */	li r4, 0x1e
/* 801D3850 001D0850  38 A0 00 01 */	li r5, 1
/* 801D3854 001D0854  48 0E 0D 79 */	bl GXLoadTexMtxImm
/* 801D3858 001D0858  38 60 00 00 */	li r3, 0
/* 801D385C 001D085C  48 0D C6 2D */	bl GXSetCullMode
/* 801D3860 001D0860  38 60 02 A0 */	li r3, 0x2a0
/* 801D3864 001D0864  38 80 00 03 */	li r4, 3
/* 801D3868 001D0868  4B E5 B6 B5 */	bl smartAlloc
/* 801D386C 001D086C  81 83 00 00 */	lwz r12, 0(r3)
/* 801D3870 001D0870  38 00 00 0C */	li r0, 0xc
/* 801D3874 001D0874  7F C9 F3 78 */	mr r9, r30
/* 801D3878 001D0878  57 44 28 34 */	slwi r4, r26, 5
/* 801D387C 001D087C  7D 9C 63 78 */	mr r28, r12
/* 801D3880 001D0880  C0 42 E4 A4 */	lfs f2, lbl_8041F824-_SDA2_BASE_(r2)
/* 801D3884 001D0884  C0 22 E4 A8 */	lfs f1, lbl_8041F828-_SDA2_BASE_(r2)
/* 801D3888 001D0888  3B A0 00 00 */	li r29, 0
/* 801D388C 001D088C  38 A0 FE D4 */	li r5, -300
/* 801D3890 001D0890  39 40 00 00 */	li r10, 0
/* 801D3894 001D0894  7C 09 03 A6 */	mtctr r0
lbl_801D3898:
/* 801D3898 001D0898  B0 AC 00 00 */	sth r5, 0(r12)
/* 801D389C 001D089C  38 00 02 58 */	li r0, 0x258
/* 801D38A0 001D08A0  21 6A 00 FF */	subfic r11, r10, 0xff
/* 801D38A4 001D08A4  39 00 00 00 */	li r8, 0
/* 801D38A8 001D08A8  B0 0C 00 02 */	sth r0, 2(r12)
/* 801D38AC 001D08AC  38 E0 00 FF */	li r7, 0xff
/* 801D38B0 001D08B0  38 00 04 00 */	li r0, 0x400
/* 801D38B4 001D08B4  39 4A 00 14 */	addi r10, r10, 0x14
/* 801D38B8 001D08B8  B1 0C 00 04 */	sth r8, 4(r12)
/* 801D38BC 001D08BC  3B BD 00 01 */	addi r29, r29, 1
/* 801D38C0 001D08C0  B0 8C 00 06 */	sth r4, 6(r12)
/* 801D38C4 001D08C4  C0 09 00 2C */	lfs f0, 0x2c(r9)
/* 801D38C8 001D08C8  FC 00 00 1E */	fctiwz f0, f0
/* 801D38CC 001D08CC  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 801D38D0 001D08D0  80 C1 00 AC */	lwz r6, 0xac(r1)
/* 801D38D4 001D08D4  54 C6 28 34 */	slwi r6, r6, 5
/* 801D38D8 001D08D8  B0 CC 00 08 */	sth r6, 8(r12)
/* 801D38DC 001D08DC  98 EC 00 0A */	stb r7, 0xa(r12)
/* 801D38E0 001D08E0  98 EC 00 0B */	stb r7, 0xb(r12)
/* 801D38E4 001D08E4  98 EC 00 0C */	stb r7, 0xc(r12)
/* 801D38E8 001D08E8  99 6C 00 0D */	stb r11, 0xd(r12)
/* 801D38EC 001D08EC  B0 AC 00 0E */	sth r5, 0xe(r12)
/* 801D38F0 001D08F0  38 A5 00 32 */	addi r5, r5, 0x32
/* 801D38F4 001D08F4  C0 09 00 2C */	lfs f0, 0x2c(r9)
/* 801D38F8 001D08F8  39 29 00 04 */	addi r9, r9, 4
/* 801D38FC 001D08FC  EC 01 00 2A */	fadds f0, f1, f0
/* 801D3900 001D0900  EC 02 00 32 */	fmuls f0, f2, f0
/* 801D3904 001D0904  FC 00 00 1E */	fctiwz f0, f0
/* 801D3908 001D0908  D8 01 00 B0 */	stfd f0, 0xb0(r1)
/* 801D390C 001D090C  80 C1 00 B4 */	lwz r6, 0xb4(r1)
/* 801D3910 001D0910  B0 CC 00 10 */	sth r6, 0x10(r12)
/* 801D3914 001D0914  B1 0C 00 12 */	sth r8, 0x12(r12)
/* 801D3918 001D0918  B0 8C 00 14 */	sth r4, 0x14(r12)
/* 801D391C 001D091C  38 84 00 80 */	addi r4, r4, 0x80
/* 801D3920 001D0920  B0 0C 00 16 */	sth r0, 0x16(r12)
/* 801D3924 001D0924  98 EC 00 18 */	stb r7, 0x18(r12)
/* 801D3928 001D0928  98 EC 00 19 */	stb r7, 0x19(r12)
/* 801D392C 001D092C  98 EC 00 1A */	stb r7, 0x1a(r12)
/* 801D3930 001D0930  99 6C 00 1B */	stb r11, 0x1b(r12)
/* 801D3934 001D0934  39 8C 00 1C */	addi r12, r12, 0x1c
/* 801D3938 001D0938  42 00 FF 60 */	bdnz lbl_801D3898
/* 801D393C 001D093C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 801D3940 001D0940  38 61 00 78 */	addi r3, r1, 0x78
/* 801D3944 001D0944  C0 5E 00 08 */	lfs f2, 8(r30)
/* 801D3948 001D0948  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 801D394C 001D094C  48 0C 4A E1 */	bl PSMTXTrans
/* 801D3950 001D0950  FC 20 E0 90 */	fmr f1, f28
/* 801D3954 001D0954  38 61 00 48 */	addi r3, r1, 0x48
/* 801D3958 001D0958  FC 40 E0 90 */	fmr f2, f28
/* 801D395C 001D095C  FC 60 E0 90 */	fmr f3, f28
/* 801D3960 001D0960  48 0C 4B 4D */	bl PSMTXScale
/* 801D3964 001D0964  38 61 00 78 */	addi r3, r1, 0x78
/* 801D3968 001D0968  38 81 00 48 */	addi r4, r1, 0x48
/* 801D396C 001D096C  7C 65 1B 78 */	mr r5, r3
/* 801D3970 001D0970  48 0C 45 F1 */	bl PSMTXConcat
/* 801D3974 001D0974  7F 9E E3 78 */	mr r30, r28
/* 801D3978 001D0978  57 BB 08 3C */	slwi r27, r29, 1
/* 801D397C 001D097C  3B 40 00 00 */	li r26, 0
/* 801D3980 001D0980  48 00 00 C4 */	b lbl_801D3A44
lbl_801D3984:
/* 801D3984 001D0984  38 60 00 04 */	li r3, 4
/* 801D3988 001D0988  64 63 00 04 */	oris r3, r3, 4
/* 801D398C 001D098C  7C 72 E3 A6 */	mtspr 0x392, r3
/* 801D3990 001D0990  38 60 00 05 */	li r3, 5
/* 801D3994 001D0994  64 63 00 05 */	oris r3, r3, 5
/* 801D3998 001D0998  7C 73 E3 A6 */	mtspr 0x393, r3
/* 801D399C 001D099C  38 60 00 06 */	li r3, 6
/* 801D39A0 001D09A0  64 63 00 06 */	oris r3, r3, 6
/* 801D39A4 001D09A4  7C 74 E3 A6 */	mtspr 0x394, r3
/* 801D39A8 001D09A8  38 60 00 07 */	li r3, 7
/* 801D39AC 001D09AC  64 63 00 07 */	oris r3, r3, 7
/* 801D39B0 001D09B0  7C 75 E3 A6 */	mtspr 0x395, r3
/* 801D39B4 001D09B4  E0 1E D0 00 */	psq_l f0, 0(r30), 1, qr5
/* 801D39B8 001D09B8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801D39BC 001D09BC  E0 1E D0 02 */	psq_l f0, 2(r30), 1, qr5
/* 801D39C0 001D09C0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801D39C4 001D09C4  E0 1E D0 04 */	psq_l f0, 4(r30), 1, qr5
/* 801D39C8 001D09C8  38 81 00 1C */	addi r4, r1, 0x1c
/* 801D39CC 001D09CC  7C 85 23 78 */	mr r5, r4
/* 801D39D0 001D09D0  38 61 00 78 */	addi r3, r1, 0x78
/* 801D39D4 001D09D4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801D39D8 001D09D8  48 0C 4E C9 */	bl PSMTXMultVec
/* 801D39DC 001D09DC  38 60 00 04 */	li r3, 4
/* 801D39E0 001D09E0  64 63 00 04 */	oris r3, r3, 4
/* 801D39E4 001D09E4  7C 72 E3 A6 */	mtspr 0x392, r3
/* 801D39E8 001D09E8  38 60 00 05 */	li r3, 5
/* 801D39EC 001D09EC  64 63 00 05 */	oris r3, r3, 5
/* 801D39F0 001D09F0  7C 73 E3 A6 */	mtspr 0x393, r3
/* 801D39F4 001D09F4  38 60 00 06 */	li r3, 6
/* 801D39F8 001D09F8  64 63 00 06 */	oris r3, r3, 6
/* 801D39FC 001D09FC  7C 74 E3 A6 */	mtspr 0x394, r3
/* 801D3A00 001D0A00  38 60 00 07 */	li r3, 7
/* 801D3A04 001D0A04  64 63 00 07 */	oris r3, r3, 7
/* 801D3A08 001D0A08  7C 75 E3 A6 */	mtspr 0x395, r3
/* 801D3A0C 001D0A0C  C3 E1 00 1C */	lfs f31, 0x1c(r1)
/* 801D3A10 001D0A10  F3 E1 D0 10 */	psq_st f31, 16(r1), 1, qr5
/* 801D3A14 001D0A14  A8 01 00 10 */	lha r0, 0x10(r1)
/* 801D3A18 001D0A18  B0 1E 00 00 */	sth r0, 0(r30)
/* 801D3A1C 001D0A1C  C3 C1 00 20 */	lfs f30, 0x20(r1)
/* 801D3A20 001D0A20  F3 C1 D0 0C */	psq_st f30, 12(r1), 1, qr5
/* 801D3A24 001D0A24  A8 01 00 0C */	lha r0, 0xc(r1)
/* 801D3A28 001D0A28  B0 1E 00 02 */	sth r0, 2(r30)
/* 801D3A2C 001D0A2C  C3 A1 00 24 */	lfs f29, 0x24(r1)
/* 801D3A30 001D0A30  F3 A1 D0 08 */	psq_st f29, 8(r1), 1, qr5
/* 801D3A34 001D0A34  3B 5A 00 01 */	addi r26, r26, 1
/* 801D3A38 001D0A38  A8 01 00 08 */	lha r0, 8(r1)
/* 801D3A3C 001D0A3C  B0 1E 00 04 */	sth r0, 4(r30)
/* 801D3A40 001D0A40  3B DE 00 0E */	addi r30, r30, 0xe
lbl_801D3A44:
/* 801D3A44 001D0A44  7C 1A D8 00 */	cmpw r26, r27
/* 801D3A48 001D0A48  41 80 FF 3C */	blt lbl_801D3984
/* 801D3A4C 001D0A4C  7F 83 E3 78 */	mr r3, r28
/* 801D3A50 001D0A50  38 80 02 A0 */	li r4, 0x2a0
/* 801D3A54 001D0A54  48 0B CF E9 */	bl DCFlushRange
/* 801D3A58 001D0A58  48 0D B5 99 */	bl GXInvalidateVtxCache
/* 801D3A5C 001D0A5C  7F 83 E3 78 */	mr r3, r28
/* 801D3A60 001D0A60  4B FF DC 51 */	bl effSetVtxDescN64
/* 801D3A64 001D0A64  38 7F 01 1C */	addi r3, r31, 0x11c
/* 801D3A68 001D0A68  38 80 00 00 */	li r4, 0
/* 801D3A6C 001D0A6C  48 0E 0A 8D */	bl GXLoadPosMtxImm
/* 801D3A70 001D0A70  38 60 00 00 */	li r3, 0
/* 801D3A74 001D0A74  48 0E 0B 25 */	bl GXSetCurrentMtx
/* 801D3A78 001D0A78  3B C0 00 00 */	li r30, 0
/* 801D3A7C 001D0A7C  3B 9D FF FF */	addi r28, r29, -1
/* 801D3A80 001D0A80  7F DB F3 78 */	mr r27, r30
/* 801D3A84 001D0A84  48 00 00 40 */	b lbl_801D3AC4
lbl_801D3A88:
/* 801D3A88 001D0A88  38 60 00 90 */	li r3, 0x90
/* 801D3A8C 001D0A8C  38 80 00 00 */	li r4, 0
/* 801D3A90 001D0A90  38 A0 00 06 */	li r5, 6
/* 801D3A94 001D0A94  48 0D C1 D5 */	bl GXBegin
/* 801D3A98 001D0A98  38 9B 00 02 */	addi r4, r27, 2
/* 801D3A9C 001D0A9C  38 BB 00 01 */	addi r5, r27, 1
/* 801D3AA0 001D0AA0  7F 63 DB 78 */	mr r3, r27
/* 801D3AA4 001D0AA4  7F 66 DB 78 */	mr r6, r27
/* 801D3AA8 001D0AA8  7C A7 2B 78 */	mr r7, r5
/* 801D3AAC 001D0AAC  7C 88 23 78 */	mr r8, r4
/* 801D3AB0 001D0AB0  7F 6A DB 78 */	mr r10, r27
/* 801D3AB4 001D0AB4  39 3B 00 03 */	addi r9, r27, 3
/* 801D3AB8 001D0AB8  4B FF DB 7D */	bl tri2
/* 801D3ABC 001D0ABC  3B 7B 00 02 */	addi r27, r27, 2
/* 801D3AC0 001D0AC0  3B DE 00 01 */	addi r30, r30, 1
lbl_801D3AC4:
/* 801D3AC4 001D0AC4  7C 1E E0 00 */	cmpw r30, r28
/* 801D3AC8 001D0AC8  41 80 FF C0 */	blt lbl_801D3A88
/* 801D3ACC 001D0ACC  E3 E1 01 08 */	psq_l f31, 264(r1), 0, qr0
/* 801D3AD0 001D0AD0  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 801D3AD4 001D0AD4  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, qr0
/* 801D3AD8 001D0AD8  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 801D3ADC 001D0ADC  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, qr0
/* 801D3AE0 001D0AE0  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 801D3AE4 001D0AE4  E3 81 00 D8 */	psq_l f28, 216(r1), 0, qr0
/* 801D3AE8 001D0AE8  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 801D3AEC 001D0AEC  BB 41 00 B8 */	lmw r26, 0xb8(r1)
/* 801D3AF0 001D0AF0  80 01 01 14 */	lwz r0, 0x114(r1)
/* 801D3AF4 001D0AF4  7C 08 03 A6 */	mtlr r0
/* 801D3AF8 001D0AF8  38 21 01 10 */	addi r1, r1, 0x110
/* 801D3AFC 001D0AFC  4E 80 00 20 */	blr 
effOpukuWcurtainMain:
/* 801D3B00 001D0B00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D3B04 001D0B04  7C 08 02 A6 */	mflr r0
/* 801D3B08 001D0B08  3C 80 80 30 */	lis r4, lbl_802FB298@ha
/* 801D3B0C 001D0B0C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D3B10 001D0B10  38 A4 B2 98 */	addi r5, r4, lbl_802FB298@l
/* 801D3B14 001D0B14  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801D3B18 001D0B18  7C 7F 1B 78 */	mr r31, r3
/* 801D3B1C 001D0B1C  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 801D3B20 001D0B20  80 85 00 00 */	lwz r4, 0(r5)
/* 801D3B24 001D0B24  80 65 00 04 */	lwz r3, 4(r5)
/* 801D3B28 001D0B28  80 05 00 08 */	lwz r0, 8(r5)
/* 801D3B2C 001D0B2C  90 81 00 08 */	stw r4, 8(r1)
/* 801D3B30 001D0B30  C0 06 00 04 */	lfs f0, 4(r6)
/* 801D3B34 001D0B34  90 61 00 0C */	stw r3, 0xc(r1)
/* 801D3B38 001D0B38  C0 26 00 08 */	lfs f1, 8(r6)
/* 801D3B3C 001D0B3C  D0 01 00 08 */	stfs f0, 8(r1)
/* 801D3B40 001D0B40  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 801D3B44 001D0B44  90 01 00 10 */	stw r0, 0x10(r1)
/* 801D3B48 001D0B48  80 81 00 08 */	lwz r4, 8(r1)
/* 801D3B4C 001D0B4C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801D3B50 001D0B50  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801D3B54 001D0B54  80 61 00 0C */	lwz r3, 0xc(r1)
/* 801D3B58 001D0B58  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801D3B5C 001D0B5C  90 81 00 14 */	stw r4, 0x14(r1)
/* 801D3B60 001D0B60  90 61 00 18 */	stw r3, 0x18(r1)
/* 801D3B64 001D0B64  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801D3B68 001D0B68  80 7F 00 00 */	lwz r3, 0(r31)
/* 801D3B6C 001D0B6C  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 801D3B70 001D0B70  41 82 00 14 */	beq lbl_801D3B84
/* 801D3B74 001D0B74  54 63 07 B8 */	rlwinm r3, r3, 0, 0x1e, 0x1c
/* 801D3B78 001D0B78  38 00 00 10 */	li r0, 0x10
/* 801D3B7C 001D0B7C  90 7F 00 00 */	stw r3, 0(r31)
/* 801D3B80 001D0B80  90 06 00 10 */	stw r0, 0x10(r6)
lbl_801D3B84:
/* 801D3B84 001D0B84  80 66 00 10 */	lwz r3, 0x10(r6)
/* 801D3B88 001D0B88  2C 03 03 E8 */	cmpwi r3, 0x3e8
/* 801D3B8C 001D0B8C  40 80 00 0C */	bge lbl_801D3B98
/* 801D3B90 001D0B90  38 03 FF FF */	addi r0, r3, -1
/* 801D3B94 001D0B94  90 06 00 10 */	stw r0, 0x10(r6)
lbl_801D3B98:
/* 801D3B98 001D0B98  80 66 00 14 */	lwz r3, 0x14(r6)
/* 801D3B9C 001D0B9C  38 03 00 01 */	addi r0, r3, 1
/* 801D3BA0 001D0BA0  90 06 00 14 */	stw r0, 0x14(r6)
/* 801D3BA4 001D0BA4  80 06 00 10 */	lwz r0, 0x10(r6)
/* 801D3BA8 001D0BA8  2C 00 00 00 */	cmpwi r0, 0
/* 801D3BAC 001D0BAC  40 80 00 10 */	bge lbl_801D3BBC
/* 801D3BB0 001D0BB0  7F E3 FB 78 */	mr r3, r31
/* 801D3BB4 001D0BB4  4B E8 9F D1 */	bl effDelete
/* 801D3BB8 001D0BB8  48 00 01 44 */	b lbl_801D3CFC
lbl_801D3BBC:
/* 801D3BBC 001D0BBC  2C 00 00 10 */	cmpwi r0, 0x10
/* 801D3BC0 001D0BC0  80 66 00 14 */	lwz r3, 0x14(r6)
/* 801D3BC4 001D0BC4  40 80 00 0C */	bge lbl_801D3BD0
/* 801D3BC8 001D0BC8  54 00 20 36 */	slwi r0, r0, 4
/* 801D3BCC 001D0BCC  90 06 00 24 */	stw r0, 0x24(r6)
lbl_801D3BD0:
/* 801D3BD0 001D0BD0  2C 03 00 10 */	cmpwi r3, 0x10
/* 801D3BD4 001D0BD4  40 80 00 10 */	bge lbl_801D3BE4
/* 801D3BD8 001D0BD8  54 63 20 36 */	slwi r3, r3, 4
/* 801D3BDC 001D0BDC  38 03 00 0F */	addi r0, r3, 0xf
/* 801D3BE0 001D0BE0  90 06 00 24 */	stw r0, 0x24(r6)
lbl_801D3BE4:
/* 801D3BE4 001D0BE4  38 00 00 03 */	li r0, 3
/* 801D3BE8 001D0BE8  7C C3 33 78 */	mr r3, r6
/* 801D3BEC 001D0BEC  C0 62 E4 AC */	lfs f3, lbl_8041F82C-_SDA2_BASE_(r2)
/* 801D3BF0 001D0BF0  38 80 00 00 */	li r4, 0
/* 801D3BF4 001D0BF4  C0 42 E4 B0 */	lfs f2, lbl_8041F830-_SDA2_BASE_(r2)
/* 801D3BF8 001D0BF8  C0 22 E4 98 */	lfs f1, lbl_8041F818-_SDA2_BASE_(r2)
/* 801D3BFC 001D0BFC  7C 09 03 A6 */	mtctr r0
lbl_801D3C00:
/* 801D3C00 001D0C00  C0 83 00 2C */	lfs f4, 0x2c(r3)
/* 801D3C04 001D0C04  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 801D3C08 001D0C08  EC 04 00 2A */	fadds f0, f4, f0
/* 801D3C0C 001D0C0C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 801D3C10 001D0C10  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 801D3C14 001D0C14  EC 00 18 2A */	fadds f0, f0, f3
/* 801D3C18 001D0C18  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 801D3C1C 001D0C1C  C0 83 00 5C */	lfs f4, 0x5c(r3)
/* 801D3C20 001D0C20  FC 04 10 40 */	fcmpo cr0, f4, f2
/* 801D3C24 001D0C24  40 81 00 10 */	ble lbl_801D3C34
/* 801D3C28 001D0C28  EC 02 20 28 */	fsubs f0, f2, f4
/* 801D3C2C 001D0C2C  EC 01 20 3A */	fmadds f0, f1, f0, f4
/* 801D3C30 001D0C30  D0 03 00 5C */	stfs f0, 0x5c(r3)
lbl_801D3C34:
/* 801D3C34 001D0C34  C0 83 00 30 */	lfs f4, 0x30(r3)
/* 801D3C38 001D0C38  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 801D3C3C 001D0C3C  EC 04 00 2A */	fadds f0, f4, f0
/* 801D3C40 001D0C40  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 801D3C44 001D0C44  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 801D3C48 001D0C48  EC 00 18 2A */	fadds f0, f0, f3
/* 801D3C4C 001D0C4C  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 801D3C50 001D0C50  C0 83 00 60 */	lfs f4, 0x60(r3)
/* 801D3C54 001D0C54  FC 04 10 40 */	fcmpo cr0, f4, f2
/* 801D3C58 001D0C58  40 81 00 10 */	ble lbl_801D3C68
/* 801D3C5C 001D0C5C  EC 02 20 28 */	fsubs f0, f2, f4
/* 801D3C60 001D0C60  EC 01 20 3A */	fmadds f0, f1, f0, f4
/* 801D3C64 001D0C64  D0 03 00 60 */	stfs f0, 0x60(r3)
lbl_801D3C68:
/* 801D3C68 001D0C68  C0 83 00 34 */	lfs f4, 0x34(r3)
/* 801D3C6C 001D0C6C  C0 03 00 64 */	lfs f0, 0x64(r3)
/* 801D3C70 001D0C70  EC 04 00 2A */	fadds f0, f4, f0
/* 801D3C74 001D0C74  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 801D3C78 001D0C78  C0 03 00 64 */	lfs f0, 0x64(r3)
/* 801D3C7C 001D0C7C  EC 00 18 2A */	fadds f0, f0, f3
/* 801D3C80 001D0C80  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 801D3C84 001D0C84  C0 83 00 64 */	lfs f4, 0x64(r3)
/* 801D3C88 001D0C88  FC 04 10 40 */	fcmpo cr0, f4, f2
/* 801D3C8C 001D0C8C  40 81 00 10 */	ble lbl_801D3C9C
/* 801D3C90 001D0C90  EC 02 20 28 */	fsubs f0, f2, f4
/* 801D3C94 001D0C94  EC 01 20 3A */	fmadds f0, f1, f0, f4
/* 801D3C98 001D0C98  D0 03 00 64 */	stfs f0, 0x64(r3)
lbl_801D3C9C:
/* 801D3C9C 001D0C9C  C0 83 00 38 */	lfs f4, 0x38(r3)
/* 801D3CA0 001D0CA0  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 801D3CA4 001D0CA4  EC 04 00 2A */	fadds f0, f4, f0
/* 801D3CA8 001D0CA8  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 801D3CAC 001D0CAC  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 801D3CB0 001D0CB0  EC 00 18 2A */	fadds f0, f0, f3
/* 801D3CB4 001D0CB4  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 801D3CB8 001D0CB8  C0 83 00 68 */	lfs f4, 0x68(r3)
/* 801D3CBC 001D0CBC  FC 04 10 40 */	fcmpo cr0, f4, f2
/* 801D3CC0 001D0CC0  40 81 00 10 */	ble lbl_801D3CD0
/* 801D3CC4 001D0CC4  EC 02 20 28 */	fsubs f0, f2, f4
/* 801D3CC8 001D0CC8  EC 01 20 3A */	fmadds f0, f1, f0, f4
/* 801D3CCC 001D0CCC  D0 03 00 68 */	stfs f0, 0x68(r3)
lbl_801D3CD0:
/* 801D3CD0 001D0CD0  38 63 00 10 */	addi r3, r3, 0x10
/* 801D3CD4 001D0CD4  38 84 00 03 */	addi r4, r4, 3
/* 801D3CD8 001D0CD8  42 00 FF 28 */	bdnz lbl_801D3C00
/* 801D3CDC 001D0CDC  38 61 00 14 */	addi r3, r1, 0x14
/* 801D3CE0 001D0CE0  4B E3 C9 E1 */	bl dispCalcZ
/* 801D3CE4 001D0CE4  3C 60 80 1D */	lis r3, effOpukuWcurtainDisp@ha
/* 801D3CE8 001D0CE8  7F E6 FB 78 */	mr r6, r31
/* 801D3CEC 001D0CEC  38 A3 36 C0 */	addi r5, r3, effOpukuWcurtainDisp@l
/* 801D3CF0 001D0CF0  38 80 00 02 */	li r4, 2
/* 801D3CF4 001D0CF4  38 60 00 04 */	li r3, 4
/* 801D3CF8 001D0CF8  4B E3 CD 21 */	bl dispEntry
lbl_801D3CFC:
/* 801D3CFC 001D0CFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D3D00 001D0D00  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801D3D04 001D0D04  7C 08 03 A6 */	mtlr r0
/* 801D3D08 001D0D08  38 21 00 30 */	addi r1, r1, 0x30
/* 801D3D0C 001D0D0C  4E 80 00 20 */	blr 

.global effOpukuWcurtainN64Entry
effOpukuWcurtainN64Entry:
/* 801D3D10 001D0D10  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801D3D14 001D0D14  7C 08 02 A6 */	mflr r0
/* 801D3D18 001D0D18  90 01 00 84 */	stw r0, 0x84(r1)
/* 801D3D1C 001D0D1C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801D3D20 001D0D20  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 801D3D24 001D0D24  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 801D3D28 001D0D28  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 801D3D2C 001D0D2C  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 801D3D30 001D0D30  F3 A1 00 58 */	psq_st f29, 88(r1), 0, qr0
/* 801D3D34 001D0D34  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 801D3D38 001D0D38  F3 81 00 48 */	psq_st f28, 72(r1), 0, qr0
/* 801D3D3C 001D0D3C  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 801D3D40 001D0D40  F3 61 00 38 */	psq_st f27, 56(r1), 0, qr0
/* 801D3D44 001D0D44  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 801D3D48 001D0D48  FF 60 08 90 */	fmr f27, f1
/* 801D3D4C 001D0D4C  7C 7C 1B 78 */	mr r28, r3
/* 801D3D50 001D0D50  FF 80 10 90 */	fmr f28, f2
/* 801D3D54 001D0D54  7C 9B 23 78 */	mr r27, r4
/* 801D3D58 001D0D58  FF A0 18 90 */	fmr f29, f3
/* 801D3D5C 001D0D5C  FF C0 20 90 */	fmr f30, f4
/* 801D3D60 001D0D60  4B E8 A0 5D */	bl effEntry
/* 801D3D64 001D0D64  3C 80 80 30 */	lis r4, lbl_802FB2A4@ha
/* 801D3D68 001D0D68  7C 7F 1B 78 */	mr r31, r3
/* 801D3D6C 001D0D6C  38 84 B2 A4 */	addi r4, r4, lbl_802FB2A4@l
/* 801D3D70 001D0D70  38 00 00 01 */	li r0, 1
/* 801D3D74 001D0D74  90 9F 00 14 */	stw r4, 0x14(r31)
/* 801D3D78 001D0D78  38 60 00 03 */	li r3, 3
/* 801D3D7C 001D0D7C  38 80 00 8C */	li r4, 0x8c
/* 801D3D80 001D0D80  90 1F 00 08 */	stw r0, 8(r31)
/* 801D3D84 001D0D84  4B E5 BD 09 */	bl __memAlloc
/* 801D3D88 001D0D88  3C 80 80 1D */	lis r4, effOpukuWcurtainMain@ha
/* 801D3D8C 001D0D8C  90 7F 00 0C */	stw r3, 0xc(r31)
/* 801D3D90 001D0D90  38 84 3B 00 */	addi r4, r4, effOpukuWcurtainMain@l
/* 801D3D94 001D0D94  2C 1B 00 00 */	cmpwi r27, 0
/* 801D3D98 001D0D98  90 9F 00 10 */	stw r4, 0x10(r31)
/* 801D3D9C 001D0D9C  38 00 00 00 */	li r0, 0
/* 801D3DA0 001D0DA0  80 9F 00 00 */	lwz r4, 0(r31)
/* 801D3DA4 001D0DA4  60 84 00 02 */	ori r4, r4, 2
/* 801D3DA8 001D0DA8  90 9F 00 00 */	stw r4, 0(r31)
/* 801D3DAC 001D0DAC  93 83 00 00 */	stw r28, 0(r3)
/* 801D3DB0 001D0DB0  90 03 00 14 */	stw r0, 0x14(r3)
/* 801D3DB4 001D0DB4  41 81 00 10 */	bgt lbl_801D3DC4
/* 801D3DB8 001D0DB8  38 00 03 E8 */	li r0, 0x3e8
/* 801D3DBC 001D0DBC  90 03 00 10 */	stw r0, 0x10(r3)
/* 801D3DC0 001D0DC0  48 00 00 08 */	b lbl_801D3DC8
lbl_801D3DC4:
/* 801D3DC4 001D0DC4  93 63 00 10 */	stw r27, 0x10(r3)
lbl_801D3DC8:
/* 801D3DC8 001D0DC8  38 00 00 00 */	li r0, 0
/* 801D3DCC 001D0DCC  3C A0 2E 8C */	lis r5, 0x2E8BA2E9@ha
/* 801D3DD0 001D0DD0  90 03 00 24 */	stw r0, 0x24(r3)
/* 801D3DD4 001D0DD4  38 E0 00 14 */	li r7, 0x14
/* 801D3DD8 001D0DD8  38 C0 00 78 */	li r6, 0x78
/* 801D3DDC 001D0DDC  3C 80 80 30 */	lis r4, lbl_802FB2B8@ha
/* 801D3DE0 001D0DE0  D3 63 00 04 */	stfs f27, 4(r3)
/* 801D3DE4 001D0DE4  38 00 00 FF */	li r0, 0xff
/* 801D3DE8 001D0DE8  C3 62 E4 A0 */	lfs f27, lbl_8041F820-_SDA2_BASE_(r2)
/* 801D3DEC 001D0DEC  7C 7C 1B 78 */	mr r28, r3
/* 801D3DF0 001D0DF0  D3 83 00 08 */	stfs f28, 8(r3)
/* 801D3DF4 001D0DF4  3B A5 A2 E9 */	addi r29, r5, 0x2E8BA2E9@l
/* 801D3DF8 001D0DF8  CB 84 B2 B8 */	lfd f28, lbl_802FB2B8@l(r4)
/* 801D3DFC 001D0DFC  3B 60 00 00 */	li r27, 0
/* 801D3E00 001D0E00  D3 A3 00 0C */	stfs f29, 0xc(r3)
/* 801D3E04 001D0E04  3F C0 43 30 */	lis r30, 0x4330
/* 801D3E08 001D0E08  C3 A2 E4 B8 */	lfs f29, lbl_8041F838-_SDA2_BASE_(r2)
/* 801D3E0C 001D0E0C  D3 C3 00 28 */	stfs f30, 0x28(r3)
/* 801D3E10 001D0E10  C3 C2 E4 B4 */	lfs f30, lbl_8041F834-_SDA2_BASE_(r2)
/* 801D3E14 001D0E14  90 E3 00 18 */	stw r7, 0x18(r3)
/* 801D3E18 001D0E18  C3 E2 E4 BC */	lfs f31, lbl_8041F83C-_SDA2_BASE_(r2)
/* 801D3E1C 001D0E1C  90 C3 00 1C */	stw r6, 0x1c(r3)
/* 801D3E20 001D0E20  90 03 00 20 */	stw r0, 0x20(r3)
lbl_801D3E24:
/* 801D3E24 001D0E24  D3 7C 00 2C */	stfs f27, 0x2c(r28)
/* 801D3E28 001D0E28  48 09 25 4D */	bl rand
/* 801D3E2C 001D0E2C  7C 1D 18 96 */	mulhw r0, r29, r3
/* 801D3E30 001D0E30  3B 7B 00 01 */	addi r27, r27, 1
/* 801D3E34 001D0E34  93 C1 00 08 */	stw r30, 8(r1)
/* 801D3E38 001D0E38  2C 1B 00 0C */	cmpwi r27, 0xc
/* 801D3E3C 001D0E3C  7C 00 0E 70 */	srawi r0, r0, 1
/* 801D3E40 001D0E40  54 04 0F FE */	srwi r4, r0, 0x1f
/* 801D3E44 001D0E44  7C 00 22 14 */	add r0, r0, r4
/* 801D3E48 001D0E48  1C 00 00 0B */	mulli r0, r0, 0xb
/* 801D3E4C 001D0E4C  7C 00 18 50 */	subf r0, r0, r3
/* 801D3E50 001D0E50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801D3E54 001D0E54  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D3E58 001D0E58  C8 01 00 08 */	lfd f0, 8(r1)
/* 801D3E5C 001D0E5C  EC 00 E0 28 */	fsubs f0, f0, f28
/* 801D3E60 001D0E60  EC 1D F0 3A */	fmadds f0, f29, f0, f30
/* 801D3E64 001D0E64  D0 1C 00 5C */	stfs f0, 0x5c(r28)
/* 801D3E68 001D0E68  C0 1C 00 5C */	lfs f0, 0x5c(r28)
/* 801D3E6C 001D0E6C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801D3E70 001D0E70  D0 1C 00 5C */	stfs f0, 0x5c(r28)
/* 801D3E74 001D0E74  3B 9C 00 04 */	addi r28, r28, 4
/* 801D3E78 001D0E78  41 80 FF AC */	blt lbl_801D3E24
/* 801D3E7C 001D0E7C  7F E3 FB 78 */	mr r3, r31
/* 801D3E80 001D0E80  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 801D3E84 001D0E84  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801D3E88 001D0E88  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 801D3E8C 001D0E8C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 801D3E90 001D0E90  E3 A1 00 58 */	psq_l f29, 88(r1), 0, qr0
/* 801D3E94 001D0E94  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 801D3E98 001D0E98  E3 81 00 48 */	psq_l f28, 72(r1), 0, qr0
/* 801D3E9C 001D0E9C  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 801D3EA0 001D0EA0  E3 61 00 38 */	psq_l f27, 56(r1), 0, qr0
/* 801D3EA4 001D0EA4  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 801D3EA8 001D0EA8  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 801D3EAC 001D0EAC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801D3EB0 001D0EB0  7C 08 03 A6 */	mtlr r0
/* 801D3EB4 001D0EB4  38 21 00 80 */	addi r1, r1, 0x80
/* 801D3EB8 001D0EB8  4E 80 00 20 */	blr 
