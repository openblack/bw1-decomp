.intel_syntax noprefix
.align 16

.macro ASCIZ_ALIGNED string alignment
    .asciz "\string"
    .align \alignment
.endm

.section .data

_z_errmsg_Z_NEED_DICT: ASCIZ_ALIGNED "need dictionary" 4                                                           // [0x265f60] 0x009c6000 + 0x265f60 = 0x00c2bf60
ASCIZ_ALIGNED "incorrect data check" 4                                                                             // [0x265f70] 0x009c6000 + 0x265f70 = 0x00c2bf70
ASCIZ_ALIGNED "incorrect header check" 4                                                                           // [0x265f88] 0x009c6000 + 0x265f88 = 0x00c2bf88
ASCIZ_ALIGNED "invalid window size" 4                                                                              // [0x265fa0] 0x009c6000 + 0x265fa0 = 0x00c2bfa0
ASCIZ_ALIGNED "unknown compression method" 4                                                                       // [0x265fb4] 0x009c6000 + 0x265fb4 = 0x00c2bfb4

_z_errmsg:                                                                                                         // [0x265fd0] 0x009c6000 + 0x265fd0 = 0x00c2bfd0
.long _z_errmsg_Z_NEED_DICT
.long _z_errmsg_Z_STREAM_END 
.long 0x00c58370 // ""
.long _z_errmsg_Z_ERRNO
.long _z_errmsg_Z_STREAM_ERROR
.long _z_errmsg_Z_DATA_ERROR
.long _z_errmsg_Z_MEM_ERROR
.long _z_errmsg_Z_BUF_ERROR
.long _z_errmsg_Z_VERSION_ERROR
.long 0x00c58370 // ""

_z_errmsg_Z_VERSION_ERROR: ASCIZ_ALIGNED "incompatible version" 4                                                  // [0x265ff8] 0x009c6000 + 0x265ff8 = 0x00c2bff8
_z_errmsg_Z_BUF_ERROR:     ASCIZ_ALIGNED "buffer error" 4                                                          // [0x266010] 0x009c6000 + 0x266010 = 0x00c2c010
_z_errmsg_Z_MEM_ERROR:     ASCIZ_ALIGNED "insufficient memory" 4                                                   // [0x266020] 0x009c6000 + 0x266020 = 0x00c2c020
_z_errmsg_Z_DATA_ERROR:    ASCIZ_ALIGNED "data error" 4                                                            // [0x266034] 0x009c6000 + 0x266034 = 0x00c2c034
_z_errmsg_Z_STREAM_ERROR:  ASCIZ_ALIGNED "stream error" 4                                                          // [0x266040] 0x009c6000 + 0x266040 = 0x00c2c040
_z_errmsg_Z_ERRNO:         ASCIZ_ALIGNED "file error" 4                                                            // [0x266050] 0x009c6000 + 0x266050 = 0x00c2c050
_z_errmsg_Z_STREAM_END:    ASCIZ_ALIGNED "stream end" 4                                                            // [0x26605c] 0x009c6000 + 0x26605c = 0x00c2c05c

.section .text

_zlibVersion:            mov              eax, 0x00c2ba74                               // 0x007c1060    b874bac200
                         ret                                                            // 0x007c1065    c3
                         nop                                                            // 0x007c1066    90
                         nop                                                            // 0x007c1067    90
                         nop                                                            // 0x007c1068    90
                         nop                                                            // 0x007c1069    90
                         nop                                                            // 0x007c106a    90
                         nop                                                            // 0x007c106b    90
                         nop                                                            // 0x007c106c    90
                         nop                                                            // 0x007c106d    90
                         nop                                                            // 0x007c106e    90
                         nop                                                            // 0x007c106f    90

_zError:                 {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007c1070    8b442404
                         mov              edx, 0x00c2bfd8                               // 0x007c1074    bad8bfc200
                         {disp32} lea     ecx, dword ptr [eax * 0x4 + 0x00000000]       // 0x007c1079    8d0c8500000000
                         sub.s            edx, ecx                                      // 0x007c1080    2bd1
                         mov              eax, dword ptr [edx]                          // 0x007c1082    8b02
                         ret                                                            // 0x007c1084    c3
                         nop                                                            // 0x007c1085    90
                         nop                                                            // 0x007c1086    90
                         nop                                                            // 0x007c1087    90
                         nop                                                            // 0x007c1088    90
                         nop                                                            // 0x007c1089    90
                         nop                                                            // 0x007c108a    90
                         nop                                                            // 0x007c108b    90
                         nop                                                            // 0x007c108c    90
                         nop                                                            // 0x007c108d    90
                         nop                                                            // 0x007c108e    90
                         nop                                                            // 0x007c108f    90

_zcalloc:                {disp8} mov      eax, dword ptr [esp + 0x0c]                   // 0x007c1090    8b44240c
                         {disp8} mov      ecx, dword ptr [esp + 0x08]                   // 0x007c1094    8b4c2408
                         push             eax                                           // 0x007c1098    50
                         push             ecx                                           // 0x007c1099    51
                         call             _calloc                                       // 0x007c109a    e80d820000
                         add              esp, 0x08                                     // 0x007c109f    83c408
                         ret                                                            // 0x007c10a2    c3
                         nop                                                            // 0x007c10a3    90
                         nop                                                            // 0x007c10a4    90
                         nop                                                            // 0x007c10a5    90
                         nop                                                            // 0x007c10a6    90
                         nop                                                            // 0x007c10a7    90
                         nop                                                            // 0x007c10a8    90
                         nop                                                            // 0x007c10a9    90
                         nop                                                            // 0x007c10aa    90
                         nop                                                            // 0x007c10ab    90
                         nop                                                            // 0x007c10ac    90
                         nop                                                            // 0x007c10ad    90
                         nop                                                            // 0x007c10ae    90
                         nop                                                            // 0x007c10af    90

_zcfree:                 {disp8} mov      eax, dword ptr [esp + 0x08]                   // 0x007c10b0    8b442408
                         push             eax                                           // 0x007c10b4    50
                         call             _free                                         // 0x007c10b5    e8cc560000
                         pop              ecx                                           // 0x007c10ba    59
                         ret                                                            // 0x007c10bb    c3
                         nop                                                            // 0x007c10bc    90
                         nop                                                            // 0x007c10bd    90
                         nop                                                            // 0x007c10be    90
                         nop                                                            // 0x007c10bf    90
