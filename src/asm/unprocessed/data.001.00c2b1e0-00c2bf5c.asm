.intel_syntax noprefix
.align 16
.section .data

.macro ASCIZ_ALIGNED string alignment
    .asciz "\string"
    .align \alignment
.endm

.macro LONG_ALIGNED value alignment
    .long \value
    .align \alignment
.endm

.macro _RTTI_Type_Descriptor name post_alignment type
    .global ??_R0?A\type\name@@@8
??_R0?A\type\name@@@8:
    .long ??_7type_info@@6B@
    .long 0
    ASCIZ_ALIGNED ".?A\type\name@@" \post_alignment
.endm
.macro RTTI_Struct_Type_Descriptor name
    _RTTI_Type_Descriptor \name 8 U
.endm
.macro RTTI_Class_Type_Descriptor name
    _RTTI_Type_Descriptor \name 8 V
.endm
.macro RTTI_Class_Type_DescriptorStdPadding name
    _RTTI_Type_Descriptor \name 2 V
.endm
.macro RTTI_Class_Type_Descriptor4Padding name
    _RTTI_Type_Descriptor \name 4 V
.endm
.macro RTTI_Class_Type_Descriptor_And_Reflection name reflection
    RTTI_Class_Type_Descriptor4Padding \name
    .global _debug_text_\name
_debug_text_\name:
    ASCIZ_ALIGNED "\reflection" 8
.endm
.macro RTTI_Class_Type_Descriptor_Reflection_And_Path name reflection path
    RTTI_Class_Type_Descriptor4Padding \name
    .global _debug_text_\name
_debug_text_\name:
    ASCIZ_ALIGNED "\reflection" 4
    ASCIZ_ALIGNED "C:\\dev\\MP\\Black\\\path" 8
.endm
.macro RTTI_Class_Type_Descriptor_Path_And_Reflection name path reflection
    RTTI_Class_Type_Descriptor4Padding \name
    ASCIZ_ALIGNED "C:\\dev\\MP\\Black\\\path" 4
    ASCIZ_ALIGNED "\reflection" 8
.endm
.macro RTTI_Class_Type_Descriptor_Animal name
    RTTI_Class_Type_Descriptor_And_Reflection \name "Animal: \name"
.endm
.macro RTTI_Class_Type_Descriptor_PuzzlePiece name
    RTTI_Class_Type_Descriptor_And_Reflection Piece\name "Animal: \name for Puzzle"
.endm

_RTTI_Type_Descriptor logic_error@std, 4, V                                                                        // [0x2651e0] 0x009c6000 + 0x2651e0 = 0x00c2b1e0
_RTTI_Type_Descriptor length_error@std, 2, V                                                                       // [0x265200] 0x009c6000 + 0x265200 = 0x00c2b200
_RTTI_Type_Descriptor out_of_range@std, 2, V                                                                       // [0x265220] 0x009c6000 + 0x265220 = 0x00c2b220
.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00                                                               // [0x265240] 0x009c6000 + 0x265240 = 0x00c2b240

_RTTI_Type_Descriptor runtime_error@std, 1, V                                                                      // [0x265248] 0x009c6000 + 0x265248 = 0x00c2b248
_RTTI_Type_Descriptor failure@ios_base@std, 8, V                                                                   // [0x265268] 0x009c6000 + 0x265268 = 0x00c2b268
_RTTI_Type_Descriptor _Locimp@locale@std, 4, V                                                                     // [0x265290] 0x009c6000 + 0x265290 = 0x00c2b290
.byte 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00                                       // [0x2652b4] 0x009c6000 + 0x2652b4 = 0x00c2b2b4

_RTTI_Type_Descriptor ?$basic_ios@GU?$char_traits@G@std@@@std, 4, V                                                // [0x2652c0] 0x009c6000 + 0x2652c0 = 0x00c2b2c0
_RTTI_Type_Descriptor ?$basic_istream@GU?$char_traits@G@std@@@std, 8, V                                            // [0x2652f8] 0x009c6000 + 0x2652f8 = 0x00c2b2f8
_RTTI_Type_Descriptor ?$basic_ostream@GU?$char_traits@G@std@@@std, 8, V                                            // [0x265338] 0x009c6000 + 0x265338 = 0x00c2b338
_RTTI_Type_Descriptor ?$basic_filebuf@GU?$char_traits@G@std@@@std, 8, V                                            // [0x265378] 0x009c6000 + 0x265378 = 0x00c2b378
_RTTI_Type_Descriptor ?$basic_streambuf@GU?$char_traits@G@std@@@std, 1, V                                          // [0x2653b8] 0x009c6000 + 0x2653b8 = 0x00c2b3b8
.long 0x00be95c8, 0x009cdd48, 0x009cdd48                                                                           // [0x2653f4] 0x009c6000 + 0x2653f4 = 0x00c2b3f4
.long 0x009d03fc, 0x009ce5d8, 0x009ce5dc, 0x009ce5dc                                                               // [0x265400] 0x009c6000 + 0x265400 = 0x00c2b400
.long 0x0099f42c, 0x0099f428, 0x0099f424, 0x0099f420                                                               // [0x265410] 0x009c6000 + 0x265410 = 0x00c2b410
.long 0x0099f41c, 0x0099f418, 0x0099f414, 0x00000000                                                               // [0x265420] 0x009c6000 + 0x265420 = 0x00c2b420

_RTTI_Type_Descriptor bad_alloc@std, 8, V                                                                          // [0x265430] 0x009c6000 + 0x265430 = 0x00c2b430
_RTTI_Type_Descriptor ?$num_put@GV?$ostreambuf_iterator@GU?$char_traits@G@std@@@std@@@std, 8, V                    // [0x265450] 0x009c6000 + 0x265450 = 0x00c2b450
_RTTI_Type_Descriptor ?$num_get@GV?$istreambuf_iterator@GU?$char_traits@G@std@@@std@@@std, 8, V                    // [0x2654a8] 0x009c6000 + 0x2654a8 = 0x00c2b4a8
_RTTI_Type_Descriptor ?$time_put@GV?$ostreambuf_iterator@GU?$char_traits@G@std@@@std@@@std, 8, V                   // [0x265500] 0x009c6000 + 0x265500 = 0x00c2b500
_RTTI_Type_Descriptor time_base@std, 8, U                                                                          // [0x265558] 0x009c6000 + 0x265558 = 0x00c2b558
_RTTI_Type_Descriptor ?$time_get@GV?$istreambuf_iterator@GU?$char_traits@G@std@@@std@@@std, 8, V                   // [0x265578] 0x009c6000 + 0x265578 = 0x00c2b578
_RTTI_Type_Descriptor ?$moneypunct@G$00@std, 8, V                                                                  // [0x2655d0] 0x009c6000 + 0x2655d0 = 0x00c2b5d0
_RTTI_Type_Descriptor money_base@std, 8, U                                                                         // [0x2655f8] 0x009c6000 + 0x2655f8 = 0x00c2b5f8
_RTTI_Type_Descriptor ?$_Mpunct@G@std, 4, V                                                                        // [0x265618] 0x009c6000 + 0x265618 = 0x00c2b618
_RTTI_Type_Descriptor ?$moneypunct@G$0A@@std, 4, V                                                                 // [0x265638] 0x009c6000 + 0x265638 = 0x00c2b638
_RTTI_Type_Descriptor ?$money_put@GV?$ostreambuf_iterator@GU?$char_traits@G@std@@@std@@@std, 8, V                  // [0x265660] 0x009c6000 + 0x265660 = 0x00c2b660
_RTTI_Type_Descriptor ?$money_get@GV?$istreambuf_iterator@GU?$char_traits@G@std@@@std@@@std, 8, V                  // [0x2656b8] 0x009c6000 + 0x2656b8 = 0x00c2b6b8
_RTTI_Type_Descriptor ?$ctype@G@std, 8, V                                                                          // [0x265710] 0x009c6000 + 0x265710 = 0x00c2b710
_RTTI_Type_Descriptor messages_base@std, 8, U                                                                      // [0x265730] 0x009c6000 + 0x265730 = 0x00c2b730
_RTTI_Type_Descriptor ?$messages@G@std, 2, V                                                                       // [0x265750] 0x009c6000 + 0x265750 = 0x00c2b750
_RTTI_Type_Descriptor ?$collate@G@std, 4, V                                                                        // [0x265770] 0x009c6000 + 0x265770 = 0x00c2b770
_RTTI_Type_Descriptor ?$numpunct@G@std, 2, V                                                                       // [0x265790] 0x009c6000 + 0x265790 = 0x00c2b790
_RTTI_Type_Descriptor ?$codecvt@GDH@std, 1, V                                                                      // [0x2657b0] 0x009c6000 + 0x2657b0 = 0x00c2b7b0
_RTTI_Type_Descriptor ?$time_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std, 8, V                   // [0x2657d0] 0x009c6000 + 0x2657d0 = 0x00c2b7d0
_RTTI_Type_Descriptor ?$time_get@DV?$istreambuf_iterator@DU?$char_traits@D@std@@@std@@@std, 8, V                   // [0x265828] 0x009c6000 + 0x265828 = 0x00c2b828
_RTTI_Type_Descriptor ?$moneypunct@D$00@std, 8, V                                                                  // [0x265880] 0x009c6000 + 0x265880 = 0x00c2b880
_RTTI_Type_Descriptor ?$_Mpunct@D@std, 4, V                                                                        // [0x2658a8] 0x009c6000 + 0x2658a8 = 0x00c2b8a8
_RTTI_Type_Descriptor ?$moneypunct@D$0A@@std, 4, V                                                                 // [0x2658c8] 0x009c6000 + 0x2658c8 = 0x00c2b8c8
_RTTI_Type_Descriptor ?$money_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std, 8, V                  // [0x2658f0] 0x009c6000 + 0x2658f0 = 0x00c2b8f0
_RTTI_Type_Descriptor ?$money_get@DV?$istreambuf_iterator@DU?$char_traits@D@std@@@std@@@std, 8, V                  // [0x265948] 0x009c6000 + 0x265948 = 0x00c2b948
_RTTI_Type_Descriptor ?$messages@D@std, 2, V                                                                       // [0x2659a0] 0x009c6000 + 0x2659a0 = 0x00c2b9a0
_RTTI_Type_Descriptor ?$collate@D@std, 4, V                                                                        // [0x2659c0] 0x009c6000 + 0x2659c0 = 0x00c2b9c0

ASCIZ_ALIGNED "%s.zzz" 8                                                                                           // [0x2659e0] 0x009c6000 + 0x2659e0 = 0x00c2b9e0
.byte 0x44, 0x00, 0x00, 0x00, 0x68, 0xba, 0xc2, 0x00                                                               // [0x2659e8] 0x009c6000 + 0x2659e8 = 0x00c2b9e8
.byte 0x00, 0x00, 0x00, 0x00, 0x48, 0xba, 0xc2, 0x00, 0x01, 0x00, 0x00, 0x00, 0x30, 0xba, 0xc2, 0x00               // [0x2659f0] 0x009c6000 + 0x2659f0 = 0x00c2b9f0
.byte 0x02, 0x00, 0x00, 0x00, 0x14, 0xba, 0xc2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00               // [0x265a00] 0x009c6000 + 0x265a00 = 0x00c2ba00
.byte 0xf0, 0xb9, 0xc2, 0x00, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x20, 0x77, 0x72, 0x69, 0x74, 0x69, 0x6e               // [0x265a10] 0x009c6000 + 0x265a10 = 0x00c2ba10
.byte 0x67, 0x20, 0x74, 0x6f, 0x20, 0x66, 0x69, 0x6c, 0x65, 0x20, 0x25, 0x73, 0x00, 0x00, 0x00, 0x00               // [0x265a20] 0x009c6000 + 0x265a20 = 0x00c2ba20
.byte 0x46, 0x69, 0x6c, 0x65, 0x20, 0x25, 0x73, 0x20, 0x77, 0x61, 0x73, 0x20, 0x6e, 0x6f, 0x74, 0x20               // [0x265a30] 0x009c6000 + 0x265a30 = 0x00c2ba30
.byte 0x66, 0x6f, 0x75, 0x6e, 0x64, 0x00, 0x00, 0x00, 0x46, 0x69, 0x6c, 0x65, 0x20, 0x25, 0x73, 0x20               // [0x265a40] 0x009c6000 + 0x265a40 = 0x00c2ba40
.byte 0x77, 0x61, 0x73, 0x20, 0x6e, 0x6f, 0x74, 0x20, 0x61, 0x20, 0x4c, 0x69, 0x6f, 0x6e, 0x68, 0x65               // [0x265a50] 0x009c6000 + 0x265a50 = 0x00c2ba50
.byte 0x61, 0x64, 0x20, 0x46, 0x69, 0x6c, 0x65, 0x00                                                               // [0x265a60] 0x009c6000 + 0x265a60 = 0x00c2ba60

.byte 0x4c, 0x69, 0x4f, 0x6e, 0x48, 0x65, 0x41, 0x64                                                               // [0x265a68] 0x009c6000 + 0x265a68 = 0x00c2ba68

.byte 0x00, 0x00, 0x00, 0x00                                                                                       // [0x265a70] 0x009c6000 + 0x265a70 = 0x00c2ba70
ZLIB_VERSION: ASCIZ_ALIGNED "1.1.3" 8                                                                              // [0x265a74] 0x009c6000 + 0x265a74 = 0x00c2ba74

.byte 0x00, 0x00, 0x00, 0x00, 0x70, 0x83, 0xc5, 0x00, 0x01, 0x00, 0x00, 0x00, 0x88, 0xbd, 0xc2, 0x00               // [0x265a80] 0x009c6000 + 0x265a80 = 0x00c2ba80
.byte 0x02, 0x00, 0x00, 0x00, 0x64, 0xbd, 0xc2, 0x00, 0x03, 0x00, 0x00, 0x00, 0x24, 0xbd, 0xc2, 0x00               // [0x265a90] 0x009c6000 + 0x265a90 = 0x00c2ba90
.byte 0x04, 0x00, 0x00, 0x00, 0xe8, 0xbc, 0xc2, 0x00, 0x05, 0x00, 0x00, 0x00, 0xa4, 0xbc, 0xc2, 0x00               // [0x265aa0] 0x009c6000 + 0x265aa0 = 0x00c2baa0
.byte 0x06, 0x00, 0x00, 0x00, 0x50, 0xbc, 0xc2, 0x00, 0x07, 0x00, 0x00, 0x00, 0x24, 0xbc, 0xc2, 0x00               // [0x265ab0] 0x009c6000 + 0x265ab0 = 0x00c2bab0
.byte 0x08, 0x00, 0x00, 0x00, 0xf8, 0xbb, 0xc2, 0x00, 0x09, 0x00, 0x00, 0x00, 0xc8, 0xbb, 0xc2, 0x00               // [0x265ac0] 0x009c6000 + 0x265ac0 = 0x00c2bac0
.byte 0x0a, 0x00, 0x00, 0x00, 0x80, 0xbb, 0xc2, 0x00, 0x0b, 0x00, 0x00, 0x00, 0x58, 0xbb, 0xc2, 0x00               // [0x265ad0] 0x009c6000 + 0x265ad0 = 0x00c2bad0
.byte 0x0c, 0x00, 0x00, 0x00, 0x2c, 0xbb, 0xc2, 0x00, 0x0d, 0x00, 0x00, 0x00, 0xf4, 0xba, 0xc2, 0x00               // [0x265ae0] 0x009c6000 + 0x265ae0 = 0x00c2bae0
.byte 0x80, 0xba, 0xc2, 0x00                                                                                       // [0x265af0] 0x009c6000 + 0x265af0 = 0x00c2baf0

ASCIZ_ALIGNED "File %s: Line %d An unknown enum value %s was specified" 4                                          // [0x265af4] 0x009c6000 + 0x265af4 = 0x00c2baf4
ASCIZ_ALIGNED "File %s: Duplicate enum %s in the enum list" 4                                                      // [0x265b2c] 0x009c6000 + 0x265b2c = 0x00c2bb2c
ASCIZ_ALIGNED "File %s: Input file could not be opened" 4                                                          // [0x265b58] 0x009c6000 + 0x265b58 = 0x00c2bb58
ASCIZ_ALIGNED "File %s: The input line exceeded the maximum allowed length: Line %d" 4                             // [0x265b80] 0x009c6000 + 0x265b80 = 0x00c2bb80
ASCIZ_ALIGNED "File %s: Expecting comma found '%s': Line %d" 4                                                     // [0x265bc8] 0x009c6000 + 0x265bc8 = 0x00c2bbc8
ASCIZ_ALIGNED "File %s: The enum list was invalid: Line %d" 4                                                      // [0x265bf8] 0x009c6000 + 0x265bf8 = 0x00c2bbf8
ASCIZ_ALIGNED "File %s: The enum list was empty: Line %d" 4                                                        // [0x265c24] 0x009c6000 + 0x265c24 = 0x00c2bc24
ASCIZ_ALIGNED "File %s: Expecting an integer or const value - found something different: Line %d" 4                // [0x265c50] 0x009c6000 + 0x265c50 = 0x00c2bc50
ASCIZ_ALIGNED "File %s: Expecting enum member - found something different: Line %d" 4                              // [0x265ca4] 0x009c6000 + 0x265ca4 = 0x00c2bca4
ASCIZ_ALIGNED "File %s: Expecting '{' found something different: Line %d" 4                                        // [0x265ce8] 0x009c6000 + 0x265ce8 = 0x00c2bce8
ASCIZ_ALIGNED "File %s: enum statement was incomplete and EOF was encountered" 4                                   // [0x265d24] 0x009c6000 + 0x265d24 = 0x00c2bd24
ASCIZ_ALIGNED "File %s: No enum list found in file" 4                                                              // [0x265d64] 0x009c6000 + 0x265d64 = 0x00c2bd64
ASCIZ_ALIGNED "File %s: Expecting End Comment marker */ before EOF" 4                                              // [0x265d88] 0x009c6000 + 0x265d88 = 0x00c2bd88
ASCIZ_ALIGNED "*/" 4                                                                                               // [0x265dbc] 0x009c6000 + 0x265dbc = 0x00c2bdbc
ASCIZ_ALIGNED "enum" 4                                                                                             // [0x265dc0] 0x009c6000 + 0x265dc0 = 0x00c2bdc0
ASCIZ_ALIGNED "YyHhTtMm" 1                                                                                         // [0x265dc8] 0x009c6000 + 0x265dc8 = 0x00c2bdc8
ASCIZ_ALIGNED "RELEASE\0\0" 1                                                                                      // [0x265dd1] 0x009c6000 + 0x265dd1 = 0x00c2bdd1
ASCIZ_ALIGNED "LHFileLib" 4                                                                                        // [0x265ddb] 0x009c6000 + 0x265ddb = 0x00c2bddb

.fill 0x13, 1, 0x00                                                                                                // [0x265de8] 0x009c6000 + 0x265de8 = 0x00c2bde8

.byte 0x33                                                                                                         // [0x265dfb] 0x009c6000 + 0x265dfb = 0x00c2bdfb

.fill 0x12, 1, 0x00                                                                                                // [0x265dfc] 0x009c6000 + 0x265dfc = 0x00c2bdfc

ASCIZ_ALIGNED "$Revision: 1 $" 4                                                                                   // [0x265e0e] 0x009c6000 + 0x265e0e = 0x00c2be0e

.byte 0x00                                                                                                         // [0x265e20] 0x009c6000 + 0x265e20 = 0x00c2be20

ASCIZ_ALIGNED "$Author: Trance $" 4                                                                                // [0x265e21] 0x009c6000 + 0x265e21 = 0x00c2be21

.fill 0x17, 1, 0x00                                                                                                // [0x265e34] 0x009c6000 + 0x265e34 = 0x00c2be34

ASCIZ_ALIGNED "$Date: 3/30/00 7:58p $" 4                                                                           // [0x265e4b] 0x009c6000 + 0x265e4b = 0x00c2be4b

.fill 0xf, 1, 0x00                                                                                                 // [0x265e64] 0x009c6000 + 0x265e64 = 0x00c2be64

.asciz "NULL"                                                                                                      // [0x265e73] 0x009c6000 + 0x265e73 = 0x00c2be73

.fill 0x23, 1, 0x00                                                                                                // [0x265e78] 0x009c6000 + 0x265e78 = 0x00c2be78

ASCIZ_ALIGNED "Added PNG Support" 4                                                                                // [0x265e9b] 0x009c6000 + 0x265e9b = 0x00c2be9b

.fill 0x4f, 1, 0x00                                                                                                // [0x265eb0] 0x009c6000 + 0x265eb0 = 0x00c2beb0

.asciz "NULL"                                                                                                      // [0x265eff] 0x009c6000 + 0x265eff = 0x00c2beff

.fill 0x37, 1, 0x00                                                                                                // [0x265f04] 0x009c6000 + 0x265f04 = 0x00c2bf04

.asciz "NULL"                                                                                                      // [0x265f3b] 0x009c6000 + 0x265f3b = 0x00c2bf3b

.fill 0xf, 1, 0x00                                                                                                 // [0x265f40] 0x009c6000 + 0x265f40 = 0x00c2bf40

.asciz "YyHhTtMM"                                                                                                  // [0x265f4f] 0x009c6000 + 0x265f4f = 0x00c2bf4f
.byte 0xe8, 0x3f, 0xe8, 0x00, 0x74, 0xba, 0xc2, 0x00                                                               // [0x265f58] 0x009c6000 + 0x265f58 = 0x00c2bf58
