.intel_syntax noprefix
.section .bss

.globl _SetupThing
.globl _UINT_00c58604
.globl _GCitadelHeartInfo_ARRAY_00c5e270
.globl _CreatureList
.globl _GDanceInfo_ARRAY_00cc4b80
.globl _GMagicEffectInfo_ARRAY_00cc6630
.globl _GFieldTypeInfo_00ccf070
.globl _CHAR_ARRAY_00cd035c
.globl _DAT_00cd0488
.globl _FrontEnd_00cd0620
.globl _UNICODE_00cd3a18
.globl _DAT_00cd3ae8
.globl _DAT_00cd3aec
.globl _global
.globl _ARRAY_00d0143c
.globl _game
.globl _GGameInfo_00d019f8

// Virtual (non-allocated at build time)
.set __except_list,                        0x00000000

_SetupThing:                               .space 0xb8                                                             // [0x286c80] 0x009c6000 + 0x286c80 = 0x00c4cc80
                                           .space 0xb8cc                                                           // [0x28a000] 0x009c6000 + 0x28a000 = 0x00c50000
_UINT_00c58604:                            .space 4                                                                // [0x292604] 0x009c6000 + 0x292604 = 0x00c58604
                                           .space 0x5c68                                                           // [0x292608] 0x009c6000 + 0x292608 = 0x00c58608
_GCitadelHeartInfo_ARRAY_00c5e270:         .space 1 * 0x158                                                        // [0x298270] 0x009c6000 + 0x298270 = 0x00c5e270
                                           .space 0x1930                                                           // [0x2983c8] 0x009c6000 + 0x2983c8 = 0x00c5e3c8
_CreatureList:                             .space 0x8                                                              // [0x299cf8] 0x009c6000 + 0x299cf8 = 0x00c5fcf8
                                           .space 0x64e80                                                          // [0x2ba000] 0x009c6000 + 0x2ba000 = 0x00c80000
_GDanceInfo_ARRAY_00cc4b80:                .space 25 * 0xb0                                                        // [0x2feb80] 0x009c6000 + 0x2feb80 = 0x00cc4b80
                                           .space 0x980                                                            // [0x2ffcb0] 0x009c6000 + 0x2ffcb0 = 0x00cc5cb0
_GMagicEffectInfo_ARRAY_00cc6630:          .space 66 * 0x11c                                                       // [0x300630] 0x009c6000 + 0x300630 = 0x00cc6630
                                           .space 0x4108                                                           // [0x304f68] 0x009c6000 + 0x304f68 = 0x00ccaf68
_GFieldTypeInfo_00ccf070:                  .space 6 * 0x154                                                        // [0x309070] 0x009c6000 + 0x309070 = 0x00ccf070
                                           .space 0xaf4                                                            // [0x309868] 0x009c6000 + 0x309868 = 0x00ccf868
_CHAR_ARRAY_00cd035c:                      .space 0x100                                                            // [0x30a35c] 0x009c6000 + 0x30a35c = 0x00cd035c
                                           .space 0x2c                                                             // [0x30a45c] 0x009c6000 + 0x30a45c = 0x00cd045c
_DAT_00cd0488:                             .space 0x4                                                              // [0x30a488] 0x009c6000 + 0x30a488 = 0x00cd0488
                                           .space 0x194                                                            // [0x30a48c] 0x009c6000 + 0x30a48c = 0x00cd048c
_FrontEnd_00cd0620:                        .space 0x500                                                            // [0x30a620] 0x009c6000 + 0x30a620 = 0x00cd0620
                                           .space 0x2ef8                                                           // [0x30ab20] 0x009c6000 + 0x30ab20 = 0x00cd0b20
_UNICODE_00cd3a18:                         .space 4                                                                // [0x30da18] 0x009c6000 + 0x30da18 = 0x00cd3a18
                                           .space 0xcc                                                             // [0x30da1c] 0x009c6000 + 0x30da1c = 0x00cd3a1c
_DAT_00cd3ae8:                             .space 4                                                                // [0x30dae8] 0x009c6000 + 0x30dae8 = 0x00cd3ae8
_DAT_00cd3aec:                             .space 4                                                                // [0x30daec] 0x009c6000 + 0x30daec = 0x00cd3aec
                                           .space 0x30                                                             // [0x30daf0] 0x009c6000 + 0x30daf0 = 0x00cd3af0
_global:                                   .space 0x2d500                                                          // [0x30db20] 0x009c6000 + 0x30db20 = 0x00cd3b20
                                           .space 0x41c                                                            // [0x33b020] 0x009c6000 + 0x33b020 = 0x00d01020
_ARRAY_00d0143c:                           .space 0x40                                                             // [0x33b43c] 0x009c6000 + 0x33b43c = 0x00d0143c
                                           .space 0x4e0                                                            // [0x33b47c] 0x009c6000 + 0x33b47c = 0x00d0147c
_game:                                     .space 4                                                                // [0x33b95c] 0x009c6000 + 0x33b95c = 0x00d0195c
                                           .space 0x98                                                             // [0x33b960] 0x009c6000 + 0x33b960 = 0x00d01960
_GGameInfo_00d019f8:                       .space 0x58                                                             // [0x33b9f8] 0x009c6000 + 0x33b9f8 = 0x00d019f8
                                           .space 0x7748                                                           // [0x33ba50] 0x009c6000 + 0x33ba50 = 0x00d01a50
