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
.globl _GameBlock_ARRAY_00d189d8
.globl _MagicInfoTable
.globl _Point2D_00d3ee60
.globl _Point2D_00d3ee68
.globl _Point2D_00d3ee70
.globl _CircleHugStateInfoT_00d3ee78
.globl _DAT_00d3eed0
.globl _DAT_00d3eed1
.globl _DAT_00d3eed4
.globl _DAT_00d3eedc
.globl _DAT_00d3eee4             
.globl _DAT_00d3eef4
.globl _ape_hair
.globl _MPFEConnectionStatus_00d40e20
.globl _CHAR_ARRAY_00d414d8
.globl _ARGS_NEWGAME
.globl _ARGS_MULTIPLAYER
.globl _ARGS_LAND
.globl _ARGS_SKIRMISH
.globl _ARGS_PREINTROVIDEO
.globl _ARGS_FORCEINETCONN
.globl _ARGS_NOINETCONN
.globl _ARGS_EDITOR
.globl _ARGS_CONVERT
.globl _ARGS_VERSION
.globl _ARGS_NOLOADMUSIC
.globl _ARGS_SETTINGS
.globl _PlayerProfile_00d4bd38
.globl _DAT_00d4f594
.globl _ReactionInfo_ARRAY_00d4f6b0
.globl _DAT_00d95c0c
.globl _script_dll
.globl _ARGS_SETTINGS_PATH
.globl _DAT_00d99380
.globl _PTR_00d99384
.globl _script_version
.globl _CHAR_ARRAY_00d99580
.globl _CHAR_ARRAY_00d99648
.globl _PTR_00d99724
.globl _GShowNeedsInfo_ARRAY_00d99738
.globl _GSpellIconInfo_00d9d3e8
.globl _GSpellSeedInfo_ARRAY_00d9d678
.globl _GTotemStatueInfo_ARRAY_00da1d18
.globl _GTownInfo_00da2780
.globl _GTownDesireInfo_ARRAY_00da2930
.globl _GTownDesireFunction_ARRAY_00da32c8
.globl _GTribeInfo_ARRAY_00da57a8
.globl _JustMapXZ_ARRAY_00da59fc
.globl _UINT_ARRAY_00da5a10
.globl _GVillagerInfo_ARRAY_00da6be8
.globl _PTR_00db9e28
.globl _GVillagerStateTableInfo_ARRAY_00db9e68
.globl _GWorshipSiteInfo_ARRAY_00dcbd30
.globl _DAT_00e06020
.globl _near_clipping
.globl _g_info_transform
.globl _DAT_00e83a20

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
                                           .space 0x4b00                                                           // [0x34ded8] 0x009c6000 + 0x34ded8 = 0x00d13ed8
_GameBlock_ARRAY_00d189d8:                 .space 0x5000                                                           // [0x3529d8] 0x009c6000 + 0x3529d8 = 0x00d189d8
                                           .space 0x1a338                                                          // [0x3579d8] 0x009c6000 + 0x3579d8 = 0x00d1d9d8
_MagicInfoTable:                           .space 0x2a * 0x58                                                      // [0x371d10] 0x009c6000 + 0x371d10 = 0x00d37d10
                                           .space 0x62e0                                                           // [0x372b80] 0x009c6000 + 0x372b80 = 0x00d38b80
 _Point2D_00d3ee60:                        .space 8                                                                // [0x378e60] 0x009c6000 + 0x378e60 = 0x00d3ee60
 _Point2D_00d3ee68:                        .space 8                                                                // [0x378e68] 0x009c6000 + 0x378e68 = 0x00d3ee68
 _Point2D_00d3ee70:                        .space 8                                                                // [0x378e70] 0x009c6000 + 0x378e70 = 0x00d3ee70
_CircleHugStateInfoT_00d3ee78:             .space 0x54                                                             // [0x378e78] 0x009c6000 + 0x378e78 = 0x00d3ee78
                                           .space 0x4                                                              // [0x378ecc] 0x009c6000 + 0x378ecc = 0x00d3eecc
_DAT_00d3eed0:                             .space 0x1                                                              // [0x378ed0] 0x009c6000 + 0x378ed0 = 0x00d3eed0
_DAT_00d3eed1:                             .space 0x1                                                              // [0x378ed1] 0x009c6000 + 0x378ed1 = 0x00d3eed1
                                           .space 0x2                                                              // [0x378ed2] 0x009c6000 + 0x378ed2 = 0x00d3eed2
_DAT_00d3eed4:                             .space 0x8                                                              // [0x378ed4] 0x009c6000 + 0x378ed4 = 0x00d3eed4
_DAT_00d3eedc:                             .space 0x8                                                              // [0x378edc] 0x009c6000 + 0x378edc = 0x00d3eedc
_DAT_00d3eee4:                             .space 0x8                                                              // [0x378ee4] 0x009c6000 + 0x378ee4 = 0x00d3eee4
                                           .space 0x8                                                              // [0x378eec] 0x009c6000 + 0x378eec = 0x00d3eeec
_DAT_00d3eef4:                             .space 0x8                                                              // [0x378ef4] 0x009c6000 + 0x378ef4 = 0x00d3eef4
                                           .space 0x108                                                            // [0x378efc] 0x009c6000 + 0x378efc = 0x00d3eefc
_ape_hair:                                 .space 0x4                                                              // [0x379004] 0x009c6000 + 0x379004 = 0x00d3f004
                                           .space 0x1e18                                                           // [0x379008] 0x009c6000 + 0x379008 = 0x00d3f008
_MPFEConnectionStatus_00d40e20:            .space 0x4                                                              // [0x37ae20] 0x009c6000 + 0x37ae20 = 0x00d40e20
                                           .space 0x6b4                                                            // [0x37ae24] 0x009c6000 + 0x37ae24 = 0x00d40e24
_CHAR_ARRAY_00d414d8:                      .space 0x80                                                             // [0x37b4d8] 0x009c6000 + 0x37b4d8 = 0x00d414d8
                                           .space 0x5560                                                           // [0x37b558] 0x009c6000 + 0x37b558 = 0x00d41558
                                           .space 0x1                                                              // [0x380ab8] 0x009c6000 + 0x380ab8 = 0x00d46ab8
_ARGS_NEWGAME:                             .space 0x1                                                              // [0x380ab9] 0x009c6000 + 0x380ab9 = 0x00d46ab9
_ARGS_MULTIPLAYER:                         .space 0x1                                                              // [0x380aba] 0x009c6000 + 0x380aba = 0x00d46aba
_ARGS_LAND:                                .space 0x1                                                              // [0x380abb] 0x009c6000 + 0x380abb = 0x00d46abb
_ARGS_SKIRMISH:                            .space 0x1                                                              // [0x380abc] 0x009c6000 + 0x380abc = 0x00d46abc
_ARGS_PREINTROVIDEO:                       .space 0x1                                                              // [0x380abd] 0x009c6000 + 0x380abd = 0x00d46abd
_ARGS_FORCEINETCONN:                       .space 0x1                                                              // [0x380abe] 0x009c6000 + 0x380abe = 0x00d46abe
_ARGS_NOINETCONN:                          .space 0x1                                                              // [0x380abf] 0x009c6000 + 0x380abf = 0x00d46abf
_ARGS_EDITOR:                              .space 0x1                                                              // [0x380ac0] 0x009c6000 + 0x380ac0 = 0x00d46ac0
_ARGS_CONVERT:                             .space 0x1                                                              // [0x380ac1] 0x009c6000 + 0x380ac1 = 0x00d46ac1
_ARGS_VERSION:                             .space 0x1                                                              // [0x380ac2] 0x009c6000 + 0x380ac2 = 0x00d46ac2
_ARGS_NOLOADMUSIC:                         .space 0x1                                                              // [0x380ac3] 0x009c6000 + 0x380ac3 = 0x00d46ac3
_ARGS_SETTINGS:                            .space 0x1                                                              // [0x380ac4] 0x009c6000 + 0x380ac4 = 0x00d46ac4
                                           .space 0x3                                                              // [0x380ac5] 0x009c6000 + 0x380ac5 = 0x00d46ac5
                                           .space 0x5270                                                           // [0x380ac8] 0x009c6000 + 0x380ac8 = 0x00d46ac8
_PlayerProfile_00d4bd38:                   .space 0x824                                                            // [0x385d38] 0x009c6000 + 0x385d38 = 0x00d4bd38
                                           .space 0x3038                                                           // [0x38655c] 0x009c6000 + 0x38655c = 0x00d4c55c
_DAT_00d4f594:                             .space 0x4                                                              // [0x389594] 0x009c6000 + 0x389594 = 0x00d4f594
                                           .space 0x118                                                            // [0x389598] 0x009c6000 + 0x389598 = 0x00d4f598
_ReactionInfo_ARRAY_00d4f6b0:              .space 0x29 * 0x64                                                      // [0x3896b0] 0x009c6000 + 0x3896b0 = 0x00d4f6b0
                                           .space 0x45558                                                          // [0x38a6b4] 0x009c6000 + 0x38a6b4 = 0x00d506b4
_DAT_00d95c0c:                             .space 0x4                                                              // [0x3cfc0c] 0x009c6000 + 0x3cfc0c = 0x00d95c0c
_script_dll:                               .space 0x4                                                              // [0x3cfc10] 0x009c6000 + 0x3cfc10 = 0x00d95c10
                                           .space 0x3668                                                           // [0x3cfc14] 0x009c6000 + 0x3cfc14 = 0x00d95c14
_ARGS_SETTINGS_PATH:                       .space 0x104                                                            // [0x3d327c] 0x009c6000 + 0x3d327c = 0x00d9927c
_DAT_00d99380:                             .space 0x4                                                              // [0x3d3380] 0x009c6000 + 0x3d3380 = 0x00d99380
_PTR_00d99384:                             .space 0x4                                                              // [0x3d3384] 0x009c6000 + 0x3d3384 = 0x00d99384
                                           .space 0x1f4                                                            // [0x3d3388] 0x009c6000 + 0x3d3388 = 0x00d99388
_script_version:                           .space 0x4                                                              // [0x3d357c] 0x009c6000 + 0x3d357c = 0x00d9957c
_CHAR_ARRAY_00d99580:                      .space 0xc8                                                             // [0x3d3580] 0x009c6000 + 0x3d3580 = 0x00d99580
_CHAR_ARRAY_00d99648:                      .space 0x80                                                             // [0x3d3648] 0x009c6000 + 0x3d3648 = 0x00d99648
                                           .space 0x5c                                                             // [0x3d36c8] 0x009c6000 + 0x3d36c8 = 0x00d996c8
_PTR_00d99724:                             .space 0xc                                                              // [0x3d3724] 0x009c6000 + 0x3d3724 = 0x00d99724
                                           .space 0x8                                                              // [0x3d3730] 0x009c6000 + 0x3d3730 = 0x00d99730
_GShowNeedsInfo_ARRAY_00d99738:            .space 4 * 0x114                                                        // [0x3d3738] 0x009c6000 + 0x3d3738 = 0x00d99738
                                           .space 0x3860                                                           // [0x3d3b88] 0x009c6000 + 0x3d3b88 = 0x00d99b88
_GSpellIconInfo_00d9d3e8:                  .space 0x12c                                                            // [0x3d73e8] 0x009c6000 + 0x3d73e8 = 0x00d9d3e8
                                           .space 0x164                                                            // [0x3d7514] 0x009c6000 + 0x3d7514 = 0x00d9d514
_GSpellSeedInfo_ARRAY_00d9d678:            .space 0x1e * 0x190                                                     // [0x3d7678] 0x009c6000 + 0x3d7678 = 0x00d9d678
                                           .space 0x17c0                                                           // [0x3da558] 0x009c6000 + 0x3da558 = 0x00da0558
_GTotemStatueInfo_ARRAY_00da1d18:          .space 9 * 0x124                                                        // [0x3dbd18] 0x009c6000 + 0x3dbd18 = 0x00da1d18
                                           .space 0x24                                                             // [0x3dc75c] 0x009c6000 + 0x3dc75c = 0x00da275c
_GTownInfo_00da2780:                       .space 0x18c                                                            // [0x3dc780] 0x009c6000 + 0x3dc780 = 0x00da2780
                                           .space 0x24                                                             // [0x3dc90c] 0x009c6000 + 0x3dc90c = 0x00da290c
_GTownDesireInfo_ARRAY_00da2930:           .space 0x11 * 0x90                                                      // [0x3dc930] 0x009c6000 + 0x3dc930 = 0x00da2930
                                           .space 0x8                                                              // [0x3dd2c0] 0x009c6000 + 0x3dd2c0 = 0x00da32c0
_GTownDesireFunction_ARRAY_00da32c8:       .space 0x11 * 0x68                                                      // [0x3dd2c8] 0x009c6000 + 0x3dd2c8 = 0x00da32c8
                                           .space 0x1df8                                                           // [0x3dd9b0] 0x009c6000 + 0x3dd9b0 = 0x00da39b0
_GTribeInfo_ARRAY_00da57a8:                .space 9 * 0x1c                                                         // [0x3df7a8] 0x009c6000 + 0x3df7a8 = 0x00da57a8
                                           .space 0x158                                                            // [0x3df8a4] 0x009c6000 + 0x3df8a4 = 0x00da58a4
_JustMapXZ_ARRAY_00da59fc:                 .space 0x10                                                             // [0x3df9fc] 0x009c6000 + 0x3df9fc = 0x00da59fc
                                           .space 0x4                                                              // [0x3dfa0c] 0x009c6000 + 0x3dfa0c = 0x00da5a0c
_UINT_ARRAY_00da5a10:                      .space 4 * 0x400                                                        // [0x3dfa10] 0x009c6000 + 0x3dfa10 = 0x00da5a10
                                           .space 0x1d8                                                            // [0x3e0a10] 0x009c6000 + 0x3e0a10 = 0x00da6a10
_GVillagerInfo_ARRAY_00da6be8:             .space 84 * 0x3a4                                                       // [0x3e0be8] 0x009c6000 + 0x3e0be8 = 0x00da6be8
                                           .space 0x70                                                             // [0x3f3db8] 0x009c6000 + 0x3f3db8 = 0x00db9db8
_PTR_00db9e28:                             .space 0x4                                                              // [0x3f3e28] 0x009c6000 + 0x3f3e28 = 0x00db9e28
                                           .space 0x3c                                                             // [0x3f3e2c] 0x009c6000 + 0x3f3e2c = 0x00db9e2c
_GVillagerStateTableInfo_ARRAY_00db9e68:   .space 0xff * 0x114                                                     // [0x3f3e68] 0x009c6000 + 0x3f3e68 = 0x00db9e68
                                           .space 0xbdc                                                            // [0x405154] 0x009c6000 + 0x405154 = 0x00dcb154
_GWorshipSiteInfo_ARRAY_00dcbd30:          .space 9 * 0x160                                                        // [0x405d30] 0x009c6000 + 0x405d30 = 0x00dcbd30
                                           .space 0x39690                                                          // [0x406990] 0x009c6000 + 0x406990 = 0x00dcc990
_DAT_00e06020:                             .space 0x4                                                              // [0x440020] 0x009c6000 + 0x440020 = 0x00e06020
                                           .space 0x7d9bc                                                          // [0x440024] 0x009c6000 + 0x440024 = 0x00e06024
_near_clipping:                            .space 4                                                                // [0x4bd9e0] 0x009c6000 + 0x4bd9e0 = 0x00e839e0
_g_info_transform:                         .space 0x3c                                                             // [0x4bd9e4] 0x009c6000 + 0x4bd9e4 = 0x00e839e4
_DAT_00e83a20:                             .space 0x4                                                              // [0x4bda20] 0x009c6000 + 0x4bda20 = 0x00e83a20
// End of runblack.exe ?

                                           .space 0x7ac                                                            // [0x4bda14] 0x009c6000 + 0x4bda14 = 0x00e83a14

// Start of libcmt.lib
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


                                           .space 0x128378                                                         // [0x4be508] 0x009c6000 + 0x4be508 = 0x00e84508

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
