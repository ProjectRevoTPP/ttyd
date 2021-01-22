.include "macros.inc"


.section .text, "ax"  # 0x800055E0 - 0x802C0EE0

# Why are these linked as text according to the map file???
.global tri2
tri2:
/* 801D1634 001CE634  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 801D1638 001CE638  B0 66 80 00 */	sth r3, 0xCC008000@l(r6)
/* 801D163C 001CE63C  B0 66 80 00 */	sth r3, -0x8000(r6)
/* 801D1640 001CE640  B0 66 80 00 */	sth r3, -0x8000(r6)
/* 801D1644 001CE644  B0 86 80 00 */	sth r4, -0x8000(r6)
/* 801D1648 001CE648  B0 86 80 00 */	sth r4, -0x8000(r6)
/* 801D164C 001CE64C  B0 86 80 00 */	sth r4, -0x8000(r6)
/* 801D1650 001CE650  B0 A6 80 00 */	sth r5, -0x8000(r6)
/* 801D1654 001CE654  B0 A6 80 00 */	sth r5, -0x8000(r6)
/* 801D1658 001CE658  B0 A6 80 00 */	sth r5, -0x8000(r6)
/* 801D165C 001CE65C  B0 E6 80 00 */	sth r7, -0x8000(r6)
/* 801D1660 001CE660  B0 E6 80 00 */	sth r7, -0x8000(r6)
/* 801D1664 001CE664  B0 E6 80 00 */	sth r7, -0x8000(r6)
/* 801D1668 001CE668  B1 06 80 00 */	sth r8, -0x8000(r6)
/* 801D166C 001CE66C  B1 06 80 00 */	sth r8, -0x8000(r6)
/* 801D1670 001CE670  B1 06 80 00 */	sth r8, -0x8000(r6)
/* 801D1674 001CE674  B1 26 80 00 */	sth r9, -0x8000(r6)
/* 801D1678 001CE678  B1 26 80 00 */	sth r9, -0x8000(r6)
/* 801D167C 001CE67C  B1 26 80 00 */	sth r9, -0x8000(r6)
/* 801D1680 001CE680  4E 80 00 20 */	blr 

# This doesn't look like code, but whatever you say map file.
.global tri1
tri1:
/* 801D1684 001CE684  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 801D1688 001CE688  B0 66 80 00 */	sth r3, 0xCC008000@l(r6)
/* 801D168C 001CE68C  B0 66 80 00 */	sth r3, -0x8000(r6)
/* 801D1690 001CE690  B0 66 80 00 */	sth r3, -0x8000(r6)
/* 801D1694 001CE694  B0 86 80 00 */	sth r4, -0x8000(r6)
/* 801D1698 001CE698  B0 86 80 00 */	sth r4, -0x8000(r6)
/* 801D169C 001CE69C  B0 86 80 00 */	sth r4, -0x8000(r6)
/* 801D16A0 001CE6A0  B0 A6 80 00 */	sth r5, -0x8000(r6)
/* 801D16A4 001CE6A4  B0 A6 80 00 */	sth r5, -0x8000(r6)
/* 801D16A8 001CE6A8  B0 A6 80 00 */	sth r5, -0x8000(r6)
/* 801D16AC 001CE6AC  4E 80 00 20 */	blr 

.global effSetVtxDescN64
effSetVtxDescN64:
/* 801D16B0 001CE6B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D16B4 001CE6B4  7C 08 02 A6 */	mflr r0
/* 801D16B8 001CE6B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D16BC 001CE6BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D16C0 001CE6C0  7C 7F 1B 78 */	mr r31, r3
/* 801D16C4 001CE6C4  48 0D D0 59 */	bl GXClearVtxDesc
/* 801D16C8 001CE6C8  38 60 00 09 */	li r3, 9
/* 801D16CC 001CE6CC  38 80 00 03 */	li r4, 3
/* 801D16D0 001CE6D0  48 0D C7 35 */	bl GXSetVtxDesc
/* 801D16D4 001CE6D4  38 60 00 0B */	li r3, 0xb
/* 801D16D8 001CE6D8  38 80 00 03 */	li r4, 3
/* 801D16DC 001CE6DC  48 0D C7 29 */	bl GXSetVtxDesc
/* 801D16E0 001CE6E0  38 60 00 0D */	li r3, 0xd
/* 801D16E4 001CE6E4  38 80 00 03 */	li r4, 3
/* 801D16E8 001CE6E8  48 0D C7 1D */	bl GXSetVtxDesc
/* 801D16EC 001CE6EC  38 60 00 00 */	li r3, 0
/* 801D16F0 001CE6F0  38 80 00 09 */	li r4, 9
/* 801D16F4 001CE6F4  38 A0 00 01 */	li r5, 1
/* 801D16F8 001CE6F8  38 C0 00 03 */	li r6, 3
/* 801D16FC 001CE6FC  38 E0 00 00 */	li r7, 0
/* 801D1700 001CE700  48 0D D0 55 */	bl GXSetVtxAttrFmt
/* 801D1704 001CE704  38 60 00 00 */	li r3, 0
/* 801D1708 001CE708  38 80 00 0B */	li r4, 0xb
/* 801D170C 001CE70C  38 A0 00 01 */	li r5, 1
/* 801D1710 001CE710  38 C0 00 05 */	li r6, 5
/* 801D1714 001CE714  38 E0 00 00 */	li r7, 0
/* 801D1718 001CE718  48 0D D0 3D */	bl GXSetVtxAttrFmt
/* 801D171C 001CE71C  38 60 00 00 */	li r3, 0
/* 801D1720 001CE720  38 80 00 0D */	li r4, 0xd
/* 801D1724 001CE724  38 A0 00 01 */	li r5, 1
/* 801D1728 001CE728  38 C0 00 03 */	li r6, 3
/* 801D172C 001CE72C  38 E0 00 05 */	li r7, 5
/* 801D1730 001CE730  48 0D D0 25 */	bl GXSetVtxAttrFmt
/* 801D1734 001CE734  7F E4 FB 78 */	mr r4, r31
/* 801D1738 001CE738  38 60 00 09 */	li r3, 9
/* 801D173C 001CE73C  38 A0 00 0E */	li r5, 0xe
/* 801D1740 001CE740  48 0D D8 6D */	bl GXSetArray
/* 801D1744 001CE744  38 9F 00 0A */	addi r4, r31, 0xa
/* 801D1748 001CE748  38 60 00 0B */	li r3, 0xb
/* 801D174C 001CE74C  38 A0 00 0E */	li r5, 0xe
/* 801D1750 001CE750  48 0D D8 5D */	bl GXSetArray
/* 801D1754 001CE754  38 9F 00 06 */	addi r4, r31, 6
/* 801D1758 001CE758  38 60 00 0D */	li r3, 0xd
/* 801D175C 001CE75C  38 A0 00 0E */	li r5, 0xe
/* 801D1760 001CE760  48 0D D8 4D */	bl GXSetArray
/* 801D1764 001CE764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D1768 001CE768  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D176C 001CE76C  7C 08 03 A6 */	mtlr r0
/* 801D1770 001CE770  38 21 00 10 */	addi r1, r1, 0x10
/* 801D1774 001CE774  4E 80 00 20 */	blr 

.global effTblRandN64
effTblRandN64:
/* 801D1778 001CE778  54 80 C8 0C */	slwi r0, r4, 0x19
/* 801D177C 001CE77C  54 85 0F FE */	srwi r5, r4, 0x1f
/* 801D1780 001CE780  7C 05 00 50 */	subf r0, r5, r0
/* 801D1784 001CE784  3C 80 80 3A */	lis r4, lbl_803A31A0@ha
/* 801D1788 001CE788  54 00 38 3E */	rotlwi r0, r0, 7
/* 801D178C 001CE78C  38 63 00 01 */	addi r3, r3, 1
/* 801D1790 001CE790  7C 00 2A 14 */	add r0, r0, r5
/* 801D1794 001CE794  38 84 31 A0 */	addi r4, r4, lbl_803A31A0@l
/* 801D1798 001CE798  54 00 10 3A */	slwi r0, r0, 2
/* 801D179C 001CE79C  7C A4 00 2E */	lwzx r5, r4, r0
/* 801D17A0 001CE7A0  7C A4 FE 70 */	srawi r4, r5, 0x1f
/* 801D17A4 001CE7A4  7C 80 2A 78 */	xor r0, r4, r5
/* 801D17A8 001CE7A8  7C A4 00 50 */	subf r5, r4, r0
/* 801D17AC 001CE7AC  7C 05 1B D6 */	divw r0, r5, r3
/* 801D17B0 001CE7B0  7C 00 19 D6 */	mullw r0, r0, r3
/* 801D17B4 001CE7B4  7C 60 28 50 */	subf r3, r0, r5
/* 801D17B8 001CE7B8  4E 80 00 20 */	blr 

.global func_801D17BC
func_801D17BC:

.global effGetSetN64
effGetSetN64:
/* 801D17BC 001CE7BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D17C0 001CE7C0  7C 08 02 A6 */	mflr r0
/* 801D17C4 001CE7C4  3C 80 80 3A */	lis r4, lbl_803A2E60@ha
/* 801D17C8 001CE7C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D17CC 001CE7CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D17D0 001CE7D0  3B E4 2E 60 */	addi r31, r4, lbl_803A2E60@l
/* 801D17D4 001CE7D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D17D8 001CE7D8  3B C0 00 00 */	li r30, 0
/* 801D17DC 001CE7DC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801D17E0 001CE7E0  7C 7D 1B 78 */	mr r29, r3
/* 801D17E4 001CE7E4  48 00 00 34 */	b lbl_801D1818
lbl_801D17E8:
/* 801D17E8 001CE7E8  80 7F 00 04 */	lwz r3, 4(r31)
/* 801D17EC 001CE7EC  7F A4 EB 78 */	mr r4, r29
/* 801D17F0 001CE7F0  48 09 5C 5D */	bl strcmp
/* 801D17F4 001CE7F4  2C 03 00 00 */	cmpwi r3, 0
/* 801D17F8 001CE7F8  40 82 00 18 */	bne lbl_801D1810
/* 801D17FC 001CE7FC  3C 60 80 3A */	lis r3, lbl_803A2E60@ha
/* 801D1800 001CE800  57 C4 18 38 */	slwi r4, r30, 3
/* 801D1804 001CE804  38 03 2E 60 */	addi r0, r3, lbl_803A2E60@l
/* 801D1808 001CE808  7C 60 22 14 */	add r3, r0, r4
/* 801D180C 001CE80C  48 00 00 1C */	b lbl_801D1828
lbl_801D1810:
/* 801D1810 001CE810  3B FF 00 08 */	addi r31, r31, 8
/* 801D1814 001CE814  3B DE 00 01 */	addi r30, r30, 1
lbl_801D1818:
/* 801D1818 001CE818  A8 1F 00 00 */	lha r0, 0(r31)
/* 801D181C 001CE81C  2C 00 FF FF */	cmpwi r0, -1
/* 801D1820 001CE820  40 82 FF C8 */	bne lbl_801D17E8
/* 801D1824 001CE824  38 60 00 00 */	li r3, 0
lbl_801D1828:
/* 801D1828 001CE828  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D182C 001CE82C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D1830 001CE830  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D1834 001CE834  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801D1838 001CE838  7C 08 03 A6 */	mtlr r0
/* 801D183C 001CE83C  38 21 00 20 */	addi r1, r1, 0x20
/* 801D1840 001CE840  4E 80 00 20 */	blr 

.global effGetTexObjN64
effGetTexObjN64:
/* 801D1844 001CE844  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D1848 001CE848  7C 08 02 A6 */	mflr r0
/* 801D184C 001CE84C  7C 65 1B 78 */	mr r5, r3
/* 801D1850 001CE850  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D1854 001CE854  80 CD C9 20 */	lwz r6, lbl_80413B80-_SDA_BASE_(r13)
/* 801D1858 001CE858  80 06 00 04 */	lwz r0, 4(r6)
/* 801D185C 001CE85C  2C 00 00 00 */	cmpwi r0, 0
/* 801D1860 001CE860  40 82 00 2C */	bne lbl_801D188C
/* 801D1864 001CE864  7C 83 23 78 */	mr r3, r4
/* 801D1868 001CE868  38 8D C9 40 */	addi r4, r13, lbl_80413BA0-_SDA_BASE_
/* 801D186C 001CE86C  38 A0 00 01 */	li r5, 1
/* 801D1870 001CE870  38 C0 00 01 */	li r6, 1
/* 801D1874 001CE874  38 E0 00 00 */	li r7, 0
/* 801D1878 001CE878  39 00 00 00 */	li r8, 0
/* 801D187C 001CE87C  39 20 00 00 */	li r9, 0
/* 801D1880 001CE880  39 40 00 00 */	li r10, 0
/* 801D1884 001CE884  48 0D FC 29 */	bl GXInitTexObj
/* 801D1888 001CE888  48 00 00 0C */	b lbl_801D1894
lbl_801D188C:
/* 801D188C 001CE88C  80 66 00 00 */	lwz r3, 0(r6)
/* 801D1890 001CE890  4B E6 5B 55 */	bl TEXGetGXTexObjFromPalette
lbl_801D1894:
/* 801D1894 001CE894  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D1898 001CE898  7C 08 03 A6 */	mtlr r0
/* 801D189C 001CE89C  38 21 00 10 */	addi r1, r1, 0x10
/* 801D18A0 001CE8A0  4E 80 00 20 */	blr 

.global effTexSetupN64
effTexSetupN64:
/* 801D18A4 001CE8A4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801D18A8 001CE8A8  7C 08 02 A6 */	mflr r0
/* 801D18AC 001CE8AC  3C 60 80 30 */	lis r3, lbl_802FB1D4@ha
/* 801D18B0 001CE8B0  38 80 00 00 */	li r4, 0
/* 801D18B4 001CE8B4  90 01 00 94 */	stw r0, 0x94(r1)
/* 801D18B8 001CE8B8  38 00 00 00 */	li r0, 0
/* 801D18BC 001CE8BC  38 63 B1 D4 */	addi r3, r3, lbl_802FB1D4@l
/* 801D18C0 001CE8C0  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 801D18C4 001CE8C4  93 C1 00 88 */	stw r30, 0x88(r1)
/* 801D18C8 001CE8C8  80 AD C9 20 */	lwz r5, lbl_80413B80-_SDA_BASE_(r13)
/* 801D18CC 001CE8CC  90 05 00 00 */	stw r0, 0(r5)
/* 801D18D0 001CE8D0  38 A0 00 00 */	li r5, 0
/* 801D18D4 001CE8D4  80 CD C9 20 */	lwz r6, lbl_80413B80-_SDA_BASE_(r13)
/* 801D18D8 001CE8D8  90 06 00 04 */	stw r0, 4(r6)
/* 801D18DC 001CE8DC  4B EA 5F 1D */	bl arcOpen
/* 801D18E0 001CE8E0  80 8D C9 20 */	lwz r4, lbl_80413B80-_SDA_BASE_(r13)
/* 801D18E4 001CE8E4  90 64 00 00 */	stw r3, 0(r4)
/* 801D18E8 001CE8E8  80 6D C9 20 */	lwz r3, lbl_80413B80-_SDA_BASE_(r13)
/* 801D18EC 001CE8EC  80 63 00 00 */	lwz r3, 0(r3)
/* 801D18F0 001CE8F0  28 03 00 00 */	cmplwi r3, 0
/* 801D18F4 001CE8F4  40 82 00 7C */	bne lbl_801D1970
/* 801D18F8 001CE8F8  4B E3 5A 11 */	bl func_80007308
/* 801D18FC 001CE8FC  3C 80 80 30 */	lis r4, lbl_802FB1E4@ha
/* 801D1900 001CE900  7C 65 1B 78 */	mr r5, r3
/* 801D1904 001CE904  38 84 B1 E4 */	addi r4, r4, lbl_802FB1E4@l
/* 801D1908 001CE908  38 61 00 08 */	addi r3, r1, 8
/* 801D190C 001CE90C  4C C6 31 82 */	crclr 6
/* 801D1910 001CE910  48 09 27 F9 */	bl sprintf
/* 801D1914 001CE914  38 61 00 08 */	addi r3, r1, 8
/* 801D1918 001CE918  38 80 00 02 */	li r4, 2
/* 801D191C 001CE91C  38 A0 00 00 */	li r5, 0
/* 801D1920 001CE920  4B F6 E0 99 */	bl DVDMgrOpen
/* 801D1924 001CE924  7C 7F 1B 78 */	mr r31, r3
/* 801D1928 001CE928  4B F6 DF D5 */	bl DVDMgrGetLength
/* 801D192C 001CE92C  38 03 00 1F */	addi r0, r3, 0x1f
/* 801D1930 001CE930  38 60 00 00 */	li r3, 0
/* 801D1934 001CE934  54 1E 00 34 */	rlwinm r30, r0, 0, 0, 0x1a
/* 801D1938 001CE938  7F C4 F3 78 */	mr r4, r30
/* 801D193C 001CE93C  4B E5 E1 51 */	bl __memAlloc
/* 801D1940 001CE940  80 CD C9 20 */	lwz r6, lbl_80413B80-_SDA_BASE_(r13)
/* 801D1944 001CE944  3C 80 80 1D */	lis r4, _callback_tpl_DUPE_801d19d0@ha
/* 801D1948 001CE948  38 E4 19 D0 */	addi r7, r4, _callback_tpl_DUPE_801d19d0@l
/* 801D194C 001CE94C  7F C5 F3 78 */	mr r5, r30
/* 801D1950 001CE950  90 66 00 00 */	stw r3, 0(r6)
/* 801D1954 001CE954  7F E3 FB 78 */	mr r3, r31
/* 801D1958 001CE958  38 C0 00 00 */	li r6, 0
/* 801D195C 001CE95C  93 FF 00 6C */	stw r31, 0x6c(r31)
/* 801D1960 001CE960  80 8D C9 20 */	lwz r4, lbl_80413B80-_SDA_BASE_(r13)
/* 801D1964 001CE964  80 84 00 00 */	lwz r4, 0(r4)
/* 801D1968 001CE968  4B F6 DF AD */	bl DVDMgrReadAsync
/* 801D196C 001CE96C  48 00 00 14 */	b lbl_801D1980
lbl_801D1970:
/* 801D1970 001CE970  4B E6 5B 61 */	bl UnpackTexPalette
/* 801D1974 001CE974  80 6D C9 20 */	lwz r3, lbl_80413B80-_SDA_BASE_(r13)
/* 801D1978 001CE978  38 00 00 01 */	li r0, 1
/* 801D197C 001CE97C  90 03 00 04 */	stw r0, 4(r3)
lbl_801D1980:
/* 801D1980 001CE980  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801D1984 001CE984  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 801D1988 001CE988  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 801D198C 001CE98C  7C 08 03 A6 */	mtlr r0
/* 801D1990 001CE990  38 21 00 90 */	addi r1, r1, 0x90
/* 801D1994 001CE994  4E 80 00 20 */	blr 

.global effInit64
effInit64:
/* 801D1998 001CE998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D199C 001CE99C  7C 08 02 A6 */	mflr r0
/* 801D19A0 001CE9A0  38 80 00 00 */	li r4, 0
/* 801D19A4 001CE9A4  38 A0 00 08 */	li r5, 8
/* 801D19A8 001CE9A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D19AC 001CE9AC  80 6D C9 20 */	lwz r3, lbl_80413B80-_SDA_BASE_(r13)
/* 801D19B0 001CE9B0  4B E3 37 05 */	bl func_800050B4
/* 801D19B4 001CE9B4  80 6D C9 20 */	lwz r3, lbl_80413B80-_SDA_BASE_(r13)
/* 801D19B8 001CE9B8  38 00 00 00 */	li r0, 0
/* 801D19BC 001CE9BC  90 03 00 04 */	stw r0, 4(r3)
/* 801D19C0 001CE9C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D19C4 001CE9C4  7C 08 03 A6 */	mtlr r0
/* 801D19C8 001CE9C8  38 21 00 10 */	addi r1, r1, 0x10
/* 801D19CC 001CE9CC  4E 80 00 20 */	blr 

.global _callback_tpl_DUPE_801d19d0
_callback_tpl_DUPE_801d19d0:
/* 801D19D0 001CE9D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D19D4 001CE9D4  7C 08 02 A6 */	mflr r0
/* 801D19D8 001CE9D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D19DC 001CE9DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D19E0 001CE9E0  80 6D C9 20 */	lwz r3, lbl_80413B80-_SDA_BASE_(r13)
/* 801D19E4 001CE9E4  83 E4 00 2C */	lwz r31, 0x2c(r4)
/* 801D19E8 001CE9E8  80 63 00 00 */	lwz r3, 0(r3)
/* 801D19EC 001CE9EC  4B E6 5A E5 */	bl UnpackTexPalette
/* 801D19F0 001CE9F0  7F E3 FB 78 */	mr r3, r31
/* 801D19F4 001CE9F4  4B F6 DF 11 */	bl DVDMgrClose
/* 801D19F8 001CE9F8  80 6D C9 20 */	lwz r3, lbl_80413B80-_SDA_BASE_(r13)
/* 801D19FC 001CE9FC  38 00 00 01 */	li r0, 1
/* 801D1A00 001CEA00  90 03 00 04 */	stw r0, 4(r3)
/* 801D1A04 001CEA04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D1A08 001CEA08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D1A0C 001CEA0C  7C 08 03 A6 */	mtlr r0
/* 801D1A10 001CEA10  38 21 00 10 */	addi r1, r1, 0x10
/* 801D1A14 001CEA14  4E 80 00 20 */	blr 
