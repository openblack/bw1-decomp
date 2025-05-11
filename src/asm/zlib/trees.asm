.intel_syntax noprefix
.align 16

.extern rdata_bytes

.globl __tr_init
.globl __tr_stored_block
.globl __tr_align
.globl __tr_flush_block
.globl _extra_lbits
.globl _extra_dbits
.globl _extra_blbits
.globl _static_ltree
.globl _static_dtree

.section .rdata

_extra_lbits:                                                                                                      // [0xf692c] 0x008a9000 + 0xf692c = 0x0099f92c
.long 0,0,0,0,0,0,0,0,1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,0

 _extra_dbits:                                                                                                     // [0xf69a0] 0x008a9000 + 0xf69a0 = 0x0099f9a0
.long 0,0,0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12,13,13

_extra_blbits:                                                                                                     // [0xf6a18] 0x008a9000 + 0xf6a18 = 0x0099fa18
.long 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,3,7

_bl_order:                                                                                                         // [0xf6a64] 0x008a9000 + 0xf6a64 = 0x0099fa64
.byte 16,17,18,0,8,7,9,6,10,5,11,4,12,3,13,2,14,1,15
.align 4

_static_ltree:                                                                                                     // [0xf6a78] 0x008a9000 + 0xf6a78 = 0x0099fa78
.word  12,  8, 140,  8,  76,  8, 204,  8,  44,  8
.word 172,  8, 108,  8, 236,  8,  28,  8, 156,  8
.word  92,  8, 220,  8,  60,  8, 188,  8, 124,  8
.word 252,  8,   2,  8, 130,  8,  66,  8, 194,  8
.word  34,  8, 162,  8,  98,  8, 226,  8,  18,  8
.word 146,  8,  82,  8, 210,  8,  50,  8, 178,  8
.word 114,  8, 242,  8,  10,  8, 138,  8,  74,  8
.word 202,  8,  42,  8, 170,  8, 106,  8, 234,  8
.word  26,  8, 154,  8,  90,  8, 218,  8,  58,  8
.word 186,  8, 122,  8, 250,  8,   6,  8, 134,  8
.word  70,  8, 198,  8,  38,  8, 166,  8, 102,  8
.word 230,  8,  22,  8, 150,  8,  86,  8, 214,  8
.word  54,  8, 182,  8, 118,  8, 246,  8,  14,  8
.word 142,  8,  78,  8, 206,  8,  46,  8, 174,  8
.word 110,  8, 238,  8,  30,  8, 158,  8,  94,  8
.word 222,  8,  62,  8, 190,  8, 126,  8, 254,  8
.word   1,  8, 129,  8,  65,  8, 193,  8,  33,  8
.word 161,  8,  97,  8, 225,  8,  17,  8, 145,  8
.word  81,  8, 209,  8,  49,  8, 177,  8, 113,  8
.word 241,  8,   9,  8, 137,  8,  73,  8, 201,  8
.word  41,  8, 169,  8, 105,  8, 233,  8,  25,  8
.word 153,  8,  89,  8, 217,  8,  57,  8, 185,  8
.word 121,  8, 249,  8,   5,  8, 133,  8,  69,  8
.word 197,  8,  37,  8, 165,  8, 101,  8, 229,  8
.word  21,  8, 149,  8,  85,  8, 213,  8,  53,  8
.word 181,  8, 117,  8, 245,  8,  13,  8, 141,  8
.word  77,  8, 205,  8,  45,  8, 173,  8, 109,  8
.word 237,  8,  29,  8, 157,  8,  93,  8, 221,  8
.word  61,  8, 189,  8, 125,  8, 253,  8,  19,  9
.word 275,  9, 147,  9, 403,  9,  83,  9, 339,  9
.word 211,  9, 467,  9,  51,  9, 307,  9, 179,  9
.word 435,  9, 115,  9, 371,  9, 243,  9, 499,  9
.word  11,  9, 267,  9, 139,  9, 395,  9,  75,  9
.word 331,  9, 203,  9, 459,  9,  43,  9, 299,  9
.word 171,  9, 427,  9, 107,  9, 363,  9, 235,  9
.word 491,  9,  27,  9, 283,  9, 155,  9, 411,  9
.word  91,  9, 347,  9, 219,  9, 475,  9,  59,  9
.word 315,  9, 187,  9, 443,  9, 123,  9, 379,  9
.word 251,  9, 507,  9,   7,  9, 263,  9, 135,  9
.word 391,  9,  71,  9, 327,  9, 199,  9, 455,  9
.word  39,  9, 295,  9, 167,  9, 423,  9, 103,  9
.word 359,  9, 231,  9, 487,  9,  23,  9, 279,  9
.word 151,  9, 407,  9,  87,  9, 343,  9, 215,  9
.word 471,  9,  55,  9, 311,  9, 183,  9, 439,  9
.word 119,  9, 375,  9, 247,  9, 503,  9,  15,  9
.word 271,  9, 143,  9, 399,  9,  79,  9, 335,  9
.word 207,  9, 463,  9,  47,  9, 303,  9, 175,  9
.word 431,  9, 111,  9, 367,  9, 239,  9, 495,  9
.word  31,  9, 287,  9, 159,  9, 415,  9,  95,  9
.word 351,  9, 223,  9, 479,  9,  63,  9, 319,  9
.word 191,  9, 447,  9, 127,  9, 383,  9, 255,  9
.word 511,  9,   0,  7,  64,  7,  32,  7,  96,  7
.word  16,  7,  80,  7,  48,  7, 112,  7,   8,  7
.word  72,  7,  40,  7, 104,  7,  24,  7,  88,  7
.word  56,  7, 120,  7,   4,  7,  68,  7,  36,  7
.word 100,  7,  20,  7,  84,  7,  52,  7, 116,  7
.word   3,  8, 131,  8,  67,  8, 195,  8,  35,  8
.word 163,  8,  99,  8, 227,  8

_static_dtree:                                                                                                     // [0xf6ef8] 0x008a9000 + 0xf6ef8 = 0x0099fef8
.word 0, 5, 16, 5, 8, 5, 24, 5, 4, 5, 20, 5, 12, 5, 28, 5, 2, 5, 18, 5, 10, 5, 26, 5, 6, 5, 22, 5, 14, 5, 30, 5, 1, 5, 17, 5, 9, 5, 25, 5, 5, 5, 21, 5, 13, 5, 29, 5, 3, 5, 19, 5, 11, 5, 27, 5, 7, 5, 23, 5

__dist_code:                                                                                                       // [0xf6f70] 0x008a9000 + 0xf6f70 = 0x0099ff70
.byte 0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15,  0,  0, 16, 17, 18, 18, 19, 19, 20, 20, 20, 20, 21, 21, 21, 21, 22, 22, 22, 22, 22, 22, 22, 22, 23, 23, 23, 23, 23, 23, 23, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29

__length_code:                                                                                                     // [0xf7170] 0x008a9000 + 0xf7170 = 0x009a0170
.byte 0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14, 15, 15, 15, 15, 16, 16, 16, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 17, 17, 18, 18, 18, 18, 18, 18, 18, 18, 19, 19, 19, 19, 19, 19, 19, 19, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 28

_base_length:                                                                                                      // [0xf7270] 0x008a9000 + 0xf7270 = 0x009a0270
.long 0, 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 20, 24, 28, 32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 0

_base_dist:                                                                                                        // [0xf72e4] 0x008a9000 + 0xf72e4 = 0x009a02e4
.long 0, 1, 2, 3, 4, 6, 8, 12, 16, 24, 32, 48, 64, 96, 128, 192, 256, 384, 512, 768, 1024, 1536, 2048, 3072, 4096, 6144, 8192, 12288, 16384, 24576

.section .data


.section .text

__tr_init:               call             _tr_static_init                               // 0x007c11f0    e86b000000
                         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007c11f5    8b442404
                         push             eax                                           // 0x007c11f9    50
                         {disp32} lea     ecx, dword ptr [eax + 0x0000008c]             // 0x007c11fa    8d888c000000
                         {disp32} lea     edx, dword ptr [eax + 0x00000980]             // 0x007c1200    8d9080090000
                         {disp32} mov     dword ptr [eax + 0x00000b10], ecx             // 0x007c1206    8988100b0000
                         {disp32} lea     ecx, dword ptr [eax + 0x00000a74]             // 0x007c120c    8d88740a0000
                         {disp32} mov     dword ptr [eax + 0x00000b28], ecx             // 0x007c1212    8988280b0000
                         xor.s            ecx, ecx                                      // 0x007c1218    33c9
                         {disp32} mov     dword ptr [eax + 0x00000b18], 0x00c2c068      // 0x007c121a    c780180b000068c0c200
                         {disp32} mov     dword ptr [eax + 0x00000b1c], edx             // 0x007c1224    89901c0b0000
                         {disp32} mov     dword ptr [eax + 0x00000b24], 0x00c2c080      // 0x007c122a    c780240b000080c0c200
                         {disp32} mov     dword ptr [eax + 0x00000b30], 0x00c2c098      // 0x007c1234    c780300b000098c0c200
                         {disp32} mov     word ptr [eax + 0x000016b0], cx               // 0x007c123e    668988b0160000
                         {disp32} mov     dword ptr [eax + 0x000016b4], ecx             // 0x007c1245    8988b4160000
                         {disp32} mov     dword ptr [eax + 0x000016ac], 0x00000008      // 0x007c124b    c780ac16000008000000
                         call             _init_block                                   // 0x007c1255    e816000000
                         pop              ecx                                           // 0x007c125a    59
                         ret                                                            // 0x007c125b    c3
                         nop                                                            // 0x007c125c    90
                         nop                                                            // 0x007c125d    90
                         nop                                                            // 0x007c125e    90
                         nop                                                            // 0x007c125f    90
_tr_static_init:         ret                                                            // 0x007c1260    c3
                         nop                                                            // 0x007c1261    90
                         nop                                                            // 0x007c1262    90
                         nop                                                            // 0x007c1263    90
                         nop                                                            // 0x007c1264    90
                         nop                                                            // 0x007c1265    90
                         nop                                                            // 0x007c1266    90
                         nop                                                            // 0x007c1267    90
                         nop                                                            // 0x007c1268    90
                         nop                                                            // 0x007c1269    90
                         nop                                                            // 0x007c126a    90
                         nop                                                            // 0x007c126b    90
                         nop                                                            // 0x007c126c    90
                         nop                                                            // 0x007c126d    90
                         nop                                                            // 0x007c126e    90
                         nop                                                            // 0x007c126f    90
_init_block:             {disp8} mov      edx, dword ptr [esp + 0x04]                   // 0x007c1270    8b542404
                         push             esi                                           // 0x007c1274    56
                         mov              ecx, 0x0000011e                               // 0x007c1275    b91e010000
                         xor.s            esi, esi                                      // 0x007c127a    33f6
                         {disp32} lea     eax, dword ptr [edx + 0x0000008c]             // 0x007c127c    8d828c000000
_jmp_addr_0x007c1282:    mov              word ptr [eax], si                            // 0x007c1282    668930
                         add              eax, 0x04                                     // 0x007c1285    83c004
                         dec              ecx                                           // 0x007c1288    49
                         {disp8} jne      _jmp_addr_0x007c1282                          // 0x007c1289    75f7
                         {disp32} lea     eax, dword ptr [edx + 0x00000980]             // 0x007c128b    8d8280090000
                         mov              ecx, 0x0000001e                               // 0x007c1291    b91e000000
_jmp_addr_0x007c1296:    mov              word ptr [eax], si                            // 0x007c1296    668930
                         add              eax, 0x04                                     // 0x007c1299    83c004
                         dec              ecx                                           // 0x007c129c    49
                         {disp8} jne      _jmp_addr_0x007c1296                          // 0x007c129d    75f7
                         {disp32} lea     eax, dword ptr [edx + 0x00000a74]             // 0x007c129f    8d82740a0000
                         mov              ecx, 0x00000013                               // 0x007c12a5    b913000000
_jmp_addr_0x007c12aa:    mov              word ptr [eax], si                            // 0x007c12aa    668930
                         add              eax, 0x04                                     // 0x007c12ad    83c004
                         dec              ecx                                           // 0x007c12b0    49
                         {disp8} jne      _jmp_addr_0x007c12aa                          // 0x007c12b1    75f7
                         {disp32} mov     dword ptr [edx + 0x000016a4], esi             // 0x007c12b3    89b2a4160000
                         {disp32} mov     dword ptr [edx + 0x000016a0], esi             // 0x007c12b9    89b2a0160000
                         {disp32} mov     dword ptr [edx + 0x000016a8], esi             // 0x007c12bf    89b2a8160000
                         {disp32} mov     dword ptr [edx + 0x00001698], esi             // 0x007c12c5    89b298160000
                         {disp32} mov     word ptr [edx + 0x0000048c], 0x0001           // 0x007c12cb    66c7828c0400000100
                         pop              esi                                           // 0x007c12d4    5e
                         ret                                                            // 0x007c12d5    c3
                         nop                                                            // 0x007c12d6    90
                         nop                                                            // 0x007c12d7    90
                         nop                                                            // 0x007c12d8    90
                         nop                                                            // 0x007c12d9    90
                         nop                                                            // 0x007c12da    90
                         nop                                                            // 0x007c12db    90
                         nop                                                            // 0x007c12dc    90
                         nop                                                            // 0x007c12dd    90
                         nop                                                            // 0x007c12de    90
                         nop                                                            // 0x007c12df    90
__tr_stored_block:       {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007c12e0    8b442404
                         {disp32} mov     ecx, dword ptr [eax + 0x000016b4]             // 0x007c12e4    8b88b4160000
                         cmp              ecx, 0x0d                                     // 0x007c12ea    83f90d
                         {disp8} jle      _jmp_addr_0x007c1351                          // 0x007c12ed    7e62
                         {disp8} mov      edx, dword ptr [esp + 0x10]                   // 0x007c12ef    8b542410
                         push             ebx                                           // 0x007c12f3    53
                         push             esi                                           // 0x007c12f4    56
                         mov.s            esi, edx                                      // 0x007c12f5    8bf2
                         shl              esi, cl                                       // 0x007c12f7    d3e6
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x007c12f9    8b4808
                         push             edi                                           // 0x007c12fc    57
                         or               word ptr [eax + 0x16b0], si                   // 0x007c12fd    6609b0b0160000
                         {disp8} mov      esi, dword ptr [eax + 0x14]                   // 0x007c1304    8b7014
                         {disp32} mov     bl, byte ptr [eax + 0x000016b0]               // 0x007c1307    8a98b0160000
                         mov              byte ptr [ecx + esi * 0x1], bl                // 0x007c130d    881c31
                         {disp8} mov      esi, dword ptr [eax + 0x14]                   // 0x007c1310    8b7014
                         {disp8} mov      edi, dword ptr [eax + 0x08]                   // 0x007c1313    8b7808
                         xor.s            ecx, ecx                                      // 0x007c1316    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x000016b1]               // 0x007c1318    8a88b1160000
                         inc              esi                                           // 0x007c131e    46
                         {disp8} mov      dword ptr [eax + 0x14], esi                   // 0x007c131f    897014
                         mov              byte ptr [edi + esi * 0x1], cl                // 0x007c1322    880c37
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                   // 0x007c1325    8b4814
                         {disp32} mov     esi, dword ptr [eax + 0x000016b4]             // 0x007c1328    8bb0b4160000
                         inc              ecx                                           // 0x007c132e    41
                         {disp8} mov      dword ptr [eax + 0x14], ecx                   // 0x007c132f    894814
                         mov              cx, 0x0010                                    // 0x007c1332    66b91000
                         sub.s            cx, si                                        // 0x007c1336    662bce
                         pop              edi                                           // 0x007c1339    5f
                         shr              dx, cl                                        // 0x007c133a    66d3ea
                         add              esi, -0x0d                                    // 0x007c133d    83c6f3
                         {disp32} mov     dword ptr [eax + 0x000016b4], esi             // 0x007c1340    89b0b4160000
                         pop              esi                                           // 0x007c1346    5e
                         pop              ebx                                           // 0x007c1347    5b
                         {disp32} mov     word ptr [eax + 0x000016b0], dx               // 0x007c1348    668990b0160000
                         {disp8} jmp      _jmp_addr_0x007c1367                          // 0x007c134f    eb16
_jmp_addr_0x007c1351:    {disp8} mov      edx, dword ptr [esp + 0x10]                   // 0x007c1351    8b542410
                         shl              edx, cl                                       // 0x007c1355    d3e2
                         or               word ptr [eax + 0x16b0], dx                   // 0x007c1357    660990b0160000
                         add              ecx, 0x3                                      // 0x007c135e    83c103
                         {disp32} mov     dword ptr [eax + 0x000016b4], ecx             // 0x007c1361    8988b4160000
_jmp_addr_0x007c1367:    {disp8} mov      ecx, dword ptr [esp + 0x0c]                   // 0x007c1367    8b4c240c
                         {disp8} mov      edx, dword ptr [esp + 0x08]                   // 0x007c136b    8b542408
                         push             0x1                                           // 0x007c136f    6a01
                         push             ecx                                           // 0x007c1371    51
                         push             edx                                           // 0x007c1372    52
                         push             eax                                           // 0x007c1373    50
                         call             _copy_block                                   // 0x007c1374    e8171a0000
                         add              esp, 0x10                                     // 0x007c1379    83c410
                         ret                                                            // 0x007c137c    c3
                         nop                                                            // 0x007c137d    90
                         nop                                                            // 0x007c137e    90
                         nop                                                            // 0x007c137f    90
__tr_align:              push             ebx                                           // 0x007c1380    53
                         push             esi                                           // 0x007c1381    56
                         {disp8} mov      esi, dword ptr [esp + 0x0c]                   // 0x007c1382    8b74240c
                         push             edi                                           // 0x007c1386    57
                         mov              eax, 0x00000002                               // 0x007c1387    b802000000
                         {disp32} mov     ecx, dword ptr [esi + 0x000016b4]             // 0x007c138c    8b8eb4160000
                         cmp              ecx, 0x0d                                     // 0x007c1392    83f90d
                         {disp8} jle      _jmp_addr_0x007c13f4                          // 0x007c1395    7e5d
                         {disp8} mov      edx, dword ptr [esi + 0x14]                   // 0x007c1397    8b5614
                         shl              eax, cl                                       // 0x007c139a    d3e0
                         {disp8} mov      ecx, dword ptr [esi + 0x08]                   // 0x007c139c    8b4e08
                         or               word ptr [esi + 0x16b0], ax                   // 0x007c139f    660986b0160000
                         {disp32} mov     al, byte ptr [esi + 0x000016b0]               // 0x007c13a6    8a86b0160000
                         mov              byte ptr [ecx + edx * 0x1], al                // 0x007c13ac    880411
                         {disp8} mov      ecx, dword ptr [esi + 0x14]                   // 0x007c13af    8b4e14
                         {disp8} mov      edx, dword ptr [esi + 0x08]                   // 0x007c13b2    8b5608
                         inc              ecx                                           // 0x007c13b5    41
                         {disp8} mov      dword ptr [esi + 0x14], ecx                   // 0x007c13b6    894e14
                         mov.s            eax, ecx                                      // 0x007c13b9    8bc1
                         xor.s            ecx, ecx                                      // 0x007c13bb    33c9
                         {disp32} mov     cl, byte ptr [esi + 0x000016b1]               // 0x007c13bd    8a8eb1160000
                         mov              byte ptr [edx + eax * 0x1], cl                // 0x007c13c3    880c02
                         {disp8} mov      eax, dword ptr [esi + 0x14]                   // 0x007c13c6    8b4614
                         inc              eax                                           // 0x007c13c9    40
                         mov              cx, 0x0010                                    // 0x007c13ca    66b91000
                         {disp8} mov      dword ptr [esi + 0x14], eax                   // 0x007c13ce    894614
                         {disp32} mov     eax, dword ptr [esi + 0x000016b4]             // 0x007c13d1    8b86b4160000
                         sub.s            cx, ax                                        // 0x007c13d7    662bc8
                         mov              edx, 0x00000002                               // 0x007c13da    ba02000000
                         shr              dx, cl                                        // 0x007c13df    66d3ea
                         add              eax, -0x0d                                    // 0x007c13e2    83c0f3
                         {disp32} mov     dword ptr [esi + 0x000016b4], eax             // 0x007c13e5    8986b4160000
                         {disp32} mov     word ptr [esi + 0x000016b0], dx               // 0x007c13eb    668996b0160000
                         {disp8} jmp      _jmp_addr_0x007c1406                          // 0x007c13f2    eb12
_jmp_addr_0x007c13f4:    shl              eax, cl                                       // 0x007c13f4    d3e0
                         or               word ptr [esi + 0x16b0], ax                   // 0x007c13f6    660986b0160000
                         add              ecx, 0x3                                      // 0x007c13fd    83c103
                         {disp32} mov     dword ptr [esi + 0x000016b4], ecx             // 0x007c1400    898eb4160000
_jmp_addr_0x007c1406:    {disp32} mov     ecx, dword ptr [esi + 0x000016b4]             // 0x007c1406    8b8eb4160000
                         xor.s            edx, edx                                      // 0x007c140c    33d2
                         {disp32} mov     dx, word ptr [rdata_bytes + 0xf6e7a]          // 0x007c140e    668b157afe9900
                         mov              eax, 0x00000010                               // 0x007c1415    b810000000
                         sub.s            eax, edx                                      // 0x007c141a    2bc2
                         cmp.s            ecx, eax                                      // 0x007c141c    3bc8
                         {disp32} mov     eax, dword ptr [rdata_bytes + 0xf6e78]        // 0x007c141e    a178fe9900
                         {disp8} jle      _jmp_addr_0x007c1483                          // 0x007c1423    7e5e
                         and              eax, 0x0000ffff                               // 0x007c1425    25ffff0000
                         mov.s            edi, eax                                      // 0x007c142a    8bf8
                         shl              edi, cl                                       // 0x007c142c    d3e7
                         {disp8} mov      ecx, dword ptr [esi + 0x08]                   // 0x007c142e    8b4e08
                         or               word ptr [esi + 0x16b0], di                   // 0x007c1431    6609beb0160000
                         {disp8} mov      edi, dword ptr [esi + 0x14]                   // 0x007c1438    8b7e14
                         {disp32} mov     bl, byte ptr [esi + 0x000016b0]               // 0x007c143b    8a9eb0160000
                         mov              byte ptr [ecx + edi * 0x1], bl                // 0x007c1441    881c39
                         {disp8} mov      edi, dword ptr [esi + 0x14]                   // 0x007c1444    8b7e14
                         {disp8} mov      ebx, dword ptr [esi + 0x08]                   // 0x007c1447    8b5e08
                         xor.s            ecx, ecx                                      // 0x007c144a    33c9
                         {disp32} mov     cl, byte ptr [esi + 0x000016b1]               // 0x007c144c    8a8eb1160000
                         inc              edi                                           // 0x007c1452    47
                         {disp8} mov      dword ptr [esi + 0x14], edi                   // 0x007c1453    897e14
                         mov              byte ptr [ebx + edi * 0x1], cl                // 0x007c1456    880c3b
                         {disp8} mov      ecx, dword ptr [esi + 0x14]                   // 0x007c1459    8b4e14
                         {disp32} mov     edi, dword ptr [esi + 0x000016b4]             // 0x007c145c    8bbeb4160000
                         inc              ecx                                           // 0x007c1462    41
                         {disp8} mov      dword ptr [esi + 0x14], ecx                   // 0x007c1463    894e14
                         mov              cx, 0x0010                                    // 0x007c1466    66b91000
                         sub.s            cx, di                                        // 0x007c146a    662bcf
                         {disp8} lea      edx, dword ptr [edi + edx * 0x1 + -0x10]      // 0x007c146d    8d5417f0
                         shr              ax, cl                                        // 0x007c1471    66d3e8
                         {disp32} mov     dword ptr [esi + 0x000016b4], edx             // 0x007c1474    8996b4160000
                         {disp32} mov     word ptr [esi + 0x000016b0], ax               // 0x007c147a    668986b0160000
                         {disp8} jmp      _jmp_addr_0x007c1494                          // 0x007c1481    eb11
_jmp_addr_0x007c1483:    shl              eax, cl                                       // 0x007c1483    d3e0
                         or               word ptr [esi + 0x16b0], ax                   // 0x007c1485    660986b0160000
                         add.s            ecx, edx                                      // 0x007c148c    03ca
                         {disp32} mov     dword ptr [esi + 0x000016b4], ecx             // 0x007c148e    898eb4160000
_jmp_addr_0x007c1494:    push             esi                                           // 0x007c1494    56
                         call             _bi_flush                                     // 0x007c1495    e8e6170000
                         {disp32} mov     ecx, dword ptr [esi + 0x000016b4]             // 0x007c149a    8b8eb4160000
                         {disp32} mov     edx, dword ptr [esi + 0x000016ac]             // 0x007c14a0    8b96ac160000
                         sub.s            edx, ecx                                      // 0x007c14a6    2bd1
                         add              esp, 0x04                                     // 0x007c14a8    83c404
                         add              edx, 0x0b                                     // 0x007c14ab    83c20b
                         cmp              edx, 0x09                                     // 0x007c14ae    83fa09
                         {disp32} jge     _jmp_addr_0x007c15c7                          // 0x007c14b1    0f8d10010000
                         cmp              ecx, 0x0d                                     // 0x007c14b7    83f90d
                         mov              eax, 0x00000002                               // 0x007c14ba    b802000000
                         {disp8} jle      _jmp_addr_0x007c151e                          // 0x007c14bf    7e5d
                         {disp8} mov      edx, dword ptr [esi + 0x14]                   // 0x007c14c1    8b5614
                         shl              eax, cl                                       // 0x007c14c4    d3e0
                         {disp8} mov      ecx, dword ptr [esi + 0x08]                   // 0x007c14c6    8b4e08
                         or               word ptr [esi + 0x16b0], ax                   // 0x007c14c9    660986b0160000
                         {disp32} mov     al, byte ptr [esi + 0x000016b0]               // 0x007c14d0    8a86b0160000
                         mov              byte ptr [ecx + edx * 0x1], al                // 0x007c14d6    880411
                         {disp8} mov      ecx, dword ptr [esi + 0x14]                   // 0x007c14d9    8b4e14
                         {disp8} mov      edx, dword ptr [esi + 0x08]                   // 0x007c14dc    8b5608
                         inc              ecx                                           // 0x007c14df    41
                         {disp8} mov      dword ptr [esi + 0x14], ecx                   // 0x007c14e0    894e14
                         mov.s            eax, ecx                                      // 0x007c14e3    8bc1
                         xor.s            ecx, ecx                                      // 0x007c14e5    33c9
                         {disp32} mov     cl, byte ptr [esi + 0x000016b1]               // 0x007c14e7    8a8eb1160000
                         mov              byte ptr [edx + eax * 0x1], cl                // 0x007c14ed    880c02
                         {disp8} mov      eax, dword ptr [esi + 0x14]                   // 0x007c14f0    8b4614
                         inc              eax                                           // 0x007c14f3    40
                         mov              cx, 0x0010                                    // 0x007c14f4    66b91000
                         {disp8} mov      dword ptr [esi + 0x14], eax                   // 0x007c14f8    894614
                         {disp32} mov     eax, dword ptr [esi + 0x000016b4]             // 0x007c14fb    8b86b4160000
                         sub.s            cx, ax                                        // 0x007c1501    662bc8
                         mov              edx, 0x00000002                               // 0x007c1504    ba02000000
                         shr              dx, cl                                        // 0x007c1509    66d3ea
                         add              eax, -0x0d                                    // 0x007c150c    83c0f3
                         {disp32} mov     dword ptr [esi + 0x000016b4], eax             // 0x007c150f    8986b4160000
                         {disp32} mov     word ptr [esi + 0x000016b0], dx               // 0x007c1515    668996b0160000
                         {disp8} jmp      _jmp_addr_0x007c1530                          // 0x007c151c    eb12
_jmp_addr_0x007c151e:    shl              eax, cl                                       // 0x007c151e    d3e0
                         or               word ptr [esi + 0x16b0], ax                   // 0x007c1520    660986b0160000
                         add              ecx, 0x3                                      // 0x007c1527    83c103
                         {disp32} mov     dword ptr [esi + 0x000016b4], ecx             // 0x007c152a    898eb4160000
_jmp_addr_0x007c1530:    {disp32} mov     ecx, dword ptr [esi + 0x000016b4]             // 0x007c1530    8b8eb4160000
                         xor.s            edx, edx                                      // 0x007c1536    33d2
                         {disp32} mov     dx, word ptr [rdata_bytes + 0xf6e7a]          // 0x007c1538    668b157afe9900
                         mov              eax, 0x00000010                               // 0x007c153f    b810000000
                         sub.s            eax, edx                                      // 0x007c1544    2bc2
                         cmp.s            ecx, eax                                      // 0x007c1546    3bc8
                         {disp32} mov     eax, dword ptr [rdata_bytes + 0xf6e78]        // 0x007c1548    a178fe9900
                         {disp8} jle      _jmp_addr_0x007c15ad                          // 0x007c154d    7e5e
                         and              eax, 0x0000ffff                               // 0x007c154f    25ffff0000
                         mov.s            edi, eax                                      // 0x007c1554    8bf8
                         shl              edi, cl                                       // 0x007c1556    d3e7
                         {disp8} mov      ecx, dword ptr [esi + 0x08]                   // 0x007c1558    8b4e08
                         or               word ptr [esi + 0x16b0], di                   // 0x007c155b    6609beb0160000
                         {disp8} mov      edi, dword ptr [esi + 0x14]                   // 0x007c1562    8b7e14
                         {disp32} mov     bl, byte ptr [esi + 0x000016b0]               // 0x007c1565    8a9eb0160000
                         mov              byte ptr [ecx + edi * 0x1], bl                // 0x007c156b    881c39
                         {disp8} mov      edi, dword ptr [esi + 0x14]                   // 0x007c156e    8b7e14
                         {disp8} mov      ebx, dword ptr [esi + 0x08]                   // 0x007c1571    8b5e08
                         xor.s            ecx, ecx                                      // 0x007c1574    33c9
                         {disp32} mov     cl, byte ptr [esi + 0x000016b1]               // 0x007c1576    8a8eb1160000
                         inc              edi                                           // 0x007c157c    47
                         {disp8} mov      dword ptr [esi + 0x14], edi                   // 0x007c157d    897e14
                         mov              byte ptr [ebx + edi * 0x1], cl                // 0x007c1580    880c3b
                         {disp8} mov      ecx, dword ptr [esi + 0x14]                   // 0x007c1583    8b4e14
                         {disp32} mov     edi, dword ptr [esi + 0x000016b4]             // 0x007c1586    8bbeb4160000
                         inc              ecx                                           // 0x007c158c    41
                         {disp8} mov      dword ptr [esi + 0x14], ecx                   // 0x007c158d    894e14
                         mov              cx, 0x0010                                    // 0x007c1590    66b91000
                         sub.s            cx, di                                        // 0x007c1594    662bcf
                         {disp8} lea      edx, dword ptr [edi + edx * 0x1 + -0x10]      // 0x007c1597    8d5417f0
                         shr              ax, cl                                        // 0x007c159b    66d3e8
                         {disp32} mov     dword ptr [esi + 0x000016b4], edx             // 0x007c159e    8996b4160000
                         {disp32} mov     word ptr [esi + 0x000016b0], ax               // 0x007c15a4    668986b0160000
                         {disp8} jmp      _jmp_addr_0x007c15be                          // 0x007c15ab    eb11
_jmp_addr_0x007c15ad:    shl              eax, cl                                       // 0x007c15ad    d3e0
                         or               word ptr [esi + 0x16b0], ax                   // 0x007c15af    660986b0160000
                         add.s            ecx, edx                                      // 0x007c15b6    03ca
                         {disp32} mov     dword ptr [esi + 0x000016b4], ecx             // 0x007c15b8    898eb4160000
_jmp_addr_0x007c15be:    push             esi                                           // 0x007c15be    56
                         call             _bi_flush                                     // 0x007c15bf    e8bc160000
                         add              esp, 0x04                                     // 0x007c15c4    83c404
_jmp_addr_0x007c15c7:    {disp32} mov     dword ptr [esi + 0x000016ac], 0x00000007      // 0x007c15c7    c786ac16000007000000
                         pop              edi                                           // 0x007c15d1    5f
                         pop              esi                                           // 0x007c15d2    5e
                         pop              ebx                                           // 0x007c15d3    5b
                         ret                                                            // 0x007c15d4    c3
                         nop                                                            // 0x007c15d5    90
                         nop                                                            // 0x007c15d6    90
                         nop                                                            // 0x007c15d7    90
                         nop                                                            // 0x007c15d8    90
                         nop                                                            // 0x007c15d9    90
                         nop                                                            // 0x007c15da    90
                         nop                                                            // 0x007c15db    90
                         nop                                                            // 0x007c15dc    90
                         nop                                                            // 0x007c15dd    90
                         nop                                                            // 0x007c15de    90
                         nop                                                            // 0x007c15df    90
__tr_flush_block:        push             ebx                                           // 0x007c15e0    53
                         push             ebp                                           // 0x007c15e1    55
                         {disp8} mov      ebp, dword ptr [esp + 0x14]                   // 0x007c15e2    8b6c2414
                         push             esi                                           // 0x007c15e6    56
                         {disp8} mov      esi, dword ptr [esp + 0x10]                   // 0x007c15e7    8b742410
                         xor.s            eax, eax                                      // 0x007c15eb    33c0
                         push             edi                                           // 0x007c15ed    57
                         {disp8} mov      ecx, dword ptr [esi + 0x7c]                   // 0x007c15ee    8b4e7c
                         test             ecx, ecx                                      // 0x007c15f1    85c9
                         {disp8} jle      _jmp_addr_0x007c1645                          // 0x007c15f3    7e50
                         cmp              byte ptr [esi + 0x1c], 0x02                   // 0x007c15f5    807e1c02
                         {disp8} jne      _jmp_addr_0x007c1604                          // 0x007c15f9    7509
                         push             esi                                           // 0x007c15fb    56
                         call             _set_data_type                                // 0x007c15fc    e8df150000
                         add              esp, 0x04                                     // 0x007c1601    83c404
_jmp_addr_0x007c1604:    {disp32} lea     eax, dword ptr [esi + 0x00000b10]             // 0x007c1604    8d86100b0000
                         push             eax                                           // 0x007c160a    50
                         push             esi                                           // 0x007c160b    56
                         call             _build_tree                                   // 0x007c160c    e8bf010000
                         {disp32} lea     ecx, dword ptr [esi + 0x00000b1c]             // 0x007c1611    8d8e1c0b0000
                         push             ecx                                           // 0x007c1617    51
                         push             esi                                           // 0x007c1618    56
                         call             _build_tree                                   // 0x007c1619    e8b2010000
                         push             esi                                           // 0x007c161e    56
                         call             _build_bl_tree                                // 0x007c161f    e87c070000
                         {disp32} mov     edx, dword ptr [esi + 0x000016a0]             // 0x007c1624    8b96a0160000
                         {disp32} mov     ecx, dword ptr [esi + 0x000016a4]             // 0x007c162a    8b8ea4160000
                         add              edx, 0x0a                                     // 0x007c1630    83c20a
                         add              ecx, 0xa                                      // 0x007c1633    83c10a
                         shr              edx, 3                                        // 0x007c1636    c1ea03
                         shr              ecx, 3                                        // 0x007c1639    c1e903
                         add              esp, 0x14                                     // 0x007c163c    83c414
                         cmp.s            ecx, edx                                      // 0x007c163f    3bca
                         {disp8} ja       _jmp_addr_0x007c164a                          // 0x007c1641    7707
                         {disp8} jmp      _jmp_addr_0x007c1648                          // 0x007c1643    eb03
_jmp_addr_0x007c1645:    {disp8} lea      ecx, dword ptr [ebp + 0x05]                   // 0x007c1645    8d4d05
_jmp_addr_0x007c1648:    mov.s            edx, ecx                                      // 0x007c1648    8bd1
_jmp_addr_0x007c164a:    {disp8} lea      edi, dword ptr [ebp + 0x04]                   // 0x007c164a    8d7d04
                         cmp.s            edi, edx                                      // 0x007c164d    3bfa
                         {disp8} ja       _jmp_addr_0x007c166e                          // 0x007c164f    771d
                         {disp8} mov      ebx, dword ptr [esp + 0x18]                   // 0x007c1651    8b5c2418
                         test             ebx, ebx                                      // 0x007c1655    85db
                         {disp8} je       _jmp_addr_0x007c166e                          // 0x007c1657    7415
                         {disp8} mov      edi, dword ptr [esp + 0x20]                   // 0x007c1659    8b7c2420
                         push             edi                                           // 0x007c165d    57
                         push             ebp                                           // 0x007c165e    55
                         push             ebx                                           // 0x007c165f    53
                         push             esi                                           // 0x007c1660    56
                         call             __tr_stored_block                             // 0x007c1661    e87afcffff
                         add              esp, 0x10                                     // 0x007c1666    83c410
                         {disp32} jmp     _jmp_addr_0x007c17b3                          // 0x007c1669    e945010000
_jmp_addr_0x007c166e:    cmp.s            ecx, edx                                      // 0x007c166e    3bca
                         {disp32} mov     ecx, dword ptr [esi + 0x000016b4]             // 0x007c1670    8b8eb4160000
                         {disp32} jne     _jmp_addr_0x007c170c                          // 0x007c1676    0f8590000000
                         {disp8} mov      edi, dword ptr [esp + 0x20]                   // 0x007c167c    8b7c2420
                         cmp              ecx, 0x0d                                     // 0x007c1680    83f90d
                         {disp8} lea      eax, dword ptr [edi + 0x02]                   // 0x007c1683    8d4702
                         {disp8} jle      _jmp_addr_0x007c16e2                          // 0x007c1686    7e5a
                         mov.s            edx, eax                                      // 0x007c1688    8bd0
                         shl              edx, cl                                       // 0x007c168a    d3e2
                         {disp8} mov      ecx, dword ptr [esi + 0x08]                   // 0x007c168c    8b4e08
                         or               word ptr [esi + 0x16b0], dx                   // 0x007c168f    660996b0160000
                         {disp8} mov      edx, dword ptr [esi + 0x14]                   // 0x007c1696    8b5614
                         {disp32} mov     bl, byte ptr [esi + 0x000016b0]               // 0x007c1699    8a9eb0160000
                         mov              byte ptr [ecx + edx * 0x1], bl                // 0x007c169f    881c11
                         {disp8} mov      edx, dword ptr [esi + 0x14]                   // 0x007c16a2    8b5614
                         {disp8} mov      ebx, dword ptr [esi + 0x08]                   // 0x007c16a5    8b5e08
                         inc              edx                                           // 0x007c16a8    42
                         {disp8} mov      dword ptr [esi + 0x14], edx                   // 0x007c16a9    895614
                         mov.s            ecx, edx                                      // 0x007c16ac    8bca
                         xor.s            edx, edx                                      // 0x007c16ae    33d2
                         {disp32} mov     dl, byte ptr [esi + 0x000016b1]               // 0x007c16b0    8a96b1160000
                         mov              byte ptr [ebx + ecx * 0x1], dl                // 0x007c16b6    88140b
                         {disp8} mov      ecx, dword ptr [esi + 0x14]                   // 0x007c16b9    8b4e14
                         {disp32} mov     edx, dword ptr [esi + 0x000016b4]             // 0x007c16bc    8b96b4160000
                         inc              ecx                                           // 0x007c16c2    41
                         {disp8} mov      dword ptr [esi + 0x14], ecx                   // 0x007c16c3    894e14
                         mov              cx, 0x0010                                    // 0x007c16c6    66b91000
                         sub.s            cx, dx                                        // 0x007c16ca    662bca
                         shr              ax, cl                                        // 0x007c16cd    66d3e8
                         add              edx, -0x0d                                    // 0x007c16d0    83c2f3
                         {disp32} mov     dword ptr [esi + 0x000016b4], edx             // 0x007c16d3    8996b4160000
                         {disp32} mov     word ptr [esi + 0x000016b0], ax               // 0x007c16d9    668986b0160000
                         {disp8} jmp      _jmp_addr_0x007c16f4                          // 0x007c16e0    eb12
_jmp_addr_0x007c16e2:    shl              eax, cl                                       // 0x007c16e2    d3e0
                         or               word ptr [esi + 0x16b0], ax                   // 0x007c16e4    660986b0160000
                         add              ecx, 0x3                                      // 0x007c16eb    83c103
                         {disp32} mov     dword ptr [esi + 0x000016b4], ecx             // 0x007c16ee    898eb4160000
_jmp_addr_0x007c16f4:    push             0x0099fef8                                    // 0x007c16f4    68f8fe9900
                         push             0x0099fa78                                    // 0x007c16f9    6878fa9900
                         push             esi                                           // 0x007c16fe    56
                         call             _compress_block                               // 0x007c16ff    e89c100000
                         add              esp, 0x0c                                     // 0x007c1704    83c40c
                         {disp32} jmp     _jmp_addr_0x007c17b3                          // 0x007c1707    e9a7000000
_jmp_addr_0x007c170c:    {disp8} mov      edi, dword ptr [esp + 0x20]                   // 0x007c170c    8b7c2420
                         cmp              ecx, 0x0d                                     // 0x007c1710    83f90d
                         {disp8} lea      edx, dword ptr [edi + 0x04]                   // 0x007c1713    8d5704
                         {disp8} jle      _jmp_addr_0x007c1772                          // 0x007c1716    7e5a
                         mov.s            ebx, edx                                      // 0x007c1718    8bda
                         {disp8} mov      ebp, dword ptr [esi + 0x08]                   // 0x007c171a    8b6e08
                         shl              ebx, cl                                       // 0x007c171d    d3e3
                         or               word ptr [esi + 0x16b0], bx                   // 0x007c171f    66099eb0160000
                         {disp8} mov      ebx, dword ptr [esi + 0x14]                   // 0x007c1726    8b5e14
                         {disp32} mov     cl, byte ptr [esi + 0x000016b0]               // 0x007c1729    8a8eb0160000
                         mov              byte ptr [ebx + ebp * 0x1], cl                // 0x007c172f    880c2b
                         {disp8} mov      ebx, dword ptr [esi + 0x14]                   // 0x007c1732    8b5e14
                         {disp8} mov      ebp, dword ptr [esi + 0x08]                   // 0x007c1735    8b6e08
                         inc              ebx                                           // 0x007c1738    43
                         {disp8} mov      dword ptr [esi + 0x14], ebx                   // 0x007c1739    895e14
                         mov.s            ecx, ebx                                      // 0x007c173c    8bcb
                         xor.s            ebx, ebx                                      // 0x007c173e    33db
                         {disp32} mov     bl, byte ptr [esi + 0x000016b1]               // 0x007c1740    8a9eb1160000
                         mov              byte ptr [ecx + ebp * 0x1], bl                // 0x007c1746    881c29
                         {disp8} mov      ecx, dword ptr [esi + 0x14]                   // 0x007c1749    8b4e14
                         {disp32} mov     ebx, dword ptr [esi + 0x000016b4]             // 0x007c174c    8b9eb4160000
                         inc              ecx                                           // 0x007c1752    41
                         {disp8} mov      dword ptr [esi + 0x14], ecx                   // 0x007c1753    894e14
                         mov              cx, 0x0010                                    // 0x007c1756    66b91000
                         sub.s            cx, bx                                        // 0x007c175a    662bcb
                         shr              dx, cl                                        // 0x007c175d    66d3ea
                         add              ebx, -0x0d                                    // 0x007c1760    83c3f3
                         {disp32} mov     dword ptr [esi + 0x000016b4], ebx             // 0x007c1763    899eb4160000
                         {disp32} mov     word ptr [esi + 0x000016b0], dx               // 0x007c1769    668996b0160000
                         {disp8} jmp      _jmp_addr_0x007c1784                          // 0x007c1770    eb12
_jmp_addr_0x007c1772:    shl              edx, cl                                       // 0x007c1772    d3e2
                         or               word ptr [esi + 0x16b0], dx                   // 0x007c1774    660996b0160000
                         add              ecx, 0x3                                      // 0x007c177b    83c103
                         {disp32} mov     dword ptr [esi + 0x000016b4], ecx             // 0x007c177e    898eb4160000
_jmp_addr_0x007c1784:    {disp32} mov     ecx, dword ptr [esi + 0x00000b14]             // 0x007c1784    8b8e140b0000
                         inc              eax                                           // 0x007c178a    40
                         push             eax                                           // 0x007c178b    50
                         {disp32} mov     eax, dword ptr [esi + 0x00000b20]             // 0x007c178c    8b86200b0000
                         inc              eax                                           // 0x007c1792    40
                         inc              ecx                                           // 0x007c1793    41
                         push             eax                                           // 0x007c1794    50
                         push             ecx                                           // 0x007c1795    51
                         push             esi                                           // 0x007c1796    56
                         call             _send_all_trees                               // 0x007c1797    e864070000
                         {disp32} lea     edx, dword ptr [esi + 0x00000980]             // 0x007c179c    8d9680090000
                         {disp32} lea     eax, dword ptr [esi + 0x0000008c]             // 0x007c17a2    8d868c000000
                         push             edx                                           // 0x007c17a8    52
                         push             eax                                           // 0x007c17a9    50
                         push             esi                                           // 0x007c17aa    56
                         call             _compress_block                               // 0x007c17ab    e8f00f0000
                         add              esp, 0x1c                                     // 0x007c17b0    83c41c
_jmp_addr_0x007c17b3:    push             esi                                           // 0x007c17b3    56
                         call             _init_block                                   // 0x007c17b4    e8b7faffff
                         add              esp, 0x04                                     // 0x007c17b9    83c404
                         test             edi, edi                                      // 0x007c17bc    85ff
                         {disp8} je       _jmp_addr_0x007c17c9                          // 0x007c17be    7409
                         push             esi                                           // 0x007c17c0    56
                         call             _bi_windup                                    // 0x007c17c1    e84a150000
                         add              esp, 0x04                                     // 0x007c17c6    83c404
_jmp_addr_0x007c17c9:    pop              edi                                           // 0x007c17c9    5f
                         pop              esi                                           // 0x007c17ca    5e
                         pop              ebp                                           // 0x007c17cb    5d
                         pop              ebx                                           // 0x007c17cc    5b
                         ret                                                            // 0x007c17cd    c3
                         nop                                                            // 0x007c17ce    90
                         nop                                                            // 0x007c17cf    90
 _build_tree:            sub              esp, 0x08                                     // 0x007c17d0    83ec08
                         {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007c17d3    8b442410
                         push             ebx                                           // 0x007c17d7    53
                         push             ebp                                           // 0x007c17d8    55
                         push             esi                                           // 0x007c17d9    56
                         {disp8} mov      esi, dword ptr [esp + 0x18]                   // 0x007c17da    8b742418
                         push             edi                                           // 0x007c17de    57
                         mov              edi, dword ptr [eax]                          // 0x007c17df    8b38
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x007c17e1    8b4008
                         or               ebp, 0xffffffff                               // 0x007c17e4    83cdff
                         mov              ebx, dword ptr [eax]                          // 0x007c17e7    8b18
                         {disp8} mov      ecx, dword ptr [eax + 0x0c]                   // 0x007c17e9    8b480c
                         xor.s            eax, eax                                      // 0x007c17ec    33c0
                         {disp8} mov      dword ptr [esp + 0x14], ecx                   // 0x007c17ee    894c2414
                         cmp.s            ecx, eax                                      // 0x007c17f2    3bc8
                         {disp8} mov      dword ptr [esp + 0x10], ebp                   // 0x007c17f4    896c2410
                         {disp32} mov     dword ptr [esi + 0x00001448], eax             // 0x007c17f8    898648140000
                         {disp32} mov     dword ptr [esi + 0x0000144c], 0x0000023d      // 0x007c17fe    c7864c1400003d020000
                         {disp8} jle      _jmp_addr_0x007c1848                          // 0x007c1808    7e3e
                         mov.s            edx, edi                                      // 0x007c180a    8bd7
_jmp_addr_0x007c180c:    cmp              word ptr [edx], 0x00                          // 0x007c180c    66833a00
                         {disp8} je       _jmp_addr_0x007c1836                          // 0x007c1810    7424
                         {disp32} mov     ecx, dword ptr [esi + 0x00001448]             // 0x007c1812    8b8e48140000
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x007c1818    89442410
                         inc              ecx                                           // 0x007c181c    41
                         mov.s            ebp, eax                                      // 0x007c181d    8be8
                         {disp32} mov     dword ptr [esi + 0x00001448], ecx             // 0x007c181f    898e48140000
                         {disp32} mov     dword ptr [esi + ecx * 0x4 + 0x00000b54], eax // 0x007c1825    89848e540b0000
                         {disp32} mov     byte ptr [eax + esi * 0x1 + 0x00001450], 0x00 // 0x007c182c    c684305014000000
                         {disp8} jmp      _jmp_addr_0x007c183c                          // 0x007c1834    eb06
_jmp_addr_0x007c1836:    {disp8} mov      word ptr [edx + 0x02], 0x0000                 // 0x007c1836    66c742020000
_jmp_addr_0x007c183c:    {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007c183c    8b4c2414
                         inc              eax                                           // 0x007c1840    40
                         add              edx, 0x04                                     // 0x007c1841    83c204
                         cmp.s            eax, ecx                                      // 0x007c1844    3bc1
                         {disp8} jl       _jmp_addr_0x007c180c                          // 0x007c1846    7cc4
_jmp_addr_0x007c1848:    {disp32} mov     ecx, dword ptr [esi + 0x00001448]             // 0x007c1848    8b8e48140000
                         cmp              ecx, 0x02                                     // 0x007c184e    83f902
                         {disp8} jge      _jmp_addr_0x007c18b0                          // 0x007c1851    7d5d
_jmp_addr_0x007c1853:    cmp              ebp, 0x02                                     // 0x007c1853    83fd02
                         {disp8} jge      _jmp_addr_0x007c185d                          // 0x007c1856    7d05
                         inc              ebp                                           // 0x007c1858    45
                         mov.s            eax, ebp                                      // 0x007c1859    8bc5
                         {disp8} jmp      _jmp_addr_0x007c185f                          // 0x007c185b    eb02
_jmp_addr_0x007c185d:    xor.s            eax, eax                                      // 0x007c185d    33c0
_jmp_addr_0x007c185f:    inc              ecx                                           // 0x007c185f    41
                         {disp32} mov     dword ptr [esi + 0x00001448], ecx             // 0x007c1860    898e48140000
                         {disp32} mov     dword ptr [esi + ecx * 0x4 + 0x00000b54], eax // 0x007c1866    89848e540b0000
                         mov              word ptr [edi + eax * 0x4], 0x0001            // 0x007c186d    66c704870100
                         {disp32} mov     byte ptr [esi + eax * 0x1 + 0x00001450], 0x00 // 0x007c1873    c684065014000000
                         {disp32} mov     edx, dword ptr [esi + 0x000016a0]             // 0x007c187b    8b96a0160000
                         dec              edx                                           // 0x007c1881    4a
                         test             ebx, ebx                                      // 0x007c1882    85db
                         {disp32} mov     dword ptr [esi + 0x000016a0], edx             // 0x007c1884    8996a0160000
                         {disp8} je       _jmp_addr_0x007c18a1                          // 0x007c188a    7415
                         xor.s            ecx, ecx                                      // 0x007c188c    33c9
                         {disp8} mov      cx, word ptr [ebx + eax * 0x4 + 0x02]         // 0x007c188e    668b4c8302
                         {disp32} mov     eax, dword ptr [esi + 0x000016a4]             // 0x007c1893    8b86a4160000
                         sub.s            eax, ecx                                      // 0x007c1899    2bc1
                         {disp32} mov     dword ptr [esi + 0x000016a4], eax             // 0x007c189b    8986a4160000
_jmp_addr_0x007c18a1:    {disp32} mov     ecx, dword ptr [esi + 0x00001448]             // 0x007c18a1    8b8e48140000
                         cmp              ecx, 0x02                                     // 0x007c18a7    83f902
                         {disp8} jl       _jmp_addr_0x007c1853                          // 0x007c18aa    7ca7
                         {disp8} mov      dword ptr [esp + 0x10], ebp                   // 0x007c18ac    896c2410
_jmp_addr_0x007c18b0:    {disp8} mov      edx, dword ptr [esp + 0x20]                   // 0x007c18b0    8b542420
                         {disp8} mov      dword ptr [edx + 0x04], ebp                   // 0x007c18b4    896a04
                         {disp32} mov     eax, dword ptr [esi + 0x00001448]             // 0x007c18b7    8b8648140000
                         cdq                                                            // 0x007c18bd    99
                         sub.s            eax, edx                                      // 0x007c18be    2bc2
                         mov.s            ebx, eax                                      // 0x007c18c0    8bd8
                         sar              ebx, 1                                        // 0x007c18c2    d1fb
                         cmp              ebx, 0x01                                     // 0x007c18c4    83fb01
                         {disp8} jl       _jmp_addr_0x007c18da                          // 0x007c18c7    7c11
_jmp_addr_0x007c18c9:    push             ebx                                           // 0x007c18c9    53
                         push             edi                                           // 0x007c18ca    57
                         push             esi                                           // 0x007c18cb    56
                         call             _pqdownheap                                   // 0x007c18cc    e83f010000
                         add              esp, 0x0c                                     // 0x007c18d1    83c40c
                         dec              ebx                                           // 0x007c18d4    4b
                         cmp              ebx, 0x01                                     // 0x007c18d5    83fb01
                         {disp8} jge      _jmp_addr_0x007c18c9                          // 0x007c18d8    7def
_jmp_addr_0x007c18da:    {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x007c18da    8b442414
                         {disp8} mov      dword ptr [esp + 0x14], eax                   // 0x007c18de    89442414
                         lea              eax, dword ptr [edi + eax * 0x4]              // 0x007c18e2    8d0487
                         {disp8} mov      dword ptr [esp + 0x1c], eax                   // 0x007c18e5    8944241c
_jmp_addr_0x007c18e9:    {disp32} mov     eax, dword ptr [esi + 0x00001448]             // 0x007c18e9    8b8648140000
                         {disp32} mov     ebx, dword ptr [esi + 0x00000b58]             // 0x007c18ef    8b9e580b0000
                         push             0x1                                           // 0x007c18f5    6a01
                         push             edi                                           // 0x007c18f7    57
                         {disp32} mov     ecx, dword ptr [esi + eax * 0x4 + 0x00000b54] // 0x007c18f8    8b8c86540b0000
                         dec              eax                                           // 0x007c18ff    48
                         push             esi                                           // 0x007c1900    56
                         {disp32} mov     dword ptr [esi + 0x00000b58], ecx             // 0x007c1901    898e580b0000
                         {disp32} mov     dword ptr [esi + 0x00001448], eax             // 0x007c1907    898648140000
                         call             _pqdownheap                                   // 0x007c190d    e8fe000000
                         {disp32} mov     edx, dword ptr [esi + 0x0000144c]             // 0x007c1912    8b964c140000
                         {disp32} mov     ebp, dword ptr [esi + 0x00000b58]             // 0x007c1918    8bae580b0000
                         add              esp, 0x0c                                     // 0x007c191e    83c40c
                         dec              edx                                           // 0x007c1921    4a
                         mov.s            eax, edx                                      // 0x007c1922    8bc2
                         {disp32} mov     dword ptr [esi + 0x0000144c], edx             // 0x007c1924    89964c140000
                         {disp32} mov     dword ptr [esi + eax * 0x4 + 0x00000b54], ebx // 0x007c192a    899c86540b0000
                         {disp32} mov     ecx, dword ptr [esi + 0x0000144c]             // 0x007c1931    8b8e4c140000
                         dec              ecx                                           // 0x007c1937    49
                         mov.s            eax, ecx                                      // 0x007c1938    8bc1
                         {disp32} mov     dword ptr [esi + 0x0000144c], ecx             // 0x007c193a    898e4c140000
                         {disp32} mov     dword ptr [esi + eax * 0x4 + 0x00000b54], ebp // 0x007c1940    89ac86540b0000
                         mov              dx, word ptr [edi + ebp * 0x4]                // 0x007c1947    668b14af
                         add              dx, word ptr [edi + ebx * 0x4]                // 0x007c194b    6603149f
                         {disp8} mov      eax, dword ptr [esp + 0x1c]                   // 0x007c194f    8b44241c
                         mov              word ptr [eax], dx                            // 0x007c1953    668910
                         {disp32} mov     al, byte ptr [esi + ebx * 0x1 + 0x00001450]   // 0x007c1956    8a841e50140000
                         {disp32} mov     cl, byte ptr [esi + ebp * 0x1 + 0x00001450]   // 0x007c195d    8a8c2e50140000
                         cmp.s            al, cl                                        // 0x007c1964    3ac1
                         .byte            0x72, 0x7// {disp8} jb _jmp_addr_0x007c196f   // 0x007c1966    7207
                         and              eax, 0x000000ff                               // 0x007c1968    25ff000000
                         {disp8} jmp      _jmp_addr_0x007c1977                          // 0x007c196d    eb08
_jmp_addr_0x007c196f:    and              ecx, 0x000000ff                               // 0x007c196f    81e1ff000000
                         mov.s            eax, ecx                                      // 0x007c1975    8bc1
_jmp_addr_0x007c1977:    {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007c1977    8b4c2414
                         inc              al                                            // 0x007c197b    fec0
                         push             0x1                                           // 0x007c197d    6a01
                         push             edi                                           // 0x007c197f    57
                         {disp32} mov     byte ptr [esi + ecx * 0x1 + 0x00001450], al   // 0x007c1980    88840e50140000
                         {disp8} mov      eax, dword ptr [esp + 0x24]                   // 0x007c1987    8b442424
                         {disp8} mov      word ptr [edi + ebp * 0x4 + 0x02], cx         // 0x007c198b    66894caf02
                         {disp8} mov      word ptr [edi + ebx * 0x4 + 0x02], cx         // 0x007c1990    66894c9f02
                         {disp32} mov     dword ptr [esi + 0x00000b58], ecx             // 0x007c1995    898e580b0000
                         inc              ecx                                           // 0x007c199b    41
                         add              eax, 0x04                                     // 0x007c199c    83c004
                         push             esi                                           // 0x007c199f    56
                         {disp8} mov      dword ptr [esp + 0x20], ecx                   // 0x007c19a0    894c2420
                         {disp8} mov      dword ptr [esp + 0x28], eax                   // 0x007c19a4    89442428
                         call             _pqdownheap                                   // 0x007c19a8    e863000000
                         {disp32} mov     eax, dword ptr [esi + 0x00001448]             // 0x007c19ad    8b8648140000
                         add              esp, 0x0c                                     // 0x007c19b3    83c40c
                         cmp              eax, 0x02                                     // 0x007c19b6    83f802
                         {disp32} jge     _jmp_addr_0x007c18e9                          // 0x007c19b9    0f8d2affffff
                         {disp32} mov     edx, dword ptr [esi + 0x0000144c]             // 0x007c19bf    8b964c140000
                         {disp32} mov     ecx, dword ptr [esi + 0x00000b58]             // 0x007c19c5    8b8e580b0000
                         dec              edx                                           // 0x007c19cb    4a
                         {disp32} mov     dword ptr [esi + 0x0000144c], edx             // 0x007c19cc    89964c140000
                         mov.s            eax, edx                                      // 0x007c19d2    8bc2
                         {disp8} mov      edx, dword ptr [esp + 0x20]                   // 0x007c19d4    8b542420
                         push             edx                                           // 0x007c19d8    52
                         push             esi                                           // 0x007c19d9    56
                         {disp32} mov     dword ptr [esi + eax * 0x4 + 0x00000b54], ecx // 0x007c19da    898c86540b0000
                         call             _gen_bitlen                                   // 0x007c19e1    e80a010000
                         {disp8} mov      eax, dword ptr [esp + 0x18]                   // 0x007c19e6    8b442418
                         add              esi, 0x00000b34                               // 0x007c19ea    81c6340b0000
                         push             esi                                           // 0x007c19f0    56
                         push             eax                                           // 0x007c19f1    50
                         push             edi                                           // 0x007c19f2    57
                         call             _gen_codes                                    // 0x007c19f3    e828030000
                         add              esp, 0x14                                     // 0x007c19f8    83c414
                         pop              edi                                           // 0x007c19fb    5f
                         pop              esi                                           // 0x007c19fc    5e
                         pop              ebp                                           // 0x007c19fd    5d
                         pop              ebx                                           // 0x007c19fe    5b
                         add              esp, 0x08                                     // 0x007c19ff    83c408
                         ret                                                            // 0x007c1a02    c3
                         nop                                                            // 0x007c1a03    90
                         nop                                                            // 0x007c1a04    90
                         nop                                                            // 0x007c1a05    90
                         nop                                                            // 0x007c1a06    90
                         nop                                                            // 0x007c1a07    90
                         nop                                                            // 0x007c1a08    90
                         nop                                                            // 0x007c1a09    90
                         nop                                                            // 0x007c1a0a    90
                         nop                                                            // 0x007c1a0b    90
                         nop                                                            // 0x007c1a0c    90
                         nop                                                            // 0x007c1a0d    90
                         nop                                                            // 0x007c1a0e    90
                         nop                                                            // 0x007c1a0f    90
_pqdownheap:             {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007c1a10    8b442404
                         push             ebx                                           // 0x007c1a14    53
                         push             ebp                                           // 0x007c1a15    55
                         push             esi                                           // 0x007c1a16    56
                         {disp8} mov      esi, dword ptr [esp + 0x18]                   // 0x007c1a17    8b742418
                         {disp32} mov     edx, dword ptr [eax + 0x00001448]             // 0x007c1a1b    8b9048140000
                         push             edi                                           // 0x007c1a21    57
                         {disp32} mov     ebp, dword ptr [eax + esi * 0x4 + 0x00000b54] // 0x007c1a22    8bacb0540b0000
                         lea              ecx, dword ptr [esi + esi * 0x1]              // 0x007c1a29    8d0c36
                         cmp.s            ecx, edx                                      // 0x007c1a2c    3bca
                         {disp8} mov      dword ptr [esp + 0x14], ebp                   // 0x007c1a2e    896c2414
                         {disp32} jg      _jmp_addr_0x007c1ad5                          // 0x007c1a32    0f8f9d000000
                         {disp8} mov      edi, dword ptr [esp + 0x18]                   // 0x007c1a38    8b7c2418
_jmp_addr_0x007c1a3c:    {disp8} jge      _jmp_addr_0x007c1a72                          // 0x007c1a3c    7d34
                         {disp32} mov     esi, dword ptr [eax + ecx * 0x4 + 0x00000b58] // 0x007c1a3e    8bb488580b0000
                         {disp32} mov     ebp, dword ptr [eax + ecx * 0x4 + 0x00000b54] // 0x007c1a45    8bac88540b0000
                         mov              dx, word ptr [edi + esi * 0x4]                // 0x007c1a4c    668b14b7
                         mov              bx, word ptr [edi + ebp * 0x4]                // 0x007c1a50    668b1caf
                         cmp.s            dx, bx                                        // 0x007c1a54    663bd3
                         .byte            0x72, 0x14// {disp8} jb _jmp_addr_0x007c1a6d  // 0x007c1a57    7214
                         {disp8} jne      _jmp_addr_0x007c1a6e                          // 0x007c1a59    7513
                         {disp32} mov     dl, byte ptr [esi + eax * 0x1 + 0x00001450]   // 0x007c1a5b    8a940650140000
                         {disp32} mov     bl, byte ptr [eax + ebp * 0x1 + 0x00001450]   // 0x007c1a62    8a9c2850140000
                         cmp.s            dl, bl                                        // 0x007c1a69    3ad3
                         {disp8} ja       _jmp_addr_0x007c1a6e                          // 0x007c1a6b    7701
_jmp_addr_0x007c1a6d:    inc              ecx                                           // 0x007c1a6d    41
_jmp_addr_0x007c1a6e:    {disp8} mov      ebp, dword ptr [esp + 0x14]                   // 0x007c1a6e    8b6c2414
_jmp_addr_0x007c1a72:    {disp32} mov     esi, dword ptr [eax + ecx * 0x4 + 0x00000b54] // 0x007c1a72    8bb488540b0000
                         mov              dx, word ptr [edi + ebp * 0x4]                // 0x007c1a79    668b14af
                         mov              bx, word ptr [edi + esi * 0x4]                // 0x007c1a7d    668b1cb7
                         cmp.s            dx, bx                                        // 0x007c1a81    663bd3
                         .byte            0x72, 0x2f// {disp8} jb _jmp_addr_0x007c1ab5  // 0x007c1a84    722f
                         {disp8} jne      _jmp_addr_0x007c1a9a                          // 0x007c1a86    7512
                         {disp32} mov     dl, byte ptr [eax + ebp * 0x1 + 0x00001450]   // 0x007c1a88    8a942850140000
                         {disp32} mov     bl, byte ptr [esi + eax * 0x1 + 0x00001450]   // 0x007c1a8f    8a9c0650140000
                         cmp.s            dl, bl                                        // 0x007c1a96    3ad3
                         {disp8} jbe      _jmp_addr_0x007c1ac5                          // 0x007c1a98    762b
_jmp_addr_0x007c1a9a:    {disp8} mov      edx, dword ptr [esp + 0x1c]                   // 0x007c1a9a    8b54241c
                         {disp8} mov      dword ptr [esp + 0x1c], ecx                   // 0x007c1a9e    894c241c
                         shl              ecx, 1                                        // 0x007c1aa2    d1e1
                         {disp32} mov     dword ptr [eax + edx * 0x4 + 0x00000b54], esi // 0x007c1aa4    89b490540b0000
                         {disp32} mov     edx, dword ptr [eax + 0x00001448]             // 0x007c1aab    8b9048140000
                         cmp.s            ecx, edx                                      // 0x007c1ab1    3bca
                         {disp8} jle      _jmp_addr_0x007c1a3c                          // 0x007c1ab3    7e87
_jmp_addr_0x007c1ab5:    {disp8} mov      ecx, dword ptr [esp + 0x1c]                   // 0x007c1ab5    8b4c241c
                         pop              edi                                           // 0x007c1ab9    5f
                         pop              esi                                           // 0x007c1aba    5e
                         {disp32} mov     dword ptr [eax + ecx * 0x4 + 0x00000b54], ebp // 0x007c1abb    89ac88540b0000
                         pop              ebp                                           // 0x007c1ac2    5d
                         pop              ebx                                           // 0x007c1ac3    5b
                         ret                                                            // 0x007c1ac4    c3
_jmp_addr_0x007c1ac5:    {disp8} mov      edx, dword ptr [esp + 0x1c]                   // 0x007c1ac5    8b54241c
                         pop              edi                                           // 0x007c1ac9    5f
                         pop              esi                                           // 0x007c1aca    5e
                         {disp32} mov     dword ptr [eax + edx * 0x4 + 0x00000b54], ebp // 0x007c1acb    89ac90540b0000
                         pop              ebp                                           // 0x007c1ad2    5d
                         pop              ebx                                           // 0x007c1ad3    5b
                         ret                                                            // 0x007c1ad4    c3
_jmp_addr_0x007c1ad5:    {disp32} mov     dword ptr [eax + esi * 0x4 + 0x00000b54], ebp // 0x007c1ad5    89acb0540b0000
                         pop              edi                                           // 0x007c1adc    5f
                         pop              esi                                           // 0x007c1add    5e
                         pop              ebp                                           // 0x007c1ade    5d
                         pop              ebx                                           // 0x007c1adf    5b
                         ret                                                            // 0x007c1ae0    c3
                         nop                                                            // 0x007c1ae1    90
                         nop                                                            // 0x007c1ae2    90
                         nop                                                            // 0x007c1ae3    90
                         nop                                                            // 0x007c1ae4    90
                         nop                                                            // 0x007c1ae5    90
                         nop                                                            // 0x007c1ae6    90
                         nop                                                            // 0x007c1ae7    90
                         nop                                                            // 0x007c1ae8    90
                         nop                                                            // 0x007c1ae9    90
                         nop                                                            // 0x007c1aea    90
                         nop                                                            // 0x007c1aeb    90
                         nop                                                            // 0x007c1aec    90
                         nop                                                            // 0x007c1aed    90
                         nop                                                            // 0x007c1aee    90
                         nop                                                            // 0x007c1aef    90
_gen_bitlen:             sub              esp, 0x1c                                     // 0x007c1af0    83ec1c
                         {disp8} mov      eax, dword ptr [esp + 0x24]                   // 0x007c1af3    8b442424
                         push             ebx                                           // 0x007c1af7    53
                         push             ebp                                           // 0x007c1af8    55
                         push             esi                                           // 0x007c1af9    56
                         mov              ebx, dword ptr [eax]                          // 0x007c1afa    8b18
                         {disp8} mov      ecx, dword ptr [eax + 0x04]                   // 0x007c1afc    8b4804
                         {disp8} mov      eax, dword ptr [eax + 0x08]                   // 0x007c1aff    8b4008
                         {disp8} mov      dword ptr [esp + 0x18], ecx                   // 0x007c1b02    894c2418
                         push             edi                                           // 0x007c1b06    57
                         xor.s            esi, esi                                      // 0x007c1b07    33f6
                         mov              edx, dword ptr [eax]                          // 0x007c1b09    8b10
                         {disp8} mov      ecx, dword ptr [eax + 0x04]                   // 0x007c1b0b    8b4804
                         {disp8} mov      ebp, dword ptr [eax + 0x10]                   // 0x007c1b0e    8b6810
                         {disp8} mov      dword ptr [esp + 0x14], edx                   // 0x007c1b11    89542414
                         {disp8} mov      edx, dword ptr [eax + 0x08]                   // 0x007c1b15    8b5008
                         {disp8} mov      dword ptr [esp + 0x24], ecx                   // 0x007c1b18    894c2424
                         {disp8} mov      dword ptr [esp + 0x20], edx                   // 0x007c1b1c    89542420
                         {disp8} mov      edx, dword ptr [esp + 0x30]                   // 0x007c1b20    8b542430
                         mov              ecx, 0x00000008                               // 0x007c1b24    b908000000
                         xor.s            eax, eax                                      // 0x007c1b29    33c0
                         {disp32} lea     edi, dword ptr [edx + 0x00000b34]             // 0x007c1b2b    8dba340b0000
                         {disp8} mov      dword ptr [esp + 0x10], esi                   // 0x007c1b31    89742410
                         rep stosd                                                      // 0x007c1b35    f3ab
                         {disp32} mov     eax, dword ptr [edx + 0x0000144c]             // 0x007c1b37    8b824c140000
                         {disp8} mov      dword ptr [esp + 0x28], ebp                   // 0x007c1b3d    896c2428
                         {disp32} mov     ecx, dword ptr [edx + eax * 0x4 + 0x00000b54] // 0x007c1b41    8b8c82540b0000
                         {disp8} mov      word ptr [ebx + ecx * 0x4 + 0x02], si         // 0x007c1b48    6689748b02
                         {disp32} mov     esi, dword ptr [edx + 0x0000144c]             // 0x007c1b4d    8bb24c140000
                         inc              esi                                           // 0x007c1b53    46
                         cmp              esi, 0x0000023d                               // 0x007c1b54    81fe3d020000
                         {disp32} jge     _jmp_addr_0x007c1d09                          // 0x007c1b5a    0f8da9010000
                         {disp32} lea     eax, dword ptr [edx + esi * 0x4 + 0x00000b54] // 0x007c1b60    8d84b2540b0000
                         {disp8} mov      dword ptr [esp + 0x30], eax                   // 0x007c1b67    89442430
                         mov              eax, 0x0000023d                               // 0x007c1b6b    b83d020000
                         sub.s            eax, esi                                      // 0x007c1b70    2bc6
                         add.s            esi, eax                                      // 0x007c1b72    03f0
                         {disp8} mov      dword ptr [esp + 0x18], eax                   // 0x007c1b74    89442418
                         {disp8} mov      dword ptr [esp + 0x34], esi                   // 0x007c1b78    89742434
_jmp_addr_0x007c1b7c:    {disp8} mov      ecx, dword ptr [esp + 0x30]                   // 0x007c1b7c    8b4c2430
                         xor.s            eax, eax                                      // 0x007c1b80    33c0
                         xor.s            edi, edi                                      // 0x007c1b82    33ff
                         mov              ecx, dword ptr [ecx]                          // 0x007c1b84    8b09
                         {disp8} mov      ax, word ptr [ebx + ecx * 0x4 + 0x02]         // 0x007c1b86    668b448b02
                         {disp8} mov      di, word ptr [ebx + eax * 0x4 + 0x02]         // 0x007c1b8b    668b7c8302
                         mov.s            eax, edi                                      // 0x007c1b90    8bc7
                         inc              eax                                           // 0x007c1b92    40
                         cmp.s            eax, ebp                                      // 0x007c1b93    3bc5
                         {disp8} jle      _jmp_addr_0x007c1ba2                          // 0x007c1b95    7e0b
                         {disp8} mov      edi, dword ptr [esp + 0x10]                   // 0x007c1b97    8b7c2410
                         mov.s            eax, ebp                                      // 0x007c1b9b    8bc5
                         inc              edi                                           // 0x007c1b9d    47
                         {disp8} mov      dword ptr [esp + 0x10], edi                   // 0x007c1b9e    897c2410
_jmp_addr_0x007c1ba2:    {disp8} mov      edi, dword ptr [esp + 0x1c]                   // 0x007c1ba2    8b7c241c
                         {disp8} mov      word ptr [ebx + ecx * 0x4 + 0x02], ax         // 0x007c1ba6    6689448b02
                         cmp.s            ecx, edi                                      // 0x007c1bab    3bcf
                         {disp8} jg       _jmp_addr_0x007c1c0f                          // 0x007c1bad    7f60
                         {disp8} mov      esi, dword ptr [esp + 0x20]                   // 0x007c1baf    8b742420
                         {disp32} inc     word ptr [edx + eax * 0x2 + 0x00000b34]       // 0x007c1bb3    66ff8442340b0000
                         xor.s            edi, edi                                      // 0x007c1bbb    33ff
                         cmp.s            ecx, esi                                      // 0x007c1bbd    3bce
                         {disp8} jl       _jmp_addr_0x007c1bcc                          // 0x007c1bbf    7c0b
                         mov.s            edi, ecx                                      // 0x007c1bc1    8bf9
                         sub.s            edi, esi                                      // 0x007c1bc3    2bfe
                         {disp8} mov      esi, dword ptr [esp + 0x24]                   // 0x007c1bc5    8b742424
                         mov              edi, dword ptr [esi + edi * 0x4]              // 0x007c1bc9    8b3cbe
_jmp_addr_0x007c1bcc:    mov              si, word ptr [ebx + ecx * 0x4]                // 0x007c1bcc    668b348b
                         add.s            eax, edi                                      // 0x007c1bd0    03c7
                         and              esi, 0x0000ffff                               // 0x007c1bd2    81e6ffff0000
                         imul             eax, esi                                      // 0x007c1bd8    0fafc6
                         add              dword ptr [edx + 0x000016a0], eax             // 0x007c1bdb    0182a0160000
                         {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x007c1be1    8b442414
                         test             eax, eax                                      // 0x007c1be5    85c0
                         {disp8} je       _jmp_addr_0x007c1c0b                          // 0x007c1be7    7422
                         {disp8} mov      ebp, dword ptr [esp + 0x14]                   // 0x007c1be9    8b6c2414
                         xor.s            eax, eax                                      // 0x007c1bed    33c0
                         {disp8} mov      ax, word ptr [ebp + ecx * 0x4 + 0x02]         // 0x007c1bef    668b448d02
                         {disp32} mov     ecx, dword ptr [edx + 0x000016a4]             // 0x007c1bf4    8b8aa4160000
                         add.s            eax, edi                                      // 0x007c1bfa    03c7
                         {disp8} mov      ebp, dword ptr [esp + 0x28]                   // 0x007c1bfc    8b6c2428
                         imul             eax, esi                                      // 0x007c1c00    0fafc6
                         add.s            ecx, eax                                      // 0x007c1c03    03c8
                         {disp32} mov     dword ptr [edx + 0x000016a4], ecx             // 0x007c1c05    898aa4160000
_jmp_addr_0x007c1c0b:    {disp8} mov      esi, dword ptr [esp + 0x34]                   // 0x007c1c0b    8b742434
_jmp_addr_0x007c1c0f:    {disp8} mov      ecx, dword ptr [esp + 0x30]                   // 0x007c1c0f    8b4c2430
                         {disp8} mov      eax, dword ptr [esp + 0x18]                   // 0x007c1c13    8b442418
                         add              ecx, 0x4                                      // 0x007c1c17    83c104
                         dec              eax                                           // 0x007c1c1a    48
                         {disp8} mov      dword ptr [esp + 0x30], ecx                   // 0x007c1c1b    894c2430
                         {disp8} mov      dword ptr [esp + 0x18], eax                   // 0x007c1c1f    89442418
                         {disp32} jne     _jmp_addr_0x007c1b7c                          // 0x007c1c23    0f8553ffffff
                         {disp8} mov      edi, dword ptr [esp + 0x10]                   // 0x007c1c29    8b7c2410
                         test             edi, edi                                      // 0x007c1c2d    85ff
                         {disp32} je      _jmp_addr_0x007c1d09                          // 0x007c1c2f    0f84d4000000
_jmp_addr_0x007c1c35:    {disp8} lea      eax, dword ptr [ebp + -0x01]                  // 0x007c1c35    8d45ff
                         cmp              word ptr [edx + eax * 0x2 + 0x00000b34], 0x00 // 0x007c1c38    6683bc42340b000000
                         {disp32} lea     ecx, dword ptr [edx + eax * 0x2 + 0x00000b34] // 0x007c1c41    8d8c42340b0000
                         {disp8} jne      _jmp_addr_0x007c1c54                          // 0x007c1c48    750a
_jmp_addr_0x007c1c4a:    sub              ecx, 0x02                                     // 0x007c1c4a    83e902
                         dec              eax                                           // 0x007c1c4d    48
                         cmp              word ptr [ecx], 0x00                          // 0x007c1c4e    66833900
                         {disp8} je       _jmp_addr_0x007c1c4a                          // 0x007c1c52    74f6
_jmp_addr_0x007c1c54:    dec              word ptr [edx + eax * 0x2 + 0x00000b34]       // 0x007c1c54    66ff8c42340b0000
                         add              word ptr [edx + eax * 0x2 + 0x00000b36], 0x02 // 0x007c1c5c    66838442360b000002
                         dec              word ptr [edx + ebp * 0x2 + 0x00000b34]       // 0x007c1c65    66ff8c6a340b0000
                         sub              edi, 0x02                                     // 0x007c1c6d    83ef02
                         test             edi, edi                                      // 0x007c1c70    85ff
                         {disp8} jg       _jmp_addr_0x007c1c35                          // 0x007c1c72    7fc1
                         test             ebp, ebp                                      // 0x007c1c74    85ed
                         mov.s            edi, ebp                                      // 0x007c1c76    8bfd
                         {disp32} je      _jmp_addr_0x007c1d09                          // 0x007c1c78    0f848b000000
                         {disp32} lea     ebp, dword ptr [edx + ebp * 0x2 + 0x00000b34] // 0x007c1c7e    8dac6a340b0000
                         {disp8} mov      dword ptr [esp + 0x18], ebp                   // 0x007c1c85    896c2418
_jmp_addr_0x007c1c89:    xor.s            eax, eax                                      // 0x007c1c89    33c0
                         {disp8} mov      ax, word ptr [ebp + 0x00]                     // 0x007c1c8b    668b4500
                         test             eax, eax                                      // 0x007c1c8f    85c0
                         {disp8} mov      dword ptr [esp + 0x30], eax                   // 0x007c1c91    89442430
                         {disp8} je       _jmp_addr_0x007c1cf9                          // 0x007c1c95    7462
                         {disp32} lea     ebp, dword ptr [edx + esi * 0x4 + 0x00000b54] // 0x007c1c97    8dacb2540b0000
_jmp_addr_0x007c1c9e:    {disp8} mov      esi, dword ptr [esp + 0x34]                   // 0x007c1c9e    8b742434
                         {disp8} mov      ecx, dword ptr [ebp + -0x04]                  // 0x007c1ca2    8b4dfc
                         dec              esi                                           // 0x007c1ca5    4e
                         sub              ebp, 0x04                                     // 0x007c1ca6    83ed04
                         {disp8} mov      dword ptr [esp + 0x34], esi                   // 0x007c1ca9    89742434
                         {disp8} mov      esi, dword ptr [esp + 0x1c]                   // 0x007c1cad    8b74241c
                         cmp.s            ecx, esi                                      // 0x007c1cb1    3bce
                         {disp8} mov      dword ptr [esp + 0x28], ebp                   // 0x007c1cb3    896c2428
                         {disp8} jg       _jmp_addr_0x007c1cf1                          // 0x007c1cb7    7f38
                         {disp8} lea      esi, dword ptr [ebx + ecx * 0x4 + 0x02]       // 0x007c1cb9    8d748b02
                         xor.s            eax, eax                                      // 0x007c1cbd    33c0
                         mov              ax, word ptr [esi]                            // 0x007c1cbf    668b06
                         cmp.s            eax, edi                                      // 0x007c1cc2    3bc7
                         {disp8} je       _jmp_addr_0x007c1ce8                          // 0x007c1cc4    7422
                         mov.s            ebp, edi                                      // 0x007c1cc6    8bef
                         sub.s            ebp, eax                                      // 0x007c1cc8    2be8
                         xor.s            eax, eax                                      // 0x007c1cca    33c0
                         mov              ax, word ptr [ebx + ecx * 0x4]                // 0x007c1ccc    668b048b
                         imul             ebp, eax                                      // 0x007c1cd0    0fafe8
                         {disp32} mov     eax, dword ptr [edx + 0x000016a0]             // 0x007c1cd3    8b82a0160000
                         add.s            eax, ebp                                      // 0x007c1cd9    03c5
                         {disp8} mov      ebp, dword ptr [esp + 0x28]                   // 0x007c1cdb    8b6c2428
                         {disp32} mov     dword ptr [edx + 0x000016a0], eax             // 0x007c1cdf    8982a0160000
                         mov              word ptr [esi], di                            // 0x007c1ce5    66893e
_jmp_addr_0x007c1ce8:    {disp8} mov      eax, dword ptr [esp + 0x30]                   // 0x007c1ce8    8b442430
                         dec              eax                                           // 0x007c1cec    48
                         {disp8} mov      dword ptr [esp + 0x30], eax                   // 0x007c1ced    89442430
_jmp_addr_0x007c1cf1:    test             eax, eax                                      // 0x007c1cf1    85c0
                         {disp8} jne      _jmp_addr_0x007c1c9e                          // 0x007c1cf3    75a9
                         {disp8} mov      esi, dword ptr [esp + 0x34]                   // 0x007c1cf5    8b742434
_jmp_addr_0x007c1cf9:    {disp8} mov      ebp, dword ptr [esp + 0x18]                   // 0x007c1cf9    8b6c2418
                         dec              edi                                           // 0x007c1cfd    4f
                         sub              ebp, 0x02                                     // 0x007c1cfe    83ed02
                         test             edi, edi                                      // 0x007c1d01    85ff
                         {disp8} mov      dword ptr [esp + 0x18], ebp                   // 0x007c1d03    896c2418
                         {disp8} jne      _jmp_addr_0x007c1c89                          // 0x007c1d07    7580
_jmp_addr_0x007c1d09:    pop              edi                                           // 0x007c1d09    5f
                         pop              esi                                           // 0x007c1d0a    5e
                         pop              ebp                                           // 0x007c1d0b    5d
                         pop              ebx                                           // 0x007c1d0c    5b
                         add              esp, 0x1c                                     // 0x007c1d0d    83c41c
                         ret                                                            // 0x007c1d10    c3
                         nop                                                            // 0x007c1d11    90
                         nop                                                            // 0x007c1d12    90
                         nop                                                            // 0x007c1d13    90
                         nop                                                            // 0x007c1d14    90
                         nop                                                            // 0x007c1d15    90
                         nop                                                            // 0x007c1d16    90
                         nop                                                            // 0x007c1d17    90
                         nop                                                            // 0x007c1d18    90
                         nop                                                            // 0x007c1d19    90
                         nop                                                            // 0x007c1d1a    90
                         nop                                                            // 0x007c1d1b    90
                         nop                                                            // 0x007c1d1c    90
                         nop                                                            // 0x007c1d1d    90
                         nop                                                            // 0x007c1d1e    90
                         nop                                                            // 0x007c1d1f    90
_gen_codes:              {disp8} mov      edx, dword ptr [esp + 0x0c]                   // 0x007c1d20    8b54240c
                         sub              esp, 0x20                                     // 0x007c1d24    83ec20
                         xor.s            eax, eax                                      // 0x007c1d27    33c0
                         {disp8} lea      ecx, dword ptr [esp + 0x02]                   // 0x007c1d29    8d4c2402
                         push             esi                                           // 0x007c1d2d    56
                         {disp8} lea      esi, dword ptr [esp + 0x06]                   // 0x007c1d2e    8d742406
                         sub.s            edx, esi                                      // 0x007c1d32    2bd6
                         push             edi                                           // 0x007c1d34    57
                         mov              esi, 0x0000000f                               // 0x007c1d35    be0f000000
_jmp_addr_0x007c1d3a:    mov              di, word ptr [edx + ecx * 0x1]                // 0x007c1d3a    668b3c0a
                         add              ecx, 0x2                                      // 0x007c1d3e    83c102
                         add.s            di, ax                                        // 0x007c1d41    6603f8
                         shl              edi, 1                                        // 0x007c1d44    d1e7
                         mov.s            eax, edi                                      // 0x007c1d46    8bc7
                         dec              esi                                           // 0x007c1d48    4e
                         {disp8} mov      word ptr [ecx + -0x02], ax                    // 0x007c1d49    668941fe
                         {disp8} jne      _jmp_addr_0x007c1d3a                          // 0x007c1d4d    75eb
                         {disp8} mov      eax, dword ptr [esp + 0x30]                   // 0x007c1d4f    8b442430
                         test             eax, eax                                      // 0x007c1d53    85c0
                         {disp8} jl       _jmp_addr_0x007c1d8d                          // 0x007c1d55    7c36
                         {disp8} mov      esi, dword ptr [esp + 0x2c]                   // 0x007c1d57    8b74242c
                         {disp8} lea      edi, dword ptr [eax + 0x01]                   // 0x007c1d5b    8d7801
_jmp_addr_0x007c1d5e:    xor.s            ecx, ecx                                      // 0x007c1d5e    33c9
                         {disp8} mov      cx, word ptr [esi + 0x02]                     // 0x007c1d60    668b4e02
                         test             ecx, ecx                                      // 0x007c1d64    85c9
                         {disp8} je       _jmp_addr_0x007c1d87                          // 0x007c1d66    741f
                         {disp8} mov      dx, word ptr [esp + ecx * 0x2 + 0x08]         // 0x007c1d68    668b544c08
                         push             ecx                                           // 0x007c1d6d    51
                         mov.s            eax, edx                                      // 0x007c1d6e    8bc2
                         and              eax, 0x0000ffff                               // 0x007c1d70    25ffff0000
                         inc              edx                                           // 0x007c1d75    42
                         push             eax                                           // 0x007c1d76    50
                         {disp8} mov      word ptr [esp + ecx * 0x2 + 0x10], dx         // 0x007c1d77    6689544c10
                         call             _bi_reverse                                   // 0x007c1d7c    e8df0e0000
                         add              esp, 0x08                                     // 0x007c1d81    83c408
                         mov              word ptr [esi], ax                            // 0x007c1d84    668906
_jmp_addr_0x007c1d87:    add              esi, 0x04                                     // 0x007c1d87    83c604
                         dec              edi                                           // 0x007c1d8a    4f
                         {disp8} jne      _jmp_addr_0x007c1d5e                          // 0x007c1d8b    75d1
_jmp_addr_0x007c1d8d:    pop              edi                                           // 0x007c1d8d    5f
                         pop              esi                                           // 0x007c1d8e    5e
                         add              esp, 0x20                                     // 0x007c1d8f    83c420
                         ret                                                            // 0x007c1d92    c3
                         nop                                                            // 0x007c1d93    90
                         nop                                                            // 0x007c1d94    90
                         nop                                                            // 0x007c1d95    90
                         nop                                                            // 0x007c1d96    90
                         nop                                                            // 0x007c1d97    90
                         nop                                                            // 0x007c1d98    90
                         nop                                                            // 0x007c1d99    90
                         nop                                                            // 0x007c1d9a    90
                         nop                                                            // 0x007c1d9b    90
                         nop                                                            // 0x007c1d9c    90
                         nop                                                            // 0x007c1d9d    90
                         nop                                                            // 0x007c1d9e    90
                         nop                                                            // 0x007c1d9f    90
_build_bl_tree:          push             esi                                           // 0x007c1da0    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                   // 0x007c1da1    8b742408
                         {disp32} mov     eax, dword ptr [esi + 0x00000b14]             // 0x007c1da5    8b86140b0000
                         {disp32} lea     ecx, dword ptr [esi + 0x0000008c]             // 0x007c1dab    8d8e8c000000
                         push             eax                                           // 0x007c1db1    50
                         push             ecx                                           // 0x007c1db2    51
                         push             esi                                           // 0x007c1db3    56
                         call             _scan_tree                                    // 0x007c1db4    e857000000
                         {disp32} mov     edx, dword ptr [esi + 0x00000b20]             // 0x007c1db9    8b96200b0000
                         {disp32} lea     eax, dword ptr [esi + 0x00000980]             // 0x007c1dbf    8d8680090000
                         push             edx                                           // 0x007c1dc5    52
                         push             eax                                           // 0x007c1dc6    50
                         push             esi                                           // 0x007c1dc7    56
                         call             _scan_tree                                    // 0x007c1dc8    e843000000
                         {disp32} lea     ecx, dword ptr [esi + 0x00000b28]             // 0x007c1dcd    8d8e280b0000
                         push             ecx                                           // 0x007c1dd3    51
                         push             esi                                           // 0x007c1dd4    56
                         call             _build_tree                                   // 0x007c1dd5    e8f6f9ffff
                         add              esp, 0x20                                     // 0x007c1dda    83c420
                         mov              eax, 0x00000012                               // 0x007c1ddd    b812000000
_jmp_addr_0x007c1de2:    xor.s            edx, edx                                      // 0x007c1de2    33d2
                         {disp32} mov     dl, byte ptr [eax + 0x0099fa64]               // 0x007c1de4    8a9064fa9900
                         cmp              word ptr [esi + edx * 0x4 + 0x00000a76], 0x00 // 0x007c1dea    6683bc96760a000000
                         {disp8} jne      _jmp_addr_0x007c1dfb                          // 0x007c1df3    7506
                         dec              eax                                           // 0x007c1df5    48
                         cmp              eax, 0x03                                     // 0x007c1df6    83f803
                         {disp8} jge      _jmp_addr_0x007c1de2                          // 0x007c1df9    7de7
_jmp_addr_0x007c1dfb:    {disp32} mov     edx, dword ptr [esi + 0x000016a0]             // 0x007c1dfb    8b96a0160000
                         {disp8} lea      ecx, dword ptr [eax + eax * 0x2 + 0x11]       // 0x007c1e01    8d4c4011
                         add.s            edx, ecx                                      // 0x007c1e05    03d1
                         {disp32} mov     dword ptr [esi + 0x000016a0], edx             // 0x007c1e07    8996a0160000
                         pop              esi                                           // 0x007c1e0d    5e
                         ret                                                            // 0x007c1e0e    c3
                         nop                                                            // 0x007c1e0f    90
_scan_tree:              push             ecx                                           // 0x007c1e10    51
                         {disp8} mov      eax, dword ptr [esp + 0x0c]                   // 0x007c1e11    8b44240c
                         push             ebx                                           // 0x007c1e15    53
                         xor.s            ecx, ecx                                      // 0x007c1e16    33c9
                         push             esi                                           // 0x007c1e18    56
                         {disp8} mov      cx, word ptr [eax + 0x02]                     // 0x007c1e19    668b4802
                         push             edi                                           // 0x007c1e1d    57
                         xor.s            edi, edi                                      // 0x007c1e1e    33ff
                         {disp8} mov      dword ptr [esp + 0x0c], 0xffffffff            // 0x007c1e20    c744240cffffffff
                         test             ecx, ecx                                      // 0x007c1e28    85c9
                         mov              edx, 0x00000007                               // 0x007c1e2a    ba07000000
                         mov              esi, 0x00000004                               // 0x007c1e2f    be04000000
                         {disp8} jne      _jmp_addr_0x007c1e40                          // 0x007c1e34    750a
                         mov              edx, 0x0000008a                               // 0x007c1e36    ba8a000000
                         mov              esi, 0x00000003                               // 0x007c1e3b    be03000000
_jmp_addr_0x007c1e40:    {disp8} mov      ebx, dword ptr [esp + 0x1c]                   // 0x007c1e40    8b5c241c
                         test             ebx, ebx                                      // 0x007c1e44    85db
                         {disp8} mov      word ptr [eax + ebx * 0x4 + 0x06], -0x0001    // 0x007c1e46    66c7449806ffff
                         {disp32} jl      _jmp_addr_0x007c1ef2                          // 0x007c1e4d    0f8c9f000000
                         inc              ebx                                           // 0x007c1e53    43
                         push             ebp                                           // 0x007c1e54    55
                         {disp8} mov      dword ptr [esp + 0x1c], ebx                   // 0x007c1e55    895c241c
                         {disp8} mov      ebx, dword ptr [esp + 0x18]                   // 0x007c1e59    8b5c2418
                         {disp8} lea      ebp, dword ptr [eax + 0x06]                   // 0x007c1e5d    8d6806
_jmp_addr_0x007c1e60:    mov.s            eax, ecx                                      // 0x007c1e60    8bc1
                         xor.s            ecx, ecx                                      // 0x007c1e62    33c9
                         {disp8} mov      cx, word ptr [ebp + 0x00]                     // 0x007c1e64    668b4d00
                         inc              edi                                           // 0x007c1e68    47
                         cmp.s            edi, edx                                      // 0x007c1e69    3bfa
                         {disp8} jge      _jmp_addr_0x007c1e71                          // 0x007c1e6b    7d04
                         cmp.s            eax, ecx                                      // 0x007c1e6d    3bc1
                         {disp8} je       _jmp_addr_0x007c1edf                          // 0x007c1e6f    746e
_jmp_addr_0x007c1e71:    cmp.s            edi, esi                                      // 0x007c1e71    3bfe
                         {disp8} jge      _jmp_addr_0x007c1e7f                          // 0x007c1e73    7d0a
                         add              word ptr [ebx + eax * 0x4 + 0x00000a74], di   // 0x007c1e75    6601bc83740a0000
                         {disp8} jmp      _jmp_addr_0x007c1eaf                          // 0x007c1e7d    eb30
_jmp_addr_0x007c1e7f:    test             eax, eax                                      // 0x007c1e7f    85c0
                         {disp8} je       _jmp_addr_0x007c1e9a                          // 0x007c1e81    7417
                         cmp              eax, dword ptr [esp + 0x10]                   // 0x007c1e83    3b442410
                         {disp8} je       _jmp_addr_0x007c1e91                          // 0x007c1e87    7408
                         {disp32} inc     word ptr [ebx + eax * 0x4 + 0x00000a74]       // 0x007c1e89    66ff8483740a0000
_jmp_addr_0x007c1e91:    {disp32} inc     word ptr [ebx + 0x00000ab4]                   // 0x007c1e91    66ff83b40a0000
                         {disp8} jmp      _jmp_addr_0x007c1eaf                          // 0x007c1e98    eb15
_jmp_addr_0x007c1e9a:    cmp              edi, 0x0a                                     // 0x007c1e9a    83ff0a
                         {disp8} jg       _jmp_addr_0x007c1ea8                          // 0x007c1e9d    7f09
                         {disp32} inc     word ptr [ebx + 0x00000ab8]                   // 0x007c1e9f    66ff83b80a0000
                         {disp8} jmp      _jmp_addr_0x007c1eaf                          // 0x007c1ea6    eb07
_jmp_addr_0x007c1ea8:    {disp32} inc     word ptr [ebx + 0x00000abc]                   // 0x007c1ea8    66ff83bc0a0000
_jmp_addr_0x007c1eaf:    xor.s            edi, edi                                      // 0x007c1eaf    33ff
                         {disp8} mov      dword ptr [esp + 0x10], eax                   // 0x007c1eb1    89442410
                         test             ecx, ecx                                      // 0x007c1eb5    85c9
                         {disp8} jne      _jmp_addr_0x007c1ec5                          // 0x007c1eb7    750c
                         mov              edx, 0x0000008a                               // 0x007c1eb9    ba8a000000
                         mov              esi, 0x00000003                               // 0x007c1ebe    be03000000
                         {disp8} jmp      _jmp_addr_0x007c1edf                          // 0x007c1ec3    eb1a
_jmp_addr_0x007c1ec5:    cmp.s            eax, ecx                                      // 0x007c1ec5    3bc1
                         {disp8} jne      _jmp_addr_0x007c1ed5                          // 0x007c1ec7    750c
                         mov              edx, 0x00000006                               // 0x007c1ec9    ba06000000
                         mov              esi, 0x00000003                               // 0x007c1ece    be03000000
                         {disp8} jmp      _jmp_addr_0x007c1edf                          // 0x007c1ed3    eb0a
_jmp_addr_0x007c1ed5:    mov              edx, 0x00000007                               // 0x007c1ed5    ba07000000
                         mov              esi, 0x00000004                               // 0x007c1eda    be04000000
_jmp_addr_0x007c1edf:    {disp8} mov      eax, dword ptr [esp + 0x1c]                   // 0x007c1edf    8b44241c
                         add              ebp, 0x04                                     // 0x007c1ee3    83c504
                         dec              eax                                           // 0x007c1ee6    48
                         {disp8} mov      dword ptr [esp + 0x1c], eax                   // 0x007c1ee7    8944241c
                         {disp32} jne     _jmp_addr_0x007c1e60                          // 0x007c1eeb    0f856fffffff
                         pop              ebp                                           // 0x007c1ef1    5d
_jmp_addr_0x007c1ef2:    pop              edi                                           // 0x007c1ef2    5f
                         pop              esi                                           // 0x007c1ef3    5e
                         pop              ebx                                           // 0x007c1ef4    5b
                         pop              ecx                                           // 0x007c1ef5    59
                         ret                                                            // 0x007c1ef6    c3
                         nop                                                            // 0x007c1ef7    90
                         nop                                                            // 0x007c1ef8    90
                         nop                                                            // 0x007c1ef9    90
                         nop                                                            // 0x007c1efa    90
                         nop                                                            // 0x007c1efb    90
                         nop                                                            // 0x007c1efc    90
                         nop                                                            // 0x007c1efd    90
                         nop                                                            // 0x007c1efe    90
                         nop                                                            // 0x007c1eff    90
_send_all_trees:         push             ebx                                           // 0x007c1f00    53
                         push             ebp                                           // 0x007c1f01    55
                         {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007c1f02    8b442410
                         push             esi                                           // 0x007c1f06    56
                         {disp8} mov      esi, dword ptr [esp + 0x10]                   // 0x007c1f07    8b742410
                         push             edi                                           // 0x007c1f0b    57
                         {disp32} mov     ecx, dword ptr [esi + 0x000016b4]             // 0x007c1f0c    8b8eb4160000
                         cmp              ecx, 0x0b                                     // 0x007c1f12    83f90b
                         {disp8} jle      _jmp_addr_0x007c1f74                          // 0x007c1f15    7e5d
                         add              eax, 0xfffffeff                               // 0x007c1f17    05fffeffff
                         mov.s            edx, eax                                      // 0x007c1f1c    8bd0
                         shl              edx, cl                                       // 0x007c1f1e    d3e2
                         {disp8} mov      ecx, dword ptr [esi + 0x14]                   // 0x007c1f20    8b4e14
                         or               word ptr [esi + 0x16b0], dx                   // 0x007c1f23    660996b0160000
                         {disp8} mov      edx, dword ptr [esi + 0x08]                   // 0x007c1f2a    8b5608
                         {disp32} mov     bl, byte ptr [esi + 0x000016b0]               // 0x007c1f2d    8a9eb0160000
                         mov              byte ptr [ecx + edx * 0x1], bl                // 0x007c1f33    881c11
                         {disp8} mov      ecx, dword ptr [esi + 0x14]                   // 0x007c1f36    8b4e14
                         {disp8} mov      edi, dword ptr [esi + 0x08]                   // 0x007c1f39    8b7e08
                         xor.s            edx, edx                                      // 0x007c1f3c    33d2
                         {disp32} mov     dl, byte ptr [esi + 0x000016b1]               // 0x007c1f3e    8a96b1160000
                         inc              ecx                                           // 0x007c1f44    41
                         {disp8} mov      dword ptr [esi + 0x14], ecx                   // 0x007c1f45    894e14
                         mov              byte ptr [ecx + edi * 0x1], dl                // 0x007c1f48    881439
                         {disp32} mov     edx, dword ptr [esi + 0x000016b4]             // 0x007c1f4b    8b96b4160000
                         {disp8} mov      ebp, dword ptr [esi + 0x14]                   // 0x007c1f51    8b6e14
                         mov              cx, 0x0010                                    // 0x007c1f54    66b91000
                         sub.s            cx, dx                                        // 0x007c1f58    662bca
                         inc              ebp                                           // 0x007c1f5b    45
                         shr              ax, cl                                        // 0x007c1f5c    66d3e8
                         add              edx, -0x0b                                    // 0x007c1f5f    83c2f5
                         {disp8} mov      dword ptr [esi + 0x14], ebp                   // 0x007c1f62    896e14
                         {disp32} mov     dword ptr [esi + 0x000016b4], edx             // 0x007c1f65    8996b4160000
                         {disp32} mov     word ptr [esi + 0x000016b0], ax               // 0x007c1f6b    668986b0160000
                         {disp8} jmp      _jmp_addr_0x007c1f8b                          // 0x007c1f72    eb17
_jmp_addr_0x007c1f74:    add              eax, 0xfffffeff                               // 0x007c1f74    05fffeffff
                         shl              eax, cl                                       // 0x007c1f79    d3e0
                         or               word ptr [esi + 0x16b0], ax                   // 0x007c1f7b    660986b0160000
                         add              ecx, 0x5                                      // 0x007c1f82    83c105
                         {disp32} mov     dword ptr [esi + 0x000016b4], ecx             // 0x007c1f85    898eb4160000
_jmp_addr_0x007c1f8b:    {disp32} mov     ecx, dword ptr [esi + 0x000016b4]             // 0x007c1f8b    8b8eb4160000
                         cmp              ecx, 0x0b                                     // 0x007c1f91    83f90b
                         {disp8} jle      _jmp_addr_0x007c1ff5                          // 0x007c1f94    7e5f
                         {disp8} mov      edx, dword ptr [esp + 0x1c]                   // 0x007c1f96    8b54241c
                         {disp8} lea      eax, dword ptr [edx + -0x01]                  // 0x007c1f9a    8d42ff
                         mov.s            edx, eax                                      // 0x007c1f9d    8bd0
                         shl              edx, cl                                       // 0x007c1f9f    d3e2
                         {disp8} mov      ecx, dword ptr [esi + 0x14]                   // 0x007c1fa1    8b4e14
                         or               word ptr [esi + 0x16b0], dx                   // 0x007c1fa4    660996b0160000
                         {disp8} mov      edx, dword ptr [esi + 0x08]                   // 0x007c1fab    8b5608
                         {disp32} mov     bl, byte ptr [esi + 0x000016b0]               // 0x007c1fae    8a9eb0160000
                         mov              byte ptr [ecx + edx * 0x1], bl                // 0x007c1fb4    881c11
                         {disp8} mov      ecx, dword ptr [esi + 0x14]                   // 0x007c1fb7    8b4e14
                         {disp8} mov      edi, dword ptr [esi + 0x08]                   // 0x007c1fba    8b7e08
                         xor.s            edx, edx                                      // 0x007c1fbd    33d2
                         {disp32} mov     dl, byte ptr [esi + 0x000016b1]               // 0x007c1fbf    8a96b1160000
                         inc              ecx                                           // 0x007c1fc5    41
                         {disp8} mov      dword ptr [esi + 0x14], ecx                   // 0x007c1fc6    894e14
                         mov              byte ptr [ecx + edi * 0x1], dl                // 0x007c1fc9    881439
                         {disp32} mov     edx, dword ptr [esi + 0x000016b4]             // 0x007c1fcc    8b96b4160000
                         {disp8} mov      ebp, dword ptr [esi + 0x14]                   // 0x007c1fd2    8b6e14
                         mov              cx, 0x0010                                    // 0x007c1fd5    66b91000
                         sub.s            cx, dx                                        // 0x007c1fd9    662bca
                         inc              ebp                                           // 0x007c1fdc    45
                         shr              ax, cl                                        // 0x007c1fdd    66d3e8
                         add              edx, -0x0b                                    // 0x007c1fe0    83c2f5
                         {disp8} mov      dword ptr [esi + 0x14], ebp                   // 0x007c1fe3    896e14
                         {disp32} mov     dword ptr [esi + 0x000016b4], edx             // 0x007c1fe6    8996b4160000
                         {disp32} mov     word ptr [esi + 0x000016b0], ax               // 0x007c1fec    668986b0160000
                         {disp8} jmp      _jmp_addr_0x007c200c                          // 0x007c1ff3    eb17
_jmp_addr_0x007c1ff5:    {disp8} mov      eax, dword ptr [esp + 0x1c]                   // 0x007c1ff5    8b44241c
                         dec              eax                                           // 0x007c1ff9    48
                         shl              eax, cl                                       // 0x007c1ffa    d3e0
                         or               word ptr [esi + 0x16b0], ax                   // 0x007c1ffc    660986b0160000
                         add              ecx, 0x5                                      // 0x007c2003    83c105
                         {disp32} mov     dword ptr [esi + 0x000016b4], ecx             // 0x007c2006    898eb4160000
_jmp_addr_0x007c200c:    {disp32} mov     ecx, dword ptr [esi + 0x000016b4]             // 0x007c200c    8b8eb4160000
                         {disp8} mov      ebp, dword ptr [esp + 0x20]                   // 0x007c2012    8b6c2420
                         cmp              ecx, 0x0c                                     // 0x007c2016    83f90c
                         {disp8} lea      eax, dword ptr [ebp + -0x04]                  // 0x007c2019    8d45fc
                         {disp8} jle      _jmp_addr_0x007c2078                          // 0x007c201c    7e5a
                         mov.s            edx, eax                                      // 0x007c201e    8bd0
                         shl              edx, cl                                       // 0x007c2020    d3e2
                         {disp8} mov      ecx, dword ptr [esi + 0x14]                   // 0x007c2022    8b4e14
                         or               word ptr [esi + 0x16b0], dx                   // 0x007c2025    660996b0160000
                         {disp8} mov      edx, dword ptr [esi + 0x08]                   // 0x007c202c    8b5608
                         {disp32} mov     bl, byte ptr [esi + 0x000016b0]               // 0x007c202f    8a9eb0160000
                         mov              byte ptr [ecx + edx * 0x1], bl                // 0x007c2035    881c11
                         {disp8} mov      edx, dword ptr [esi + 0x14]                   // 0x007c2038    8b5614
                         {disp8} mov      edi, dword ptr [esi + 0x08]                   // 0x007c203b    8b7e08
                         inc              edx                                           // 0x007c203e    42
                         {disp8} mov      dword ptr [esi + 0x14], edx                   // 0x007c203f    895614
                         mov.s            ecx, edx                                      // 0x007c2042    8bca
                         xor.s            edx, edx                                      // 0x007c2044    33d2
                         {disp32} mov     dl, byte ptr [esi + 0x000016b1]               // 0x007c2046    8a96b1160000
                         mov              byte ptr [ecx + edi * 0x1], dl                // 0x007c204c    881439
                         {disp8} mov      ecx, dword ptr [esi + 0x14]                   // 0x007c204f    8b4e14
                         {disp32} mov     edx, dword ptr [esi + 0x000016b4]             // 0x007c2052    8b96b4160000
                         inc              ecx                                           // 0x007c2058    41
                         {disp8} mov      dword ptr [esi + 0x14], ecx                   // 0x007c2059    894e14
                         mov              cx, 0x0010                                    // 0x007c205c    66b91000
                         sub.s            cx, dx                                        // 0x007c2060    662bca
                         shr              ax, cl                                        // 0x007c2063    66d3e8
                         add              edx, -0x0c                                    // 0x007c2066    83c2f4
                         {disp32} mov     dword ptr [esi + 0x000016b4], edx             // 0x007c2069    8996b4160000
                         {disp32} mov     word ptr [esi + 0x000016b0], ax               // 0x007c206f    668986b0160000
                         {disp8} jmp      _jmp_addr_0x007c208a                          // 0x007c2076    eb12
_jmp_addr_0x007c2078:    shl              eax, cl                                       // 0x007c2078    d3e0
                         or               word ptr [esi + 0x16b0], ax                   // 0x007c207a    660986b0160000
                         add              ecx, 0x4                                      // 0x007c2081    83c104
                         {disp32} mov     dword ptr [esi + 0x000016b4], ecx             // 0x007c2084    898eb4160000
_jmp_addr_0x007c208a:    xor.s            edi, edi                                      // 0x007c208a    33ff
                         test             ebp, ebp                                      // 0x007c208c    85ed
                         {disp32} jle     _jmp_addr_0x007c2137                          // 0x007c208e    0f8ea3000000
_jmp_addr_0x007c2094:    {disp32} mov     ecx, dword ptr [esi + 0x000016b4]             // 0x007c2094    8b8eb4160000
                         cmp              ecx, 0x0d                                     // 0x007c209a    83f90d
                         {disp8} jle      _jmp_addr_0x007c210b                          // 0x007c209d    7e6c
                         xor.s            edx, edx                                      // 0x007c209f    33d2
                         xor.s            eax, eax                                      // 0x007c20a1    33c0
                         {disp32} mov     dl, byte ptr [edi + 0x0099fa64]               // 0x007c20a3    8a9764fa9900
                         {disp32} mov     ax, word ptr [esi + edx * 0x4 + 0x00000a76]   // 0x007c20a9    668b8496760a0000
                         mov.s            edx, eax                                      // 0x007c20b1    8bd0
                         shl              edx, cl                                       // 0x007c20b3    d3e2
                         {disp8} mov      ecx, dword ptr [esi + 0x14]                   // 0x007c20b5    8b4e14
                         or               word ptr [esi + 0x16b0], dx                   // 0x007c20b8    660996b0160000
                         {disp8} mov      edx, dword ptr [esi + 0x08]                   // 0x007c20bf    8b5608
                         {disp32} mov     bl, byte ptr [esi + 0x000016b0]               // 0x007c20c2    8a9eb0160000
                         mov              byte ptr [ecx + edx * 0x1], bl                // 0x007c20c8    881c11
                         {disp8} mov      edx, dword ptr [esi + 0x14]                   // 0x007c20cb    8b5614
                         {disp8} mov      ebx, dword ptr [esi + 0x08]                   // 0x007c20ce    8b5e08
                         inc              edx                                           // 0x007c20d1    42
                         {disp8} mov      dword ptr [esi + 0x14], edx                   // 0x007c20d2    895614
                         mov.s            ecx, edx                                      // 0x007c20d5    8bca
                         xor.s            edx, edx                                      // 0x007c20d7    33d2
                         {disp32} mov     dl, byte ptr [esi + 0x000016b1]               // 0x007c20d9    8a96b1160000
                         mov              byte ptr [ecx + ebx * 0x1], dl                // 0x007c20df    881419
                         {disp8} mov      ecx, dword ptr [esi + 0x14]                   // 0x007c20e2    8b4e14
                         {disp32} mov     edx, dword ptr [esi + 0x000016b4]             // 0x007c20e5    8b96b4160000
                         inc              ecx                                           // 0x007c20eb    41
                         {disp8} mov      dword ptr [esi + 0x14], ecx                   // 0x007c20ec    894e14
                         mov              cx, 0x0010                                    // 0x007c20ef    66b91000
                         sub.s            cx, dx                                        // 0x007c20f3    662bca
                         shr              ax, cl                                        // 0x007c20f6    66d3e8
                         add              edx, -0x0d                                    // 0x007c20f9    83c2f3
                         {disp32} mov     dword ptr [esi + 0x000016b4], edx             // 0x007c20fc    8996b4160000
                         {disp32} mov     word ptr [esi + 0x000016b0], ax               // 0x007c2102    668986b0160000
                         {disp8} jmp      _jmp_addr_0x007c212e                          // 0x007c2109    eb23
_jmp_addr_0x007c210b:    xor.s            eax, eax                                      // 0x007c210b    33c0
                         {disp32} mov     al, byte ptr [edi + 0x0099fa64]               // 0x007c210d    8a8764fa9900
                         {disp32} mov     dx, word ptr [esi + eax * 0x4 + 0x00000a76]   // 0x007c2113    668b9486760a0000
                         shl              dx, cl                                        // 0x007c211b    66d3e2
                         or               word ptr [esi + 0x16b0], dx                   // 0x007c211e    660996b0160000
                         add              ecx, 0x3                                      // 0x007c2125    83c103
                         {disp32} mov     dword ptr [esi + 0x000016b4], ecx             // 0x007c2128    898eb4160000
_jmp_addr_0x007c212e:    inc              edi                                           // 0x007c212e    47
                         cmp.s            edi, ebp                                      // 0x007c212f    3bfd
                         {disp32} jl      _jmp_addr_0x007c2094                          // 0x007c2131    0f8c5dffffff
_jmp_addr_0x007c2137:    {disp8} mov      eax, dword ptr [esp + 0x18]                   // 0x007c2137    8b442418
                         {disp32} lea     ecx, dword ptr [esi + 0x0000008c]             // 0x007c213b    8d8e8c000000
                         dec              eax                                           // 0x007c2141    48
                         push             eax                                           // 0x007c2142    50
                         push             ecx                                           // 0x007c2143    51
                         push             esi                                           // 0x007c2144    56
                         call             _send_tree                                    // 0x007c2145    e826000000
                         {disp8} mov      edx, dword ptr [esp + 0x28]                   // 0x007c214a    8b542428
                         {disp32} lea     eax, dword ptr [esi + 0x00000980]             // 0x007c214e    8d8680090000
                         dec              edx                                           // 0x007c2154    4a
                         push             edx                                           // 0x007c2155    52
                         push             eax                                           // 0x007c2156    50
                         push             esi                                           // 0x007c2157    56
                         call             _send_tree                                    // 0x007c2158    e813000000
                         add              esp, 0x18                                     // 0x007c215d    83c418
                         pop              edi                                           // 0x007c2160    5f
                         pop              esi                                           // 0x007c2161    5e
                         pop              ebp                                           // 0x007c2162    5d
                         pop              ebx                                           // 0x007c2163    5b
                         ret                                                            // 0x007c2164    c3
                         nop                                                            // 0x007c2165    90
                         nop                                                            // 0x007c2166    90
                         nop                                                            // 0x007c2167    90
                         nop                                                            // 0x007c2168    90
                         nop                                                            // 0x007c2169    90
                         nop                                                            // 0x007c216a    90
                         nop                                                            // 0x007c216b    90
                         nop                                                            // 0x007c216c    90
                         nop                                                            // 0x007c216d    90
                         nop                                                            // 0x007c216e    90
                         nop                                                            // 0x007c216f    90
_send_tree:              sub              esp, 0x08                                     // 0x007c2170    83ec08
                         {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007c2173    8b442410
                         push             ebx                                           // 0x007c2177    53
                         xor.s            ebx, ebx                                      // 0x007c2178    33db
                         xor.s            edx, edx                                      // 0x007c217a    33d2
                         {disp8} mov      bx, word ptr [eax + 0x02]                     // 0x007c217c    668b5802
                         push             esi                                           // 0x007c2180    56
                         test             ebx, ebx                                      // 0x007c2181    85db
                         push             edi                                           // 0x007c2183    57
                         {disp8} mov      dword ptr [esp + 0x0c], 0xffffffff            // 0x007c2184    c744240cffffffff
                         mov              ecx, 0x00000007                               // 0x007c218c    b907000000
                         mov              esi, 0x00000004                               // 0x007c2191    be04000000
                         {disp8} jne      _jmp_addr_0x007c21a2                          // 0x007c2196    750a
                         mov              ecx, 0x0000008a                               // 0x007c2198    b98a000000
                         mov              esi, 0x00000003                               // 0x007c219d    be03000000
_jmp_addr_0x007c21a2:    {disp8} mov      edi, dword ptr [esp + 0x20]                   // 0x007c21a2    8b7c2420
                         test             edi, edi                                      // 0x007c21a6    85ff
                         {disp32} jl      _jmp_addr_0x007c26de                          // 0x007c21a8    0f8c30050000
                         add              eax, 0x06                                     // 0x007c21ae    83c006
                         inc              edi                                           // 0x007c21b1    47
                         {disp8} mov      dword ptr [esp + 0x20], eax                   // 0x007c21b2    89442420
                         {disp8} mov      eax, dword ptr [esp + 0x18]                   // 0x007c21b6    8b442418
                         push             ebp                                           // 0x007c21ba    55
                         {disp8} mov      dword ptr [esp + 0x14], edi                   // 0x007c21bb    897c2414
_jmp_addr_0x007c21bf:    {disp8} mov      edi, dword ptr [esp + 0x24]                   // 0x007c21bf    8b7c2424
                         mov.s            ebp, ebx                                      // 0x007c21c3    8beb
                         xor.s            ebx, ebx                                      // 0x007c21c5    33db
                         inc              edx                                           // 0x007c21c7    42
                         mov              bx, word ptr [edi]                            // 0x007c21c8    668b1f
                         cmp.s            edx, ecx                                      // 0x007c21cb    3bd1
                         {disp8} mov      dword ptr [esp + 0x1c], ebx                   // 0x007c21cd    895c241c
                         {disp8} mov      dword ptr [esp + 0x20], edx                   // 0x007c21d1    89542420
                         {disp8} jge      _jmp_addr_0x007c21df                          // 0x007c21d5    7d08
                         cmp.s            ebp, ebx                                      // 0x007c21d7    3beb
                         {disp32} je      _jmp_addr_0x007c26c3                          // 0x007c21d9    0f84e4040000
_jmp_addr_0x007c21df:    cmp.s            edx, esi                                      // 0x007c21df    3bd6
                         {disp32} jge     _jmp_addr_0x007c2293                          // 0x007c21e1    0f8dac000000
_jmp_addr_0x007c21e7:    {disp32} mov     ecx, dword ptr [eax + 0x000016b4]             // 0x007c21e7    8b88b4160000
                         xor.s            esi, esi                                      // 0x007c21ed    33f6
                         {disp32} mov     si, word ptr [eax + ebp * 0x4 + 0x00000a76]   // 0x007c21ef    668bb4a8760a0000
                         mov              edi, 0x00000010                               // 0x007c21f7    bf10000000
                         sub.s            edi, esi                                      // 0x007c21fc    2bfe
                         cmp.s            ecx, edi                                      // 0x007c21fe    3bcf
                         {disp8} jle      _jmp_addr_0x007c2269                          // 0x007c2200    7e67
                         xor.s            edx, edx                                      // 0x007c2202    33d2
                         {disp32} mov     dx, word ptr [eax + ebp * 0x4 + 0x00000a74]   // 0x007c2204    668b94a8740a0000
                         mov.s            edi, edx                                      // 0x007c220c    8bfa
                         shl              edi, cl                                       // 0x007c220e    d3e7
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x007c2210    8b4808
                         or               word ptr [eax + 0x16b0], di                   // 0x007c2213    6609b8b0160000
                         {disp8} mov      edi, dword ptr [eax + 0x14]                   // 0x007c221a    8b7814
                         {disp32} mov     bl, byte ptr [eax + 0x000016b0]               // 0x007c221d    8a98b0160000
                         mov              byte ptr [ecx + edi * 0x1], bl                // 0x007c2223    881c39
                         {disp8} mov      edi, dword ptr [eax + 0x14]                   // 0x007c2226    8b7814
                         {disp8} mov      ebx, dword ptr [eax + 0x08]                   // 0x007c2229    8b5808
                         xor.s            ecx, ecx                                      // 0x007c222c    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x000016b1]               // 0x007c222e    8a88b1160000
                         inc              edi                                           // 0x007c2234    47
                         {disp8} mov      dword ptr [eax + 0x14], edi                   // 0x007c2235    897814
                         mov              byte ptr [edi + ebx * 0x1], cl                // 0x007c2238    880c1f
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                   // 0x007c223b    8b4814
                         {disp32} mov     edi, dword ptr [eax + 0x000016b4]             // 0x007c223e    8bb8b4160000
                         inc              ecx                                           // 0x007c2244    41
                         {disp8} mov      dword ptr [eax + 0x14], ecx                   // 0x007c2245    894814
                         mov              cx, 0x0010                                    // 0x007c2248    66b91000
                         sub.s            cx, di                                        // 0x007c224c    662bcf
                         shr              dx, cl                                        // 0x007c224f    66d3ea
                         {disp32} mov     word ptr [eax + 0x000016b0], dx               // 0x007c2252    668990b0160000
                         {disp8} lea      edx, dword ptr [edi + esi * 0x1 + -0x10]      // 0x007c2259    8d5437f0
                         {disp32} mov     dword ptr [eax + 0x000016b4], edx             // 0x007c225d    8990b4160000
                         {disp8} mov      edx, dword ptr [esp + 0x20]                   // 0x007c2263    8b542420
                         {disp8} jmp      _jmp_addr_0x007c2283                          // 0x007c2267    eb1a
_jmp_addr_0x007c2269:    {disp32} mov     di, word ptr [eax + ebp * 0x4 + 0x00000a74]   // 0x007c2269    668bbca8740a0000
                         shl              di, cl                                        // 0x007c2271    66d3e7
                         or               word ptr [eax + 0x16b0], di                   // 0x007c2274    6609b8b0160000
                         add.s            ecx, esi                                      // 0x007c227b    03ce
                         {disp32} mov     dword ptr [eax + 0x000016b4], ecx             // 0x007c227d    8988b4160000
_jmp_addr_0x007c2283:    dec              edx                                           // 0x007c2283    4a
                         {disp8} mov      dword ptr [esp + 0x20], edx                   // 0x007c2284    89542420
                         {disp32} jne     _jmp_addr_0x007c21e7                          // 0x007c2288    0f8559ffffff
                         {disp32} jmp     _jmp_addr_0x007c268f                          // 0x007c228e    e9fc030000
_jmp_addr_0x007c2293:    test             ebp, ebp                                      // 0x007c2293    85ed
                         {disp32} je      _jmp_addr_0x007c245c                          // 0x007c2295    0f84c1010000
                         cmp              ebp, dword ptr [esp + 0x10]                   // 0x007c229b    3b6c2410
                         {disp32} je      _jmp_addr_0x007c2346                          // 0x007c229f    0f84a1000000
                         {disp32} mov     ecx, dword ptr [eax + 0x000016b4]             // 0x007c22a5    8b88b4160000
                         xor.s            esi, esi                                      // 0x007c22ab    33f6
                         {disp32} mov     si, word ptr [eax + ebp * 0x4 + 0x00000a76]   // 0x007c22ad    668bb4a8760a0000
                         mov              edi, 0x00000010                               // 0x007c22b5    bf10000000
                         sub.s            edi, esi                                      // 0x007c22ba    2bfe
                         cmp.s            ecx, edi                                      // 0x007c22bc    3bcf
                         {disp8} jle      _jmp_addr_0x007c2327                          // 0x007c22be    7e67
                         xor.s            edx, edx                                      // 0x007c22c0    33d2
                         {disp32} mov     dx, word ptr [eax + ebp * 0x4 + 0x00000a74]   // 0x007c22c2    668b94a8740a0000
                         mov.s            edi, edx                                      // 0x007c22ca    8bfa
                         shl              edi, cl                                       // 0x007c22cc    d3e7
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x007c22ce    8b4808
                         or               word ptr [eax + 0x16b0], di                   // 0x007c22d1    6609b8b0160000
                         {disp8} mov      edi, dword ptr [eax + 0x14]                   // 0x007c22d8    8b7814
                         {disp32} mov     bl, byte ptr [eax + 0x000016b0]               // 0x007c22db    8a98b0160000
                         mov              byte ptr [ecx + edi * 0x1], bl                // 0x007c22e1    881c39
                         {disp8} mov      edi, dword ptr [eax + 0x14]                   // 0x007c22e4    8b7814
                         {disp8} mov      ebx, dword ptr [eax + 0x08]                   // 0x007c22e7    8b5808
                         xor.s            ecx, ecx                                      // 0x007c22ea    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x000016b1]               // 0x007c22ec    8a88b1160000
                         inc              edi                                           // 0x007c22f2    47
                         {disp8} mov      dword ptr [eax + 0x14], edi                   // 0x007c22f3    897814
                         mov              byte ptr [edi + ebx * 0x1], cl                // 0x007c22f6    880c1f
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                   // 0x007c22f9    8b4814
                         {disp32} mov     edi, dword ptr [eax + 0x000016b4]             // 0x007c22fc    8bb8b4160000
                         inc              ecx                                           // 0x007c2302    41
                         {disp8} mov      dword ptr [eax + 0x14], ecx                   // 0x007c2303    894814
                         mov              cx, 0x0010                                    // 0x007c2306    66b91000
                         sub.s            cx, di                                        // 0x007c230a    662bcf
                         shr              dx, cl                                        // 0x007c230d    66d3ea
                         {disp32} mov     word ptr [eax + 0x000016b0], dx               // 0x007c2310    668990b0160000
                         {disp8} lea      edx, dword ptr [edi + esi * 0x1 + -0x10]      // 0x007c2317    8d5437f0
                         {disp32} mov     dword ptr [eax + 0x000016b4], edx             // 0x007c231b    8990b4160000
                         {disp8} mov      edx, dword ptr [esp + 0x20]                   // 0x007c2321    8b542420
                         {disp8} jmp      _jmp_addr_0x007c2341                          // 0x007c2325    eb1a
_jmp_addr_0x007c2327:    {disp32} mov     di, word ptr [eax + ebp * 0x4 + 0x00000a74]   // 0x007c2327    668bbca8740a0000
                         shl              di, cl                                        // 0x007c232f    66d3e7
                         or               word ptr [eax + 0x16b0], di                   // 0x007c2332    6609b8b0160000
                         add.s            ecx, esi                                      // 0x007c2339    03ce
                         {disp32} mov     dword ptr [eax + 0x000016b4], ecx             // 0x007c233b    8988b4160000
_jmp_addr_0x007c2341:    dec              edx                                           // 0x007c2341    4a
                         {disp8} mov      dword ptr [esp + 0x20], edx                   // 0x007c2342    89542420
_jmp_addr_0x007c2346:    {disp32} mov     ecx, dword ptr [eax + 0x000016b4]             // 0x007c2346    8b88b4160000
                         xor.s            esi, esi                                      // 0x007c234c    33f6
                         {disp32} mov     si, word ptr [eax + 0x00000ab6]               // 0x007c234e    668bb0b60a0000
                         mov              edi, 0x00000010                               // 0x007c2355    bf10000000
                         sub.s            edi, esi                                      // 0x007c235a    2bfe
                         cmp.s            ecx, edi                                      // 0x007c235c    3bcf
                         {disp8} jle      _jmp_addr_0x007c23c6                          // 0x007c235e    7e66
                         xor.s            edx, edx                                      // 0x007c2360    33d2
                         {disp32} mov     dx, word ptr [eax + 0x00000ab4]               // 0x007c2362    668b90b40a0000
                         mov.s            edi, edx                                      // 0x007c2369    8bfa
                         shl              edi, cl                                       // 0x007c236b    d3e7
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x007c236d    8b4808
                         or               word ptr [eax + 0x16b0], di                   // 0x007c2370    6609b8b0160000
                         {disp8} mov      edi, dword ptr [eax + 0x14]                   // 0x007c2377    8b7814
                         {disp32} mov     bl, byte ptr [eax + 0x000016b0]               // 0x007c237a    8a98b0160000
                         mov              byte ptr [ecx + edi * 0x1], bl                // 0x007c2380    881c39
                         {disp8} mov      edi, dword ptr [eax + 0x14]                   // 0x007c2383    8b7814
                         {disp8} mov      ebx, dword ptr [eax + 0x08]                   // 0x007c2386    8b5808
                         xor.s            ecx, ecx                                      // 0x007c2389    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x000016b1]               // 0x007c238b    8a88b1160000
                         inc              edi                                           // 0x007c2391    47
                         {disp8} mov      dword ptr [eax + 0x14], edi                   // 0x007c2392    897814
                         mov              byte ptr [edi + ebx * 0x1], cl                // 0x007c2395    880c1f
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                   // 0x007c2398    8b4814
                         {disp32} mov     edi, dword ptr [eax + 0x000016b4]             // 0x007c239b    8bb8b4160000
                         inc              ecx                                           // 0x007c23a1    41
                         {disp8} mov      dword ptr [eax + 0x14], ecx                   // 0x007c23a2    894814
                         mov              cx, 0x0010                                    // 0x007c23a5    66b91000
                         sub.s            cx, di                                        // 0x007c23a9    662bcf
                         shr              dx, cl                                        // 0x007c23ac    66d3ea
                         {disp32} mov     word ptr [eax + 0x000016b0], dx               // 0x007c23af    668990b0160000
                         {disp8} lea      edx, dword ptr [edi + esi * 0x1 + -0x10]      // 0x007c23b6    8d5437f0
                         {disp32} mov     dword ptr [eax + 0x000016b4], edx             // 0x007c23ba    8990b4160000
                         {disp8} mov      edx, dword ptr [esp + 0x20]                   // 0x007c23c0    8b542420
                         {disp8} jmp      _jmp_addr_0x007c23df                          // 0x007c23c4    eb19
_jmp_addr_0x007c23c6:    {disp32} mov     di, word ptr [eax + 0x00000ab4]               // 0x007c23c6    668bb8b40a0000
                         shl              di, cl                                        // 0x007c23cd    66d3e7
                         or               word ptr [eax + 0x16b0], di                   // 0x007c23d0    6609b8b0160000
                         add.s            ecx, esi                                      // 0x007c23d7    03ce
                         {disp32} mov     dword ptr [eax + 0x000016b4], ecx             // 0x007c23d9    8988b4160000
_jmp_addr_0x007c23df:    {disp32} mov     ecx, dword ptr [eax + 0x000016b4]             // 0x007c23df    8b88b4160000
                         cmp              ecx, 0x0e                                     // 0x007c23e5    83f90e
                         {disp8} jle      _jmp_addr_0x007c2448                          // 0x007c23e8    7e5e
                         add              edx, -0x03                                    // 0x007c23ea    83c2fd
                         mov.s            esi, edx                                      // 0x007c23ed    8bf2
                         shl              esi, cl                                       // 0x007c23ef    d3e6
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x007c23f1    8b4808
                         or               word ptr [eax + 0x16b0], si                   // 0x007c23f4    6609b0b0160000
                         {disp8} mov      esi, dword ptr [eax + 0x14]                   // 0x007c23fb    8b7014
                         {disp32} mov     bl, byte ptr [eax + 0x000016b0]               // 0x007c23fe    8a98b0160000
                         mov              byte ptr [ecx + esi * 0x1], bl                // 0x007c2404    881c31
                         {disp8} mov      esi, dword ptr [eax + 0x14]                   // 0x007c2407    8b7014
                         {disp8} mov      edi, dword ptr [eax + 0x08]                   // 0x007c240a    8b7808
                         xor.s            ecx, ecx                                      // 0x007c240d    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x000016b1]               // 0x007c240f    8a88b1160000
                         inc              esi                                           // 0x007c2415    46
                         {disp8} mov      dword ptr [eax + 0x14], esi                   // 0x007c2416    897014
                         mov              byte ptr [esi + edi * 0x1], cl                // 0x007c2419    880c3e
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                   // 0x007c241c    8b4814
                         {disp32} mov     esi, dword ptr [eax + 0x000016b4]             // 0x007c241f    8bb0b4160000
                         inc              ecx                                           // 0x007c2425    41
                         {disp8} mov      dword ptr [eax + 0x14], ecx                   // 0x007c2426    894814
                         mov              cx, 0x0010                                    // 0x007c2429    66b91000
                         sub.s            cx, si                                        // 0x007c242d    662bce
                         shr              dx, cl                                        // 0x007c2430    66d3ea
                         add              esi, -0x0e                                    // 0x007c2433    83c6f2
                         {disp32} mov     dword ptr [eax + 0x000016b4], esi             // 0x007c2436    89b0b4160000
                         {disp32} mov     word ptr [eax + 0x000016b0], dx               // 0x007c243c    668990b0160000
                         {disp32} jmp     _jmp_addr_0x007c268f                          // 0x007c2443    e947020000
_jmp_addr_0x007c2448:    add              edx, -0x03                                    // 0x007c2448    83c2fd
                         shl              edx, cl                                       // 0x007c244b    d3e2
                         or               word ptr [eax + 0x16b0], dx                   // 0x007c244d    660990b0160000
                         add              ecx, 0x2                                      // 0x007c2454    83c102
                         {disp32} jmp     _jmp_addr_0x007c2689                          // 0x007c2457    e92d020000
_jmp_addr_0x007c245c:    cmp              edx, 0x0a                                     // 0x007c245c    83fa0a
                         {disp32} jg      _jmp_addr_0x007c257b                          // 0x007c245f    0f8f16010000
                         {disp32} mov     ecx, dword ptr [eax + 0x000016b4]             // 0x007c2465    8b88b4160000
                         xor.s            esi, esi                                      // 0x007c246b    33f6
                         {disp32} mov     si, word ptr [eax + 0x00000aba]               // 0x007c246d    668bb0ba0a0000
                         mov              edi, 0x00000010                               // 0x007c2474    bf10000000
                         sub.s            edi, esi                                      // 0x007c2479    2bfe
                         cmp.s            ecx, edi                                      // 0x007c247b    3bcf
                         {disp8} jle      _jmp_addr_0x007c24e5                          // 0x007c247d    7e66
                         xor.s            edx, edx                                      // 0x007c247f    33d2
                         {disp32} mov     dx, word ptr [eax + 0x00000ab8]               // 0x007c2481    668b90b80a0000
                         mov.s            edi, edx                                      // 0x007c2488    8bfa
                         shl              edi, cl                                       // 0x007c248a    d3e7
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x007c248c    8b4808
                         or               word ptr [eax + 0x16b0], di                   // 0x007c248f    6609b8b0160000
                         {disp8} mov      edi, dword ptr [eax + 0x14]                   // 0x007c2496    8b7814
                         {disp32} mov     bl, byte ptr [eax + 0x000016b0]               // 0x007c2499    8a98b0160000
                         mov              byte ptr [ecx + edi * 0x1], bl                // 0x007c249f    881c39
                         {disp8} mov      edi, dword ptr [eax + 0x14]                   // 0x007c24a2    8b7814
                         {disp8} mov      ebx, dword ptr [eax + 0x08]                   // 0x007c24a5    8b5808
                         xor.s            ecx, ecx                                      // 0x007c24a8    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x000016b1]               // 0x007c24aa    8a88b1160000
                         inc              edi                                           // 0x007c24b0    47
                         {disp8} mov      dword ptr [eax + 0x14], edi                   // 0x007c24b1    897814
                         mov              byte ptr [edi + ebx * 0x1], cl                // 0x007c24b4    880c1f
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                   // 0x007c24b7    8b4814
                         {disp32} mov     edi, dword ptr [eax + 0x000016b4]             // 0x007c24ba    8bb8b4160000
                         inc              ecx                                           // 0x007c24c0    41
                         {disp8} mov      dword ptr [eax + 0x14], ecx                   // 0x007c24c1    894814
                         mov              cx, 0x0010                                    // 0x007c24c4    66b91000
                         sub.s            cx, di                                        // 0x007c24c8    662bcf
                         shr              dx, cl                                        // 0x007c24cb    66d3ea
                         {disp32} mov     word ptr [eax + 0x000016b0], dx               // 0x007c24ce    668990b0160000
                         {disp8} lea      edx, dword ptr [edi + esi * 0x1 + -0x10]      // 0x007c24d5    8d5437f0
                         {disp32} mov     dword ptr [eax + 0x000016b4], edx             // 0x007c24d9    8990b4160000
                         {disp8} mov      edx, dword ptr [esp + 0x20]                   // 0x007c24df    8b542420
                         {disp8} jmp      _jmp_addr_0x007c24fe                          // 0x007c24e3    eb19
_jmp_addr_0x007c24e5:    {disp32} mov     di, word ptr [eax + 0x00000ab8]               // 0x007c24e5    668bb8b80a0000
                         shl              di, cl                                        // 0x007c24ec    66d3e7
                         or               word ptr [eax + 0x16b0], di                   // 0x007c24ef    6609b8b0160000
                         add.s            ecx, esi                                      // 0x007c24f6    03ce
                         {disp32} mov     dword ptr [eax + 0x000016b4], ecx             // 0x007c24f8    8988b4160000
_jmp_addr_0x007c24fe:    {disp32} mov     ecx, dword ptr [eax + 0x000016b4]             // 0x007c24fe    8b88b4160000
                         cmp              ecx, 0x0d                                     // 0x007c2504    83f90d
                         {disp8} jle      _jmp_addr_0x007c2567                          // 0x007c2507    7e5e
                         add              edx, -0x03                                    // 0x007c2509    83c2fd
                         mov.s            esi, edx                                      // 0x007c250c    8bf2
                         shl              esi, cl                                       // 0x007c250e    d3e6
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x007c2510    8b4808
                         or               word ptr [eax + 0x16b0], si                   // 0x007c2513    6609b0b0160000
                         {disp8} mov      esi, dword ptr [eax + 0x14]                   // 0x007c251a    8b7014
                         {disp32} mov     bl, byte ptr [eax + 0x000016b0]               // 0x007c251d    8a98b0160000
                         mov              byte ptr [ecx + esi * 0x1], bl                // 0x007c2523    881c31
                         {disp8} mov      esi, dword ptr [eax + 0x14]                   // 0x007c2526    8b7014
                         {disp8} mov      edi, dword ptr [eax + 0x08]                   // 0x007c2529    8b7808
                         xor.s            ecx, ecx                                      // 0x007c252c    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x000016b1]               // 0x007c252e    8a88b1160000
                         inc              esi                                           // 0x007c2534    46
                         {disp8} mov      dword ptr [eax + 0x14], esi                   // 0x007c2535    897014
                         mov              byte ptr [esi + edi * 0x1], cl                // 0x007c2538    880c3e
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                   // 0x007c253b    8b4814
                         {disp32} mov     esi, dword ptr [eax + 0x000016b4]             // 0x007c253e    8bb0b4160000
                         inc              ecx                                           // 0x007c2544    41
                         {disp8} mov      dword ptr [eax + 0x14], ecx                   // 0x007c2545    894814
                         mov              cx, 0x0010                                    // 0x007c2548    66b91000
                         sub.s            cx, si                                        // 0x007c254c    662bce
                         shr              dx, cl                                        // 0x007c254f    66d3ea
                         add              esi, -0x0d                                    // 0x007c2552    83c6f3
                         {disp32} mov     dword ptr [eax + 0x000016b4], esi             // 0x007c2555    89b0b4160000
                         {disp32} mov     word ptr [eax + 0x000016b0], dx               // 0x007c255b    668990b0160000
                         {disp32} jmp     _jmp_addr_0x007c268f                          // 0x007c2562    e928010000
_jmp_addr_0x007c2567:    add              edx, -0x03                                    // 0x007c2567    83c2fd
                         shl              edx, cl                                       // 0x007c256a    d3e2
                         or               word ptr [eax + 0x16b0], dx                   // 0x007c256c    660990b0160000
                         add              ecx, 0x3                                      // 0x007c2573    83c103
                         {disp32} jmp     _jmp_addr_0x007c2689                          // 0x007c2576    e90e010000
_jmp_addr_0x007c257b:    {disp32} mov     ecx, dword ptr [eax + 0x000016b4]             // 0x007c257b    8b88b4160000
                         xor.s            esi, esi                                      // 0x007c2581    33f6
                         {disp32} mov     si, word ptr [eax + 0x00000abe]               // 0x007c2583    668bb0be0a0000
                         mov              edi, 0x00000010                               // 0x007c258a    bf10000000
                         sub.s            edi, esi                                      // 0x007c258f    2bfe
                         cmp.s            ecx, edi                                      // 0x007c2591    3bcf
                         {disp8} jle      _jmp_addr_0x007c25fb                          // 0x007c2593    7e66
                         xor.s            edx, edx                                      // 0x007c2595    33d2
                         {disp32} mov     dx, word ptr [eax + 0x00000abc]               // 0x007c2597    668b90bc0a0000
                         mov.s            edi, edx                                      // 0x007c259e    8bfa
                         shl              edi, cl                                       // 0x007c25a0    d3e7
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x007c25a2    8b4808
                         or               word ptr [eax + 0x16b0], di                   // 0x007c25a5    6609b8b0160000
                         {disp8} mov      edi, dword ptr [eax + 0x14]                   // 0x007c25ac    8b7814
                         {disp32} mov     bl, byte ptr [eax + 0x000016b0]               // 0x007c25af    8a98b0160000
                         mov              byte ptr [ecx + edi * 0x1], bl                // 0x007c25b5    881c39
                         {disp8} mov      edi, dword ptr [eax + 0x14]                   // 0x007c25b8    8b7814
                         {disp8} mov      ebx, dword ptr [eax + 0x08]                   // 0x007c25bb    8b5808
                         xor.s            ecx, ecx                                      // 0x007c25be    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x000016b1]               // 0x007c25c0    8a88b1160000
                         inc              edi                                           // 0x007c25c6    47
                         {disp8} mov      dword ptr [eax + 0x14], edi                   // 0x007c25c7    897814
                         mov              byte ptr [edi + ebx * 0x1], cl                // 0x007c25ca    880c1f
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                   // 0x007c25cd    8b4814
                         {disp32} mov     edi, dword ptr [eax + 0x000016b4]             // 0x007c25d0    8bb8b4160000
                         inc              ecx                                           // 0x007c25d6    41
                         {disp8} mov      dword ptr [eax + 0x14], ecx                   // 0x007c25d7    894814
                         mov              cx, 0x0010                                    // 0x007c25da    66b91000
                         sub.s            cx, di                                        // 0x007c25de    662bcf
                         shr              dx, cl                                        // 0x007c25e1    66d3ea
                         {disp32} mov     word ptr [eax + 0x000016b0], dx               // 0x007c25e4    668990b0160000
                         {disp8} lea      edx, dword ptr [edi + esi * 0x1 + -0x10]      // 0x007c25eb    8d5437f0
                         {disp32} mov     dword ptr [eax + 0x000016b4], edx             // 0x007c25ef    8990b4160000
                         {disp8} mov      edx, dword ptr [esp + 0x20]                   // 0x007c25f5    8b542420
                         {disp8} jmp      _jmp_addr_0x007c2614                          // 0x007c25f9    eb19
_jmp_addr_0x007c25fb:    {disp32} mov     di, word ptr [eax + 0x00000abc]               // 0x007c25fb    668bb8bc0a0000
                         shl              di, cl                                        // 0x007c2602    66d3e7
                         or               word ptr [eax + 0x16b0], di                   // 0x007c2605    6609b8b0160000
                         add.s            ecx, esi                                      // 0x007c260c    03ce
                         {disp32} mov     dword ptr [eax + 0x000016b4], ecx             // 0x007c260e    8988b4160000
_jmp_addr_0x007c2614:    {disp32} mov     ecx, dword ptr [eax + 0x000016b4]             // 0x007c2614    8b88b4160000
                         cmp              ecx, 0x09                                     // 0x007c261a    83f909
                         {disp8} jle      _jmp_addr_0x007c267a                          // 0x007c261d    7e5b
                         add              edx, -0x0b                                    // 0x007c261f    83c2f5
                         mov.s            esi, edx                                      // 0x007c2622    8bf2
                         shl              esi, cl                                       // 0x007c2624    d3e6
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x007c2626    8b4808
                         or               word ptr [eax + 0x16b0], si                   // 0x007c2629    6609b0b0160000
                         {disp8} mov      esi, dword ptr [eax + 0x14]                   // 0x007c2630    8b7014
                         {disp32} mov     bl, byte ptr [eax + 0x000016b0]               // 0x007c2633    8a98b0160000
                         mov              byte ptr [ecx + esi * 0x1], bl                // 0x007c2639    881c31
                         {disp8} mov      esi, dword ptr [eax + 0x14]                   // 0x007c263c    8b7014
                         {disp8} mov      edi, dword ptr [eax + 0x08]                   // 0x007c263f    8b7808
                         xor.s            ecx, ecx                                      // 0x007c2642    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x000016b1]               // 0x007c2644    8a88b1160000
                         inc              esi                                           // 0x007c264a    46
                         {disp8} mov      dword ptr [eax + 0x14], esi                   // 0x007c264b    897014
                         mov              byte ptr [esi + edi * 0x1], cl                // 0x007c264e    880c3e
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                   // 0x007c2651    8b4814
                         {disp32} mov     esi, dword ptr [eax + 0x000016b4]             // 0x007c2654    8bb0b4160000
                         inc              ecx                                           // 0x007c265a    41
                         {disp8} mov      dword ptr [eax + 0x14], ecx                   // 0x007c265b    894814
                         mov              cx, 0x0010                                    // 0x007c265e    66b91000
                         sub.s            cx, si                                        // 0x007c2662    662bce
                         shr              dx, cl                                        // 0x007c2665    66d3ea
                         add              esi, -0x09                                    // 0x007c2668    83c6f7
                         {disp32} mov     dword ptr [eax + 0x000016b4], esi             // 0x007c266b    89b0b4160000
                         {disp32} mov     word ptr [eax + 0x000016b0], dx               // 0x007c2671    668990b0160000
                         {disp8} jmp      _jmp_addr_0x007c268f                          // 0x007c2678    eb15
_jmp_addr_0x007c267a:    add              edx, -0x0b                                    // 0x007c267a    83c2f5
                         shl              edx, cl                                       // 0x007c267d    d3e2
                         or               word ptr [eax + 0x16b0], dx                   // 0x007c267f    660990b0160000
                         add              ecx, 0x7                                      // 0x007c2686    83c107
_jmp_addr_0x007c2689:    {disp32} mov     dword ptr [eax + 0x000016b4], ecx             // 0x007c2689    8988b4160000
_jmp_addr_0x007c268f:    {disp8} mov      ebx, dword ptr [esp + 0x1c]                   // 0x007c268f    8b5c241c
                         xor.s            edx, edx                                      // 0x007c2693    33d2
                         test             ebx, ebx                                      // 0x007c2695    85db
                         {disp8} mov      dword ptr [esp + 0x10], ebp                   // 0x007c2697    896c2410
                         {disp8} jne      _jmp_addr_0x007c26a9                          // 0x007c269b    750c
                         mov              ecx, 0x0000008a                               // 0x007c269d    b98a000000
                         mov              esi, 0x00000003                               // 0x007c26a2    be03000000
                         {disp8} jmp      _jmp_addr_0x007c26c3                          // 0x007c26a7    eb1a
_jmp_addr_0x007c26a9:    cmp.s            ebp, ebx                                      // 0x007c26a9    3beb
                         {disp8} jne      _jmp_addr_0x007c26b9                          // 0x007c26ab    750c
                         mov              ecx, 0x00000006                               // 0x007c26ad    b906000000
                         mov              esi, 0x00000003                               // 0x007c26b2    be03000000
                         {disp8} jmp      _jmp_addr_0x007c26c3                          // 0x007c26b7    eb0a
_jmp_addr_0x007c26b9:    mov              ecx, 0x00000007                               // 0x007c26b9    b907000000
                         mov              esi, 0x00000004                               // 0x007c26be    be04000000
_jmp_addr_0x007c26c3:    {disp8} mov      ebp, dword ptr [esp + 0x24]                   // 0x007c26c3    8b6c2424
                         {disp8} mov      edi, dword ptr [esp + 0x14]                   // 0x007c26c7    8b7c2414
                         add              ebp, 0x04                                     // 0x007c26cb    83c504
                         dec              edi                                           // 0x007c26ce    4f
                         {disp8} mov      dword ptr [esp + 0x24], ebp                   // 0x007c26cf    896c2424
                         {disp8} mov      dword ptr [esp + 0x14], edi                   // 0x007c26d3    897c2414
                         {disp32} jne     _jmp_addr_0x007c21bf                          // 0x007c26d7    0f85e2faffff
                         pop              ebp                                           // 0x007c26dd    5d
_jmp_addr_0x007c26de:    pop              edi                                           // 0x007c26de    5f
                         pop              esi                                           // 0x007c26df    5e
                         pop              ebx                                           // 0x007c26e0    5b
                         add              esp, 0x08                                     // 0x007c26e1    83c408
                         ret                                                            // 0x007c26e4    c3
                         nop                                                            // 0x007c26e5    90
                         nop                                                            // 0x007c26e6    90
                         nop                                                            // 0x007c26e7    90
                         nop                                                            // 0x007c26e8    90
                         nop                                                            // 0x007c26e9    90
                         nop                                                            // 0x007c26ea    90
                         nop                                                            // 0x007c26eb    90
                         nop                                                            // 0x007c26ec    90
                         nop                                                            // 0x007c26ed    90
                         nop                                                            // 0x007c26ee    90
                         nop                                                            // 0x007c26ef    90
__tr_tally:              {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007c26f0    8b442404
                         push             esi                                           // 0x007c26f4    56
                         {disp8} mov      esi, dword ptr [esp + 0x0c]                   // 0x007c26f5    8b74240c
                         push             edi                                           // 0x007c26f9    57
                         {disp32} mov     ecx, dword ptr [eax + 0x00001698]             // 0x007c26fa    8b8898160000
                         {disp32} mov     edx, dword ptr [eax + 0x0000169c]             // 0x007c2700    8b909c160000
                         mov              word ptr [edx + ecx * 0x2], si                // 0x007c2706    6689344a
                         {disp32} mov     edx, dword ptr [eax + 0x00001690]             // 0x007c270a    8b9090160000
                         {disp32} mov     edi, dword ptr [eax + 0x00001698]             // 0x007c2710    8bb898160000
                         {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007c2716    8b4c2414
                         mov              byte ptr [edx + edi * 0x1], cl                // 0x007c271a    880c3a
                         {disp32} mov     edi, dword ptr [eax + 0x00001698]             // 0x007c271d    8bb898160000
                         inc              edi                                           // 0x007c2723    47
                         test             esi, esi                                      // 0x007c2724    85f6
                         {disp32} mov     dword ptr [eax + 0x00001698], edi             // 0x007c2726    89b898160000
                         {disp8} jne      _jmp_addr_0x007c2738                          // 0x007c272c    750a
                         {disp32} inc     word ptr [eax + ecx * 0x4 + 0x0000008c]       // 0x007c272e    66ff84888c000000
                         {disp8} jmp      _jmp_addr_0x007c2782                          // 0x007c2736    eb4a
_jmp_addr_0x007c2738:    {disp32} mov     edx, dword ptr [eax + 0x000016a8]             // 0x007c2738    8b90a8160000
                         inc              edx                                           // 0x007c273e    42
                         dec              esi                                           // 0x007c273f    4e
                         {disp32} mov     dword ptr [eax + 0x000016a8], edx             // 0x007c2740    8990a8160000
                         xor.s            edx, edx                                      // 0x007c2746    33d2
                         {disp32} mov     dl, byte ptr [ecx + 0x009a0170]               // 0x007c2748    8a9170019a00
                         {disp32} inc     word ptr [eax + edx * 0x4 + 0x00000490]       // 0x007c274e    66ff849090040000
                         cmp              esi, 0x00000100                               // 0x007c2756    81fe00010000
                         {disp32} lea     ecx, dword ptr [eax + edx * 0x4 + 0x00000490] // 0x007c275c    8d8c9090040000
                         {disp8} jae      _jmp_addr_0x007c276f                          // 0x007c2763    730a
                         xor.s            ecx, ecx                                      // 0x007c2765    33c9
                         {disp32} mov     cl, byte ptr [esi + 0x0099ff70]               // 0x007c2767    8a8e70ff9900
                         {disp8} jmp      _jmp_addr_0x007c277a                          // 0x007c276d    eb0b
_jmp_addr_0x007c276f:    shr              esi, 7                                        // 0x007c276f    c1ee07
                         xor.s            ecx, ecx                                      // 0x007c2772    33c9
                         {disp32} mov     cl, byte ptr [esi + 0x009a0070]               // 0x007c2774    8a8e70009a00
_jmp_addr_0x007c277a:    {disp32} inc     word ptr [eax + ecx * 0x4 + 0x00000980]       // 0x007c277a    66ff848880090000
_jmp_addr_0x007c2782:    {disp32} mov     ecx, dword ptr [eax + 0x00001694]             // 0x007c2782    8b8894160000
                         {disp32} mov     esi, dword ptr [eax + 0x00001698]             // 0x007c2788    8bb098160000
                         dec              ecx                                           // 0x007c278e    49
                         xor.s            edx, edx                                      // 0x007c278f    33d2
                         cmp.s            esi, ecx                                      // 0x007c2791    3bf1
                         pop              edi                                           // 0x007c2793    5f
                         sete             dl                                            // 0x007c2794    0f94c2
                         mov.s            eax, edx                                      // 0x007c2797    8bc2
                         pop              esi                                           // 0x007c2799    5e
                         ret                                                            // 0x007c279a    c3
                         nop                                                            // 0x007c279b    90
                         nop                                                            // 0x007c279c    90
                         nop                                                            // 0x007c279d    90
                         nop                                                            // 0x007c279e    90
                         nop                                                            // 0x007c279f    90
_compress_block:         {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007c27a0    8b442404
                         sub              esp, 0x08                                     // 0x007c27a4    83ec08
                         xor.s            ecx, ecx                                      // 0x007c27a7    33c9
                         {disp32} mov     edx, dword ptr [eax + 0x00001698]             // 0x007c27a9    8b9098160000
                         push             ebx                                           // 0x007c27af    53
                         push             ebp                                           // 0x007c27b0    55
                         {disp8} mov      ebp, dword ptr [esp + 0x18]                   // 0x007c27b1    8b6c2418
                         push             esi                                           // 0x007c27b5    56
                         push             edi                                           // 0x007c27b6    57
                         test             edx, edx                                      // 0x007c27b7    85d2
                         {disp32} je      _jmp_addr_0x007c2b2f                          // 0x007c27b9    0f8470030000
_jmp_addr_0x007c27bf:    {disp32} mov     edx, dword ptr [eax + 0x0000169c]             // 0x007c27bf    8b909c160000
                         xor.s            edi, edi                                      // 0x007c27c5    33ff
                         xor.s            ebx, ebx                                      // 0x007c27c7    33db
                         mov              di, word ptr [edx + ecx * 0x2]                // 0x007c27c9    668b3c4a
                         {disp32} mov     edx, dword ptr [eax + 0x00001690]             // 0x007c27cd    8b9090160000
                         mov              bl, byte ptr [ecx + edx * 0x1]                // 0x007c27d3    8a1c11
                         inc              ecx                                           // 0x007c27d6    41
                         test             edi, edi                                      // 0x007c27d7    85ff
                         mov.s            edx, ebx                                      // 0x007c27d9    8bd3
                         {disp8} mov      dword ptr [esp + 0x14], ecx                   // 0x007c27db    894c2414
                         {disp32} jne     _jmp_addr_0x007c2870                          // 0x007c27df    0f858b000000
                         {disp8} mov      di, word ptr [ebp + edx * 0x4 + 0x02]         // 0x007c27e5    668b7c9502
                         {disp32} mov     ecx, dword ptr [eax + 0x000016b4]             // 0x007c27ea    8b88b4160000
                         mov              esi, 0x00000010                               // 0x007c27f0    be10000000
                         sub.s            esi, edi                                      // 0x007c27f5    2bf7
                         cmp.s            ecx, esi                                      // 0x007c27f7    3bce
                         {disp8} jle      _jmp_addr_0x007c285a                          // 0x007c27f9    7e5f
                         xor.s            esi, esi                                      // 0x007c27fb    33f6
                         {disp8} mov      si, word ptr [ebp + edx * 0x4 + 0x00]         // 0x007c27fd    668b749500
                         mov.s            edx, esi                                      // 0x007c2802    8bd6
                         shl              edx, cl                                       // 0x007c2804    d3e2
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x007c2806    8b4808
                         or               word ptr [eax + 0x16b0], dx                   // 0x007c2809    660990b0160000
                         {disp8} mov      edx, dword ptr [eax + 0x14]                   // 0x007c2810    8b5014
                         {disp32} mov     bl, byte ptr [eax + 0x000016b0]               // 0x007c2813    8a98b0160000
                         mov              byte ptr [ecx + edx * 0x1], bl                // 0x007c2819    881c11
                         {disp8} mov      edx, dword ptr [eax + 0x14]                   // 0x007c281c    8b5014
                         {disp8} mov      ebx, dword ptr [eax + 0x08]                   // 0x007c281f    8b5808
                         inc              edx                                           // 0x007c2822    42
                         {disp8} mov      dword ptr [eax + 0x14], edx                   // 0x007c2823    895014
                         mov.s            ecx, edx                                      // 0x007c2826    8bca
                         xor.s            edx, edx                                      // 0x007c2828    33d2
                         {disp32} mov     dl, byte ptr [eax + 0x000016b1]               // 0x007c282a    8a90b1160000
                         mov              byte ptr [ecx + ebx * 0x1], dl                // 0x007c2830    881419
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                   // 0x007c2833    8b4814
                         {disp32} mov     edx, dword ptr [eax + 0x000016b4]             // 0x007c2836    8b90b4160000
                         inc              ecx                                           // 0x007c283c    41
                         {disp8} mov      dword ptr [eax + 0x14], ecx                   // 0x007c283d    894814
                         mov              cx, 0x0010                                    // 0x007c2840    66b91000
                         sub.s            cx, dx                                        // 0x007c2844    662bca
                         shr              si, cl                                        // 0x007c2847    66d3ee
                         {disp8} lea      ecx, dword ptr [edx + edi * 0x1 + -0x10]      // 0x007c284a    8d4c3af0
                         {disp32} mov     word ptr [eax + 0x000016b0], si               // 0x007c284e    6689b0b0160000
                         {disp32} jmp     _jmp_addr_0x007c2b17                          // 0x007c2855    e9bd020000
_jmp_addr_0x007c285a:    {disp8} mov      dx, word ptr [ebp + edx * 0x4 + 0x00]         // 0x007c285a    668b549500
                         shl              dx, cl                                        // 0x007c285f    66d3e2
                         or               word ptr [eax + 0x16b0], dx                   // 0x007c2862    660990b0160000
                         add.s            ecx, edi                                      // 0x007c2869    03cf
                         {disp32} jmp     _jmp_addr_0x007c2b17                          // 0x007c286b    e9a7020000
_jmp_addr_0x007c2870:    xor.s            ebx, ebx                                      // 0x007c2870    33db
                         {disp32} mov     ecx, dword ptr [eax + 0x000016b4]             // 0x007c2872    8b88b4160000
                         {disp32} mov     bl, byte ptr [edx + 0x009a0170]               // 0x007c2878    8a9a70019a00
                         xor.s            esi, esi                                      // 0x007c287e    33f6
                         {disp8} mov      dword ptr [esp + 0x1c], ebx                   // 0x007c2880    895c241c
                         {disp32} mov     si, word ptr [ebp + ebx * 0x4 + 0x00000406]   // 0x007c2884    668bb49d06040000
                         mov              ebp, 0x00000010                               // 0x007c288c    bd10000000
                         sub.s            ebp, esi                                      // 0x007c2891    2bee
                         {disp8} mov      dword ptr [esp + 0x10], esi                   // 0x007c2893    89742410
                         cmp.s            ecx, ebp                                      // 0x007c2897    3bcd
                         {disp8} jle      _jmp_addr_0x007c290c                          // 0x007c2899    7e71
                         {disp8} mov      ebp, dword ptr [esp + 0x20]                   // 0x007c289b    8b6c2420
                         xor.s            esi, esi                                      // 0x007c289f    33f6
                         {disp32} mov     si, word ptr [ebp + ebx * 0x4 + 0x00000404]   // 0x007c28a1    668bb49d04040000
                         {disp8} mov      ebp, dword ptr [eax + 0x08]                   // 0x007c28a9    8b6808
                         mov.s            ebx, esi                                      // 0x007c28ac    8bde
                         shl              ebx, cl                                       // 0x007c28ae    d3e3
                         or               word ptr [eax + 0x16b0], bx                   // 0x007c28b0    660998b0160000
                         {disp8} mov      ebx, dword ptr [eax + 0x14]                   // 0x007c28b7    8b5814
                         {disp32} mov     cl, byte ptr [eax + 0x000016b0]               // 0x007c28ba    8a88b0160000
                         mov              byte ptr [ebx + ebp * 0x1], cl                // 0x007c28c0    880c2b
                         {disp8} mov      ebx, dword ptr [eax + 0x14]                   // 0x007c28c3    8b5814
                         inc              ebx                                           // 0x007c28c6    43
                         xor.s            ecx, ecx                                      // 0x007c28c7    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x000016b1]               // 0x007c28c9    8a88b1160000
                         {disp8} mov      dword ptr [eax + 0x14], ebx                   // 0x007c28cf    895814
                         mov.s            ebp, ebx                                      // 0x007c28d2    8beb
                         {disp8} mov      ebx, dword ptr [eax + 0x08]                   // 0x007c28d4    8b5808
                         mov              byte ptr [ebx + ebp * 0x1], cl                // 0x007c28d7    880c2b
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                   // 0x007c28da    8b4814
                         {disp32} mov     ebx, dword ptr [eax + 0x000016b4]             // 0x007c28dd    8b98b4160000
                         inc              ecx                                           // 0x007c28e3    41
                         {disp8} mov      dword ptr [eax + 0x14], ecx                   // 0x007c28e4    894814
                         mov              cx, 0x0010                                    // 0x007c28e7    66b91000
                         sub.s            cx, bx                                        // 0x007c28eb    662bcb
                         shr              si, cl                                        // 0x007c28ee    66d3ee
                         {disp8} mov      ecx, dword ptr [esp + 0x10]                   // 0x007c28f1    8b4c2410
                         {disp8} lea      ecx, dword ptr [ebx + ecx * 0x1 + -0x10]      // 0x007c28f5    8d4c0bf0
                         {disp8} mov      ebx, dword ptr [esp + 0x1c]                   // 0x007c28f9    8b5c241c
                         {disp32} mov     word ptr [eax + 0x000016b0], si               // 0x007c28fd    6689b0b0160000
                         {disp32} mov     dword ptr [eax + 0x000016b4], ecx             // 0x007c2904    8988b4160000
                         {disp8} jmp      _jmp_addr_0x007c2930                          // 0x007c290a    eb24
_jmp_addr_0x007c290c:    {disp8} mov      ebp, dword ptr [esp + 0x20]                   // 0x007c290c    8b6c2420
                         {disp32} mov     bp, word ptr [ebp + ebx * 0x4 + 0x00000404]   // 0x007c2910    668bac9d04040000
                         shl              bp, cl                                        // 0x007c2918    66d3e5
                         {disp32} mov     ecx, dword ptr [eax + 0x000016b4]             // 0x007c291b    8b88b4160000
                         or               word ptr [eax + 0x16b0], bp                   // 0x007c2921    6609a8b0160000
                         add.s            ecx, esi                                      // 0x007c2928    03ce
                         {disp32} mov     dword ptr [eax + 0x000016b4], ecx             // 0x007c292a    8988b4160000
_jmp_addr_0x007c2930:    {disp32} mov     esi, dword ptr [ebx * 0x4 + 0x0099f92c]       // 0x007c2930    8b349d2cf99900
                         test             esi, esi                                      // 0x007c2937    85f6
                         {disp32} je      _jmp_addr_0x007c29c5                          // 0x007c2939    0f8486000000
                         {disp32} mov     ecx, dword ptr [ebx * 0x4 + 0x009a0270]       // 0x007c293f    8b0c9d70029a00
                         mov              ebx, 0x00000010                               // 0x007c2946    bb10000000
                         sub.s            edx, ecx                                      // 0x007c294b    2bd1
                         {disp32} mov     ecx, dword ptr [eax + 0x000016b4]             // 0x007c294d    8b88b4160000
                         sub.s            ebx, esi                                      // 0x007c2953    2bde
                         cmp.s            ecx, ebx                                      // 0x007c2955    3bcb
                         {disp8} jle      _jmp_addr_0x007c29b4                          // 0x007c2957    7e5b
                         mov.s            ebx, edx                                      // 0x007c2959    8bda
                         {disp8} mov      ebp, dword ptr [eax + 0x08]                   // 0x007c295b    8b6808
                         shl              ebx, cl                                       // 0x007c295e    d3e3
                         or               word ptr [eax + 0x16b0], bx                   // 0x007c2960    660998b0160000
                         {disp8} mov      ebx, dword ptr [eax + 0x14]                   // 0x007c2967    8b5814
                         {disp32} mov     cl, byte ptr [eax + 0x000016b0]               // 0x007c296a    8a88b0160000
                         mov              byte ptr [ebx + ebp * 0x1], cl                // 0x007c2970    880c2b
                         {disp8} mov      ebx, dword ptr [eax + 0x14]                   // 0x007c2973    8b5814
                         inc              ebx                                           // 0x007c2976    43
                         xor.s            ecx, ecx                                      // 0x007c2977    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x000016b1]               // 0x007c2979    8a88b1160000
                         {disp8} mov      dword ptr [eax + 0x14], ebx                   // 0x007c297f    895814
                         mov.s            ebp, ebx                                      // 0x007c2982    8beb
                         {disp8} mov      ebx, dword ptr [eax + 0x08]                   // 0x007c2984    8b5808
                         mov              byte ptr [ebx + ebp * 0x1], cl                // 0x007c2987    880c2b
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                   // 0x007c298a    8b4814
                         {disp32} mov     ebx, dword ptr [eax + 0x000016b4]             // 0x007c298d    8b98b4160000
                         inc              ecx                                           // 0x007c2993    41
                         {disp8} mov      dword ptr [eax + 0x14], ecx                   // 0x007c2994    894814
                         mov              cx, 0x0010                                    // 0x007c2997    66b91000
                         sub.s            cx, bx                                        // 0x007c299b    662bcb
                         shr              dx, cl                                        // 0x007c299e    66d3ea
                         {disp32} mov     word ptr [eax + 0x000016b0], dx               // 0x007c29a1    668990b0160000
                         {disp8} lea      edx, dword ptr [ebx + esi * 0x1 + -0x10]      // 0x007c29a8    8d5433f0
                         {disp32} mov     dword ptr [eax + 0x000016b4], edx             // 0x007c29ac    8990b4160000
                         {disp8} jmp      _jmp_addr_0x007c29c5                          // 0x007c29b2    eb11
_jmp_addr_0x007c29b4:    shl              edx, cl                                       // 0x007c29b4    d3e2
                         or               word ptr [eax + 0x16b0], dx                   // 0x007c29b6    660990b0160000
                         add.s            ecx, esi                                      // 0x007c29bd    03ce
                         {disp32} mov     dword ptr [eax + 0x000016b4], ecx             // 0x007c29bf    8988b4160000
_jmp_addr_0x007c29c5:    dec              edi                                           // 0x007c29c5    4f
                         cmp              edi, 0x00000100                               // 0x007c29c6    81ff00010000
                         {disp8} jae      _jmp_addr_0x007c29d8                          // 0x007c29cc    730a
                         xor.s            ebx, ebx                                      // 0x007c29ce    33db
                         {disp32} mov     bl, byte ptr [edi + 0x0099ff70]               // 0x007c29d0    8a9f70ff9900
                         {disp8} jmp      _jmp_addr_0x007c29e5                          // 0x007c29d6    eb0d
_jmp_addr_0x007c29d8:    mov.s            ecx, edi                                      // 0x007c29d8    8bcf
                         shr              ecx, 7                                        // 0x007c29da    c1e907
                         xor.s            ebx, ebx                                      // 0x007c29dd    33db
                         {disp32} mov     bl, byte ptr [ecx + 0x009a0070]               // 0x007c29df    8a9970009a00
_jmp_addr_0x007c29e5:    {disp8} mov      ebp, dword ptr [esp + 0x24]                   // 0x007c29e5    8b6c2424
                         {disp32} mov     ecx, dword ptr [eax + 0x000016b4]             // 0x007c29e9    8b88b4160000
                         xor.s            esi, esi                                      // 0x007c29ef    33f6
                         mov              edx, 0x00000010                               // 0x007c29f1    ba10000000
                         {disp8} mov      si, word ptr [ebp + ebx * 0x4 + 0x02]         // 0x007c29f6    668b749d02
                         {disp8} mov      dword ptr [esp + 0x1c], ebx                   // 0x007c29fb    895c241c
                         sub.s            edx, esi                                      // 0x007c29ff    2bd6
                         cmp.s            ecx, edx                                      // 0x007c2a01    3bca
                         {disp8} jle      _jmp_addr_0x007c2a6f                          // 0x007c2a03    7e6a
                         xor.s            edx, edx                                      // 0x007c2a05    33d2
                         {disp8} mov      dx, word ptr [ebp + ebx * 0x4 + 0x00]         // 0x007c2a07    668b549d00
                         {disp8} mov      ebp, dword ptr [eax + 0x08]                   // 0x007c2a0c    8b6808
                         mov.s            ebx, edx                                      // 0x007c2a0f    8bda
                         shl              ebx, cl                                       // 0x007c2a11    d3e3
                         or               word ptr [eax + 0x16b0], bx                   // 0x007c2a13    660998b0160000
                         {disp8} mov      ebx, dword ptr [eax + 0x14]                   // 0x007c2a1a    8b5814
                         {disp32} mov     cl, byte ptr [eax + 0x000016b0]               // 0x007c2a1d    8a88b0160000
                         mov              byte ptr [ebx + ebp * 0x1], cl                // 0x007c2a23    880c2b
                         {disp8} mov      ebx, dword ptr [eax + 0x14]                   // 0x007c2a26    8b5814
                         inc              ebx                                           // 0x007c2a29    43
                         xor.s            ecx, ecx                                      // 0x007c2a2a    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x000016b1]               // 0x007c2a2c    8a88b1160000
                         {disp8} mov      dword ptr [eax + 0x14], ebx                   // 0x007c2a32    895814
                         mov.s            ebp, ebx                                      // 0x007c2a35    8beb
                         {disp8} mov      ebx, dword ptr [eax + 0x08]                   // 0x007c2a37    8b5808
                         mov              byte ptr [ebx + ebp * 0x1], cl                // 0x007c2a3a    880c2b
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                   // 0x007c2a3d    8b4814
                         {disp32} mov     ebx, dword ptr [eax + 0x000016b4]             // 0x007c2a40    8b98b4160000
                         inc              ecx                                           // 0x007c2a46    41
                         {disp8} mov      dword ptr [eax + 0x14], ecx                   // 0x007c2a47    894814
                         mov              cx, 0x0010                                    // 0x007c2a4a    66b91000
                         sub.s            cx, bx                                        // 0x007c2a4e    662bcb
                         {disp8} mov      ebp, dword ptr [esp + 0x20]                   // 0x007c2a51    8b6c2420
                         shr              dx, cl                                        // 0x007c2a55    66d3ea
                         {disp32} mov     word ptr [eax + 0x000016b0], dx               // 0x007c2a58    668990b0160000
                         {disp8} lea      edx, dword ptr [ebx + esi * 0x1 + -0x10]      // 0x007c2a5f    8d5433f0
                         {disp8} mov      ebx, dword ptr [esp + 0x1c]                   // 0x007c2a63    8b5c241c
                         {disp32} mov     dword ptr [eax + 0x000016b4], edx             // 0x007c2a67    8990b4160000
                         {disp8} jmp      _jmp_addr_0x007c2a8a                          // 0x007c2a6d    eb1b
_jmp_addr_0x007c2a6f:    {disp8} mov      dx, word ptr [ebp + ebx * 0x4 + 0x00]         // 0x007c2a6f    668b549d00
                         {disp8} mov      ebp, dword ptr [esp + 0x20]                   // 0x007c2a74    8b6c2420
                         shl              dx, cl                                        // 0x007c2a78    66d3e2
                         or               word ptr [eax + 0x16b0], dx                   // 0x007c2a7b    660990b0160000
                         add.s            ecx, esi                                      // 0x007c2a82    03ce
                         {disp32} mov     dword ptr [eax + 0x000016b4], ecx             // 0x007c2a84    8988b4160000
_jmp_addr_0x007c2a8a:    {disp32} mov     edx, dword ptr [ebx * 0x4 + 0x0099f9a0]       // 0x007c2a8a    8b149da0f99900
                         test             edx, edx                                      // 0x007c2a91    85d2
                         {disp32} je      _jmp_addr_0x007c2b1d                          // 0x007c2a93    0f8484000000
                         {disp32} mov     ecx, dword ptr [ebx * 0x4 + 0x009a02e4]       // 0x007c2a99    8b0c9de4029a00
                         mov              esi, 0x00000010                               // 0x007c2aa0    be10000000
                         sub.s            edi, ecx                                      // 0x007c2aa5    2bf9
                         {disp32} mov     ecx, dword ptr [eax + 0x000016b4]             // 0x007c2aa7    8b88b4160000
                         sub.s            esi, edx                                      // 0x007c2aad    2bf2
                         cmp.s            ecx, esi                                      // 0x007c2aaf    3bce
                         {disp8} jle      _jmp_addr_0x007c2b0c                          // 0x007c2ab1    7e59
                         mov.s            esi, edi                                      // 0x007c2ab3    8bf7
                         shl              esi, cl                                       // 0x007c2ab5    d3e6
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x007c2ab7    8b4808
                         or               word ptr [eax + 0x16b0], si                   // 0x007c2aba    6609b0b0160000
                         {disp8} mov      esi, dword ptr [eax + 0x14]                   // 0x007c2ac1    8b7014
                         {disp32} mov     bl, byte ptr [eax + 0x000016b0]               // 0x007c2ac4    8a98b0160000
                         mov              byte ptr [ecx + esi * 0x1], bl                // 0x007c2aca    881c31
                         {disp8} mov      esi, dword ptr [eax + 0x14]                   // 0x007c2acd    8b7014
                         {disp8} mov      ebx, dword ptr [eax + 0x08]                   // 0x007c2ad0    8b5808
                         xor.s            ecx, ecx                                      // 0x007c2ad3    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x000016b1]               // 0x007c2ad5    8a88b1160000
                         inc              esi                                           // 0x007c2adb    46
                         {disp8} mov      dword ptr [eax + 0x14], esi                   // 0x007c2adc    897014
                         mov              byte ptr [esi + ebx * 0x1], cl                // 0x007c2adf    880c1e
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                   // 0x007c2ae2    8b4814
                         {disp32} mov     esi, dword ptr [eax + 0x000016b4]             // 0x007c2ae5    8bb0b4160000
                         inc              ecx                                           // 0x007c2aeb    41
                         {disp8} mov      dword ptr [eax + 0x14], ecx                   // 0x007c2aec    894814
                         mov              cx, 0x0010                                    // 0x007c2aef    66b91000
                         sub.s            cx, si                                        // 0x007c2af3    662bce
                         {disp8} lea      edx, dword ptr [esi + edx * 0x1 + -0x10]      // 0x007c2af6    8d5416f0
                         shr              di, cl                                        // 0x007c2afa    66d3ef
                         {disp32} mov     dword ptr [eax + 0x000016b4], edx             // 0x007c2afd    8990b4160000
                         {disp32} mov     word ptr [eax + 0x000016b0], di               // 0x007c2b03    6689b8b0160000
                         {disp8} jmp      _jmp_addr_0x007c2b1d                          // 0x007c2b0a    eb11
_jmp_addr_0x007c2b0c:    shl              edi, cl                                       // 0x007c2b0c    d3e7
                         or               word ptr [eax + 0x16b0], di                   // 0x007c2b0e    6609b8b0160000
                         add.s            ecx, edx                                      // 0x007c2b15    03ca
_jmp_addr_0x007c2b17:    {disp32} mov     dword ptr [eax + 0x000016b4], ecx             // 0x007c2b17    8988b4160000
_jmp_addr_0x007c2b1d:    {disp8} mov      ecx, dword ptr [esp + 0x14]                   // 0x007c2b1d    8b4c2414
                         {disp32} mov     edx, dword ptr [eax + 0x00001698]             // 0x007c2b21    8b9098160000
                         cmp.s            ecx, edx                                      // 0x007c2b27    3bca
                         {disp32} jb      _jmp_addr_0x007c27bf                          // 0x007c2b29    0f8290fcffff
_jmp_addr_0x007c2b2f:    {disp32} mov     ecx, dword ptr [eax + 0x000016b4]             // 0x007c2b2f    8b88b4160000
                         xor.s            esi, esi                                      // 0x007c2b35    33f6
                         {disp32} mov     si, word ptr [ebp + 0x00000402]               // 0x007c2b37    668bb502040000
                         mov              edx, 0x00000010                               // 0x007c2b3e    ba10000000
                         sub.s            edx, esi                                      // 0x007c2b43    2bd6
                         cmp.s            ecx, edx                                      // 0x007c2b45    3bca
                         {disp8} jle      _jmp_addr_0x007c2bab                          // 0x007c2b47    7e62
                         xor.s            edx, edx                                      // 0x007c2b49    33d2
                         {disp32} mov     dx, word ptr [ebp + 0x00000400]               // 0x007c2b4b    668b9500040000
                         mov.s            edi, edx                                      // 0x007c2b52    8bfa
                         shl              edi, cl                                       // 0x007c2b54    d3e7
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x007c2b56    8b4808
                         or               word ptr [eax + 0x16b0], di                   // 0x007c2b59    6609b8b0160000
                         {disp8} mov      edi, dword ptr [eax + 0x14]                   // 0x007c2b60    8b7814
                         {disp32} mov     bl, byte ptr [eax + 0x000016b0]               // 0x007c2b63    8a98b0160000
                         mov              byte ptr [ecx + edi * 0x1], bl                // 0x007c2b69    881c39
                         {disp8} mov      edi, dword ptr [eax + 0x14]                   // 0x007c2b6c    8b7814
                         {disp8} mov      ebx, dword ptr [eax + 0x08]                   // 0x007c2b6f    8b5808
                         xor.s            ecx, ecx                                      // 0x007c2b72    33c9
                         {disp32} mov     cl, byte ptr [eax + 0x000016b1]               // 0x007c2b74    8a88b1160000
                         inc              edi                                           // 0x007c2b7a    47
                         {disp8} mov      dword ptr [eax + 0x14], edi                   // 0x007c2b7b    897814
                         mov              byte ptr [edi + ebx * 0x1], cl                // 0x007c2b7e    880c1f
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                   // 0x007c2b81    8b4814
                         {disp32} mov     edi, dword ptr [eax + 0x000016b4]             // 0x007c2b84    8bb8b4160000
                         inc              ecx                                           // 0x007c2b8a    41
                         {disp8} mov      dword ptr [eax + 0x14], ecx                   // 0x007c2b8b    894814
                         mov              cx, 0x0010                                    // 0x007c2b8e    66b91000
                         sub.s            cx, di                                        // 0x007c2b92    662bcf
                         shr              dx, cl                                        // 0x007c2b95    66d3ea
                         {disp32} mov     word ptr [eax + 0x000016b0], dx               // 0x007c2b98    668990b0160000
                         {disp8} lea      edx, dword ptr [edi + esi * 0x1 + -0x10]      // 0x007c2b9f    8d5437f0
                         {disp32} mov     dword ptr [eax + 0x000016b4], edx             // 0x007c2ba3    8990b4160000
                         {disp8} jmp      _jmp_addr_0x007c2bc4                          // 0x007c2ba9    eb19
_jmp_addr_0x007c2bab:    {disp32} mov     dx, word ptr [ebp + 0x00000400]               // 0x007c2bab    668b9500040000
                         shl              dx, cl                                        // 0x007c2bb2    66d3e2
                         or               word ptr [eax + 0x16b0], dx                   // 0x007c2bb5    660990b0160000
                         add.s            ecx, esi                                      // 0x007c2bbc    03ce
                         {disp32} mov     dword ptr [eax + 0x000016b4], ecx             // 0x007c2bbe    8988b4160000
_jmp_addr_0x007c2bc4:    xor.s            ecx, ecx                                      // 0x007c2bc4    33c9
                         pop              edi                                           // 0x007c2bc6    5f
                         {disp32} mov     cx, word ptr [ebp + 0x00000402]               // 0x007c2bc7    668b8d02040000
                         pop              esi                                           // 0x007c2bce    5e
                         pop              ebp                                           // 0x007c2bcf    5d
                         {disp32} mov     dword ptr [eax + 0x000016ac], ecx             // 0x007c2bd0    8988ac160000
                         pop              ebx                                           // 0x007c2bd6    5b
                         add              esp, 0x08                                     // 0x007c2bd7    83c408
                         ret                                                            // 0x007c2bda    c3
                         nop                                                            // 0x007c2bdb    90
                         nop                                                            // 0x007c2bdc    90
                         nop                                                            // 0x007c2bdd    90
                         nop                                                            // 0x007c2bde    90
                         nop                                                            // 0x007c2bdf    90
_set_data_type:          push             ebx                                           // 0x007c2be0    53
                         {disp8} mov      ebx, dword ptr [esp + 0x08]                   // 0x007c2be1    8b5c2408
                         push             esi                                           // 0x007c2be5    56
                         push             edi                                           // 0x007c2be6    57
                         xor.s            edi, edi                                      // 0x007c2be7    33ff
                         xor.s            edx, edx                                      // 0x007c2be9    33d2
                         {disp32} lea     eax, dword ptr [ebx + 0x0000008c]             // 0x007c2beb    8d838c000000
                         mov              ecx, 0x00000007                               // 0x007c2bf1    b907000000
_jmp_addr_0x007c2bf6:    xor.s            esi, esi                                      // 0x007c2bf6    33f6
                         mov              si, word ptr [eax]                            // 0x007c2bf8    668b30
                         add              eax, 0x04                                     // 0x007c2bfb    83c004
                         add.s            edx, esi                                      // 0x007c2bfe    03d6
                         dec              ecx                                           // 0x007c2c00    49
                         {disp8} jne      _jmp_addr_0x007c2bf6                          // 0x007c2c01    75f3
                         push             ebp                                           // 0x007c2c03    55
                         {disp32} lea     eax, dword ptr [ebx + 0x000000a8]             // 0x007c2c04    8d83a8000000
                         mov              ecx, 0x00000079                               // 0x007c2c0a    b979000000
                         mov              esi, 0x00000080                               // 0x007c2c0f    be80000000
_jmp_addr_0x007c2c14:    xor.s            ebp, ebp                                      // 0x007c2c14    33ed
                         mov              bp, word ptr [eax]                            // 0x007c2c16    668b28
                         add              eax, 0x04                                     // 0x007c2c19    83c004
                         add.s            edi, ebp                                      // 0x007c2c1c    03fd
                         dec              ecx                                           // 0x007c2c1e    49
                         {disp8} jne      _jmp_addr_0x007c2c14                          // 0x007c2c1f    75f3
                         cmp              esi, 0x00000100                               // 0x007c2c21    81fe00010000
                         pop              ebp                                           // 0x007c2c27    5d
                         {disp8} jge      _jmp_addr_0x007c2c45                          // 0x007c2c28    7d1b
                         mov              eax, 0x00000100                               // 0x007c2c2a    b800010000
                         {disp32} lea     ecx, dword ptr [ebx + esi * 0x4 + 0x0000008c] // 0x007c2c2f    8d8cb38c000000
                         sub.s            eax, esi                                      // 0x007c2c36    2bc6
_jmp_addr_0x007c2c38:    xor.s            esi, esi                                      // 0x007c2c38    33f6
                         mov              si, word ptr [ecx]                            // 0x007c2c3a    668b31
                         add              ecx, 0x4                                      // 0x007c2c3d    83c104
                         add.s            edx, esi                                      // 0x007c2c40    03d6
                         dec              eax                                           // 0x007c2c42    48
                         {disp8} jne      _jmp_addr_0x007c2c38                          // 0x007c2c43    75f3
_jmp_addr_0x007c2c45:    shr              edi, 2                                        // 0x007c2c45    c1ef02
                         cmp.s            edx, edi                                      // 0x007c2c48    3bd7
                         pop              edi                                           // 0x007c2c4a    5f
                         setbe            al                                            // 0x007c2c4b    0f96c0
                         {disp8} mov      byte ptr [ebx + 0x1c], al                     // 0x007c2c4e    88431c
                         pop              esi                                           // 0x007c2c51    5e
                         pop              ebx                                           // 0x007c2c52    5b
                         ret                                                            // 0x007c2c53    c3
                         nop                                                            // 0x007c2c54    90
                         nop                                                            // 0x007c2c55    90
                         nop                                                            // 0x007c2c56    90
                         nop                                                            // 0x007c2c57    90
                         nop                                                            // 0x007c2c58    90
                         nop                                                            // 0x007c2c59    90
                         nop                                                            // 0x007c2c5a    90
                         nop                                                            // 0x007c2c5b    90
                         nop                                                            // 0x007c2c5c    90
                         nop                                                            // 0x007c2c5d    90
                         nop                                                            // 0x007c2c5e    90
                         nop                                                            // 0x007c2c5f    90
_bi_reverse:             {disp8} mov      edx, dword ptr [esp + 0x08]                   // 0x007c2c60    8b542408
                         {disp8} mov      ecx, dword ptr [esp + 0x04]                   // 0x007c2c64    8b4c2404
                         push             esi                                           // 0x007c2c68    56
                         xor.s            eax, eax                                      // 0x007c2c69    33c0
_jmp_addr_0x007c2c6b:    mov.s            esi, ecx                                      // 0x007c2c6b    8bf1
                         and              esi, 0x01                                     // 0x007c2c6d    83e601
                         or.s             eax, esi                                      // 0x007c2c70    0bc6
                         shr              ecx, 1                                        // 0x007c2c72    d1e9
                         shl              eax, 1                                        // 0x007c2c74    d1e0
                         dec              edx                                           // 0x007c2c76    4a
                         test             edx, edx                                      // 0x007c2c77    85d2
                         {disp8} jg       _jmp_addr_0x007c2c6b                          // 0x007c2c79    7ff0
                         shr              eax, 1                                        // 0x007c2c7b    d1e8
                         pop              esi                                           // 0x007c2c7d    5e
                         ret                                                            // 0x007c2c7e    c3
                         nop                                                            // 0x007c2c7f    90
_bi_flush:               {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007c2c80    8b442404
                         push             ebx                                           // 0x007c2c84    53
                         {disp32} mov     ecx, dword ptr [eax + 0x000016b4]             // 0x007c2c85    8b88b4160000
                         cmp              ecx, 0x10                                     // 0x007c2c8b    83f910
                         {disp8} jne      _jmp_addr_0x007c2cd0                          // 0x007c2c8e    7540
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x007c2c90    8b4808
                         {disp8} mov      edx, dword ptr [eax + 0x14]                   // 0x007c2c93    8b5014
                         {disp32} mov     bl, byte ptr [eax + 0x000016b0]               // 0x007c2c96    8a98b0160000
                         push             esi                                           // 0x007c2c9c    56
                         mov              byte ptr [ecx + edx * 0x1], bl                // 0x007c2c9d    881c11
                         {disp8} mov      edx, dword ptr [eax + 0x14]                   // 0x007c2ca0    8b5014
                         {disp8} mov      esi, dword ptr [eax + 0x08]                   // 0x007c2ca3    8b7008
                         inc              edx                                           // 0x007c2ca6    42
                         {disp8} mov      dword ptr [eax + 0x14], edx                   // 0x007c2ca7    895014
                         mov.s            ecx, edx                                      // 0x007c2caa    8bca
                         xor.s            edx, edx                                      // 0x007c2cac    33d2
                         {disp32} mov     dl, byte ptr [eax + 0x000016b1]               // 0x007c2cae    8a90b1160000
                         mov              byte ptr [esi + ecx * 0x1], dl                // 0x007c2cb4    88140e
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                   // 0x007c2cb7    8b4814
                         inc              ecx                                           // 0x007c2cba    41
                         pop              esi                                           // 0x007c2cbb    5e
                         {disp8} mov      dword ptr [eax + 0x14], ecx                   // 0x007c2cbc    894814
                         xor.s            ecx, ecx                                      // 0x007c2cbf    33c9
                         {disp32} mov     word ptr [eax + 0x000016b0], cx               // 0x007c2cc1    668988b0160000
                         {disp32} mov     dword ptr [eax + 0x000016b4], ecx             // 0x007c2cc8    8988b4160000
                         pop              ebx                                           // 0x007c2cce    5b
                         ret                                                            // 0x007c2ccf    c3
_jmp_addr_0x007c2cd0:    cmp              ecx, 0x08                                     // 0x007c2cd0    83f908
                         {disp8} jl       _jmp_addr_0x007c2d09                          // 0x007c2cd3    7c34
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x007c2cd5    8b4808
                         {disp8} mov      edx, dword ptr [eax + 0x14]                   // 0x007c2cd8    8b5014
                         {disp32} mov     bl, byte ptr [eax + 0x000016b0]               // 0x007c2cdb    8a98b0160000
                         mov              byte ptr [ecx + edx * 0x1], bl                // 0x007c2ce1    881c11
                         {disp8} mov      edx, dword ptr [eax + 0x14]                   // 0x007c2ce4    8b5014
                         xor.s            ecx, ecx                                      // 0x007c2ce7    33c9
                         inc              edx                                           // 0x007c2ce9    42
                         {disp32} mov     cl, byte ptr [eax + 0x000016b1]               // 0x007c2cea    8a88b1160000
                         {disp8} mov      dword ptr [eax + 0x14], edx                   // 0x007c2cf0    895014
                         {disp32} mov     word ptr [eax + 0x000016b0], cx               // 0x007c2cf3    668988b0160000
                         {disp32} mov     ecx, dword ptr [eax + 0x000016b4]             // 0x007c2cfa    8b88b4160000
                         add              ecx, -0x8                                     // 0x007c2d00    83c1f8
                         {disp32} mov     dword ptr [eax + 0x000016b4], ecx             // 0x007c2d03    8988b4160000
_jmp_addr_0x007c2d09:    pop              ebx                                           // 0x007c2d09    5b
                         ret                                                            // 0x007c2d0a    c3
                         nop                                                            // 0x007c2d0b    90
                         nop                                                            // 0x007c2d0c    90
                         nop                                                            // 0x007c2d0d    90
                         nop                                                            // 0x007c2d0e    90
                         nop                                                            // 0x007c2d0f    90
_bi_windup:              {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007c2d10    8b442404
                         push             ebx                                           // 0x007c2d14    53
                         push             esi                                           // 0x007c2d15    56
                         {disp32} mov     edx, dword ptr [eax + 0x000016b4]             // 0x007c2d16    8b90b4160000
                         cmp              edx, 0x08                                     // 0x007c2d1c    83fa08
                         {disp8} jle      _jmp_addr_0x007c2d60                          // 0x007c2d1f    7e3f
                         {disp8} mov      ecx, dword ptr [eax + 0x08]                   // 0x007c2d21    8b4808
                         {disp8} mov      edx, dword ptr [eax + 0x14]                   // 0x007c2d24    8b5014
                         {disp32} mov     bl, byte ptr [eax + 0x000016b0]               // 0x007c2d27    8a98b0160000
                         mov              byte ptr [ecx + edx * 0x1], bl                // 0x007c2d2d    881c11
                         {disp8} mov      edx, dword ptr [eax + 0x14]                   // 0x007c2d30    8b5014
                         {disp8} mov      esi, dword ptr [eax + 0x08]                   // 0x007c2d33    8b7008
                         inc              edx                                           // 0x007c2d36    42
                         {disp8} mov      dword ptr [eax + 0x14], edx                   // 0x007c2d37    895014
                         mov.s            ecx, edx                                      // 0x007c2d3a    8bca
                         xor.s            edx, edx                                      // 0x007c2d3c    33d2
                         {disp32} mov     dl, byte ptr [eax + 0x000016b1]               // 0x007c2d3e    8a90b1160000
                         mov              byte ptr [esi + ecx * 0x1], dl                // 0x007c2d44    88140e
                         {disp8} mov      ecx, dword ptr [eax + 0x14]                   // 0x007c2d47    8b4814
                         inc              ecx                                           // 0x007c2d4a    41
                         pop              esi                                           // 0x007c2d4b    5e
                         {disp8} mov      dword ptr [eax + 0x14], ecx                   // 0x007c2d4c    894814
                         xor.s            ecx, ecx                                      // 0x007c2d4f    33c9
                         {disp32} mov     word ptr [eax + 0x000016b0], cx               // 0x007c2d51    668988b0160000
                         {disp32} mov     dword ptr [eax + 0x000016b4], ecx             // 0x007c2d58    8988b4160000
                         pop              ebx                                           // 0x007c2d5e    5b
                         ret                                                            // 0x007c2d5f    c3
_jmp_addr_0x007c2d60:    xor.s            ecx, ecx                                      // 0x007c2d60    33c9
                         cmp.s            edx, ecx                                      // 0x007c2d62    3bd1
                         {disp8} jle      _jmp_addr_0x007c2d7c                          // 0x007c2d64    7e16
                         {disp8} mov      edx, dword ptr [eax + 0x08]                   // 0x007c2d66    8b5008
                         {disp8} mov      esi, dword ptr [eax + 0x14]                   // 0x007c2d69    8b7014
                         {disp32} mov     bl, byte ptr [eax + 0x000016b0]               // 0x007c2d6c    8a98b0160000
                         mov              byte ptr [edx + esi * 0x1], bl                // 0x007c2d72    881c32
                         {disp8} mov      edx, dword ptr [eax + 0x14]                   // 0x007c2d75    8b5014
                         inc              edx                                           // 0x007c2d78    42
                         {disp8} mov      dword ptr [eax + 0x14], edx                   // 0x007c2d79    895014
_jmp_addr_0x007c2d7c:    pop              esi                                           // 0x007c2d7c    5e
                         {disp32} mov     word ptr [eax + 0x000016b0], cx               // 0x007c2d7d    668988b0160000
                         {disp32} mov     dword ptr [eax + 0x000016b4], ecx             // 0x007c2d84    8988b4160000
                         pop              ebx                                           // 0x007c2d8a    5b
                         ret                                                            // 0x007c2d8b    c3
                         nop                                                            // 0x007c2d8c    90
                         nop                                                            // 0x007c2d8d    90
                         nop                                                            // 0x007c2d8e    90
                         nop                                                            // 0x007c2d8f    90
_copy_block:             push             esi                                           // 0x007c2d90    56
                         {disp8} mov      esi, dword ptr [esp + 0x08]                   // 0x007c2d91    8b742408
                         push             edi                                           // 0x007c2d95    57
                         push             esi                                           // 0x007c2d96    56
                         call             _bi_windup                                    // 0x007c2d97    e874ffffff
                         {disp8} mov      eax, dword ptr [esp + 0x1c]                   // 0x007c2d9c    8b44241c
                         add              esp, 0x04                                     // 0x007c2da0    83c404
                         test             eax, eax                                      // 0x007c2da3    85c0
                         {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x007c2da5    8b442414
                         {disp32} mov     dword ptr [esi + 0x000016ac], 0x00000008      // 0x007c2da9    c786ac16000008000000
                         {disp8} je       _jmp_addr_0x007c2dfe                          // 0x007c2db3    7449
                         {disp8} mov      ecx, dword ptr [esi + 0x14]                   // 0x007c2db5    8b4e14
                         {disp8} mov      edx, dword ptr [esi + 0x08]                   // 0x007c2db8    8b5608
                         mov              byte ptr [ecx + edx * 0x1], al                // 0x007c2dbb    880411
                         {disp8} mov      edx, dword ptr [esi + 0x14]                   // 0x007c2dbe    8b5614
                         {disp8} mov      edi, dword ptr [esi + 0x08]                   // 0x007c2dc1    8b7e08
                         inc              edx                                           // 0x007c2dc4    42
                         {disp8} mov      dword ptr [esi + 0x14], edx                   // 0x007c2dc5    895614
                         mov.s            ecx, edx                                      // 0x007c2dc8    8bca
                         xor.s            edx, edx                                      // 0x007c2dca    33d2
                         mov.s            dl, ah                                        // 0x007c2dcc    8ad4
                         mov              byte ptr [ecx + edi * 0x1], dl                // 0x007c2dce    881439
                         {disp8} mov      ecx, dword ptr [esi + 0x14]                   // 0x007c2dd1    8b4e14
                         {disp8} mov      edi, dword ptr [esi + 0x08]                   // 0x007c2dd4    8b7e08
                         mov.s            dl, al                                        // 0x007c2dd7    8ad0
                         inc              ecx                                           // 0x007c2dd9    41
                         not              dl                                            // 0x007c2dda    f6d2
                         {disp8} mov      dword ptr [esi + 0x14], ecx                   // 0x007c2ddc    894e14
                         mov              byte ptr [ecx + edi * 0x1], dl                // 0x007c2ddf    881439
                         {disp8} mov      edi, dword ptr [esi + 0x14]                   // 0x007c2de2    8b7e14
                         mov.s            ecx, eax                                      // 0x007c2de5    8bc8
                         not              ecx                                           // 0x007c2de7    f7d1
                         xor.s            edx, edx                                      // 0x007c2de9    33d2
                         inc              edi                                           // 0x007c2deb    47
                         mov.s            dl, ch                                        // 0x007c2dec    8ad5
                         {disp8} mov      ecx, dword ptr [esi + 0x08]                   // 0x007c2dee    8b4e08
                         {disp8} mov      dword ptr [esi + 0x14], edi                   // 0x007c2df1    897e14
                         mov              byte ptr [edi + ecx * 0x1], dl                // 0x007c2df4    88140f
                         {disp8} mov      ecx, dword ptr [esi + 0x14]                   // 0x007c2df7    8b4e14
                         inc              ecx                                           // 0x007c2dfa    41
                         {disp8} mov      dword ptr [esi + 0x14], ecx                   // 0x007c2dfb    894e14
_jmp_addr_0x007c2dfe:    mov.s            edx, eax                                      // 0x007c2dfe    8bd0
                         dec              eax                                           // 0x007c2e00    48
                         test             edx, edx                                      // 0x007c2e01    85d2
                         {disp8} je       _jmp_addr_0x007c2e24                          // 0x007c2e03    741f
                         {disp8} lea      ecx, dword ptr [eax + 0x01]                   // 0x007c2e05    8d4801
                         {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007c2e08    8b442410
                         push             ebx                                           // 0x007c2e0c    53
_jmp_addr_0x007c2e0d:    {disp8} mov      edx, dword ptr [esi + 0x14]                   // 0x007c2e0d    8b5614
                         {disp8} mov      edi, dword ptr [esi + 0x08]                   // 0x007c2e10    8b7e08
                         mov              bl, byte ptr [eax]                            // 0x007c2e13    8a18
                         mov              byte ptr [edx + edi * 0x1], bl                // 0x007c2e15    881c3a
                         {disp8} mov      ebx, dword ptr [esi + 0x14]                   // 0x007c2e18    8b5e14
                         inc              ebx                                           // 0x007c2e1b    43
                         inc              eax                                           // 0x007c2e1c    40
                         dec              ecx                                           // 0x007c2e1d    49
                         {disp8} mov      dword ptr [esi + 0x14], ebx                   // 0x007c2e1e    895e14
                         {disp8} jne      _jmp_addr_0x007c2e0d                          // 0x007c2e21    75ea
                         pop              ebx                                           // 0x007c2e23    5b
_jmp_addr_0x007c2e24:    pop              edi                                           // 0x007c2e24    5f
                         pop              esi                                           // 0x007c2e25    5e
                         ret                                                            // 0x007c2e26    c3
                         nop                                                            // 0x007c2e27    90
                         nop                                                            // 0x007c2e28    90
                         nop                                                            // 0x007c2e29    90
                         nop                                                            // 0x007c2e2a    90
                         nop                                                            // 0x007c2e2b    90
                         nop                                                            // 0x007c2e2c    90
                         nop                                                            // 0x007c2e2d    90
                         nop                                                            // 0x007c2e2e    90
                         nop                                                            // 0x007c2e2f    90
