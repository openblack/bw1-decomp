.intel_syntax noprefix
.section .bss

.globl ___onexitend
.globl ___setlc_active
.globl __wpgmptr
.globl ___lc_collate_cp
.globl __winminor
.globl ___unguarded_readlc_active
.globl ___lconv_static_null
.globl __bufin
.globl __nstream
.globl ___lc_id
.globl ___winitenv
.globl __environ
.globl ___argc
.globl _?cacheid@?1??_expandlocale@@9@9
.globl __acmdln
.globl ___wargv
.globl __aenvptr
.globl __mbcasemap
.globl ___lc_codepage
.globl __winmajor
.globl __nhandle
.globl __cflush
.globl __winver
.globl ___lc_handle
.globl ___pioinfo
.globl __except_list
.globl __osver
.globl ___argv
.globl __C_Exit_Done
.globl __wenvptr
.globl ___initenv
.globl _start_tics
.globl __C_Termination_Done
.globl ___mbcodepage
.globl _?cachecp@?1??_expandlocale@@9@9
.globl ___onexitbegin
.globl __wenviron
.globl __mbctype
.globl __exitflag
.globl ___mblcid
.globl ___piob
.globl __umaskval
.globl __pgmptr
.globl ___error_mode
.globl _DAT_00c4cc68
.globl _sigcritsect
.globl _ltlcritsect
.globl _hlcritsect
.globl _xlcritsect
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
.globl _VillagerStateTable
.globl _AnimalStateTable

// Virtual (non-allocated at build time)
.set __except_list,                        0x00000000

_DAT_00c4cc68:                             .space 4                                                                // [0x286c68] 0x009c6000 + 0x286c68 = 0x00c4cc68
                                           .space 0x14
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
_VillagerStateTable:                       .space 0x8f70                                                           // [0x343198] 0x009c6000 + 0x343198 = 0x00d09198
_AnimalStateTable:                         .space 0x1dd0                                                           // [0x34c108] 0x009c6000 + 0x34c108 = 0x00d12108
                                           .space 0x1702f8                                                         // [0x34ded8] 0x009c6000 + 0x34ded8 = 0x00d13ed8

___lconv_static_null:                      .space 4                                                                // [0x4be1d0] 0x009c6000 + 0x4be1d0 = 0x00e841d0
__umaskval:                                .space 4                                                                // [0x4be1d4] 0x009c6000 + 0x4be1d4 = 0x00e841d4
__osver:                                   .space 4                                                                // [0x4be1d8] 0x009c6000 + 0x4be1d8 = 0x00e841d8
__winver:                                  .space 4                                                                // [0x4be1dc] 0x009c6000 + 0x4be1dc = 0x00e841dc
__winmajor:                                .space 4                                                                // [0x4be1e0] 0x009c6000 + 0x4be1e0 = 0x00e841e0
__winminor:                                .space 4                                                                // [0x4be1e4] 0x009c6000 + 0x4be1e4 = 0x00e841e4
___argc:                                   .space 4                                                                // [0x4be1e8] 0x009c6000 + 0x4be1e8 = 0x00e841e8
___argv:                                   .space 4                                                                // [0x4be1ec] 0x009c6000 + 0x4be1ec = 0x00e841ec
___wargv:                                  .space 4                                                                // [0x4be1f0] 0x009c6000 + 0x4be1f0 = 0x00e841f0
__environ:                                 .space 4                                                                // [0x4be1f4] 0x009c6000 + 0x4be1f4 = 0x00e841f4
___initenv:                                .space 4                                                                // [0x4be1f8] 0x009c6000 + 0x4be1f8 = 0x00e841f8
__wenviron:                                .space 4                                                                // [0x4be1fc] 0x009c6000 + 0x4be1fc = 0x00e841fc
___winitenv:                               .space 4                                                                // [0x4be200] 0x009c6000 + 0x4be200 = 0x00e84200
__pgmptr:                                  .space 4                                                                // [0x4be204] 0x009c6000 + 0x4be204 = 0x00e84204
__wpgmptr:                                 .space 4                                                                // [0x4be208] 0x009c6000 + 0x4be208 = 0x00e84208
__exitflag:                                .space 4                                                                // [0x4be20c] 0x009c6000 + 0x4be20c = 0x00e8420c
__C_Termination_Done:                      .space 4                                                                // [0x4be210] 0x009c6000 + 0x4be210 = 0x00e84210
__C_Exit_Done:                             .space 4                                                                // [0x4be214] 0x009c6000 + 0x4be214 = 0x00e84214
__aenvptr:                                 .space 4                                                                // [0x4be218] 0x009c6000 + 0x4be218 = 0x00e84218
__wenvptr:                                 .space 4                                                                // [0x4be21c] 0x009c6000 + 0x4be21c = 0x00e8421c
___error_mode:                             .space 4                                                                // [0x4be220] 0x009c6000 + 0x4be220 = 0x00e84220
_?cacheid@?1??_expandlocale@@9@9:          .space 4                                                                // [0x4be224] 0x009c6000 + 0x4be224 = 0x00e84224
                                           .space 4
_?cachecp@?1??_expandlocale@@9@9:          .space 4                                                                // [0x4be22c] 0x009c6000 + 0x4be22c = 0x00e8422c
__cflush:                                  .space 4                     // _file.obj: 00000000 b                   // [0x4be230] 0x009c6000 + 0x4be230 = 0x00e84230
                                           .space 0x4
_sigcritsect:                              .space 0x18                  // mlock.obj: 00000000 B                   // [0x4be238] 0x009c6000 + 0x4be238 = 0x00e84238
_ltlcritsect:                              .space 0x18                  // mlock.obj: 00000018 B                   // [0x4be250] 0x009c6000 + 0x4be268 = 0x00e84250
_hlcritsect:                               .space 0x18                  // mlock.obj: 00000030 B                   // [0x4be268] 0x009c6000 + 0x4be268 = 0x00e84268
_xlcritsect:                               .space 0x18                  // mlock.obj: 00000048 B                   // [0x4be280] 0x009c6000 + 0x4be280 = 0x00e84280
___lc_handle:                              .space 4                                                                // [0x4be298] 0x009c6000 + 0x4be298 = 0x00e84298
                                           .space 4                                                                // [0x4be29c] 0x009c6000 + 0x4be29c = 0x00e8429c
___crtLCMapStringA:                        .space 4                                                                // [0x4be2a0] 0x009c6000 + 0x4be2a0 = 0x00e842a0
                                           .space 0xc
___lc_codepage:                            .space 4                                                                // [0x4be2b0] 0x009c6000 + 0x4be2b0 = 0x00e842b0
___lc_collate_cp:                          .space 4                                                                // [0x4be2b4] 0x009c6000 + 0x4be2b4 = 0x00e842b4
                                           .space 0x24c
___lc_id:                                  .space 4                                                                // [0x4be504] 0x009c6000 + 0x4be504 = 0x00e84504
                                           .space 0x128378
_start_tics:                               .space 8                                                                // [0x5e6880] 0x009c6000 + 0x5e6880 = 0x00fac880
                                           .space 0xd8
___pioinfo:                                .space 0x100                                                            // [0x5e6960] 0x009c6000 + 0x5e6960 = 0x00fac960
__nhandle:                                 .space 4                                                                // [0x5e6a60] 0x009c6000 + 0x5e6a60 = 0x00faca60
___mbcodepage:                             .space 4                                                                // [0x5e6a64] 0x009c6000 + 0x5e6a64 = 0x00faca64
                                           .space 0x18
__mbcasemap:                               .space 0x100                                                            // [0x5e6a80] 0x009c6000 + 0x5e6a80 = 0x00faca80
__mbctype:                                 .space 4                                                                // [0x5e6b80] 0x009c6000 + 0x5e6b80 = 0x00facb80
                                           .space 0x100
___mblcid:                                 .space 4                                                                // [0x5e6c84] 0x009c6000 + 0x5e6c84 = 0x00facc84
                                           .space 0x30
___piob:                                   .space 4                     // _file.obj: 00000004 C ___piob           // [0x5e6cb8] 0x009c6000 + 0x5e6cb8 = 0x00faccb8
                                           .space 4
__bufin:                                   .space 0x1000                // _file.obj: 00001000 C __bufin           // [0x5e6cc0] 0x009c6000 + 0x5e6cc0 = 0x00faccc0
__nstream:                                 .space 4                     // _file.obj: 00000004 C __nstream         // [0x5e7cc0] 0x009c6000 + 0x5e7cc0 = 0x00fadcc0
___setlc_active:                           .space 4                                                                // [0x5e7cc4] 0x009c6000 + 0x5e7cc4 = 0x00fadcc4
___unguarded_readlc_active:                .space 4                                                                // [0x5e7cc8] 0x009c6000 + 0x5e7cc8 = 0x00fadcc8
__acmdln:                                  .space 4                                                                // [0x5e7ccc] 0x009c6000 + 0x5e7ccc = 0x00fadccc
                                           .space 0x8
___onexitend:                              .space 4                                                                // [0x5e7cd8] 0x009c6000 + 0x5e7cd8 = 0x00fadcd8
___onexitbegin:                            .space 4                                                                // [0x5e7cdc] 0x009c6000 + 0x5e7cdc = 0x00fadcdc
