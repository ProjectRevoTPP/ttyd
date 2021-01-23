.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

.global arcOpen
arcOpen:
/* 800777F8 000747F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800777FC 000747FC  7C 08 02 A6 */	mflr r0
/* 80077800 00074800  3C C0 80 3E */	lis r6, lbl_803D8470@ha
/* 80077804 00074804  90 01 00 34 */	stw r0, 0x34(r1)
/* 80077808 00074808  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 8007780C 0007480C  7C 7A 1B 78 */	mr r26, r3
/* 80077810 00074810  3B E6 84 70 */	addi r31, r6, lbl_803D8470@l
/* 80077814 00074814  7C 9B 23 78 */	mr r27, r4
/* 80077818 00074818  7C BC 2B 78 */	mr r28, r5
/* 8007781C 0007481C  3B C1 00 08 */	addi r30, r1, 8
/* 80077820 00074820  3B A0 00 00 */	li r29, 0
lbl_80077824:
/* 80077824 00074824  A0 1F 00 00 */	lhz r0, 0(r31)
/* 80077828 00074828  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8007782C 0007482C  41 82 00 58 */	beq lbl_80077884
/* 80077830 00074830  7F 44 D3 78 */	mr r4, r26
/* 80077834 00074834  7F C5 F3 78 */	mr r5, r30
/* 80077838 00074838  38 7F 00 04 */	addi r3, r31, 4
/* 8007783C 0007483C  4B FF FE 71 */	bl ARCOpen
/* 80077840 00074840  2C 03 00 00 */	cmpwi r3, 0
/* 80077844 00074844  41 82 00 40 */	beq lbl_80077884
/* 80077848 00074848  7F C3 F3 78 */	mr r3, r30
/* 8007784C 0007484C  4B FF F8 E5 */	bl ARCGetStartAddrInMem
/* 80077850 00074850  28 1B 00 00 */	cmplwi r27, 0
/* 80077854 00074854  7C 7D 1B 78 */	mr r29, r3
/* 80077858 00074858  41 82 00 08 */	beq lbl_80077860
/* 8007785C 0007485C  93 BB 00 00 */	stw r29, 0(r27)
lbl_80077860:
/* 80077860 00074860  28 1C 00 00 */	cmplwi r28, 0
/* 80077864 00074864  41 82 00 10 */	beq lbl_80077874
/* 80077868 00074868  7F C3 F3 78 */	mr r3, r30
/* 8007786C 0007486C  4B FF F8 BD */	bl ARCGetLength
/* 80077870 00074870  90 7C 00 00 */	stw r3, 0(r28)
lbl_80077874:
/* 80077874 00074874  7F C3 F3 78 */	mr r3, r30
/* 80077878 00074878  4B FF F8 A9 */	bl ARCClose
/* 8007787C 0007487C  7F A3 EB 78 */	mr r3, r29
/* 80077880 00074880  48 00 00 38 */	b lbl_800778B8
lbl_80077884:
/* 80077884 00074884  3B BD 00 01 */	addi r29, r29, 1
/* 80077888 00074888  3B FF 00 28 */	addi r31, r31, 0x28
/* 8007788C 0007488C  2C 1D 00 04 */	cmpwi r29, 4
/* 80077890 00074890  41 80 FF 94 */	blt lbl_80077824
/* 80077894 00074894  28 1B 00 00 */	cmplwi r27, 0
/* 80077898 00074898  41 82 00 0C */	beq lbl_800778A4
/* 8007789C 0007489C  38 00 00 00 */	li r0, 0
/* 800778A0 000748A0  90 1B 00 00 */	stw r0, 0(r27)
lbl_800778A4:
/* 800778A4 000748A4  28 1C 00 00 */	cmplwi r28, 0
/* 800778A8 000748A8  41 82 00 0C */	beq lbl_800778B4
/* 800778AC 000748AC  38 00 00 00 */	li r0, 0
/* 800778B0 000748B0  90 1C 00 00 */	stw r0, 0(r28)
lbl_800778B4:
/* 800778B4 000748B4  38 60 00 00 */	li r3, 0
lbl_800778B8:
/* 800778B8 000748B8  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 800778BC 000748BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800778C0 000748C0  7C 08 03 A6 */	mtlr r0
/* 800778C4 000748C4  38 21 00 30 */	addi r1, r1, 0x30
/* 800778C8 000748C8  4E 80 00 20 */	blr 

.global arcDelete
arcDelete:
/* 800778CC 000748CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800778D0 000748D0  7C 08 02 A6 */	mflr r0
/* 800778D4 000748D4  1C A3 00 28 */	mulli r5, r3, 0x28
/* 800778D8 000748D8  3C 60 80 3E */	lis r3, lbl_803D8470@ha
/* 800778DC 000748DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800778E0 000748E0  38 80 00 00 */	li r4, 0
/* 800778E4 000748E4  38 03 84 70 */	addi r0, r3, lbl_803D8470@l
/* 800778E8 000748E8  7C 60 2A 14 */	add r3, r0, r5
/* 800778EC 000748EC  38 A0 00 28 */	li r5, 0x28
/* 800778F0 000748F0  4B F8 D7 C5 */	bl memset
/* 800778F4 000748F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800778F8 000748F8  7C 08 03 A6 */	mtlr r0
/* 800778FC 000748FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80077900 00074900  4E 80 00 20 */	blr 

.global arcEntry
arcEntry:
/* 80077904 00074904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077908 00074908  7C 08 02 A6 */	mflr r0
/* 8007790C 0007490C  1C C3 00 28 */	mulli r6, r3, 0x28
/* 80077910 00074910  3C 60 80 3E */	lis r3, lbl_803D8470@ha
/* 80077914 00074914  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077918 00074918  38 03 84 70 */	addi r0, r3, lbl_803D8470@l
/* 8007791C 0007491C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077920 00074920  7F E0 32 14 */	add r31, r0, r6
/* 80077924 00074924  90 9F 00 20 */	stw r4, 0x20(r31)
/* 80077928 00074928  38 9F 00 04 */	addi r4, r31, 4
/* 8007792C 0007492C  90 BF 00 24 */	stw r5, 0x24(r31)
/* 80077930 00074930  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80077934 00074934  4B FF FE 21 */	bl ARCInitHandle
/* 80077938 00074938  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8007793C 0007493C  60 00 00 01 */	ori r0, r0, 1
/* 80077940 00074940  B0 1F 00 00 */	sth r0, 0(r31)
/* 80077944 00074944  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077948 00074948  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007794C 0007494C  7C 08 03 A6 */	mtlr r0
/* 80077950 00074950  38 21 00 10 */	addi r1, r1, 0x10
/* 80077954 00074954  4E 80 00 20 */	blr 

.global arcDataCheck
arcDataCheck:
/* 80077958 00074958  3C 80 80 3E */	lis r4, lbl_803D8470@ha
/* 8007795C 0007495C  38 84 84 70 */	addi r4, r4, lbl_803D8470@l
/* 80077960 00074960  80 A4 00 20 */	lwz r5, 0x20(r4)
/* 80077964 00074964  7C 05 18 40 */	cmplw r5, r3
/* 80077968 00074968  41 81 00 1C */	bgt lbl_80077984
/* 8007796C 0007496C  80 04 00 24 */	lwz r0, 0x24(r4)
/* 80077970 00074970  7C 05 02 14 */	add r0, r5, r0
/* 80077974 00074974  7C 00 18 40 */	cmplw r0, r3
/* 80077978 00074978  41 80 00 0C */	blt lbl_80077984
/* 8007797C 0007497C  38 60 00 01 */	li r3, 1
/* 80077980 00074980  4E 80 00 20 */	blr 
lbl_80077984:
/* 80077984 00074984  38 84 00 28 */	addi r4, r4, 0x28
/* 80077988 00074988  80 A4 00 20 */	lwz r5, 0x20(r4)
/* 8007798C 0007498C  7C 05 18 40 */	cmplw r5, r3
/* 80077990 00074990  41 81 00 1C */	bgt lbl_800779AC
/* 80077994 00074994  80 04 00 24 */	lwz r0, 0x24(r4)
/* 80077998 00074998  7C 05 02 14 */	add r0, r5, r0
/* 8007799C 0007499C  7C 00 18 40 */	cmplw r0, r3
/* 800779A0 000749A0  41 80 00 0C */	blt lbl_800779AC
/* 800779A4 000749A4  38 60 00 01 */	li r3, 1
/* 800779A8 000749A8  4E 80 00 20 */	blr 
lbl_800779AC:
/* 800779AC 000749AC  80 A4 00 48 */	lwz r5, 0x48(r4)
/* 800779B0 000749B0  38 84 00 28 */	addi r4, r4, 0x28
/* 800779B4 000749B4  7C 05 18 40 */	cmplw r5, r3
/* 800779B8 000749B8  41 81 00 1C */	bgt lbl_800779D4
/* 800779BC 000749BC  80 04 00 24 */	lwz r0, 0x24(r4)
/* 800779C0 000749C0  7C 05 02 14 */	add r0, r5, r0
/* 800779C4 000749C4  7C 00 18 40 */	cmplw r0, r3
/* 800779C8 000749C8  41 80 00 0C */	blt lbl_800779D4
/* 800779CC 000749CC  38 60 00 01 */	li r3, 1
/* 800779D0 000749D0  4E 80 00 20 */	blr 
lbl_800779D4:
/* 800779D4 000749D4  80 A4 00 48 */	lwz r5, 0x48(r4)
/* 800779D8 000749D8  38 84 00 28 */	addi r4, r4, 0x28
/* 800779DC 000749DC  7C 05 18 40 */	cmplw r5, r3
/* 800779E0 000749E0  41 81 00 1C */	bgt lbl_800779FC
/* 800779E4 000749E4  80 04 00 24 */	lwz r0, 0x24(r4)
/* 800779E8 000749E8  7C 05 02 14 */	add r0, r5, r0
/* 800779EC 000749EC  7C 00 18 40 */	cmplw r0, r3
/* 800779F0 000749F0  41 80 00 0C */	blt lbl_800779FC
/* 800779F4 000749F4  38 60 00 01 */	li r3, 1
/* 800779F8 000749F8  4E 80 00 20 */	blr 
lbl_800779FC:
/* 800779FC 000749FC  38 60 00 00 */	li r3, 0
/* 80077A00 00074A00  4E 80 00 20 */	blr 

.global arcInit
arcInit:
/* 80077A04 00074A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077A08 00074A08  7C 08 02 A6 */	mflr r0
/* 80077A0C 00074A0C  3C 60 80 3E */	lis r3, lbl_803D8470@ha
/* 80077A10 00074A10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077A14 00074A14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077A18 00074A18  3B E3 84 70 */	addi r31, r3, lbl_803D8470@l
/* 80077A1C 00074A1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80077A20 00074A20  3B C0 00 00 */	li r30, 0
lbl_80077A24:
/* 80077A24 00074A24  7F E3 FB 78 */	mr r3, r31
/* 80077A28 00074A28  38 80 00 00 */	li r4, 0
/* 80077A2C 00074A2C  38 A0 00 28 */	li r5, 0x28
/* 80077A30 00074A30  4B F8 D6 85 */	bl memset
/* 80077A34 00074A34  3B DE 00 01 */	addi r30, r30, 1
/* 80077A38 00074A38  3B FF 00 28 */	addi r31, r31, 0x28
/* 80077A3C 00074A3C  2C 1E 00 04 */	cmpwi r30, 4
/* 80077A40 00074A40  41 80 FF E4 */	blt lbl_80077A24
/* 80077A44 00074A44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077A48 00074A48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077A4C 00074A4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80077A50 00074A50  7C 08 03 A6 */	mtlr r0
/* 80077A54 00074A54  38 21 00 10 */	addi r1, r1, 0x10
/* 80077A58 00074A58  4E 80 00 20 */	blr 
