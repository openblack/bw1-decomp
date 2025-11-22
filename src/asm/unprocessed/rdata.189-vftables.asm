.intel_syntax noprefix
.section .rdata

.macro VftableAndRTTI name
    .long ??_R4\name@@6B@
__vt__\name:
??_7\name@@6B@:
.endm

.long 0x41200000                                                                                                   // [0xf1934] 0x008a9000 + 0xf1934 = 0x0099a934
.float 365.25
.float 86400.0                                                     // days in year and seconds in day              // [0xf1938] 0x008a9000 + 0xf1938 = 0x0099a938
.long 0x447a0000, 0x41200000                                                                                       // [0xf1940] 0x008a9000 + 0xf1940 = 0x0099a940
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf1948] 0x008a9000 + 0xf1948 = 0x0099a948
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf1950] 0x008a9000 + 0xf1950 = 0x0099a950
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf1958] 0x008a9000 + 0xf1958 = 0x0099a958
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf1960] 0x008a9000 + 0xf1960 = 0x0099a960
.long 0xc1000000, 0x45cccccd                                                                                       // [0xf1968] 0x008a9000 + 0xf1968 = 0x0099a968
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf1970] 0x008a9000 + 0xf1970 = 0x0099a970
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf1978] 0x008a9000 + 0xf1978 = 0x0099a978
.long 0x41200000                                                                                                   // [0xf1980] 0x008a9000 + 0xf1980 = 0x0099a980
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf1984] 0x008a9000 + 0xf1984 = 0x0099a984
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf198c] 0x008a9000 + 0xf198c = 0x0099a98c
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf1994] 0x008a9000 + 0xf1994 = 0x0099a994
.float 1000.0                                                                                                      // [0xf199c] 0x008a9000 + 0xf199c = 0x0099a99c
.long 0x41200000                                                                                                   // [0xf19a0] 0x008a9000 + 0xf19a0 = 0x0099a9a0
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf19a4] 0x008a9000 + 0xf19a4 = 0x0099a9a4
.float 1000.0                                                                                                      // [0xf19ac] 0x008a9000 + 0xf19ac = 0x0099a9ac
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf19b0] 0x008a9000 + 0xf19b0 = 0x0099a9b0

VftableAndRTTI VillagerName                                                                                        // [0xf19b8] 0x008a9000 + 0xf19b8 = 0x0099a9b8
.long ?AddDrawing@VillagerName@@UAEXXZ

.long 0x41200000                                                                                                   // [0xf19c0] 0x008a9000 + 0xf19c0 = 0x0099a9c0
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf19c4] 0x008a9000 + 0xf19c4 = 0x0099a9c4
.long 0x7f7fffff                                                                                                   // [0xf19cc] 0x008a9000 + 0xf19cc = 0x0099a9cc
.long 0x41200000                                                                                                   // [0xf19d0] 0x008a9000 + 0xf19d0 = 0x0099a9d0
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf19d4] 0x008a9000 + 0xf19d4 = 0x0099a9d4
.long 0x3f333333                                                                                                   // [0xf19dc] 0x008a9000 + 0xf19dc = 0x0099a9dc
.long 0x7f7fffff, 0x41200000                                                                                       // [0xf19e0] 0x008a9000 + 0xf19e0 = 0x0099a9e0
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf19e8] 0x008a9000 + 0xf19e8 = 0x0099a9e8
.long 0x3f333333, 0x3f000000                                                                                       // [0xf19f0] 0x008a9000 + 0xf19f0 = 0x0099a9f0
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf19f8] 0x008a9000 + 0xf19f8 = 0x0099a9f8
.long 0x3f333333                                                                                                   // [0xf1a00] 0x008a9000 + 0xf1a00 = 0x0099aa00
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf1a04] 0x008a9000 + 0xf1a04 = 0x0099aa04
.long 0x7f7fffff                                                                                                   // [0xf1a0c] 0x008a9000 + 0xf1a0c = 0x0099aa0c
.long 0x41200000, 0x40490fdb                                                                                       // [0xf1a10] 0x008a9000 + 0xf1a10 = 0x0099aa10
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf1a18] 0x008a9000 + 0xf1a18 = 0x0099aa18

VftableAndRTTI GVillagerStateTableInfo                                                                             // [0xf1a20] 0x008a9000 + 0xf1a20 = 0x0099aa20
.long ?Serialise@Base@@UAEXAAVArchive@@@Z
.long ??_GGVillagerStateTableInfo@@UAEPAXI@Z
.long ?Delete@Base@@UAEXH@Z
.long ?ToBeDeleted@Base@@UAEXH@Z
.long ?Get3DSoundPos@Base@@UAEHPAULHPoint@@@Z
.long ?CleanUpForSerialisation@Base@@UAEXXZ
.long ?Dump@Base@@UAEXXZ
.long ?GetDebugText@Base@@UBEPBDXZ
.long ?GetDebugColor@GBaseInfo@@UBE?AVLHColor@@XZ
.long ?GetBaseInfo@GVillagerStateTableInfo@@UAEPAVGBaseInfo@@AAI@Z
.long ?UpdateValue@GBaseInfo@@UAEXMKK@Z

.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf1a50] 0x008a9000 + 0xf1a50 = 0x0099aa50
.long 0x3f333333                                                                                                   // [0xf1a58] 0x008a9000 + 0xf1a58 = 0x0099aa58
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf1a5c] 0x008a9000 + 0xf1a5c = 0x0099aa5c
