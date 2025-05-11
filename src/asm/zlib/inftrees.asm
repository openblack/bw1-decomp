.intel_syntax noprefix
.align 16

.macro ASCIZ_ALIGNED string alignment
    .asciz "\string"
    .align \alignment
.endm

.macro INFLATE_HUFT Exop Bits base
    .byte \Exop
    .byte \Bits
    .align 4
    .long \base
.endm

.globl _inflate_trees_bits
.globl _inflate_trees_dynamic
.globl _inflate_trees_fixed

.section .rdata

_inflate_copyright: ASCIZ_ALIGNED " inflate 1.1.3 Copyright 1995-1998 Mark Adler " 8                               // [0xf73a8] 0x008a9000 + 0xf73a8 = 0x009a03a8

_cplens:
.long 0x00000003, 0x00000004                                                                                       // [0xf73d8] 0x008a9000 + 0xf73d8 = 0x009a03d8
.long 0x00000005, 0x00000006, 0x00000007, 0x00000008                                                               // [0xf73e0] 0x008a9000 + 0xf73e0 = 0x009a03e0
.long 0x00000009, 0x0000000a, 0x0000000b, 0x0000000d                                                               // [0xf73f0] 0x008a9000 + 0xf73f0 = 0x009a03f0
.long 0x0000000f, 0x00000011, 0x00000013, 0x00000017                                                               // [0xf7400] 0x008a9000 + 0xf7400 = 0x009a0400
.long 0x0000001b, 0x0000001f, 0x00000023, 0x0000002b                                                               // [0xf7410] 0x008a9000 + 0xf7410 = 0x009a0410
.long 0x00000033, 0x0000003b, 0x00000043, 0x00000053                                                               // [0xf7420] 0x008a9000 + 0xf7420 = 0x009a0420
.long 0x00000063, 0x00000073, 0x00000083, 0x000000a3                                                               // [0xf7430] 0x008a9000 + 0xf7430 = 0x009a0430
.long 0x000000c3, 0x000000e3, 0x00000102, 0x00000000                                                               // [0xf7440] 0x008a9000 + 0xf7440 = 0x009a0440
.long 0x00000000                                                                                                   // [0xf7450] 0x008a9000 + 0xf7450 = 0x009a0450

_cplext:
.long 0x00000000, 0x00000000, 0x00000000                                                                           // [0xf7454] 0x008a9000 + 0xf7454 = 0x009a0454
.long 0x00000000, 0x00000000, 0x00000000, 0x00000000                                                               // [0xf7460] 0x008a9000 + 0xf7460 = 0x009a0460
.long 0x00000000, 0x00000001, 0x00000001, 0x00000001                                                               // [0xf7470] 0x008a9000 + 0xf7470 = 0x009a0470
.long 0x00000001, 0x00000002, 0x00000002, 0x00000002                                                               // [0xf7480] 0x008a9000 + 0xf7480 = 0x009a0480
.long 0x00000002, 0x00000003, 0x00000003, 0x00000003                                                               // [0xf7490] 0x008a9000 + 0xf7490 = 0x009a0490
.long 0x00000003, 0x00000004, 0x00000004, 0x00000004                                                               // [0xf74a0] 0x008a9000 + 0xf74a0 = 0x009a04a0
.long 0x00000004, 0x00000005, 0x00000005, 0x00000005                                                               // [0xf74b0] 0x008a9000 + 0xf74b0 = 0x009a04b0
.long 0x00000005, 0x00000000, 0x00000070, 0x00000070                                                               // [0xf74c0] 0x008a9000 + 0xf74c0 = 0x009a04c0

_cpdist:
.long 0x00000001, 0x00000002, 0x00000003, 0x00000004                                                               // [0xf74d0] 0x008a9000 + 0xf74d0 = 0x009a04d0
.long 0x00000005, 0x00000007, 0x00000009, 0x0000000d                                                               // [0xf74e0] 0x008a9000 + 0xf74e0 = 0x009a04e0
.long 0x00000011, 0x00000019, 0x00000021, 0x00000031                                                               // [0xf74f0] 0x008a9000 + 0xf74f0 = 0x009a04f0
.long 0x00000041, 0x00000061, 0x00000081, 0x000000c1                                                               // [0xf7500] 0x008a9000 + 0xf7500 = 0x009a0500
.long 0x00000101, 0x00000181, 0x00000201, 0x00000301                                                               // [0xf7510] 0x008a9000 + 0xf7510 = 0x009a0510
.long 0x00000401, 0x00000601, 0x00000801, 0x00000c01                                                               // [0xf7520] 0x008a9000 + 0xf7520 = 0x009a0520
.long 0x00001001, 0x00001801, 0x00002001, 0x00003001                                                               // [0xf7530] 0x008a9000 + 0xf7530 = 0x009a0530
.long 0x00004001, 0x00006001                                                                                       // [0xf7540] 0x008a9000 + 0xf7540 = 0x009a0540

_cpdext:
.long 0x00000000, 0x00000000                                                                                       // [0xf7548] 0x008a9000 + 0xf7548 = 0x009a0548
.long 0x00000000, 0x00000000, 0x00000001, 0x00000001                                                               // [0xf7550] 0x008a9000 + 0xf7550 = 0x009a0550
.long 0x00000002, 0x00000002, 0x00000003, 0x00000003                                                               // [0xf7560] 0x008a9000 + 0xf7560 = 0x009a0560
.long 0x00000004, 0x00000004, 0x00000005, 0x00000005                                                               // [0xf7570] 0x008a9000 + 0xf7570 = 0x009a0570
.long 0x00000006, 0x00000006, 0x00000007, 0x00000007                                                               // [0xf7580] 0x008a9000 + 0xf7580 = 0x009a0580
.long 0x00000008, 0x00000008, 0x00000009, 0x00000009                                                               // [0xf7590] 0x008a9000 + 0xf7590 = 0x009a0590
.long 0x0000000a, 0x0000000a, 0x0000000b, 0x0000000b                                                               // [0xf75a0] 0x008a9000 + 0xf75a0 = 0x009a05a0
.long 0x0000000c, 0x0000000c, 0x0000000d, 0x0000000d                                                               // [0xf75b0] 0x008a9000 + 0xf75b0 = 0x009a05b0

.section .data

ASCIZ_ALIGNED "invalid distance code" 4                                                                            // [0x266120] 0x009c6000 + 0x266120 = 0x00c2c120
ASCIZ_ALIGNED "invalid literal/length code" 8                                                                      // [0x266138] 0x009c6000 + 0x266138 = 0x00c2c138

_fixed_bl: .long 0x00000009                                                                                        // [0x266158] 0x009c6000 + 0x266158 = 0x00c2c158
_fixed_bd: .long 0x00000005                                                                                        // [0x26615c] 0x009c6000 + 0x26615c = 0x00c2c15c

_fixed_tl:                                                                                                         // [0x266160] 0x009c6000 + 0x266160 = 0x00c2c160
INFLATE_HUFT 96 7 256
INFLATE_HUFT 0 8 80
INFLATE_HUFT 0 8 16
INFLATE_HUFT 84 8 115
INFLATE_HUFT 82 7 31
INFLATE_HUFT 0 8 112
INFLATE_HUFT 0 8 48
INFLATE_HUFT 0 9 192
INFLATE_HUFT 80 7 10
INFLATE_HUFT 0 8 96
INFLATE_HUFT 0 8 32
INFLATE_HUFT 0 9 160
INFLATE_HUFT 0 8 0
INFLATE_HUFT 0 8 128
INFLATE_HUFT 0 8 64
INFLATE_HUFT 0 9 224
INFLATE_HUFT 80 7 6
INFLATE_HUFT 0 8 88
INFLATE_HUFT 0 8 24
INFLATE_HUFT 0 9 144
INFLATE_HUFT 83 7 59
INFLATE_HUFT 0 8 120
INFLATE_HUFT 0 8 56
INFLATE_HUFT 0 9 208
INFLATE_HUFT 81 7 17
INFLATE_HUFT 0 8 104
INFLATE_HUFT 0 8 40
INFLATE_HUFT 0 9 176
INFLATE_HUFT 0 8 8
INFLATE_HUFT 0 8 136
INFLATE_HUFT 0 8 72
INFLATE_HUFT 0 9 240
INFLATE_HUFT 80 7 4
INFLATE_HUFT 0 8 84
INFLATE_HUFT 0 8 20
INFLATE_HUFT 85 8 227
INFLATE_HUFT 83 7 43
INFLATE_HUFT 0 8 116
INFLATE_HUFT 0 8 52
INFLATE_HUFT 0 9 200
INFLATE_HUFT 81 7 13
INFLATE_HUFT 0 8 100
INFLATE_HUFT 0 8 36
INFLATE_HUFT 0 9 168
INFLATE_HUFT 0 8 4
INFLATE_HUFT 0 8 132
INFLATE_HUFT 0 8 68
INFLATE_HUFT 0 9 232
INFLATE_HUFT 80 7 8
INFLATE_HUFT 0 8 92
INFLATE_HUFT 0 8 28
INFLATE_HUFT 0 9 152
INFLATE_HUFT 84 7 83
INFLATE_HUFT 0 8 124
INFLATE_HUFT 0 8 60
INFLATE_HUFT 0 9 216
INFLATE_HUFT 82 7 23
INFLATE_HUFT 0 8 108
INFLATE_HUFT 0 8 44
INFLATE_HUFT 0 9 184
INFLATE_HUFT 0 8 12
INFLATE_HUFT 0 8 140
INFLATE_HUFT 0 8 76
INFLATE_HUFT 0 9 248
INFLATE_HUFT 80 7 3
INFLATE_HUFT 0 8 82
INFLATE_HUFT 0 8 18
INFLATE_HUFT 85 8 163
INFLATE_HUFT 83 7 35
INFLATE_HUFT 0 8 114
INFLATE_HUFT 0 8 50
INFLATE_HUFT 0 9 196
INFLATE_HUFT 81 7 11
INFLATE_HUFT 0 8 98
INFLATE_HUFT 0 8 34
INFLATE_HUFT 0 9 164
INFLATE_HUFT 0 8 2
INFLATE_HUFT 0 8 130
INFLATE_HUFT 0 8 66
INFLATE_HUFT 0 9 228
INFLATE_HUFT 80 7 7
INFLATE_HUFT 0 8 90
INFLATE_HUFT 0 8 26
INFLATE_HUFT 0 9 148
INFLATE_HUFT 84 7 67
INFLATE_HUFT 0 8 122
INFLATE_HUFT 0 8 58
INFLATE_HUFT 0 9 212
INFLATE_HUFT 82 7 19
INFLATE_HUFT 0 8 106
INFLATE_HUFT 0 8 42
INFLATE_HUFT 0 9 180
INFLATE_HUFT 0 8 10
INFLATE_HUFT 0 8 138
INFLATE_HUFT 0 8 74
INFLATE_HUFT 0 9 244
INFLATE_HUFT 80 7 5
INFLATE_HUFT 0 8 86
INFLATE_HUFT 0 8 22
INFLATE_HUFT 192 8 0
INFLATE_HUFT 83 7 51
INFLATE_HUFT 0 8 118
INFLATE_HUFT 0 8 54
INFLATE_HUFT 0 9 204
INFLATE_HUFT 81 7 15
INFLATE_HUFT 0 8 102
INFLATE_HUFT 0 8 38
INFLATE_HUFT 0 9 172
INFLATE_HUFT 0 8 6
INFLATE_HUFT 0 8 134
INFLATE_HUFT 0 8 70
INFLATE_HUFT 0 9 236
INFLATE_HUFT 80 7 9
INFLATE_HUFT 0 8 94
INFLATE_HUFT 0 8 30
INFLATE_HUFT 0 9 156
INFLATE_HUFT 84 7 99
INFLATE_HUFT 0 8 126
INFLATE_HUFT 0 8 62
INFLATE_HUFT 0 9 220
INFLATE_HUFT 82 7 27
INFLATE_HUFT 0 8 110
INFLATE_HUFT 0 8 46
INFLATE_HUFT 0 9 188
INFLATE_HUFT 0 8 14
INFLATE_HUFT 0 8 142
INFLATE_HUFT 0 8 78
INFLATE_HUFT 0 9 252
INFLATE_HUFT 96 7 256
INFLATE_HUFT 0 8 81
INFLATE_HUFT 0 8 17
INFLATE_HUFT 85 8 131
INFLATE_HUFT 82 7 31
INFLATE_HUFT 0 8 113
INFLATE_HUFT 0 8 49
INFLATE_HUFT 0 9 194
INFLATE_HUFT 80 7 10
INFLATE_HUFT 0 8 97
INFLATE_HUFT 0 8 33
INFLATE_HUFT 0 9 162
INFLATE_HUFT 0 8 1
INFLATE_HUFT 0 8 129
INFLATE_HUFT 0 8 65
INFLATE_HUFT 0 9 226
INFLATE_HUFT 80 7 6
INFLATE_HUFT 0 8 89
INFLATE_HUFT 0 8 25
INFLATE_HUFT 0 9 146
INFLATE_HUFT 83 7 59
INFLATE_HUFT 0 8 121
INFLATE_HUFT 0 8 57
INFLATE_HUFT 0 9 210
INFLATE_HUFT 81 7 17
INFLATE_HUFT 0 8 105
INFLATE_HUFT 0 8 41
INFLATE_HUFT 0 9 178
INFLATE_HUFT 0 8 9
INFLATE_HUFT 0 8 137
INFLATE_HUFT 0 8 73
INFLATE_HUFT 0 9 242
INFLATE_HUFT 80 7 4
INFLATE_HUFT 0 8 85
INFLATE_HUFT 0 8 21
INFLATE_HUFT 80 8 258
INFLATE_HUFT 83 7 43
INFLATE_HUFT 0 8 117
INFLATE_HUFT 0 8 53
INFLATE_HUFT 0 9 202
INFLATE_HUFT 81 7 13
INFLATE_HUFT 0 8 101
INFLATE_HUFT 0 8 37
INFLATE_HUFT 0 9 170
INFLATE_HUFT 0 8 5
INFLATE_HUFT 0 8 133
INFLATE_HUFT 0 8 69
INFLATE_HUFT 0 9 234
INFLATE_HUFT 80 7 8
INFLATE_HUFT 0 8 93
INFLATE_HUFT 0 8 29
INFLATE_HUFT 0 9 154
INFLATE_HUFT 84 7 83
INFLATE_HUFT 0 8 125
INFLATE_HUFT 0 8 61
INFLATE_HUFT 0 9 218
INFLATE_HUFT 82 7 23
INFLATE_HUFT 0 8 109
INFLATE_HUFT 0 8 45
INFLATE_HUFT 0 9 186
INFLATE_HUFT 0 8 13
INFLATE_HUFT 0 8 141
INFLATE_HUFT 0 8 77
INFLATE_HUFT 0 9 250
INFLATE_HUFT 80 7 3
INFLATE_HUFT 0 8 83
INFLATE_HUFT 0 8 19
INFLATE_HUFT 85 8 195
INFLATE_HUFT 83 7 35
INFLATE_HUFT 0 8 115
INFLATE_HUFT 0 8 51
INFLATE_HUFT 0 9 198
INFLATE_HUFT 81 7 11
INFLATE_HUFT 0 8 99
INFLATE_HUFT 0 8 35
INFLATE_HUFT 0 9 166
INFLATE_HUFT 0 8 3
INFLATE_HUFT 0 8 131
INFLATE_HUFT 0 8 67
INFLATE_HUFT 0 9 230
INFLATE_HUFT 80 7 7
INFLATE_HUFT 0 8 91
INFLATE_HUFT 0 8 27
INFLATE_HUFT 0 9 150
INFLATE_HUFT 84 7 67
INFLATE_HUFT 0 8 123
INFLATE_HUFT 0 8 59
INFLATE_HUFT 0 9 214
INFLATE_HUFT 82 7 19
INFLATE_HUFT 0 8 107
INFLATE_HUFT 0 8 43
INFLATE_HUFT 0 9 182
INFLATE_HUFT 0 8 11
INFLATE_HUFT 0 8 139
INFLATE_HUFT 0 8 75
INFLATE_HUFT 0 9 246
INFLATE_HUFT 80 7 5
INFLATE_HUFT 0 8 87
INFLATE_HUFT 0 8 23
INFLATE_HUFT 192 8 0
INFLATE_HUFT 83 7 51
INFLATE_HUFT 0 8 119
INFLATE_HUFT 0 8 55
INFLATE_HUFT 0 9 206
INFLATE_HUFT 81 7 15
INFLATE_HUFT 0 8 103
INFLATE_HUFT 0 8 39
INFLATE_HUFT 0 9 174
INFLATE_HUFT 0 8 7
INFLATE_HUFT 0 8 135
INFLATE_HUFT 0 8 71
INFLATE_HUFT 0 9 238
INFLATE_HUFT 80 7 9
INFLATE_HUFT 0 8 95
INFLATE_HUFT 0 8 31
INFLATE_HUFT 0 9 158
INFLATE_HUFT 84 7 99
INFLATE_HUFT 0 8 127
INFLATE_HUFT 0 8 63
INFLATE_HUFT 0 9 222
INFLATE_HUFT 82 7 27
INFLATE_HUFT 0 8 111
INFLATE_HUFT 0 8 47
INFLATE_HUFT 0 9 190
INFLATE_HUFT 0 8 15
INFLATE_HUFT 0 8 143
INFLATE_HUFT 0 8 79
INFLATE_HUFT 0 9 254
INFLATE_HUFT 96 7 256
INFLATE_HUFT 0 8 80
INFLATE_HUFT 0 8 16
INFLATE_HUFT 84 8 115
INFLATE_HUFT 82 7 31
INFLATE_HUFT 0 8 112
INFLATE_HUFT 0 8 48
INFLATE_HUFT 0 9 193
INFLATE_HUFT 80 7 10
INFLATE_HUFT 0 8 96
INFLATE_HUFT 0 8 32
INFLATE_HUFT 0 9 161
INFLATE_HUFT 0 8 0
INFLATE_HUFT 0 8 128
INFLATE_HUFT 0 8 64
INFLATE_HUFT 0 9 225
INFLATE_HUFT 80 7 6
INFLATE_HUFT 0 8 88
INFLATE_HUFT 0 8 24
INFLATE_HUFT 0 9 145
INFLATE_HUFT 83 7 59
INFLATE_HUFT 0 8 120
INFLATE_HUFT 0 8 56
INFLATE_HUFT 0 9 209
INFLATE_HUFT 81 7 17
INFLATE_HUFT 0 8 104
INFLATE_HUFT 0 8 40
INFLATE_HUFT 0 9 177
INFLATE_HUFT 0 8 8
INFLATE_HUFT 0 8 136
INFLATE_HUFT 0 8 72
INFLATE_HUFT 0 9 241
INFLATE_HUFT 80 7 4
INFLATE_HUFT 0 8 84
INFLATE_HUFT 0 8 20
INFLATE_HUFT 85 8 227
INFLATE_HUFT 83 7 43
INFLATE_HUFT 0 8 116
INFLATE_HUFT 0 8 52
INFLATE_HUFT 0 9 201
INFLATE_HUFT 81 7 13
INFLATE_HUFT 0 8 100
INFLATE_HUFT 0 8 36
INFLATE_HUFT 0 9 169
INFLATE_HUFT 0 8 4
INFLATE_HUFT 0 8 132
INFLATE_HUFT 0 8 68
INFLATE_HUFT 0 9 233
INFLATE_HUFT 80 7 8
INFLATE_HUFT 0 8 92
INFLATE_HUFT 0 8 28
INFLATE_HUFT 0 9 153
INFLATE_HUFT 84 7 83
INFLATE_HUFT 0 8 124
INFLATE_HUFT 0 8 60
INFLATE_HUFT 0 9 217
INFLATE_HUFT 82 7 23
INFLATE_HUFT 0 8 108
INFLATE_HUFT 0 8 44
INFLATE_HUFT 0 9 185
INFLATE_HUFT 0 8 12
INFLATE_HUFT 0 8 140
INFLATE_HUFT 0 8 76
INFLATE_HUFT 0 9 249
INFLATE_HUFT 80 7 3
INFLATE_HUFT 0 8 82
INFLATE_HUFT 0 8 18
INFLATE_HUFT 85 8 163
INFLATE_HUFT 83 7 35
INFLATE_HUFT 0 8 114
INFLATE_HUFT 0 8 50
INFLATE_HUFT 0 9 197
INFLATE_HUFT 81 7 11
INFLATE_HUFT 0 8 98
INFLATE_HUFT 0 8 34
INFLATE_HUFT 0 9 165
INFLATE_HUFT 0 8 2
INFLATE_HUFT 0 8 130
INFLATE_HUFT 0 8 66
INFLATE_HUFT 0 9 229
INFLATE_HUFT 80 7 7
INFLATE_HUFT 0 8 90
INFLATE_HUFT 0 8 26
INFLATE_HUFT 0 9 149
INFLATE_HUFT 84 7 67
INFLATE_HUFT 0 8 122
INFLATE_HUFT 0 8 58
INFLATE_HUFT 0 9 213
INFLATE_HUFT 82 7 19
INFLATE_HUFT 0 8 106
INFLATE_HUFT 0 8 42
INFLATE_HUFT 0 9 181
INFLATE_HUFT 0 8 10
INFLATE_HUFT 0 8 138
INFLATE_HUFT 0 8 74
INFLATE_HUFT 0 9 245
INFLATE_HUFT 80 7 5
INFLATE_HUFT 0 8 86
INFLATE_HUFT 0 8 22
INFLATE_HUFT 192 8 0
INFLATE_HUFT 83 7 51
INFLATE_HUFT 0 8 118
INFLATE_HUFT 0 8 54
INFLATE_HUFT 0 9 205
INFLATE_HUFT 81 7 15
INFLATE_HUFT 0 8 102
INFLATE_HUFT 0 8 38
INFLATE_HUFT 0 9 173
INFLATE_HUFT 0 8 6
INFLATE_HUFT 0 8 134
INFLATE_HUFT 0 8 70
INFLATE_HUFT 0 9 237
INFLATE_HUFT 80 7 9
INFLATE_HUFT 0 8 94
INFLATE_HUFT 0 8 30
INFLATE_HUFT 0 9 157
INFLATE_HUFT 84 7 99
INFLATE_HUFT 0 8 126
INFLATE_HUFT 0 8 62
INFLATE_HUFT 0 9 221
INFLATE_HUFT 82 7 27
INFLATE_HUFT 0 8 110
INFLATE_HUFT 0 8 46
INFLATE_HUFT 0 9 189
INFLATE_HUFT 0 8 14
INFLATE_HUFT 0 8 142
INFLATE_HUFT 0 8 78
INFLATE_HUFT 0 9 253
INFLATE_HUFT 96 7 256
INFLATE_HUFT 0 8 81
INFLATE_HUFT 0 8 17
INFLATE_HUFT 85 8 131
INFLATE_HUFT 82 7 31
INFLATE_HUFT 0 8 113
INFLATE_HUFT 0 8 49
INFLATE_HUFT 0 9 195
INFLATE_HUFT 80 7 10
INFLATE_HUFT 0 8 97
INFLATE_HUFT 0 8 33
INFLATE_HUFT 0 9 163
INFLATE_HUFT 0 8 1
INFLATE_HUFT 0 8 129
INFLATE_HUFT 0 8 65
INFLATE_HUFT 0 9 227
INFLATE_HUFT 80 7 6
INFLATE_HUFT 0 8 89
INFLATE_HUFT 0 8 25
INFLATE_HUFT 0 9 147
INFLATE_HUFT 83 7 59
INFLATE_HUFT 0 8 121
INFLATE_HUFT 0 8 57
INFLATE_HUFT 0 9 211
INFLATE_HUFT 81 7 17
INFLATE_HUFT 0 8 105
INFLATE_HUFT 0 8 41
INFLATE_HUFT 0 9 179
INFLATE_HUFT 0 8 9
INFLATE_HUFT 0 8 137
INFLATE_HUFT 0 8 73
INFLATE_HUFT 0 9 243
INFLATE_HUFT 80 7 4
INFLATE_HUFT 0 8 85
INFLATE_HUFT 0 8 21
INFLATE_HUFT 80 8 258
INFLATE_HUFT 83 7 43
INFLATE_HUFT 0 8 117
INFLATE_HUFT 0 8 53
INFLATE_HUFT 0 9 203
INFLATE_HUFT 81 7 13
INFLATE_HUFT 0 8 101
INFLATE_HUFT 0 8 37
INFLATE_HUFT 0 9 171
INFLATE_HUFT 0 8 5
INFLATE_HUFT 0 8 133
INFLATE_HUFT 0 8 69
INFLATE_HUFT 0 9 235
INFLATE_HUFT 80 7 8
INFLATE_HUFT 0 8 93
INFLATE_HUFT 0 8 29
INFLATE_HUFT 0 9 155
INFLATE_HUFT 84 7 83
INFLATE_HUFT 0 8 125
INFLATE_HUFT 0 8 61
INFLATE_HUFT 0 9 219
INFLATE_HUFT 82 7 23
INFLATE_HUFT 0 8 109
INFLATE_HUFT 0 8 45
INFLATE_HUFT 0 9 187
INFLATE_HUFT 0 8 13
INFLATE_HUFT 0 8 141
INFLATE_HUFT 0 8 77
INFLATE_HUFT 0 9 251
INFLATE_HUFT 80 7 3
INFLATE_HUFT 0 8 83
INFLATE_HUFT 0 8 19
INFLATE_HUFT 85 8 195
INFLATE_HUFT 83 7 35
INFLATE_HUFT 0 8 115
INFLATE_HUFT 0 8 51
INFLATE_HUFT 0 9 199
INFLATE_HUFT 81 7 11
INFLATE_HUFT 0 8 99
INFLATE_HUFT 0 8 35
INFLATE_HUFT 0 9 167
INFLATE_HUFT 0 8 3
INFLATE_HUFT 0 8 131
INFLATE_HUFT 0 8 67
INFLATE_HUFT 0 9 231
INFLATE_HUFT 80 7 7
INFLATE_HUFT 0 8 91
INFLATE_HUFT 0 8 27
INFLATE_HUFT 0 9 151
INFLATE_HUFT 84 7 67
INFLATE_HUFT 0 8 123
INFLATE_HUFT 0 8 59
INFLATE_HUFT 0 9 215
INFLATE_HUFT 82 7 19
INFLATE_HUFT 0 8 107
INFLATE_HUFT 0 8 43
INFLATE_HUFT 0 9 183
INFLATE_HUFT 0 8 11
INFLATE_HUFT 0 8 139
INFLATE_HUFT 0 8 75
INFLATE_HUFT 0 9 247
INFLATE_HUFT 80 7 5
INFLATE_HUFT 0 8 87
INFLATE_HUFT 0 8 23
INFLATE_HUFT 192 8 0
INFLATE_HUFT 83 7 51
INFLATE_HUFT 0 8 119
INFLATE_HUFT 0 8 55
INFLATE_HUFT 0 9 207
INFLATE_HUFT 81 7 15
INFLATE_HUFT 0 8 103
INFLATE_HUFT 0 8 39
INFLATE_HUFT 0 9 175
INFLATE_HUFT 0 8 7
INFLATE_HUFT 0 8 135
INFLATE_HUFT 0 8 71
INFLATE_HUFT 0 9 239
INFLATE_HUFT 80 7 9
INFLATE_HUFT 0 8 95
INFLATE_HUFT 0 8 31
INFLATE_HUFT 0 9 159
INFLATE_HUFT 84 7 99
INFLATE_HUFT 0 8 127
INFLATE_HUFT 0 8 63
INFLATE_HUFT 0 9 223
INFLATE_HUFT 82 7 27
INFLATE_HUFT 0 8 111
INFLATE_HUFT 0 8 47
INFLATE_HUFT 0 9 191
INFLATE_HUFT 0 8 15
INFLATE_HUFT 0 8 143
INFLATE_HUFT 0 8 79
INFLATE_HUFT 0 9 255

_fixed_td:                                                                                                         // [0x267160] 0x009c6000 + 0x267160 = 0x00c2d160
INFLATE_HUFT 80 5 1
INFLATE_HUFT 87 5 257
INFLATE_HUFT 83 5 17
INFLATE_HUFT 91 5 4097
INFLATE_HUFT 81 5 5
INFLATE_HUFT 89 5 1025
INFLATE_HUFT 85 5 65
INFLATE_HUFT 93 5 16385
INFLATE_HUFT 80 5 3
INFLATE_HUFT 88 5 513
INFLATE_HUFT 84 5 33
INFLATE_HUFT 92 5 8193
INFLATE_HUFT 82 5 9
INFLATE_HUFT 90 5 2049
INFLATE_HUFT 86 5 129
INFLATE_HUFT 192 5 24577
INFLATE_HUFT 80 5 2
INFLATE_HUFT 87 5 385
INFLATE_HUFT 83 5 25
INFLATE_HUFT 91 5 6145
INFLATE_HUFT 81 5 7
INFLATE_HUFT 89 5 1537
INFLATE_HUFT 85 5 97
INFLATE_HUFT 93 5 24577
INFLATE_HUFT 80 5 4
INFLATE_HUFT 88 5 769
INFLATE_HUFT 84 5 49
INFLATE_HUFT 92 5 12289
INFLATE_HUFT 82 5 13
INFLATE_HUFT 90 5 3073
INFLATE_HUFT 86 5 193
INFLATE_HUFT 192 5 24577

ASCIZ_ALIGNED "incomplete dynamic bit lengths tree" 4                                                              // [0x267260] 0x009c6000 + 0x267260 = 0x00c2d260
ASCIZ_ALIGNED "oversubscribed dynamic bit lengths tree" 4                                                          // [0x267284] 0x009c6000 + 0x267284 = 0x00c2d284
ASCIZ_ALIGNED "incomplete literal/length tree" 4                                                                   // [0x2672ac] 0x009c6000 + 0x2672ac = 0x00c2d2ac
ASCIZ_ALIGNED "oversubscribed literal/length tree" 4                                                               // [0x2672cc] 0x009c6000 + 0x2672cc = 0x00c2d2cc
ASCIZ_ALIGNED "empty distance tree with lengths" 4                                                                 // [0x2672f0] 0x009c6000 + 0x2672f0 = 0x00c2d2f0
ASCIZ_ALIGNED "incomplete distance tree" 4                                                                         // [0x267314] 0x009c6000 + 0x267314 = 0x00c2d314
ASCIZ_ALIGNED "oversubscribed distance tree" 4                                                                     // [0x267330] 0x009c6000 + 0x267330 = 0x00c2d330


.section .text

_inflate_trees_bits:     push             ecx                                           // 0x007c44f0    51
                         push             ebx                                           // 0x007c44f1    53
                         push             edi                                           // 0x007c44f2    57
                         {disp8} mov      edi, dword ptr [esp + 0x20]                   // 0x007c44f3    8b7c2420
                         push             0x4                                           // 0x007c44f7    6a04
                         push             0x13                                          // 0x007c44f9    6a13
                         {disp8} mov      dword ptr [esp + 0x10], 0x00000000            // 0x007c44fb    c744241000000000
                         {disp8} mov      eax, dword ptr [edi + 0x28]                   // 0x007c4503    8b4728
                         push             eax                                           // 0x007c4506    50
                         call             dword ptr [edi + 0x20]                        // 0x007c4507    ff5720
                         mov.s            ebx, eax                                      // 0x007c450a    8bd8
                         add              esp, 0x0c                                     // 0x007c450c    83c40c
                         test             ebx, ebx                                      // 0x007c450f    85db
                         {disp8} jne      _jmp_addr_0x007c451c                          // 0x007c4511    7509
                         pop              edi                                           // 0x007c4513    5f
                         mov              eax, 0xfffffffc                               // 0x007c4514    b8fcffffff
                         pop              ebx                                           // 0x007c4519    5b
                         pop              ecx                                           // 0x007c451a    59
                         ret                                                            // 0x007c451b    c3
_jmp_addr_0x007c451c:    {disp8} mov      edx, dword ptr [esp + 0x1c]                   // 0x007c451c    8b54241c
                         {disp8} mov      eax, dword ptr [esp + 0x18]                   // 0x007c4520    8b442418
                         push             ebp                                           // 0x007c4524    55
                         {disp8} mov      ebp, dword ptr [esp + 0x18]                   // 0x007c4525    8b6c2418
                         push             esi                                           // 0x007c4529    56
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x007c452a    8d4c2410
                         push             ebx                                           // 0x007c452e    53
                         push             ecx                                           // 0x007c452f    51
                         {disp8} mov      ecx, dword ptr [esp + 0x20]                   // 0x007c4530    8b4c2420
                         push             edx                                           // 0x007c4534    52
                         push             ebp                                           // 0x007c4535    55
                         push             eax                                           // 0x007c4536    50
                         push             0x0                                           // 0x007c4537    6a00
                         push             0x0                                           // 0x007c4539    6a00
                         push             0x13                                          // 0x007c453b    6a13
                         push             0x13                                          // 0x007c453d    6a13
                         push             ecx                                           // 0x007c453f    51
                         call             _huft_build                                   // 0x007c4540    e85b000000
                         mov.s            esi, eax                                      // 0x007c4545    8bf0
                         add              esp, 0x28                                     // 0x007c4547    83c428
                         cmp              esi, -0x03                                    // 0x007c454a    83fefd
                         {disp8} jne      _jmp_addr_0x007c4569                          // 0x007c454d    751a
                         {disp8} mov      edx, dword ptr [edi + 0x28]                   // 0x007c454f    8b5728
                         push             ebx                                           // 0x007c4552    53
                         push             edx                                           // 0x007c4553    52
                         {disp8} mov      dword ptr [edi + 0x18], 0x00c2d284            // 0x007c4554    c7471884d2c200
                         call             dword ptr [edi + 0x24]                        // 0x007c455b    ff5724
                         add              esp, 0x08                                     // 0x007c455e    83c408
                         mov.s            eax, esi                                      // 0x007c4561    8bc6
                         pop              esi                                           // 0x007c4563    5e
                         pop              ebp                                           // 0x007c4564    5d
                         pop              edi                                           // 0x007c4565    5f
                         pop              ebx                                           // 0x007c4566    5b
                         pop              ecx                                           // 0x007c4567    59
                         ret                                                            // 0x007c4568    c3
_jmp_addr_0x007c4569:    cmp              esi, -0x05                                    // 0x007c4569    83fefb
                         {disp8} je       _jmp_addr_0x007c4574                          // 0x007c456c    7406
                         cmp              dword ptr [ebp + 0x00], 0x00                  // 0x007c456e    837d0000
                         {disp8} jne      _jmp_addr_0x007c4580                          // 0x007c4572    750c
_jmp_addr_0x007c4574:    {disp8} mov      dword ptr [edi + 0x18], 0x00c2d260            // 0x007c4574    c7471860d2c200
                         mov              esi, 0xfffffffd                               // 0x007c457b    befdffffff
_jmp_addr_0x007c4580:    {disp8} mov      edx, dword ptr [edi + 0x28]                   // 0x007c4580    8b5728
                         push             ebx                                           // 0x007c4583    53
                         push             edx                                           // 0x007c4584    52
                         call             dword ptr [edi + 0x24]                        // 0x007c4585    ff5724
                         add              esp, 0x08                                     // 0x007c4588    83c408
                         mov.s            eax, esi                                      // 0x007c458b    8bc6
                         pop              esi                                           // 0x007c458d    5e
                         pop              ebp                                           // 0x007c458e    5d
                         pop              edi                                           // 0x007c458f    5f
                         pop              ebx                                           // 0x007c4590    5b
                         pop              ecx                                           // 0x007c4591    59
                         ret                                                            // 0x007c4592    c3
                         nop                                                            // 0x007c4593    90
                         nop                                                            // 0x007c4594    90
                         nop                                                            // 0x007c4595    90
                         nop                                                            // 0x007c4596    90
                         nop                                                            // 0x007c4597    90
                         nop                                                            // 0x007c4598    90
                         nop                                                            // 0x007c4599    90
                         nop                                                            // 0x007c459a    90
                         nop                                                            // 0x007c459b    90
                         nop                                                            // 0x007c459c    90
                         nop                                                            // 0x007c459d    90
                         nop                                                            // 0x007c459e    90
                         nop                                                            // 0x007c459f    90
_huft_build:             sub              esp, 0x00000100                               // 0x007c45a0    81ec00010000
                         {disp32} mov     ecx, dword ptr [esp + 0x00000104]             // 0x007c45a6    8b8c2404010000
                         push             ebx                                           // 0x007c45ad    53
                         push             ebp                                           // 0x007c45ae    55
                         push             esi                                           // 0x007c45af    56
                         {disp32} mov     esi, dword ptr [esp + 0x00000114]             // 0x007c45b0    8bb42414010000
                         push             edi                                           // 0x007c45b7    57
                         xor.s            edi, edi                                      // 0x007c45b8    33ff
                         mov.s            edx, esi                                      // 0x007c45ba    8bd6
                         {disp8} mov      dword ptr [esp + 0x54], edi                   // 0x007c45bc    897c2454
                         {disp8} mov      dword ptr [esp + 0x58], edi                   // 0x007c45c0    897c2458
                         {disp8} mov      dword ptr [esp + 0x5c], edi                   // 0x007c45c4    897c245c
                         {disp8} mov      dword ptr [esp + 0x60], edi                   // 0x007c45c8    897c2460
                         {disp8} mov      dword ptr [esp + 0x64], edi                   // 0x007c45cc    897c2464
                         {disp8} mov      dword ptr [esp + 0x68], edi                   // 0x007c45d0    897c2468
                         {disp8} mov      dword ptr [esp + 0x6c], edi                   // 0x007c45d4    897c246c
                         {disp8} mov      dword ptr [esp + 0x70], edi                   // 0x007c45d8    897c2470
                         {disp8} mov      dword ptr [esp + 0x74], edi                   // 0x007c45dc    897c2474
                         {disp8} mov      dword ptr [esp + 0x78], edi                   // 0x007c45e0    897c2478
                         {disp8} mov      dword ptr [esp + 0x7c], edi                   // 0x007c45e4    897c247c
                         {disp32} mov     dword ptr [esp + 0x00000080], edi             // 0x007c45e8    89bc2480000000
                         {disp32} mov     dword ptr [esp + 0x00000084], edi             // 0x007c45ef    89bc2484000000
                         {disp32} mov     dword ptr [esp + 0x00000088], edi             // 0x007c45f6    89bc2488000000
                         {disp32} mov     dword ptr [esp + 0x0000008c], edi             // 0x007c45fd    89bc248c000000
                         {disp32} mov     dword ptr [esp + 0x00000090], edi             // 0x007c4604    89bc2490000000
_jmp_addr_0x007c460b:    mov              eax, dword ptr [ecx]                          // 0x007c460b    8b01
                         add              ecx, 0x4                                      // 0x007c460d    83c104
                         {disp8} mov      ebp, dword ptr [esp + eax * 0x4 + 0x54]       // 0x007c4610    8b6c8454
                         {disp8} lea      eax, dword ptr [esp + eax * 0x4 + 0x54]       // 0x007c4614    8d448454
                         inc              ebp                                           // 0x007c4618    45
                         dec              edx                                           // 0x007c4619    4a
                         mov              dword ptr [eax], ebp                          // 0x007c461a    8928
                         {disp8} jne      _jmp_addr_0x007c460b                          // 0x007c461c    75ed
                         cmp              dword ptr [esp + 0x54], esi                   // 0x007c461e    39742454
                         {disp8} jne      _jmp_addr_0x007c4643                          // 0x007c4622    751f
                         {disp32} mov     ecx, dword ptr [esp + 0x00000128]             // 0x007c4624    8b8c2428010000
                         {disp32} mov     edx, dword ptr [esp + 0x0000012c]             // 0x007c462b    8b94242c010000
                         mov              dword ptr [ecx], edi                          // 0x007c4632    8939
                         mov              dword ptr [edx], edi                          // 0x007c4634    893a
_jmp_addr_0x007c4636:    pop              edi                                           // 0x007c4636    5f
                         pop              esi                                           // 0x007c4637    5e
                         pop              ebp                                           // 0x007c4638    5d
                         xor.s            eax, eax                                      // 0x007c4639    33c0
                         pop              ebx                                           // 0x007c463b    5b
                         add              esp, 0x00000100                               // 0x007c463c    81c400010000
                         ret                                                            // 0x007c4642    c3
_jmp_addr_0x007c4643:    {disp32} mov     ebx, dword ptr [esp + 0x0000012c]             // 0x007c4643    8b9c242c010000
                         mov              ecx, 0x00000001                               // 0x007c464a    b901000000
                         {disp8} lea      eax, dword ptr [esp + 0x58]                   // 0x007c464f    8d442458
                         mov              ebp, dword ptr [ebx]                          // 0x007c4653    8b2b
                         {disp8} mov      dword ptr [esp + 0x10], ebp                   // 0x007c4655    896c2410
_jmp_addr_0x007c4659:    cmp              dword ptr [eax], edi                          // 0x007c4659    3938
                         {disp8} jne      _jmp_addr_0x007c4666                          // 0x007c465b    7509
                         inc              ecx                                           // 0x007c465d    41
                         add              eax, 0x04                                     // 0x007c465e    83c004
                         cmp              ecx, 0x0f                                     // 0x007c4661    83f90f
                         {disp8} jbe      _jmp_addr_0x007c4659                          // 0x007c4664    76f3
_jmp_addr_0x007c4666:    mov.s            eax, ecx                                      // 0x007c4666    8bc1
                         cmp.s            ebp, ecx                                      // 0x007c4668    3be9
                         {disp8} mov      dword ptr [esp + 0x14], eax                   // 0x007c466a    89442414
                         {disp8} jae      _jmp_addr_0x007c4676                          // 0x007c466e    7306
                         {disp8} mov      dword ptr [esp + 0x10], ecx                   // 0x007c4670    894c2410
                         mov.s            ebp, ecx                                      // 0x007c4674    8be9
_jmp_addr_0x007c4676:    mov              edx, 0x0000000f                               // 0x007c4676    ba0f000000
                         {disp32} lea     esi, dword ptr [esp + 0x00000090]             // 0x007c467b    8db42490000000
_jmp_addr_0x007c4682:    cmp              dword ptr [esi], edi                          // 0x007c4682    393e
                         {disp8} jne      _jmp_addr_0x007c468e                          // 0x007c4684    7508
                         dec              edx                                           // 0x007c4686    4a
                         sub              esi, 0x04                                     // 0x007c4687    83ee04
                         cmp.s            edx, edi                                      // 0x007c468a    3bd7
                         {disp8} jne      _jmp_addr_0x007c4682                          // 0x007c468c    75f4
_jmp_addr_0x007c468e:    cmp.s            ebp, edx                                      // 0x007c468e    3bea
                         {disp8} mov      dword ptr [esp + 0x2c], edx                   // 0x007c4690    8954242c
                         {disp8} jbe      _jmp_addr_0x007c469c                          // 0x007c4694    7606
                         {disp8} mov      dword ptr [esp + 0x10], edx                   // 0x007c4696    89542410
                         mov.s            ebp, edx                                      // 0x007c469a    8bea
_jmp_addr_0x007c469c:    mov              esi, 0x00000001                               // 0x007c469c    be01000000
                         mov              dword ptr [ebx], ebp                          // 0x007c46a1    892b
                         shl              esi, cl                                       // 0x007c46a3    d3e6
                         cmp.s            ecx, edx                                      // 0x007c46a5    3bca
                         {disp8} jae      _jmp_addr_0x007c46bb                          // 0x007c46a7    7312
                         {disp8} lea      ebx, dword ptr [esp + ecx * 0x4 + 0x54]       // 0x007c46a9    8d5c8c54
_jmp_addr_0x007c46ad:    sub              esi, dword ptr [ebx]                          // 0x007c46ad    2b33
                         {disp8} js       _jmp_addr_0x007c46d6                          // 0x007c46af    7825
                         inc              ecx                                           // 0x007c46b1    41
                         add              ebx, 0x04                                     // 0x007c46b2    83c304
                         shl              esi, 1                                        // 0x007c46b5    d1e6
                         cmp.s            ecx, edx                                      // 0x007c46b7    3bca
                         .byte            0x72, 0xf2// {disp8} jb _jmp_addr_0x007c46ad  // 0x007c46b9    72f2
_jmp_addr_0x007c46bb:    {disp32} lea     ecx, dword ptr [edx * 0x4 + 0x00000000]       // 0x007c46bb    8d0c9500000000
                         {disp8} mov      dword ptr [esp + 0x20], ecx                   // 0x007c46c2    894c2420
                         {disp8} mov      ebx, dword ptr [esp + ecx * 0x1 + 0x54]       // 0x007c46c6    8b5c0c54
                         {disp8} lea      ecx, dword ptr [esp + ecx * 0x1 + 0x54]       // 0x007c46ca    8d4c0c54
                         sub.s            esi, ebx                                      // 0x007c46ce    2bf3
                         {disp8} mov      dword ptr [esp + 0x44], esi                   // 0x007c46d0    89742444
                         {disp8} jns      _jmp_addr_0x007c46e6                          // 0x007c46d4    7910
_jmp_addr_0x007c46d6:    pop              edi                                           // 0x007c46d6    5f
                         pop              esi                                           // 0x007c46d7    5e
                         pop              ebp                                           // 0x007c46d8    5d
                         mov              eax, 0xfffffffd                               // 0x007c46d9    b8fdffffff
                         pop              ebx                                           // 0x007c46de    5b
                         add              esp, 0x00000100                               // 0x007c46df    81c400010000
                         ret                                                            // 0x007c46e5    c3
_jmp_addr_0x007c46e6:    add.s            ebx, esi                                      // 0x007c46e6    03de
                         {disp32} mov     dword ptr [esp + 0x00000098], edi             // 0x007c46e8    89bc2498000000
                         mov              dword ptr [ecx], ebx                          // 0x007c46ef    8919
                         xor.s            ecx, ecx                                      // 0x007c46f1    33c9
                         dec              edx                                           // 0x007c46f3    4a
                         {disp8} je       _jmp_addr_0x007c4709                          // 0x007c46f4    7413
                         xor.s            ebx, ebx                                      // 0x007c46f6    33db
_jmp_addr_0x007c46f8:    add              ecx, dword ptr [esp + ebx * 0x1 + 0x58]       // 0x007c46f8    034c1c58
                         add              ebx, 0x04                                     // 0x007c46fc    83c304
                         dec              edx                                           // 0x007c46ff    4a
                         {disp32} mov     dword ptr [esp + ebx * 0x1 + 0x00000098], ecx // 0x007c4700    898c1c98000000
                         {disp8} jne      _jmp_addr_0x007c46f8                          // 0x007c4707    75ef
_jmp_addr_0x007c4709:    {disp32} mov     edx, dword ptr [esp + 0x00000114]             // 0x007c4709    8b942414010000
                         xor.s            ebx, ebx                                      // 0x007c4710    33db
_jmp_addr_0x007c4712:    mov              ecx, dword ptr [edx]                          // 0x007c4712    8b0a
                         add              edx, 0x04                                     // 0x007c4714    83c204
                         cmp.s            ecx, edi                                      // 0x007c4717    3bcf
                         {disp8} mov      dword ptr [esp + 0x1c], edx                   // 0x007c4719    8954241c
                         {disp8} je       _jmp_addr_0x007c4742                          // 0x007c471d    7423
                         {disp32} mov     edx, dword ptr [esp + ecx * 0x4 + 0x00000094] // 0x007c471f    8b948c94000000
                         {disp32} mov     esi, dword ptr [esp + 0x00000138]             // 0x007c4726    8bb42438010000
                         {disp32} lea     ecx, dword ptr [esp + ecx * 0x4 + 0x00000094] // 0x007c472d    8d8c8c94000000
                         mov              dword ptr [esi + edx * 0x4], ebx              // 0x007c4734    891c96
                         {disp8} mov      esi, dword ptr [esp + 0x44]                   // 0x007c4737    8b742444
                         inc              edx                                           // 0x007c473b    42
                         mov              dword ptr [ecx], edx                          // 0x007c473c    8911
                         {disp8} mov      edx, dword ptr [esp + 0x1c]                   // 0x007c473e    8b54241c
_jmp_addr_0x007c4742:    {disp32} mov     ecx, dword ptr [esp + 0x00000118]             // 0x007c4742    8b8c2418010000
                         inc              ebx                                           // 0x007c4749    43
                         cmp.s            ebx, ecx                                      // 0x007c474a    3bd9
                         .byte            0x72, 0xc4// {disp8} jb _jmp_addr_0x007c4712  // 0x007c474c    72c4
                         {disp8} mov      ecx, dword ptr [esp + 0x20]                   // 0x007c474e    8b4c2420
                         mov.s            ebx, ebp                                      // 0x007c4752    8bdd
                         neg              ebx                                           // 0x007c4754    f7db
                         {disp32} mov     edx, dword ptr [esp + ecx * 0x1 + 0x00000094] // 0x007c4756    8b940c94000000
                         {disp32} mov     ecx, dword ptr [esp + 0x00000138]             // 0x007c475d    8b8c2438010000
                         {disp8} mov      dword ptr [esp + 0x1c], ecx                   // 0x007c4764    894c241c
                         {disp8} mov      ecx, dword ptr [esp + 0x2c]                   // 0x007c4768    8b4c242c
                         cmp.s            eax, ecx                                      // 0x007c476c    3bc1
                         {disp32} mov     dword ptr [esp + 0x00000118], edx             // 0x007c476e    89942418010000
                         {disp8} mov      dword ptr [esp + 0x38], edi                   // 0x007c4775    897c2438
                         {disp32} mov     dword ptr [esp + 0x00000094], edi             // 0x007c4779    89bc2494000000
                         {disp8} mov      dword ptr [esp + 0x18], 0xffffffff            // 0x007c4780    c7442418ffffffff
                         {disp32} mov     dword ptr [esp + 0x000000d4], edi             // 0x007c4788    89bc24d4000000
                         {disp8} mov      dword ptr [esp + 0x40], edi                   // 0x007c478f    897c2440
                         {disp8} mov      dword ptr [esp + 0x3c], edi                   // 0x007c4793    897c243c
                         {disp32} jg      _jmp_addr_0x007c4a36                          // 0x007c4797    0f8f99020000
                         {disp8} mov      esi, dword ptr [esp + 0x34]                   // 0x007c479d    8b742434
                         {disp8} lea      edx, dword ptr [eax + -0x01]                  // 0x007c47a1    8d50ff
                         {disp8} lea      ecx, dword ptr [esp + eax * 0x4 + 0x54]       // 0x007c47a4    8d4c8454
                         {disp8} mov      dword ptr [esp + 0x20], edx                   // 0x007c47a8    89542420
                         {disp8} mov      dword ptr [esp + 0x28], ecx                   // 0x007c47ac    894c2428
_jmp_addr_0x007c47b0:    {disp8} mov      edx, dword ptr [esp + 0x28]                   // 0x007c47b0    8b542428
                         mov              edx, dword ptr [edx]                          // 0x007c47b4    8b12
                         mov.s            ecx, edx                                      // 0x007c47b6    8bca
                         dec              edx                                           // 0x007c47b8    4a
                         test             ecx, ecx                                      // 0x007c47b9    85c9
                         {disp8} mov      dword ptr [esp + 0x24], edx                   // 0x007c47bb    89542424
                         {disp32} je      _jmp_addr_0x007c4a0b                          // 0x007c47bf    0f8446020000
                         {disp8} jmp      _jmp_addr_0x007c47cb                          // 0x007c47c5    eb04
_jmp_addr_0x007c47c7:    {disp8} mov      edx, dword ptr [esp + 0x24]                   // 0x007c47c7    8b542424
_jmp_addr_0x007c47cb:    lea              ecx, dword ptr [ebx + ebp * 0x1]              // 0x007c47cb    8d0c2b
                         cmp.s            eax, ecx                                      // 0x007c47ce    3bc1
                         {disp32} jle     _jmp_addr_0x007c48e8                          // 0x007c47d0    0f8e12010000
                         inc              edx                                           // 0x007c47d6    42
                         {disp8} mov      dword ptr [esp + 0x50], edx                   // 0x007c47d7    89542450
                         {disp8} jmp      _jmp_addr_0x007c47e5                          // 0x007c47db    eb08
_jmp_addr_0x007c47dd:    {disp8} mov      ebp, dword ptr [esp + 0x10]                   // 0x007c47dd    8b6c2410
                         {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x007c47e1    8b442414
_jmp_addr_0x007c47e5:    {disp8} mov      edx, dword ptr [esp + 0x18]                   // 0x007c47e5    8b542418
                         add.s            ebx, ebp                                      // 0x007c47e9    03dd
                         inc              edx                                           // 0x007c47eb    42
                         add.s            ecx, ebp                                      // 0x007c47ec    03cd
                         {disp8} mov      dword ptr [esp + 0x18], edx                   // 0x007c47ee    89542418
                         {disp8} mov      edx, dword ptr [esp + 0x2c]                   // 0x007c47f2    8b54242c
                         sub.s            edx, ebx                                      // 0x007c47f6    2bd3
                         {disp8} mov      dword ptr [esp + 0x48], ecx                   // 0x007c47f8    894c2448
                         cmp.s            edx, ebp                                      // 0x007c47fc    3bd5
                         {disp8} jbe      _jmp_addr_0x007c4802                          // 0x007c47fe    7602
                         mov.s            edx, ebp                                      // 0x007c4800    8bd5
_jmp_addr_0x007c4802:    {disp8} mov      edi, dword ptr [esp + 0x50]                   // 0x007c4802    8b7c2450
                         mov.s            ecx, eax                                      // 0x007c4806    8bc8
                         sub.s            ecx, ebx                                      // 0x007c4808    2bcb
                         mov              eax, 0x00000001                               // 0x007c480a    b801000000
                         shl              eax, cl                                       // 0x007c480f    d3e0
                         cmp.s            eax, edi                                      // 0x007c4811    3bc7
                         {disp8} jbe      _jmp_addr_0x007c4840                          // 0x007c4813    762b
                         {disp8} mov      ebp, dword ptr [esp + 0x24]                   // 0x007c4815    8b6c2424
                         or               edi, 0xffffffff                               // 0x007c4819    83cfff
                         sub.s            edi, ebp                                      // 0x007c481c    2bfd
                         {disp8} mov      ebp, dword ptr [esp + 0x28]                   // 0x007c481e    8b6c2428
                         add.s            eax, edi                                      // 0x007c4822    03c7
                         cmp.s            ecx, edx                                      // 0x007c4824    3bca
                         {disp8} jae      _jmp_addr_0x007c4840                          // 0x007c4826    7318
                         inc              ecx                                           // 0x007c4828    41
                         cmp.s            ecx, edx                                      // 0x007c4829    3bca
                         {disp8} jae      _jmp_addr_0x007c4840                          // 0x007c482b    7313
_jmp_addr_0x007c482d:    {disp8} mov      edi, dword ptr [ebp + 0x04]                   // 0x007c482d    8b7d04
                         add              ebp, 0x04                                     // 0x007c4830    83c504
                         shl              eax, 1                                        // 0x007c4833    d1e0
                         cmp.s            eax, edi                                      // 0x007c4835    3bc7
                         {disp8} jbe      _jmp_addr_0x007c4840                          // 0x007c4837    7607
                         sub.s            eax, edi                                      // 0x007c4839    2bc7
                         inc              ecx                                           // 0x007c483b    41
                         cmp.s            ecx, edx                                      // 0x007c483c    3bca
                         .byte            0x72, 0xed// {disp8} jb _jmp_addr_0x007c482d  // 0x007c483e    72ed
_jmp_addr_0x007c4840:    {disp32} mov     ebp, dword ptr [esp + 0x00000134]             // 0x007c4840    8bac2434010000
                         mov              edx, 0x00000001                               // 0x007c4847    ba01000000
                         shl              edx, cl                                       // 0x007c484c    d3e2
                         {disp8} mov      eax, dword ptr [ebp + 0x00]                   // 0x007c484e    8b4500
                         {disp8} mov      dword ptr [esp + 0x3c], edx                   // 0x007c4851    8954243c
                         add.s            edx, eax                                      // 0x007c4855    03d0
                         cmp              edx, 0x000005a0                               // 0x007c4857    81faa0050000
                         {disp32} ja      _jmp_addr_0x007c4a59                          // 0x007c485d    0f87f6010000
                         {disp32} mov     edi, dword ptr [esp + 0x00000130]             // 0x007c4863    8bbc2430010000
                         {disp8} mov      dword ptr [ebp + 0x00], edx                   // 0x007c486a    895500
                         {disp8} mov      edx, dword ptr [esp + 0x18]                   // 0x007c486d    8b542418
                         lea              eax, dword ptr [edi + eax * 0x8]              // 0x007c4871    8d04c7
                         {disp8} mov      edi, dword ptr [esp + 0x18]                   // 0x007c4874    8b7c2418
                         test             edx, edx                                      // 0x007c4878    85d2
                         {disp32} lea     edi, dword ptr [esp + edi * 0x4 + 0x000000d4] // 0x007c487a    8dbcbcd4000000
                         {disp8} mov      dword ptr [esp + 0x40], eax                   // 0x007c4881    89442440
                         {disp8} mov      dword ptr [esp + 0x4c], edi                   // 0x007c4885    897c244c
                         mov              dword ptr [edi], eax                          // 0x007c4889    8907
                         {disp8} je       _jmp_addr_0x007c48cb                          // 0x007c488b    743e
                         {disp8} mov      edi, dword ptr [esp + 0x38]                   // 0x007c488d    8b7c2438
                         {disp8} mov      eax, dword ptr [esp + 0x10]                   // 0x007c4891    8b442410
                         {disp8} mov      esi, dword ptr [esp + 0x40]                   // 0x007c4895    8b742440
                         {disp8} mov      byte ptr [esp + 0x30], cl                     // 0x007c4899    884c2430
                         mov.s            ecx, ebx                                      // 0x007c489d    8bcb
                         {disp32} mov     dword ptr [esp + edx * 0x4 + 0x00000094], edi // 0x007c489f    89bc9494000000
                         {disp8} mov      edx, dword ptr [esp + 0x4c]                   // 0x007c48a6    8b54244c
                         {disp8} mov      byte ptr [esp + 0x31], al                     // 0x007c48aa    88442431
                         sub.s            ecx, eax                                      // 0x007c48ae    2bc8
                         mov.s            eax, edi                                      // 0x007c48b0    8bc7
                         shr              eax, cl                                       // 0x007c48b2    d3e8
                         {disp8} mov      ecx, dword ptr [edx + -0x04]                  // 0x007c48b4    8b4afc
                         {disp8} mov      edx, dword ptr [esp + 0x30]                   // 0x007c48b7    8b542430
                         sub.s            esi, ecx                                      // 0x007c48bb    2bf1
                         sar              esi, 3                                        // 0x007c48bd    c1fe03
                         sub.s            esi, eax                                      // 0x007c48c0    2bf0
                         mov              dword ptr [ecx + eax * 0x8], edx              // 0x007c48c2    8914c1
                         {disp8} mov      dword ptr [ecx + eax * 0x8 + 0x04], esi       // 0x007c48c5    8974c104
                         {disp8} jmp      _jmp_addr_0x007c48d8                          // 0x007c48c9    eb0d
_jmp_addr_0x007c48cb:    {disp32} mov     ecx, dword ptr [esp + 0x00000128]             // 0x007c48cb    8b8c2428010000
                         {disp8} mov      edi, dword ptr [esp + 0x38]                   // 0x007c48d2    8b7c2438
                         mov              dword ptr [ecx], eax                          // 0x007c48d6    8901
_jmp_addr_0x007c48d8:    {disp8} mov      ecx, dword ptr [esp + 0x48]                   // 0x007c48d8    8b4c2448
                         {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x007c48dc    8b442414
                         cmp.s            eax, ecx                                      // 0x007c48e0    3bc1
                         {disp32} jg      _jmp_addr_0x007c47dd                          // 0x007c48e2    0f8ff5feffff
_jmp_addr_0x007c48e8:    {disp32} mov     ecx, dword ptr [esp + 0x00000138]             // 0x007c48e8    8b8c2438010000
                         mov.s            dl, al                                        // 0x007c48ef    8ad0
                         {disp8} mov      ebp, dword ptr [esp + 0x1c]                   // 0x007c48f1    8b6c241c
                         sub.s            dl, bl                                        // 0x007c48f5    2ad3
                         {disp8} mov      byte ptr [esp + 0x31], dl                     // 0x007c48f7    88542431
                         {disp32} mov     edx, dword ptr [esp + 0x00000118]             // 0x007c48fb    8b942418010000
                         lea              ecx, dword ptr [ecx + edx * 0x4]              // 0x007c4902    8d0c91
                         cmp.s            ebp, ecx                                      // 0x007c4905    3be9
                         .byte            0x72, 0x7// {disp8} jb _jmp_addr_0x007c4910   // 0x007c4907    7207
                         {disp8} mov      byte ptr [esp + 0x30], -0x40                  // 0x007c4909    c6442430c0
                         {disp8} jmp      _jmp_addr_0x007c4959                          // 0x007c490e    eb49
_jmp_addr_0x007c4910:    {disp8} mov      esi, dword ptr [ebp + 0x00]                   // 0x007c4910    8b7500
                         {disp32} mov     ecx, dword ptr [esp + 0x0000011c]             // 0x007c4913    8b8c241c010000
                         cmp.s            esi, ecx                                      // 0x007c491a    3bf1
                         {disp8} jae      _jmp_addr_0x007c4932                          // 0x007c491c    7314
                         cmp              esi, 0x00000100                               // 0x007c491e    81fe00010000
                         sbb.s            dl, dl                                        // 0x007c4924    1ad2
                         and              dl, -0x60                                     // 0x007c4926    80e2a0
                         add              dl, 0x60                                      // 0x007c4929    80c260
                         {disp8} mov      byte ptr [esp + 0x30], dl                     // 0x007c492c    88542430
                         {disp8} jmp      _jmp_addr_0x007c4952                          // 0x007c4930    eb20
_jmp_addr_0x007c4932:    sub.s            esi, ecx                                      // 0x007c4932    2bf1
                         {disp32} mov     ecx, dword ptr [esp + 0x00000124]             // 0x007c4934    8b8c2424010000
                         shl              esi, 2                                        // 0x007c493b    c1e602
                         mov              dl, byte ptr [esi + ecx * 0x1]                // 0x007c493e    8a140e
                         {disp32} mov     ecx, dword ptr [esp + 0x00000120]             // 0x007c4941    8b8c2420010000
                         add              dl, 0x50                                      // 0x007c4948    80c250
                         mov              esi, dword ptr [esi + ecx * 0x1]              // 0x007c494b    8b340e
                         {disp8} mov      byte ptr [esp + 0x30], dl                     // 0x007c494e    88542430
_jmp_addr_0x007c4952:    add              ebp, 0x04                                     // 0x007c4952    83c504
                         {disp8} mov      dword ptr [esp + 0x1c], ebp                   // 0x007c4955    896c241c
_jmp_addr_0x007c4959:    mov.s            ecx, eax                                      // 0x007c4959    8bc8
                         mov              edx, 0x00000001                               // 0x007c495b    ba01000000
                         sub.s            ecx, ebx                                      // 0x007c4960    2bcb
                         mov.s            eax, edi                                      // 0x007c4962    8bc7
                         shl              edx, cl                                       // 0x007c4964    d3e2
                         mov.s            ecx, ebx                                      // 0x007c4966    8bcb
                         shr              eax, cl                                       // 0x007c4968    d3e8
                         cmp              eax, dword ptr [esp + 0x3c]                   // 0x007c496a    3b44243c
                         {disp8} jae      _jmp_addr_0x007c4991                          // 0x007c496e    7321
                         {disp8} mov      ecx, dword ptr [esp + 0x40]                   // 0x007c4970    8b4c2440
                         lea              ecx, dword ptr [ecx + eax * 0x8]              // 0x007c4974    8d0cc1
_jmp_addr_0x007c4977:    {disp8} mov      ebp, dword ptr [esp + 0x30]                   // 0x007c4977    8b6c2430
                         add.s            eax, edx                                      // 0x007c497b    03c2
                         mov              dword ptr [ecx], ebp                          // 0x007c497d    8929
                         {disp32} lea     ebp, dword ptr [edx * 0x8 + 0x00000000]       // 0x007c497f    8d2cd500000000
                         {disp8} mov      dword ptr [ecx + 0x04], esi                   // 0x007c4986    897104
                         add.s            ecx, ebp                                      // 0x007c4989    03cd
                         cmp              eax, dword ptr [esp + 0x3c]                   // 0x007c498b    3b44243c
                         .byte            0x72, 0xe6// {disp8} jb _jmp_addr_0x007c4977  // 0x007c498f    72e6
_jmp_addr_0x007c4991:    {disp8} mov      ecx, dword ptr [esp + 0x20]                   // 0x007c4991    8b4c2420
                         mov              eax, 0x00000001                               // 0x007c4995    b801000000
                         shl              eax, cl                                       // 0x007c499a    d3e0
                         test             edi, eax                                      // 0x007c499c    85c7
                         {disp8} je       _jmp_addr_0x007c49a8                          // 0x007c499e    7408
_jmp_addr_0x007c49a0:    xor.s            edi, eax                                      // 0x007c49a0    33f8
                         shr              eax, 1                                        // 0x007c49a2    d1e8
                         test             edi, eax                                      // 0x007c49a4    85c7
                         {disp8} jne      _jmp_addr_0x007c49a0                          // 0x007c49a6    75f8
_jmp_addr_0x007c49a8:    {disp8} mov      edx, dword ptr [esp + 0x18]                   // 0x007c49a8    8b542418
                         mov              ebp, 0x00000001                               // 0x007c49ac    bd01000000
                         mov.s            ecx, ebx                                      // 0x007c49b1    8bcb
                         xor.s            edi, eax                                      // 0x007c49b3    33f8
                         shl              ebp, cl                                       // 0x007c49b5    d3e5
                         {disp32} mov     ecx, dword ptr [esp + edx * 0x4 + 0x00000094] // 0x007c49b7    8b8c9494000000
                         {disp32} lea     eax, dword ptr [esp + edx * 0x4 + 0x00000094] // 0x007c49be    8d849494000000
                         {disp8} mov      dword ptr [esp + 0x38], edi                   // 0x007c49c5    897c2438
                         dec              ebp                                           // 0x007c49c9    4d
                         and.s            ebp, edi                                      // 0x007c49ca    23ef
                         cmp.s            ebp, ecx                                      // 0x007c49cc    3be9
                         {disp8} je       _jmp_addr_0x007c49f0                          // 0x007c49ce    7420
_jmp_addr_0x007c49d0:    {disp8} mov      ebp, dword ptr [esp + 0x10]                   // 0x007c49d0    8b6c2410
                         dec              edx                                           // 0x007c49d4    4a
                         sub.s            ebx, ebp                                      // 0x007c49d5    2bdd
                         mov              ebp, 0x00000001                               // 0x007c49d7    bd01000000
                         mov.s            ecx, ebx                                      // 0x007c49dc    8bcb
                         sub              eax, 0x04                                     // 0x007c49de    83e804
                         shl              ebp, cl                                       // 0x007c49e1    d3e5
                         mov              ecx, dword ptr [eax]                          // 0x007c49e3    8b08
                         dec              ebp                                           // 0x007c49e5    4d
                         and.s            ebp, edi                                      // 0x007c49e6    23ef
                         cmp.s            ebp, ecx                                      // 0x007c49e8    3be9
                         {disp8} jne      _jmp_addr_0x007c49d0                          // 0x007c49ea    75e4
                         {disp8} mov      dword ptr [esp + 0x18], edx                   // 0x007c49ec    89542418
_jmp_addr_0x007c49f0:    {disp8} mov      eax, dword ptr [esp + 0x24]                   // 0x007c49f0    8b442424
                         {disp8} mov      ebp, dword ptr [esp + 0x10]                   // 0x007c49f4    8b6c2410
                         mov.s            edx, eax                                      // 0x007c49f8    8bd0
                         dec              eax                                           // 0x007c49fa    48
                         {disp8} mov      dword ptr [esp + 0x24], eax                   // 0x007c49fb    89442424
                         {disp8} mov      eax, dword ptr [esp + 0x14]                   // 0x007c49ff    8b442414
                         test             edx, edx                                      // 0x007c4a03    85d2
                         {disp32} jne     _jmp_addr_0x007c47c7                          // 0x007c4a05    0f85bcfdffff
_jmp_addr_0x007c4a0b:    {disp8} mov      ecx, dword ptr [esp + 0x28]                   // 0x007c4a0b    8b4c2428
                         {disp8} mov      edx, dword ptr [esp + 0x20]                   // 0x007c4a0f    8b542420
                         add              ecx, 0x4                                      // 0x007c4a13    83c104
                         inc              eax                                           // 0x007c4a16    40
                         {disp8} mov      dword ptr [esp + 0x28], ecx                   // 0x007c4a17    894c2428
                         {disp8} mov      ecx, dword ptr [esp + 0x2c]                   // 0x007c4a1b    8b4c242c
                         inc              edx                                           // 0x007c4a1f    42
                         cmp.s            eax, ecx                                      // 0x007c4a20    3bc1
                         {disp8} mov      dword ptr [esp + 0x14], eax                   // 0x007c4a22    89442414
                         {disp8} mov      dword ptr [esp + 0x20], edx                   // 0x007c4a26    89542420
                         {disp32} jle     _jmp_addr_0x007c47b0                          // 0x007c4a2a    0f8e80fdffff
                         {disp8} mov      esi, dword ptr [esp + 0x44]                   // 0x007c4a30    8b742444
                         xor.s            edi, edi                                      // 0x007c4a34    33ff
_jmp_addr_0x007c4a36:    cmp.s            esi, edi                                      // 0x007c4a36    3bf7
                         {disp32} je      _jmp_addr_0x007c4636                          // 0x007c4a38    0f84f8fbffff
                         cmp              dword ptr [esp + 0x2c], 0x01                  // 0x007c4a3e    837c242c01
                         {disp32} je      _jmp_addr_0x007c4636                          // 0x007c4a43    0f84edfbffff
                         pop              edi                                           // 0x007c4a49    5f
                         pop              esi                                           // 0x007c4a4a    5e
                         pop              ebp                                           // 0x007c4a4b    5d
                         mov              eax, 0xfffffffb                               // 0x007c4a4c    b8fbffffff
                         pop              ebx                                           // 0x007c4a51    5b
                         add              esp, 0x00000100                               // 0x007c4a52    81c400010000
                         ret                                                            // 0x007c4a58    c3
_jmp_addr_0x007c4a59:    pop              edi                                           // 0x007c4a59    5f
                         pop              esi                                           // 0x007c4a5a    5e
                         pop              ebp                                           // 0x007c4a5b    5d
                         mov              eax, 0xfffffffc                               // 0x007c4a5c    b8fcffffff
                         pop              ebx                                           // 0x007c4a61    5b
                         add              esp, 0x00000100                               // 0x007c4a62    81c400010000
                         ret                                                            // 0x007c4a68    c3
                         nop                                                            // 0x007c4a69    90
                         nop                                                            // 0x007c4a6a    90
                         nop                                                            // 0x007c4a6b    90
                         nop                                                            // 0x007c4a6c    90
                         nop                                                            // 0x007c4a6d    90
                         nop                                                            // 0x007c4a6e    90
                         nop                                                            // 0x007c4a6f    90
_inflate_trees_dynamic:  push             ecx                                           // 0x007c4a70    51
                         push             ebx                                           // 0x007c4a71    53
                         {disp8} mov      ebx, dword ptr [esp + 0x2c]                   // 0x007c4a72    8b5c242c
                         push             ebp                                           // 0x007c4a76    55
                         push             esi                                           // 0x007c4a77    56
                         {disp8} mov      eax, dword ptr [ebx + 0x28]                   // 0x007c4a78    8b4328
                         push             edi                                           // 0x007c4a7b    57
                         push             0x4                                           // 0x007c4a7c    6a04
                         push             0x00000120                                    // 0x007c4a7e    6820010000
                         push             eax                                           // 0x007c4a83    50
                         {disp8} mov      dword ptr [esp + 0x1c], 0x00000000            // 0x007c4a84    c744241c00000000
                         call             dword ptr [ebx + 0x20]                        // 0x007c4a8c    ff5320
                         mov.s            edi, eax                                      // 0x007c4a8f    8bf8
                         add              esp, 0x0c                                     // 0x007c4a91    83c40c
                         test             edi, edi                                      // 0x007c4a94    85ff
                         {disp8} jne      _jmp_addr_0x007c4aa3                          // 0x007c4a96    750b
                         pop              edi                                           // 0x007c4a98    5f
                         pop              esi                                           // 0x007c4a99    5e
                         pop              ebp                                           // 0x007c4a9a    5d
                         mov              eax, 0xfffffffc                               // 0x007c4a9b    b8fcffffff
                         pop              ebx                                           // 0x007c4aa0    5b
                         pop              ecx                                           // 0x007c4aa1    59
                         ret                                                            // 0x007c4aa2    c3
_jmp_addr_0x007c4aa3:    {disp8} mov      edx, dword ptr [esp + 0x34]                   // 0x007c4aa3    8b542434
                         {disp8} mov      eax, dword ptr [esp + 0x24]                   // 0x007c4aa7    8b442424
                         {disp8} mov      ebp, dword ptr [esp + 0x18]                   // 0x007c4aab    8b6c2418
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x007c4aaf    8d4c2410
                         push             edi                                           // 0x007c4ab3    57
                         push             ecx                                           // 0x007c4ab4    51
                         {disp8} mov      ecx, dword ptr [esp + 0x34]                   // 0x007c4ab5    8b4c2434
                         push             edx                                           // 0x007c4ab9    52
                         {disp8} mov      edx, dword ptr [esp + 0x2c]                   // 0x007c4aba    8b54242c
                         push             eax                                           // 0x007c4abe    50
                         push             ecx                                           // 0x007c4abf    51
                         push             0x009a0454                                    // 0x007c4ac0    6854049a00
                         push             0x009a03d8                                    // 0x007c4ac5    68d8039a00
                         push             0x00000101                                    // 0x007c4aca    6801010000
                         push             ebp                                           // 0x007c4acf    55
                         push             edx                                           // 0x007c4ad0    52
                         call             _huft_build                                   // 0x007c4ad1    e8cafaffff
                         mov.s            esi, eax                                      // 0x007c4ad6    8bf0
                         add              esp, 0x28                                     // 0x007c4ad8    83c428
                         test             esi, esi                                      // 0x007c4adb    85f6
                         {disp32} jne     _jmp_addr_0x007c4bb6                          // 0x007c4add    0f85d3000000
                         {disp8} mov      eax, dword ptr [esp + 0x24]                   // 0x007c4ae3    8b442424
                         cmp              dword ptr [eax], 0x00                         // 0x007c4ae7    833800
                         {disp32} je      _jmp_addr_0x007c4bda                          // 0x007c4aea    0f84ea000000
                         {disp8} mov      edx, dword ptr [esp + 0x34]                   // 0x007c4af0    8b542434
                         {disp8} mov      eax, dword ptr [esp + 0x28]                   // 0x007c4af4    8b442428
                         {disp8} lea      ecx, dword ptr [esp + 0x10]                   // 0x007c4af8    8d4c2410
                         push             edi                                           // 0x007c4afc    57
                         push             ecx                                           // 0x007c4afd    51
                         {disp8} mov      ecx, dword ptr [esp + 0x38]                   // 0x007c4afe    8b4c2438
                         push             edx                                           // 0x007c4b02    52
                         {disp8} mov      edx, dword ptr [esp + 0x28]                   // 0x007c4b03    8b542428
                         push             eax                                           // 0x007c4b07    50
                         {disp8} mov      eax, dword ptr [esp + 0x30]                   // 0x007c4b08    8b442430
                         push             ecx                                           // 0x007c4b0c    51
                         push             0x009a0548                                    // 0x007c4b0d    6848059a00
                         push             0x009a04d0                                    // 0x007c4b12    68d0049a00
                         push             esi                                           // 0x007c4b17    56
                         lea              ecx, dword ptr [eax + ebp * 0x4]              // 0x007c4b18    8d0ca8
                         push             edx                                           // 0x007c4b1b    52
                         push             ecx                                           // 0x007c4b1c    51
                         call             _huft_build                                   // 0x007c4b1d    e87efaffff
                         mov.s            esi, eax                                      // 0x007c4b22    8bf0
                         add              esp, 0x28                                     // 0x007c4b24    83c428
                         test             esi, esi                                      // 0x007c4b27    85f6
                         {disp8} jne      _jmp_addr_0x007c4b4f                          // 0x007c4b29    7524
                         {disp8} mov      edx, dword ptr [esp + 0x28]                   // 0x007c4b2b    8b542428
                         cmp              dword ptr [edx], 0x00                         // 0x007c4b2f    833a00
                         {disp8} jne      _jmp_addr_0x007c4b3c                          // 0x007c4b32    7508
                         cmp              ebp, 0x00000101                               // 0x007c4b34    81fd01010000
                         {disp8} ja       _jmp_addr_0x007c4b97                          // 0x007c4b3a    775b
_jmp_addr_0x007c4b3c:    {disp8} mov      eax, dword ptr [ebx + 0x28]                   // 0x007c4b3c    8b4328
                         push             edi                                           // 0x007c4b3f    57
                         push             eax                                           // 0x007c4b40    50
                         call             dword ptr [ebx + 0x24]                        // 0x007c4b41    ff5324
                         add              esp, 0x08                                     // 0x007c4b44    83c408
                         xor.s            eax, eax                                      // 0x007c4b47    33c0
                         pop              edi                                           // 0x007c4b49    5f
                         pop              esi                                           // 0x007c4b4a    5e
                         pop              ebp                                           // 0x007c4b4b    5d
                         pop              ebx                                           // 0x007c4b4c    5b
                         pop              ecx                                           // 0x007c4b4d    59
                         ret                                                            // 0x007c4b4e    c3
_jmp_addr_0x007c4b4f:    cmp              esi, -0x03                                    // 0x007c4b4f    83fefd
                         {disp8} jne      _jmp_addr_0x007c4b6e                          // 0x007c4b52    751a
                         {disp8} mov      ecx, dword ptr [ebx + 0x28]                   // 0x007c4b54    8b4b28
                         push             edi                                           // 0x007c4b57    57
                         push             ecx                                           // 0x007c4b58    51
                         {disp8} mov      dword ptr [ebx + 0x18], 0x00c2d330            // 0x007c4b59    c7431830d3c200
                         call             dword ptr [ebx + 0x24]                        // 0x007c4b60    ff5324
                         add              esp, 0x08                                     // 0x007c4b63    83c408
                         mov.s            eax, esi                                      // 0x007c4b66    8bc6
                         pop              edi                                           // 0x007c4b68    5f
                         pop              esi                                           // 0x007c4b69    5e
                         pop              ebp                                           // 0x007c4b6a    5d
                         pop              ebx                                           // 0x007c4b6b    5b
                         pop              ecx                                           // 0x007c4b6c    59
                         ret                                                            // 0x007c4b6d    c3
_jmp_addr_0x007c4b6e:    cmp              esi, -0x05                                    // 0x007c4b6e    83fefb
                         {disp8} jne      _jmp_addr_0x007c4b92                          // 0x007c4b71    751f
                         {disp8} mov      ecx, dword ptr [ebx + 0x28]                   // 0x007c4b73    8b4b28
                         push             edi                                           // 0x007c4b76    57
                         push             ecx                                           // 0x007c4b77    51
                         {disp8} mov      dword ptr [ebx + 0x18], 0x00c2d314            // 0x007c4b78    c7431814d3c200
                         mov              esi, 0xfffffffd                               // 0x007c4b7f    befdffffff
                         call             dword ptr [ebx + 0x24]                        // 0x007c4b84    ff5324
                         add              esp, 0x08                                     // 0x007c4b87    83c408
                         mov.s            eax, esi                                      // 0x007c4b8a    8bc6
                         pop              edi                                           // 0x007c4b8c    5f
                         pop              esi                                           // 0x007c4b8d    5e
                         pop              ebp                                           // 0x007c4b8e    5d
                         pop              ebx                                           // 0x007c4b8f    5b
                         pop              ecx                                           // 0x007c4b90    59
                         ret                                                            // 0x007c4b91    c3
_jmp_addr_0x007c4b92:    cmp              esi, -0x04                                    // 0x007c4b92    83fefc
                         {disp8} je       _jmp_addr_0x007c4ba3                          // 0x007c4b95    740c
_jmp_addr_0x007c4b97:    {disp8} mov      dword ptr [ebx + 0x18], 0x00c2d2f0            // 0x007c4b97    c74318f0d2c200
                         mov              esi, 0xfffffffd                               // 0x007c4b9e    befdffffff
_jmp_addr_0x007c4ba3:    {disp8} mov      ecx, dword ptr [ebx + 0x28]                   // 0x007c4ba3    8b4b28
                         push             edi                                           // 0x007c4ba6    57
                         push             ecx                                           // 0x007c4ba7    51
                         call             dword ptr [ebx + 0x24]                        // 0x007c4ba8    ff5324
                         add              esp, 0x08                                     // 0x007c4bab    83c408
                         mov.s            eax, esi                                      // 0x007c4bae    8bc6
                         pop              edi                                           // 0x007c4bb0    5f
                         pop              esi                                           // 0x007c4bb1    5e
                         pop              ebp                                           // 0x007c4bb2    5d
                         pop              ebx                                           // 0x007c4bb3    5b
                         pop              ecx                                           // 0x007c4bb4    59
                         ret                                                            // 0x007c4bb5    c3
_jmp_addr_0x007c4bb6:    cmp              esi, -0x03                                    // 0x007c4bb6    83fefd
                         {disp8} jne      _jmp_addr_0x007c4bd5                          // 0x007c4bb9    751a
                         {disp8} mov      edx, dword ptr [ebx + 0x28]                   // 0x007c4bbb    8b5328
                         push             edi                                           // 0x007c4bbe    57
                         push             edx                                           // 0x007c4bbf    52
                         {disp8} mov      dword ptr [ebx + 0x18], 0x00c2d2cc            // 0x007c4bc0    c74318ccd2c200
                         call             dword ptr [ebx + 0x24]                        // 0x007c4bc7    ff5324
                         add              esp, 0x08                                     // 0x007c4bca    83c408
                         mov.s            eax, esi                                      // 0x007c4bcd    8bc6
                         pop              edi                                           // 0x007c4bcf    5f
                         pop              esi                                           // 0x007c4bd0    5e
                         pop              ebp                                           // 0x007c4bd1    5d
                         pop              ebx                                           // 0x007c4bd2    5b
                         pop              ecx                                           // 0x007c4bd3    59
                         ret                                                            // 0x007c4bd4    c3
_jmp_addr_0x007c4bd5:    cmp              esi, -0x04                                    // 0x007c4bd5    83fefc
                         {disp8} je       _jmp_addr_0x007c4be6                          // 0x007c4bd8    740c
_jmp_addr_0x007c4bda:    {disp8} mov      dword ptr [ebx + 0x18], 0x00c2d2ac            // 0x007c4bda    c74318acd2c200
                         mov              esi, 0xfffffffd                               // 0x007c4be1    befdffffff
_jmp_addr_0x007c4be6:    {disp8} mov      edx, dword ptr [ebx + 0x28]                   // 0x007c4be6    8b5328
                         push             edi                                           // 0x007c4be9    57
                         push             edx                                           // 0x007c4bea    52
                         call             dword ptr [ebx + 0x24]                        // 0x007c4beb    ff5324
                         add              esp, 0x08                                     // 0x007c4bee    83c408
                         mov.s            eax, esi                                      // 0x007c4bf1    8bc6
                         pop              edi                                           // 0x007c4bf3    5f
                         pop              esi                                           // 0x007c4bf4    5e
                         pop              ebp                                           // 0x007c4bf5    5d
                         pop              ebx                                           // 0x007c4bf6    5b
                         pop              ecx                                           // 0x007c4bf7    59
                         ret                                                            // 0x007c4bf8    c3
                         nop                                                            // 0x007c4bf9    90
                         nop                                                            // 0x007c4bfa    90
                         nop                                                            // 0x007c4bfb    90
                         nop                                                            // 0x007c4bfc    90
                         nop                                                            // 0x007c4bfd    90
                         nop                                                            // 0x007c4bfe    90
                         nop                                                            // 0x007c4bff    90
_inflate_trees_fixed:    {disp8} mov      eax, dword ptr [esp + 0x04]                   // 0x007c4c00    8b442404
                         {disp32} mov     ecx, dword ptr [data_bytes + 0x266158]        // 0x007c4c04    8b0d58c1c200
                         {disp8} mov      edx, dword ptr [esp + 0x08]                   // 0x007c4c0a    8b542408
                         mov              dword ptr [eax], ecx                          // 0x007c4c0e    8908
                         {disp32} mov     eax, dword ptr [data_bytes + 0x26615c]        // 0x007c4c10    a15cc1c200
                         {disp8} mov      ecx, dword ptr [esp + 0x0c]                   // 0x007c4c15    8b4c240c
                         mov              dword ptr [edx], eax                          // 0x007c4c19    8902
                         {disp8} mov      edx, dword ptr [esp + 0x10]                   // 0x007c4c1b    8b542410
                         xor.s            eax, eax                                      // 0x007c4c1f    33c0
                         mov              dword ptr [ecx], 0x00c2c160                   // 0x007c4c21    c70160c1c200
                         mov              dword ptr [edx], 0x00c2d160                   // 0x007c4c27    c70260d1c200
                         ret                                                            // 0x007c4c2d    c3
                         nop                                                            // 0x007c4c2e    90
                         nop                                                            // 0x007c4c2f    90
