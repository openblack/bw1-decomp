.intel_syntax noprefix
.section .rdata

.macro VftableAndRTTI name
    .long ??_R4\name@@6B@
__vt__\name:
??_7\name@@6B@:
.endm

VftableAndRTTI length_error@std                                                                                    // [0xf6250] 0x008a9000 + 0xf6250 = 0x0099f250
.long 0x007af14c, 0x007af012, 0x007af12f                                                                           // [0xf6254] 0x008a9000 + 0xf6254 = 0x0099f254

.globl ??_C@_0BA@HHMB@string?5too?5long?$AA@
??_C@_0BA@HHMB@string?5too?5long?$AA@: .asciz "string too long"                                                    // [0xf6260] 0x008a9000 + 0xf6260 = 0x0099f260

VftableAndRTTI logic_error@std                                                                                     // [0xf6270] 0x008a9000 + 0xf6270 = 0x0099f270
.long 0x007af079, 0x007af012, 0x007af01f                                                                           // [0xf6274] 0x008a9000 + 0xf6274 = 0x0099f274

VftableAndRTTI out_of_range@std                                                                                    // [0xf6280] 0x008a9000 + 0xf6280 = 0x0099f280
.long 0x007af234, 0x007af012, 0x007af217                                                                           // [0xf6284] 0x008a9000 + 0xf6284 = 0x0099f284
.long 0x61766e69, 0x2064696c, 0x69727473, 0x7020676e                                                               // [0xf6290] 0x008a9000 + 0xf6290 = 0x0099f290
.long 0x7469736f, 0x006e6f69, 0x00000000, 0x00000000                                                               // [0xf62a0] 0x008a9000 + 0xf62a0 = 0x0099f2a0

VftableAndRTTI failure@ios_base@std                                                                                // [0xf62b0] 0x008a9000 + 0xf62b0 = 0x0099f2b0
.long 0x007af4ed, 0x007af3b3, 0x007af4d0                                                                           // [0xf62b4] 0x008a9000 + 0xf62b4 = 0x0099f2b4
.long 0x3a736f69, 0x666f653a, 0x20746962, 0x00746573                                                               // [0xf62c0] 0x008a9000 + 0xf62c0 = 0x0099f2c0
.long 0x3a736f69, 0x6961663a, 0x7469626c, 0x74657320                                                               // [0xf62d0] 0x008a9000 + 0xf62d0 = 0x0099f2d0
.long 0x00000000, 0x3a736f69, 0x6461623a, 0x20746962                                                               // [0xf62e0] 0x008a9000 + 0xf62e0 = 0x0099f2e0
.long 0x00746573                                                                                                   // [0xf62f0] 0x008a9000 + 0xf62f0 = 0x0099f2f0

VftableAndRTTI runtime_error@std                                                                                   // [0xf62f4] 0x008a9000 + 0xf62f4 = 0x0099f2f4
.long 0x007af41a, 0x007af3b3                                                                                       // [0xf62f8] 0x008a9000 + 0xf62f8 = 0x0099f2f8
.long 0x007af3c0, 0x61766e69, 0x2064696c, 0x3a736f69                                                               // [0xf6300] 0x008a9000 + 0xf6300 = 0x0099f300
.long 0x6f77693a, 0x702f6472, 0x64726f77, 0x646e6920                                                               // [0xf6310] 0x008a9000 + 0xf6310 = 0x0099f310
.long 0x00007865, 0x00000100                                                                                       // [0xf6320] 0x008a9000 + 0xf6320 = 0x0099f320

VftableAndRTTI _Locimp@locale@std                                                                                  // [0xf6328] 0x008a9000 + 0xf6328 = 0x0099f328
.long 0x007afc2f                                                                                                   // [0xf632c] 0x008a9000 + 0xf632c = 0x0099f32c
.long 0x20646162, 0x61636f6c, 0x6e20656c, 0x00656d61                                                               // [0xf6330] 0x008a9000 + 0xf6330 = 0x0099f330

.long 0x009baf18                                                                                                   // [0xf6340] 0x008a9000 + 0xf6340 = 0x0099f340
.long 0x007b2945                                                                                                   // [0xf6344] 0x008a9000 + 0xf6344 = 0x0099f344

.long 0x009baf68                                                                                                   // [0xf6348] 0x008a9000 + 0xf6348 = 0x0099f348
.long 0x007b290a                                                                                                   // [0xf634c] 0x008a9000 + 0xf634c = 0x0099f34c

VftableAndRTTI ?$basic_ios@GU?$char_traits@G@std@@@std                                                             // [0xf6350] 0x008a9000 + 0xf6350 = 0x0099f350
.long 0x007b2929, 0x00000000, 0x00000004                                                                           // [0xf6354] 0x008a9000 + 0xf6354 = 0x0099f354
.long 0x00000000, 0x00000008                                                                                       // [0xf6360] 0x008a9000 + 0xf6360 = 0x0099f360

VftableAndRTTI ?$basic_filebuf@GU?$char_traits@G@std@@@std                                                         // [0xf6368] 0x008a9000 + 0xf6368 = 0x0099f368
.long 0x007b2980                                                                                                   // [0xf636c] 0x008a9000 + 0xf636c = 0x0099f36c
.long 0x007b245a, 0x007b25a2, 0x007b225f, 0x007b2659                                                               // [0xf6370] 0x008a9000 + 0xf6370 = 0x0099f370
.long 0x007b2687, 0x007b2288, 0x007b230f, 0x007b27a5                                                               // [0xf6380] 0x008a9000 + 0xf6380 = 0x0099f380
.long 0x007b2814, 0x007b28c3, 0x007b28f1, 0x007b23e7                                                               // [0xf6390] 0x008a9000 + 0xf6390 = 0x0099f390

VftableAndRTTI ?$basic_streambuf@GU?$char_traits@G@std@@@std                                                       // [0xf63a0] 0x008a9000 + 0xf63a0 = 0x0099f3a0
.long 0x007b2964, 0x007b2251, 0x007b2258                                                                           // [0xf63a4] 0x008a9000 + 0xf63a4 = 0x0099f3a4
.long 0x007b225f, 0x007b2262, 0x007b2267, 0x007b2288                                                               // [0xf63b0] 0x008a9000 + 0xf63b0 = 0x0099f3b0
.long 0x007b230f, 0x007b2397, 0x007b23bb, 0x007b23df                                                               // [0xf63c0] 0x008a9000 + 0xf63c0 = 0x0099f3c0
.long 0x007b23e4, 0x007b23e7, 0x00000001, 0x00000002                                                               // [0xf63d0] 0x008a9000 + 0xf63d0 = 0x0099f3d0
.long 0x00000012, 0x0000000a, 0x00000021, 0x00000022                                                               // [0xf63e0] 0x008a9000 + 0xf63e0 = 0x0099f3e0
.long 0x00000032, 0x0000002a, 0x00000003, 0x00000013                                                               // [0xf63f0] 0x008a9000 + 0xf63f0 = 0x0099f3f0
.long 0x0000000b, 0x00000023, 0x00000033, 0x0000002b                                                               // [0xf6400] 0x008a9000 + 0xf6400 = 0x0099f400
.long 0x00000000, 0x00622b61, 0x00622b77, 0x00622b72                                                               // [0xf6410] 0x008a9000 + 0xf6410 = 0x0099f410
.long 0x00002b61, 0x00002b77, 0x00002b72, 0x00006261                                                               // [0xf6420] 0x008a9000 + 0xf6420 = 0x0099f420
.long 0x00000000, 0x20646162, 0x6f6c6c61, 0x69746163                                                               // [0xf6430] 0x008a9000 + 0xf6430 = 0x0099f430
.long 0x00006e6f                                                                                                   // [0xf6440] 0x008a9000 + 0xf6440 = 0x0099f440

VftableAndRTTI bad_alloc@std                                                                                       // [0xf6444] 0x008a9000 + 0xf6444 = 0x0099f444
.long 0x007b3337, 0x007c8c9b                                                                                       // [0xf6448] 0x008a9000 + 0xf6448 = 0x0099f448
.long 0x007b331a                                                                                                   // [0xf6450] 0x008a9000 + 0xf6450 = 0x0099f450

VftableAndRTTI ?$codecvt@GDH@std                                                                                   // [0xf6454] 0x008a9000 + 0xf6454 = 0x0099f454
.long 0x007b3a7e, 0x007b3a74                                                                                       // [0xf6458] 0x008a9000 + 0xf6458 = 0x0099f458
.long 0x007b3a77, 0x007b3a7b, 0x007b38d0, 0x007b3952                                                               // [0xf6460] 0x008a9000 + 0xf6460 = 0x0099f460
.long 0x007b3a25                                                                                                   // [0xf6470] 0x008a9000 + 0xf6470 = 0x0099f470

VftableAndRTTI ?$time_put@GV?$ostreambuf_iterator@GU?$char_traits@G@std@@@std@@@std                                // [0xf6474] 0x008a9000 + 0xf6474 = 0x0099f474
.long 0x007b53e6, 0x007b3c9e                                                                                       // [0xf6478] 0x008a9000 + 0xf6478 = 0x0099f478

VftableAndRTTI ?$time_get@GV?$istreambuf_iterator@GU?$char_traits@G@std@@@std@@@std                                // [0xf6480] 0x008a9000 + 0xf6480 = 0x0099f480
.long 0x007b558a, 0x007b50cf, 0x007b50d3                                                                           // [0xf6484] 0x008a9000 + 0xf6484 = 0x0099f484
.long 0x007b5197, 0x007b52c8, 0x007b5306, 0x007b5344                                                               // [0xf6490] 0x008a9000 + 0xf6490 = 0x0099f490

VftableAndRTTI ?$moneypunct@G$00@std                                                                               // [0xf64a0] 0x008a9000 + 0xf64a0 = 0x0099f4a0
.long 0x007b556e, 0x007b4fd1, 0x007b4fd6                                                                           // [0xf64a4] 0x008a9000 + 0xf64a4 = 0x0099f4a4
.long 0x007b4fdb, 0x007b5011, 0x007b5047, 0x007b507d                                                               // [0xf64b0] 0x008a9000 + 0xf64b0 = 0x0099f4b0
.long 0x007b50b3, 0x007b50b7, 0x007b50c3                                                                           // [0xf64c0] 0x008a9000 + 0xf64c0 = 0x0099f4c0

VftableAndRTTI ?$moneypunct@G$0A@@std                                                                              // [0xf64cc] 0x008a9000 + 0xf64cc = 0x0099f4cc
.long 0x007b5552, 0x007b4fd1, 0x007b4fd6, 0x007b4fdb                                                               // [0xf64d0] 0x008a9000 + 0xf64d0 = 0x0099f4d0
.long 0x007b5011, 0x007b5047, 0x007b507d, 0x007b50b3                                                               // [0xf64e0] 0x008a9000 + 0xf64e0 = 0x0099f4e0
.long 0x007b50b7, 0x007b50c3                                                                                       // [0xf64f0] 0x008a9000 + 0xf64f0 = 0x0099f4f0

VftableAndRTTI ?$money_put@GV?$ostreambuf_iterator@GU?$char_traits@G@std@@@std@@@std                               // [0xf64f8] 0x008a9000 + 0xf64f8 = 0x0099f4f8
.long 0x007b552f                                                                                                   // [0xf64fc] 0x008a9000 + 0xf64fc = 0x0099f4fc
.long 0x007b4e95, 0x007b4d61                                                                                       // [0xf6500] 0x008a9000 + 0xf6500 = 0x0099f500

VftableAndRTTI ?$money_get@GV?$istreambuf_iterator@GU?$char_traits@G@std@@@std@@@std                               // [0xf6508] 0x008a9000 + 0xf6508 = 0x0099f508
.long 0x007b550c                                                                                                   // [0xf650c] 0x008a9000 + 0xf650c = 0x0099f50c
.long 0x007b4cd7, 0x007b4ba2                                                                                       // [0xf6510] 0x008a9000 + 0xf6510 = 0x0099f510

VftableAndRTTI ?$messages@G@std                                                                                    // [0xf6518] 0x008a9000 + 0xf6518 = 0x0099f518
.long 0x007b54cd                                                                                                   // [0xf651c] 0x008a9000 + 0xf651c = 0x0099f51c
.long 0x007b4b29, 0x007b4b2e, 0x007b4b9f                                                                           // [0xf6520] 0x008a9000 + 0xf6520 = 0x0099f520

VftableAndRTTI ?$collate@G@std                                                                                     // [0xf652c] 0x008a9000 + 0xf652c = 0x0099f52c
.long 0x007b54aa, 0x007b49ed, 0x007b4a30, 0x007b4b07                                                               // [0xf6530] 0x008a9000 + 0xf6530 = 0x0099f530

VftableAndRTTI ?$numpunct@G@std                                                                                    // [0xf6540] 0x008a9000 + 0xf6540 = 0x0099f540
.long 0x007b5462, 0x007b4941, 0x007b4946                                                                           // [0xf6544] 0x008a9000 + 0xf6544 = 0x0099f544
.long 0x007b494b, 0x007b4981, 0x007b49b7                                                                           // [0xf6550] 0x008a9000 + 0xf6550 = 0x0099f550

VftableAndRTTI ?$num_put@GV?$ostreambuf_iterator@GU?$char_traits@G@std@@@std@@@std                                 // [0xf655c] 0x008a9000 + 0xf655c = 0x0099f55c
.long 0x007b543f, 0x007b486f, 0x007b47f1, 0x007b4773                                                               // [0xf6560] 0x008a9000 + 0xf6560 = 0x0099f560
.long 0x007b471b, 0x007b46c3, 0x007b4510                                                                           // [0xf6570] 0x008a9000 + 0xf6570 = 0x0099f570

VftableAndRTTI ?$num_get@GV?$istreambuf_iterator@GU?$char_traits@G@std@@@std@@@std                                 // [0xf657c] 0x008a9000 + 0xf657c = 0x0099f57c
.long 0x007b541c, 0x007b4412, 0x007b4368, 0x007b42be                                                               // [0xf6580] 0x008a9000 + 0xf6580 = 0x0099f580
.long 0x007b4214, 0x007b4166, 0x007b40b8, 0x007b3ff0                                                               // [0xf6590] 0x008a9000 + 0xf6590 = 0x0099f590
.long 0x007b3f24, 0x007b3d7a                                                                                       // [0xf65a0] 0x008a9000 + 0xf65a0 = 0x0099f5a0

VftableAndRTTI ?$ctype@G@std                                                                                       // [0xf65a8] 0x008a9000 + 0xf65a8 = 0x0099f5a8
.long 0x007b53aa                                                                                                   // [0xf65ac] 0x008a9000 + 0xf65ac = 0x0099f5ac
.long 0x007b3ad6, 0x007b3aaf, 0x007b3b15, 0x007b3b41                                                               // [0xf65b0] 0x008a9000 + 0xf65b0 = 0x0099f5b0
.long 0x007b3b9e, 0x007b3b6d, 0x007b3bfc, 0x007b3bcb                                                               // [0xf65c0] 0x008a9000 + 0xf65c0 = 0x0099f5c0
.long 0x007b3c38, 0x007b3c29, 0x007b3c72, 0x007b3c65                                                               // [0xf65d0] 0x008a9000 + 0xf65d0 = 0x0099f5d0
.long 0x00782521, 0x00000000, 0x4c302e25, 0x00000066                                                               // [0xf65e0] 0x008a9000 + 0xf65e0 = 0x0099f5e0
.long 0xd9d7bdbb, 0x3ddb7cdf, 0x72c74d82, 0x47334261                                                               // [0xf65f0] 0x008a9000 + 0xf65f0 = 0x0099f5f0

VftableAndRTTI ?$_Mpunct@G@std                                                                                     // [0xf6600] 0x008a9000 + 0xf6600 = 0x0099f600
.long 0x007b5602, 0x007b4fd1, 0x007b4fd6                                                                           // [0xf6604] 0x008a9000 + 0xf6604 = 0x0099f604
.long 0x007b4fdb, 0x007b5011, 0x007b5047, 0x007b507d                                                               // [0xf6610] 0x008a9000 + 0xf6610 = 0x0099f610
.long 0x007b50b3, 0x007b50b7, 0x007b50c3, 0x00736579                                                               // [0xf6620] 0x008a9000 + 0xf6620 = 0x0099f620
.long 0x00006f6e, 0x6e75533a, 0x6e75533a, 0x3a796164                                                               // [0xf6630] 0x008a9000 + 0xf6630 = 0x0099f630
.long 0x3a6e6f4d, 0x646e6f4d, 0x543a7961, 0x543a6575                                                               // [0xf6640] 0x008a9000 + 0xf6640 = 0x0099f640
.long 0x64736575, 0x573a7961, 0x573a6465, 0x656e6465                                                               // [0xf6650] 0x008a9000 + 0xf6650 = 0x0099f650
.long 0x79616473, 0x7568543a, 0x7568543a, 0x61647372                                                               // [0xf6660] 0x008a9000 + 0xf6660 = 0x0099f660
.long 0x72463a79, 0x72463a69, 0x79616469, 0x7461533a                                                               // [0xf6670] 0x008a9000 + 0xf6670 = 0x0099f670
.long 0x7461533a, 0x61647275, 0x00000079, 0x6e614a3a                                                               // [0xf6680] 0x008a9000 + 0xf6680 = 0x0099f680
.long 0x6e614a3a, 0x79726175, 0x6265463a, 0x6265463a                                                               // [0xf6690] 0x008a9000 + 0xf6690 = 0x0099f690
.long 0x72617572, 0x614d3a79, 0x614d3a72, 0x3a686372                                                               // [0xf66a0] 0x008a9000 + 0xf66a0 = 0x0099f6a0
.long 0x3a727041, 0x69727041, 0x614d3a6c, 0x614d3a79                                                               // [0xf66b0] 0x008a9000 + 0xf66b0 = 0x0099f6b0
.long 0x754a3a79, 0x754a3a6e, 0x4a3a656e, 0x4a3a6c75                                                               // [0xf66c0] 0x008a9000 + 0xf66c0 = 0x0099f6c0
.long 0x3a796c75, 0x3a677541, 0x75677541, 0x533a7473                                                               // [0xf66d0] 0x008a9000 + 0xf66d0 = 0x0099f6d0
.long 0x533a7065, 0x65747065, 0x7265626d, 0x74634f3a                                                               // [0xf66e0] 0x008a9000 + 0xf66e0 = 0x0099f6e0
.long 0x74634f3a, 0x7265626f, 0x766f4e3a, 0x766f4e3a                                                               // [0xf66f0] 0x008a9000 + 0xf66f0 = 0x0099f6f0
.long 0x65626d65, 0x65443a72, 0x65443a63, 0x626d6563                                                               // [0xf6700] 0x008a9000 + 0xf6700 = 0x0099f700
.long 0x00007265, 0x0000002d, 0x78762b24, 0x00000000                                                               // [0xf6710] 0x008a9000 + 0xf6710 = 0x0099f710
.long 0x7824762b, 0x7824762b, 0x782b2476, 0x78242b76                                                               // [0xf6720] 0x008a9000 + 0xf6720 = 0x0099f720
.long 0x782b2476, 0x7876242b, 0x7876242b, 0x782b7624                                                               // [0xf6730] 0x008a9000 + 0xf6730 = 0x0099f730
.long 0x7876242b, 0x78762b24, 0x2420762b, 0x2420762b                                                               // [0xf6740] 0x008a9000 + 0xf6740 = 0x0099f740
.long 0x2b242076, 0x24202b76, 0x2b242076, 0x7620242b                                                               // [0xf6750] 0x008a9000 + 0xf6750 = 0x0099f750
.long 0x7620242b, 0x2b762024, 0x7620242b, 0x762b2024                                                               // [0xf6760] 0x008a9000 + 0xf6760 = 0x0099f760
.long 0x00000000                                                                                                   // [0xf6770] 0x008a9000 + 0xf6770 = 0x0099f770

VftableAndRTTI ?$time_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std                                // [0xf6774] 0x008a9000 + 0xf6774 = 0x0099f774
.long 0x007ba128, 0x007b9f30                                                                                       // [0xf6778] 0x008a9000 + 0xf6778 = 0x0099f778

VftableAndRTTI ?$time_get@DV?$istreambuf_iterator@DU?$char_traits@D@std@@@std@@@std                                // [0xf6780] 0x008a9000 + 0xf6780 = 0x0099f780
.long 0x007ba0e9, 0x007b9c84, 0x007b9c88                                                                           // [0xf6784] 0x008a9000 + 0xf6784 = 0x0099f784
.long 0x007b9d39, 0x007b9e4e, 0x007b9e8c, 0x007b9eca                                                               // [0xf6790] 0x008a9000 + 0xf6790 = 0x0099f790

VftableAndRTTI ?$moneypunct@D$00@std                                                                               // [0xf67a0] 0x008a9000 + 0xf67a0 = 0x0099f7a0
.long 0x007ba0cd, 0x007b9b88, 0x007b9b8c                                                                           // [0xf67a4] 0x008a9000 + 0xf67a4 = 0x0099f7a4
.long 0x007b9b90, 0x007b9bc6, 0x007b9bfc, 0x007b9c32                                                               // [0xf67b0] 0x008a9000 + 0xf67b0 = 0x0099f7b0
.long 0x007b9c68, 0x007b9c6c, 0x007b9c78                                                                           // [0xf67c0] 0x008a9000 + 0xf67c0 = 0x0099f7c0

VftableAndRTTI ?$moneypunct@D$0A@@std                                                                              // [0xf67cc] 0x008a9000 + 0xf67cc = 0x0099f7cc
.long 0x007ba0b1, 0x007b9b88, 0x007b9b8c, 0x007b9b90                                                               // [0xf67d0] 0x008a9000 + 0xf67d0 = 0x0099f7d0
.long 0x007b9bc6, 0x007b9bfc, 0x007b9c32, 0x007b9c68                                                               // [0xf67e0] 0x008a9000 + 0xf67e0 = 0x0099f7e0
.long 0x007b9c6c, 0x007b9c78                                                                                       // [0xf67f0] 0x008a9000 + 0xf67f0 = 0x0099f7f0

VftableAndRTTI ?$money_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std                               // [0xf67f8] 0x008a9000 + 0xf67f8 = 0x0099f7f8
.long 0x007ba08e                                                                                                   // [0xf67fc] 0x008a9000 + 0xf67fc = 0x0099f7fc
.long 0x007b9a70, 0x007b9946                                                                                       // [0xf6800] 0x008a9000 + 0xf6800 = 0x0099f800

VftableAndRTTI ?$money_get@DV?$istreambuf_iterator@DU?$char_traits@D@std@@@std@@@std                               // [0xf6808] 0x008a9000 + 0xf6808 = 0x0099f808
.long 0x007ba06b                                                                                                   // [0xf680c] 0x008a9000 + 0xf680c = 0x0099f80c
.long 0x007b98bc, 0x007b978e                                                                                       // [0xf6810] 0x008a9000 + 0xf6810 = 0x0099f810

VftableAndRTTI ?$messages@D@std                                                                                    // [0xf6818] 0x008a9000 + 0xf6818 = 0x0099f818
.long 0x007ba02c                                                                                                   // [0xf681c] 0x008a9000 + 0xf681c = 0x0099f81c
.long 0x007b9715, 0x007b971a, 0x007b978b                                                                           // [0xf6820] 0x008a9000 + 0xf6820 = 0x0099f820

VftableAndRTTI ?$collate@D@std                                                                                     // [0xf682c] 0x008a9000 + 0xf682c = 0x0099f82c
.long 0x007ba009, 0x007b95e7, 0x007b9625, 0x007b96f4                                                               // [0xf6830] 0x008a9000 + 0xf6830 = 0x0099f830

VftableAndRTTI ?$_Mpunct@D@std                                                                                     // [0xf6840] 0x008a9000 + 0xf6840 = 0x0099f840
.long 0x007ba197, 0x007b9b88, 0x007b9b8c                                                                           // [0xf6844] 0x008a9000 + 0xf6844 = 0x0099f844
.long 0x007b9b90, 0x007b9bc6, 0x007b9bfc, 0x007b9c32                                                               // [0xf6850] 0x008a9000 + 0xf6850 = 0x0099f850
.long 0x007b9c68, 0x007b9c6c, 0x007b9c78                                                                           // [0xf6860] 0x008a9000 + 0xf6860 = 0x0099f860
.long ___dt__8LHOSFileFb
.long _Open__8LHOSFileFPc12LH_FILE_MODE
.long 0x00000000                                                                                                   // [0xf6874] 0x008a9000 + 0xf6874 = 0x0099f874
