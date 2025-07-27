.intel_syntax noprefix
.align 16
.section .rdata

.globl ??_7type_info@@6B@
.globl ??_7bad_cast@@6B@
.globl ??_C@_0CB@FCJM@Access?5violation?5?9?5no?5RTTI?5data?$CB@
.globl ??_C@_0BC@OEMP@Bad?5dynamic_cast?$CB?$AA@
.globl ??_7bad_typeid@@6B@
.globl ??_C@_0CB@OFOA@Bad?5read?5pointer?5?9?5no?5RTTI?5data?$CB@
.globl ??_C@_0CE@DOMJ@Attempted?5a?5typeid?5of?5NULL?5point@

.globl ??_Etype_info@@UAEPAXI@Z
.set ??_Etype_info@@UAEPAXI@Z, 0x007c568d

??_C@_0CB@FCJM@Access?5violation?5?9?5no?5RTTI?5data?$CB@:
.asciz "Access violation - no RTTI data!"                                                                          // [0xf75c8] 0x008a9000 + 0xf75c8 = 0x009a05c8
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00                                                                     // [0xf75e9] 0x008a9000 + 0xf75e9 = 0x009a05e9

.byte 0xff, 0xff, 0xff, 0xff, 0x74, 0x58, 0x7c, 0x00, 0x88, 0x58, 0x7c, 0x00, 0xe8, 0xb8, 0x9b, 0x00               // [0xf75f0] 0x008a9000 + 0xf75f0 = 0x009a05f0

.long 0x7c58c8                                                                                                     // [0xf7600] 0x008a9000 + 0xf7600 = 0x009a0600
.long ?what@exception@@UBEPBDXZ

.byte 0x20, 0xb9, 0x9b, 0x00

??_7bad_typeid@@6B@:                                                                                               // [0xf760c] 0x008a9000 + 0xf760c = 0x009a060c
.long 0x007c5919
.long ?what@exception@@UBEPBDXZ                                                                                    // [0xf7610] 0x008a9000 + 0xf7610 = 0x009a0610

??_C@_0CB@OFOA@Bad?5read?5pointer?5?9?5no?5RTTI?5data?$CB@:
.asciz "Bad read pointer - no RTTI data!"                                                                          // [0xf7614] 0x008a9000 + 0xf7614 = 0x009a0614

.byte 0x00, 0x00, 0x00                                                                                             // [0xf7635] 0x008a9000 + 0xf7635 = 0x009a0635

??_C@_0CE@DOMJ@Attempted?5a?5typeid?5of?5NULL?5point@:
.asciz "Attempted a typeid of NULL pointer!"                                                                       // [0xf7638] 0x008a9000 + 0xf7638 = 0x009a0638

.byte 0x00, 0x00, 0x00, 0x00                                                                                       // [0xf765c] 0x008a9000 + 0xf765c = 0x009a065c
.byte 0xff, 0xff, 0xff, 0xff, 0xce, 0x59, 0x7c, 0x00, 0xe2, 0x59, 0x7c, 0x00                                       // [0xf7660] 0x008a9000 + 0xf7660 = 0x009a0660

??_C@_0BC@OEMP@Bad?5dynamic_cast?$CB?$AA@:
.asciz "Bad dynamic_cast!"                                                                                         // [0xf766c] 0x008a9000 + 0xf766c = 0x009a066c

.byte 0x00, 0x00                                                                                                   // [0xf767e] 0x008a9000 + 0xf767e = 0x009a067e
.byte 0xff, 0xff, 0xff, 0xff, 0xfe, 0x5a, 0x7c, 0x00, 0x12, 0x5b, 0x7c, 0x00, 0x70, 0xb9, 0x9b, 0x00               // [0xf7680] 0x008a9000 + 0xf7680 = 0x009a0680

??_7bad_cast@@6B@:
.long 0x007c5b48                                                                                                   // [0xf7690] 0x008a9000 + 0xf7690 = 0x009a0690
.long ?what@exception@@UBEPBDXZ
.byte 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00
.byte 0xf1, 0x66, 0x7c, 0x00, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x4d, 0x67, 0x7c, 0x00               // [0xf76a0] 0x008a9000 + 0xf76a0 = 0x009a06a0
.byte 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0xf0, 0x67, 0x7c, 0x00, 0xff, 0xff, 0xff, 0xff               // [0xf76b0] 0x008a9000 + 0xf76b0 = 0x009a06b0
.byte 0x00, 0x00, 0x00, 0x00, 0x48, 0x68, 0x7c, 0x00                                                               // [0xf76c0] 0x008a9000 + 0xf76c0 = 0x009a06c0

.long DAT_009bb9a0                                                                                                 // [0xf76c8] 0x008a9000 + 0xf76c8 = 0x009a06c8
.long ??_Gexception@@UAEPAXI@Z
.long ?what@exception@@UBEPBDXZ                                                                                    // [0xf76d0] 0x008a9000 + 0xf76d0 = 0x009a06d0
.asciz "Unknown exception"                                                                                         // [0xf76d4] 0x008a9000 + 0xf76d4 = 0x009a06d4
.byte 0x00, 0x00                                                                                                   // [0xf76e6] 0x008a9000 + 0xf76e6 = 0x009a06e6
