.intel_syntax noprefix
.align 16
.section .rdata$r,"dr"

.macro _RTTIBaseClassDescriptor name num_base_classes type
    .global ??_R1A@?0A@A@\name@@8
_RTTIBaseClassDescriptor__\name:
??_R1A@?0A@A@\name@@8:
    .long ??_R0?A\type\name@@@8
    .long \num_base_classes
    .long 0x00000000
    .long 0xFFFFFFFF
    .long 0x00000000
    .long 0x00000000
.endm

.macro RTTIBaseClassDescriptor name num_base_classes
    _RTTIBaseClassDescriptor \name \num_base_classes V
.endm

.macro RTTIBaseClassDescriptorStruct name num_base_classes
    _RTTIBaseClassDescriptor \name \num_base_classes U
.endm

.macro RTTIBaseClassArray name
    .global ??_R2\name@@8
??_R2\name@@8:
    .long ??_R1A@?0A@A@\name@@8
.endm

.macro _RTTIClassHierarchyDescriptorAttr name num_base_classes attr
    .global ??_R3\name@@8
??_R3\name@@8:
    .long 0                  // signature
    .long \attr              // attributes
    .long \num_base_classes  // numBaseClasses
    .long ??_R2\name@@8      // pBaseClassArray
.endm

.macro RTTIClassHierarchyDescriptor name num_base_classes
    _RTTIClassHierarchyDescriptorAttr \name \num_base_classes 0
.endm

.macro RTTIClassHierarchyDescriptorMultiInheritance name num_base_classes
    _RTTIClassHierarchyDescriptorAttr \name \num_base_classes 1
.endm

.macro RTTIClassHierarchyDescriptorMultiInheritanceVirtual name num_base_classes
    _RTTIClassHierarchyDescriptorAttr \name \num_base_classes 3
.endm

.macro _RTTICompleteObjectLocator name type offset
    .long 0                  // signature
    .long \offset            // offset
    .long 0                  // cdOffset
    .long ??_R0?A\type\name@@@8  // pTypeDescriptor
    .long ??_R3\name@@8      // pClassDescriptor
.endm

.macro RTTICompleteObjectLocator name
    .global ??_R4\name@@6B@
??_R4\name@@6B@:
    _RTTICompleteObjectLocator \name V 0
.endm

.macro RTTICompleteObjectLocatorStruct name
    .global ??_R4\name@@6B@
??_R4\name@@6B@:
    _RTTICompleteObjectLocator \name U 0
.endm

RTTIBaseClassDescriptor logic_error@std 1                                                                          // [0x111ce8] 0x008a9000 + 0x111ce8 = 0x009bace8
RTTIBaseClassDescriptor length_error@std 2                                                                         // [0x111d00] 0x008a9000 + 0x111d00 = 0x009bad00
RTTIBaseClassArray length_error@std                                                                                // [0x111d18] 0x008a9000 + 0x111d18 = 0x009bad18
.long ??_R1A@?0A@A@logic_error@std@@8
.long ??_R1A@?0A@A@exception@@8
.long 0x00000000

RTTIClassHierarchyDescriptor length_error@std 3                                                                    // [0x111d28] 0x008a9000 + 0x111d28 = 0x009bad28
RTTICompleteObjectLocator length_error@std                                                                         // [0x111d38] 0x008a9000 + 0x111d38 = 0x009bad38
.long 0x00000000                                                                                                   // [0x111d4c] 0x008a9000 + 0x111d4c = 0x009bad4c
RTTIBaseClassArray logic_error@std                                                                                 // [0x111d50] 0x008a9000 + 0x111d50 = 0x009bad50
.long ??_R1A@?0A@A@exception@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x111d5c] 0x008a9000 + 0x111d5c = 0x009bad5c
RTTIClassHierarchyDescriptor logic_error@std 2                                                                     // [0x111d60] 0x008a9000 + 0x111d60 = 0x009bad60
RTTICompleteObjectLocator logic_error@std                                                                          // [0x111d70] 0x008a9000 + 0x111d70 = 0x009bad70
.long 0x00000000                                                                                                   // [0x111d84] 0x008a9000 + 0x111d84 = 0x009bad84
RTTIBaseClassDescriptor out_of_range@std 2                                                                         // [0x111d88] 0x008a9000 + 0x111d88 = 0x009bad88
RTTIBaseClassArray out_of_range@std                                                                                // [0x111da0] 0x008a9000 + 0x111da0 = 0x009bada0
.long ??_R1A@?0A@A@logic_error@std@@8
.long ??_R1A@?0A@A@exception@@8
.long 0x00000000

RTTIClassHierarchyDescriptor out_of_range@std 3                                                                    // [0x111db0] 0x008a9000 + 0x111db0 = 0x009badb0
RTTICompleteObjectLocator out_of_range@std                                                                         // [0x111dc0] 0x008a9000 + 0x111dc0 = 0x009badc0
.long 0x00000000                                                                                                   // [0x111dd4] 0x008a9000 + 0x111dd4 = 0x009badd4
RTTIBaseClassDescriptor runtime_error@std 1                                                                        // [0x111dd8] 0x008a9000 + 0x111dd8 = 0x009badd8
RTTIBaseClassDescriptor failure@ios_base@std 2                                                                     // [0x111df0] 0x008a9000 + 0x111df0 = 0x009badf0
RTTIBaseClassArray failure@ios_base@std                                                                            // [0x111e08] 0x008a9000 + 0x111e08 = 0x009bae08
.long ??_R1A@?0A@A@runtime_error@std@@8
.long ??_R1A@?0A@A@exception@@8
.long 0x00000000

RTTIClassHierarchyDescriptor failure@ios_base@std 3                                                                // [0x111e18] 0x008a9000 + 0x111e18 = 0x009bae18
RTTICompleteObjectLocator failure@ios_base@std                                                                     // [0x111e28] 0x008a9000 + 0x111e28 = 0x009bae28
.long 0x00000000                                                                                                   // [0x111e3c] 0x008a9000 + 0x111e3c = 0x009bae3c
RTTIBaseClassArray runtime_error@std                                                                               // [0x111e40] 0x008a9000 + 0x111e40 = 0x009bae40
.long ??_R1A@?0A@A@exception@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x111e4c] 0x008a9000 + 0x111e4c = 0x009bae4c
RTTIClassHierarchyDescriptor runtime_error@std 2                                                                   // [0x111e50] 0x008a9000 + 0x111e50 = 0x009bae50
RTTICompleteObjectLocator runtime_error@std                                                                        // [0x111e60] 0x008a9000 + 0x111e60 = 0x009bae60
.long 0x00000000                                                                                                   // [0x111e74] 0x008a9000 + 0x111e74 = 0x009bae74
RTTIBaseClassDescriptor _Locimp@locale@std 1                                                                       // [0x111e78] 0x008a9000 + 0x111e78 = 0x009bae78
RTTIBaseClassArray _Locimp@locale@std                                                                              // [0x111e90] 0x008a9000 + 0x111e90 = 0x009bae90
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x111e9c] 0x008a9000 + 0x111e9c = 0x009bae9c
RTTIClassHierarchyDescriptor _Locimp@locale@std 2                                                                  // [0x111ea0] 0x008a9000 + 0x111ea0 = 0x009baea0
RTTICompleteObjectLocator _Locimp@locale@std                                                                       // [0x111eb0] 0x008a9000 + 0x111eb0 = 0x009baeb0
.byte 0x00, 0x00, 0x00, 0x00, 0xc0, 0xb2, 0xc2, 0x00, 0x01, 0x00, 0x00, 0x00                                       // [0x111ec4] 0x008a9000 + 0x111ec4 = 0x009baec4
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00               // [0x111ed0] 0x008a9000 + 0x111ed0 = 0x009baed0
RTTIBaseClassDescriptor ?$basic_istream@GU?$char_traits@G@std@@@std 2                                              // [0x111ee0] 0x008a9000 + 0x111ee0 = 0x009baee0
RTTIBaseClassArray ?$basic_istream@GU?$char_traits@G@std@@@std                                                     // [0x111ef8] 0x008a9000 + 0x111ef8 = 0x009baef8
.long 0x009baec8
.long 0x009b0600
.long 0x00000000

RTTIClassHierarchyDescriptor ?$basic_istream@GU?$char_traits@G@std@@@std 3                                         // [0x111f08] 0x008a9000 + 0x111f08 = 0x009baf08
_RTTICompleteObjectLocator ?$basic_istream@GU?$char_traits@G@std@@@std V 0x8                                       // [0x111f18] 0x008a9000 + 0x111f18 = 0x009baf18
.long 0x00000000                                                                                                   // [0x111f2c] 0x008a9000 + 0x111f2c = 0x009baf2c
RTTIBaseClassDescriptor ?$basic_ostream@GU?$char_traits@G@std@@@std 2                                              // [0x111f30] 0x008a9000 + 0x111f30 = 0x009baf30
RTTIBaseClassArray ?$basic_ostream@GU?$char_traits@G@std@@@std                                                     // [0x111f48] 0x008a9000 + 0x111f48 = 0x009baf48
.long 0x009baec8
.long 0x009b0600
.long 0x00000000

RTTIClassHierarchyDescriptor ?$basic_ostream@GU?$char_traits@G@std@@@std 3                                         // [0x111f58] 0x008a9000 + 0x111f58 = 0x009baf58
_RTTICompleteObjectLocator ?$basic_ostream@GU?$char_traits@G@std@@@std V 4                                         // [0x111f68] 0x008a9000 + 0x111f68 = 0x009baf68
.long 0x00000000                                                                                                   // [0x111f7c] 0x008a9000 + 0x111f7c = 0x009baf7c
RTTIBaseClassDescriptor ?$basic_ios@GU?$char_traits@G@std@@@std 1                                                  // [0x111f80] 0x008a9000 + 0x111f80 = 0x009baf80
RTTIBaseClassArray ?$basic_ios@GU?$char_traits@G@std@@@std                                                         // [0x111f98] 0x008a9000 + 0x111f98 = 0x009baf98
.long ??_R1A@?0A@A@ios_base@std@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x111fa4] 0x008a9000 + 0x111fa4 = 0x009bafa4
RTTIClassHierarchyDescriptor ?$basic_ios@GU?$char_traits@G@std@@@std 2                                             // [0x111fa8] 0x008a9000 + 0x111fa8 = 0x009bafa8
RTTICompleteObjectLocator ?$basic_ios@GU?$char_traits@G@std@@@std                                                  // [0x111fb8] 0x008a9000 + 0x111fb8 = 0x009bafb8
.long 0x00000000                                                                                                   // [0x111fcc] 0x008a9000 + 0x111fcc = 0x009bafcc
RTTIBaseClassDescriptor ?$basic_filebuf@GU?$char_traits@G@std@@@std 1                                              // [0x111fd0] 0x008a9000 + 0x111fd0 = 0x009bafd0
RTTIBaseClassArray ?$basic_filebuf@GU?$char_traits@G@std@@@std                                                     // [0x111fe8] 0x008a9000 + 0x111fe8 = 0x009bafe8
.long ??_R1A@?0A@A@?$basic_streambuf@GU?$char_traits@G@std@@@std@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x111ff4] 0x008a9000 + 0x111ff4 = 0x009baff4
RTTIClassHierarchyDescriptor ?$basic_filebuf@GU?$char_traits@G@std@@@std 2                                         // [0x111ff8] 0x008a9000 + 0x111ff8 = 0x009baff8
RTTICompleteObjectLocator ?$basic_filebuf@GU?$char_traits@G@std@@@std                                              // [0x112008] 0x008a9000 + 0x112008 = 0x009bb008
.long 0x00000000                                                                                                   // [0x11201c] 0x008a9000 + 0x11201c = 0x009bb01c
RTTIBaseClassDescriptor ?$basic_streambuf@GU?$char_traits@G@std@@@std 0                                            // [0x112020] 0x008a9000 + 0x112020 = 0x009bb020
RTTIBaseClassArray ?$basic_streambuf@GU?$char_traits@G@std@@@std                                                   // [0x112038] 0x008a9000 + 0x112038 = 0x009bb038
.long 0x00000000

RTTIClassHierarchyDescriptor ?$basic_streambuf@GU?$char_traits@G@std@@@std 1                                       // [0x112040] 0x008a9000 + 0x112040 = 0x009bb040
RTTICompleteObjectLocator ?$basic_streambuf@GU?$char_traits@G@std@@@std                                            // [0x112050] 0x008a9000 + 0x112050 = 0x009bb050
.long 0x00000000                                                                                                   // [0x112064] 0x008a9000 + 0x112064 = 0x009bb064
RTTIBaseClassDescriptor bad_alloc@std 1                                                                            // [0x112068] 0x008a9000 + 0x112068 = 0x009bb068
RTTIBaseClassArray bad_alloc@std                                                                                   // [0x112080] 0x008a9000 + 0x112080 = 0x009bb080
.long ??_R1A@?0A@A@exception@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x11208c] 0x008a9000 + 0x11208c = 0x009bb08c
RTTIClassHierarchyDescriptor bad_alloc@std 2                                                                       // [0x112090] 0x008a9000 + 0x112090 = 0x009bb090
RTTICompleteObjectLocator bad_alloc@std                                                                            // [0x1120a0] 0x008a9000 + 0x1120a0 = 0x009bb0a0
.long 0x00000000                                                                                                   // [0x1120b4] 0x008a9000 + 0x1120b4 = 0x009bb0b4
RTTIBaseClassDescriptor ?$num_put@GV?$ostreambuf_iterator@GU?$char_traits@G@std@@@std@@@std 1                      // [0x1120b8] 0x008a9000 + 0x1120b8 = 0x009bb0b8
RTTIBaseClassArray ?$num_put@GV?$ostreambuf_iterator@GU?$char_traits@G@std@@@std@@@std                             // [0x1120d0] 0x008a9000 + 0x1120d0 = 0x009bb0d0
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1120dc] 0x008a9000 + 0x1120dc = 0x009bb0dc
RTTIClassHierarchyDescriptor ?$num_put@GV?$ostreambuf_iterator@GU?$char_traits@G@std@@@std@@@std 2                 // [0x1120e0] 0x008a9000 + 0x1120e0 = 0x009bb0e0
RTTICompleteObjectLocator ?$num_put@GV?$ostreambuf_iterator@GU?$char_traits@G@std@@@std@@@std                      // [0x1120f0] 0x008a9000 + 0x1120f0 = 0x009bb0f0
.long 0x00000000                                                                                                   // [0x112104] 0x008a9000 + 0x112104 = 0x009bb104
RTTIBaseClassDescriptor ?$num_get@GV?$istreambuf_iterator@GU?$char_traits@G@std@@@std@@@std 1                      // [0x112108] 0x008a9000 + 0x112108 = 0x009bb108
RTTIBaseClassArray ?$num_get@GV?$istreambuf_iterator@GU?$char_traits@G@std@@@std@@@std                             // [0x112120] 0x008a9000 + 0x112120 = 0x009bb120
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x11212c] 0x008a9000 + 0x11212c = 0x009bb12c
RTTIClassHierarchyDescriptor ?$num_get@GV?$istreambuf_iterator@GU?$char_traits@G@std@@@std@@@std 2                 // [0x112130] 0x008a9000 + 0x112130 = 0x009bb130
RTTICompleteObjectLocator ?$num_get@GV?$istreambuf_iterator@GU?$char_traits@G@std@@@std@@@std                      // [0x112140] 0x008a9000 + 0x112140 = 0x009bb140
.long 0x00000000                                                                                                   // [0x112154] 0x008a9000 + 0x112154 = 0x009bb154
RTTIBaseClassDescriptor ?$time_put@GV?$ostreambuf_iterator@GU?$char_traits@G@std@@@std@@@std 2                     // [0x112158] 0x008a9000 + 0x112158 = 0x009bb158
RTTIBaseClassArray ?$time_put@GV?$ostreambuf_iterator@GU?$char_traits@G@std@@@std@@@std                            // [0x112170] 0x008a9000 + 0x112170 = 0x009bb170
.long ??_R1A@?0A@A@time_base@std@@8
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$time_put@GV?$ostreambuf_iterator@GU?$char_traits@G@std@@@std@@@std 3                // [0x112180] 0x008a9000 + 0x112180 = 0x009bb180
RTTICompleteObjectLocator ?$time_put@GV?$ostreambuf_iterator@GU?$char_traits@G@std@@@std@@@std                     // [0x112190] 0x008a9000 + 0x112190 = 0x009bb190
.long 0x00000000                                                                                                   // [0x1121a4] 0x008a9000 + 0x1121a4 = 0x009bb1a4
RTTIBaseClassDescriptorStruct time_base@std 1                                                                      // [0x1121a8] 0x008a9000 + 0x1121a8 = 0x009bb1a8
RTTIBaseClassDescriptor ?$time_get@GV?$istreambuf_iterator@GU?$char_traits@G@std@@@std@@@std 2                     // [0x1121c0] 0x008a9000 + 0x1121c0 = 0x009bb1c0
RTTIBaseClassArray ?$time_get@GV?$istreambuf_iterator@GU?$char_traits@G@std@@@std@@@std                            // [0x1121d8] 0x008a9000 + 0x1121d8 = 0x009bb1d8
.long ??_R1A@?0A@A@time_base@std@@8
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$time_get@GV?$istreambuf_iterator@GU?$char_traits@G@std@@@std@@@std 3                // [0x1121e8] 0x008a9000 + 0x1121e8 = 0x009bb1e8
RTTICompleteObjectLocator ?$time_get@GV?$istreambuf_iterator@GU?$char_traits@G@std@@@std@@@std                     // [0x1121f8] 0x008a9000 + 0x1121f8 = 0x009bb1f8
.long 0x00000000                                                                                                   // [0x11220c] 0x008a9000 + 0x11220c = 0x009bb20c
RTTIBaseClassDescriptor ?$moneypunct@G$00@std 3                                                                    // [0x112210] 0x008a9000 + 0x112210 = 0x009bb210
RTTIBaseClassArray ?$moneypunct@G$00@std                                                                           // [0x112228] 0x008a9000 + 0x112228 = 0x009bb228
.long ??_R1A@?0A@A@?$_Mpunct@G@std@@8
.long ??_R1A@?0A@A@money_base@std@@8
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x11223c] 0x008a9000 + 0x11223c = 0x009bb23c
RTTIClassHierarchyDescriptor ?$moneypunct@G$00@std 4                                                               // [0x112240] 0x008a9000 + 0x112240 = 0x009bb240
RTTICompleteObjectLocator ?$moneypunct@G$00@std                                                                    // [0x112250] 0x008a9000 + 0x112250 = 0x009bb250
.long 0x00000000                                                                                                   // [0x112264] 0x008a9000 + 0x112264 = 0x009bb264
RTTIBaseClassDescriptorStruct money_base@std 1                                                                     // [0x112268] 0x008a9000 + 0x112268 = 0x009bb268
RTTIBaseClassDescriptor ?$_Mpunct@G@std 2                                                                          // [0x112280] 0x008a9000 + 0x112280 = 0x009bb280
RTTIBaseClassDescriptor ?$moneypunct@G$0A@@std 3                                                                   // [0x112298] 0x008a9000 + 0x112298 = 0x009bb298
RTTIBaseClassArray ?$moneypunct@G$0A@@std                                                                          // [0x1122b0] 0x008a9000 + 0x1122b0 = 0x009bb2b0
.long ??_R1A@?0A@A@?$_Mpunct@G@std@@8
.long ??_R1A@?0A@A@money_base@std@@8
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1122c4] 0x008a9000 + 0x1122c4 = 0x009bb2c4
RTTIClassHierarchyDescriptor ?$moneypunct@G$0A@@std 4                                                              // [0x1122c8] 0x008a9000 + 0x1122c8 = 0x009bb2c8
RTTICompleteObjectLocator ?$moneypunct@G$0A@@std                                                                   // [0x1122d8] 0x008a9000 + 0x1122d8 = 0x009bb2d8
.long 0x00000000                                                                                                   // [0x1122ec] 0x008a9000 + 0x1122ec = 0x009bb2ec
RTTIBaseClassDescriptor ?$money_put@GV?$ostreambuf_iterator@GU?$char_traits@G@std@@@std@@@std 1                    // [0x1122f0] 0x008a9000 + 0x1122f0 = 0x009bb2f0
RTTIBaseClassArray ?$money_put@GV?$ostreambuf_iterator@GU?$char_traits@G@std@@@std@@@std                           // [0x112308] 0x008a9000 + 0x112308 = 0x009bb308
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x112314] 0x008a9000 + 0x112314 = 0x009bb314
RTTIClassHierarchyDescriptor ?$money_put@GV?$ostreambuf_iterator@GU?$char_traits@G@std@@@std@@@std 2               // [0x112318] 0x008a9000 + 0x112318 = 0x009bb318
RTTICompleteObjectLocator ?$money_put@GV?$ostreambuf_iterator@GU?$char_traits@G@std@@@std@@@std                    // [0x112328] 0x008a9000 + 0x112328 = 0x009bb328
.long 0x00000000                                                                                                   // [0x11233c] 0x008a9000 + 0x11233c = 0x009bb33c
RTTIBaseClassDescriptor ?$money_get@GV?$istreambuf_iterator@GU?$char_traits@G@std@@@std@@@std 1                    // [0x112340] 0x008a9000 + 0x112340 = 0x009bb340
RTTIBaseClassArray ?$money_get@GV?$istreambuf_iterator@GU?$char_traits@G@std@@@std@@@std                           // [0x112358] 0x008a9000 + 0x112358 = 0x009bb358
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x112364] 0x008a9000 + 0x112364 = 0x009bb364
RTTIClassHierarchyDescriptor ?$money_get@GV?$istreambuf_iterator@GU?$char_traits@G@std@@@std@@@std 2               // [0x112368] 0x008a9000 + 0x112368 = 0x009bb368
RTTICompleteObjectLocator ?$money_get@GV?$istreambuf_iterator@GU?$char_traits@G@std@@@std@@@std                    // [0x112378] 0x008a9000 + 0x112378 = 0x009bb378
.long 0x00000000                                                                                                   // [0x11238c] 0x008a9000 + 0x11238c = 0x009bb38c
RTTIBaseClassDescriptor ?$ctype@G@std 2                                                                            // [0x112390] 0x008a9000 + 0x112390 = 0x009bb390
RTTIBaseClassArray ?$ctype@G@std                                                                                   // [0x1123a8] 0x008a9000 + 0x1123a8 = 0x009bb3a8
.long ??_R1A@?0A@A@ctype_base@std@@8
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$ctype@G@std 3                                                                       // [0x1123b8] 0x008a9000 + 0x1123b8 = 0x009bb3b8
RTTICompleteObjectLocator ?$ctype@G@std                                                                            // [0x1123c8] 0x008a9000 + 0x1123c8 = 0x009bb3c8
.long 0x00000000                                                                                                   // [0x1123dc] 0x008a9000 + 0x1123dc = 0x009bb3dc
RTTIBaseClassDescriptorStruct messages_base@std 1                                                                  // [0x1123e0] 0x008a9000 + 0x1123e0 = 0x009bb3e0
RTTIBaseClassDescriptor ?$messages@G@std 2                                                                         // [0x1123f8] 0x008a9000 + 0x1123f8 = 0x009bb3f8
RTTIBaseClassArray ?$messages@G@std                                                                                // [0x112410] 0x008a9000 + 0x112410 = 0x009bb410
.long ??_R1A@?0A@A@messages_base@std@@8
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$messages@G@std 3                                                                    // [0x112420] 0x008a9000 + 0x112420 = 0x009bb420
RTTICompleteObjectLocator ?$messages@G@std                                                                         // [0x112430] 0x008a9000 + 0x112430 = 0x009bb430
.long 0x00000000                                                                                                   // [0x112444] 0x008a9000 + 0x112444 = 0x009bb444
RTTIBaseClassDescriptor ?$collate@G@std 1                                                                          // [0x112448] 0x008a9000 + 0x112448 = 0x009bb448
RTTIBaseClassArray ?$collate@G@std                                                                                 // [0x112460] 0x008a9000 + 0x112460 = 0x009bb460
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x11246c] 0x008a9000 + 0x11246c = 0x009bb46c
RTTIClassHierarchyDescriptor ?$collate@G@std 2                                                                     // [0x112470] 0x008a9000 + 0x112470 = 0x009bb470
RTTICompleteObjectLocator ?$collate@G@std                                                                          // [0x112480] 0x008a9000 + 0x112480 = 0x009bb480
.long 0x00000000                                                                                                   // [0x112494] 0x008a9000 + 0x112494 = 0x009bb494
RTTIBaseClassDescriptor ?$numpunct@G@std 1                                                                         // [0x112498] 0x008a9000 + 0x112498 = 0x009bb498
RTTIBaseClassArray ?$numpunct@G@std                                                                                // [0x1124b0] 0x008a9000 + 0x1124b0 = 0x009bb4b0
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1124bc] 0x008a9000 + 0x1124bc = 0x009bb4bc
RTTIClassHierarchyDescriptor ?$numpunct@G@std 2                                                                    // [0x1124c0] 0x008a9000 + 0x1124c0 = 0x009bb4c0
RTTICompleteObjectLocator ?$numpunct@G@std                                                                         // [0x1124d0] 0x008a9000 + 0x1124d0 = 0x009bb4d0
.long 0x00000000                                                                                                   // [0x1124e4] 0x008a9000 + 0x1124e4 = 0x009bb4e4
RTTIBaseClassDescriptor ?$codecvt@GDH@std 2                                                                        // [0x1124e8] 0x008a9000 + 0x1124e8 = 0x009bb4e8
RTTIBaseClassArray ?$codecvt@GDH@std                                                                               // [0x112500] 0x008a9000 + 0x112500 = 0x009bb500
.long ??_R1A@?0A@A@codecvt_base@std@@8
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$codecvt@GDH@std 3                                                                   // [0x112510] 0x008a9000 + 0x112510 = 0x009bb510
RTTICompleteObjectLocator ?$codecvt@GDH@std                                                                        // [0x112520] 0x008a9000 + 0x112520 = 0x009bb520
.long 0x00000000                                                                                                   // [0x112534] 0x008a9000 + 0x112534 = 0x009bb534
RTTIBaseClassArray ?$_Mpunct@G@std                                                                                 // [0x112538] 0x008a9000 + 0x112538 = 0x009bb538
.long ??_R1A@?0A@A@money_base@std@@8
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$_Mpunct@G@std 3                                                                     // [0x112548] 0x008a9000 + 0x112548 = 0x009bb548
RTTICompleteObjectLocator ?$_Mpunct@G@std                                                                          // [0x112558] 0x008a9000 + 0x112558 = 0x009bb558
.long 0x00000000                                                                                                   // [0x11256c] 0x008a9000 + 0x11256c = 0x009bb56c
RTTIBaseClassDescriptor ?$time_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std 2                     // [0x112570] 0x008a9000 + 0x112570 = 0x009bb570
RTTIBaseClassArray ?$time_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std                            // [0x112588] 0x008a9000 + 0x112588 = 0x009bb588
.long ??_R1A@?0A@A@time_base@std@@8
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$time_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std 3                // [0x112598] 0x008a9000 + 0x112598 = 0x009bb598
RTTICompleteObjectLocator ?$time_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std                     // [0x1125a8] 0x008a9000 + 0x1125a8 = 0x009bb5a8
.long 0x00000000                                                                                                   // [0x1125bc] 0x008a9000 + 0x1125bc = 0x009bb5bc
RTTIBaseClassDescriptor ?$time_get@DV?$istreambuf_iterator@DU?$char_traits@D@std@@@std@@@std 2                     // [0x1125c0] 0x008a9000 + 0x1125c0 = 0x009bb5c0
RTTIBaseClassArray ?$time_get@DV?$istreambuf_iterator@DU?$char_traits@D@std@@@std@@@std                            // [0x1125d8] 0x008a9000 + 0x1125d8 = 0x009bb5d8
.long ??_R1A@?0A@A@time_base@std@@8
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$time_get@DV?$istreambuf_iterator@DU?$char_traits@D@std@@@std@@@std 3                // [0x1125e8] 0x008a9000 + 0x1125e8 = 0x009bb5e8
RTTICompleteObjectLocator ?$time_get@DV?$istreambuf_iterator@DU?$char_traits@D@std@@@std@@@std                     // [0x1125f8] 0x008a9000 + 0x1125f8 = 0x009bb5f8
.long 0x00000000                                                                                                   // [0x11260c] 0x008a9000 + 0x11260c = 0x009bb60c
RTTIBaseClassDescriptor ?$moneypunct@D$00@std 3                                                                    // [0x112610] 0x008a9000 + 0x112610 = 0x009bb610
RTTIBaseClassArray ?$moneypunct@D$00@std                                                                           // [0x112628] 0x008a9000 + 0x112628 = 0x009bb628
.long ??_R1A@?0A@A@?$_Mpunct@D@std@@8
.long ??_R1A@?0A@A@money_base@std@@8
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x11263c] 0x008a9000 + 0x11263c = 0x009bb63c
RTTIClassHierarchyDescriptor ?$moneypunct@D$00@std 4                                                               // [0x112640] 0x008a9000 + 0x112640 = 0x009bb640
RTTICompleteObjectLocator ?$moneypunct@D$00@std                                                                    // [0x112650] 0x008a9000 + 0x112650 = 0x009bb650
.long 0x00000000                                                                                                   // [0x112664] 0x008a9000 + 0x112664 = 0x009bb664
RTTIBaseClassDescriptor ?$_Mpunct@D@std 2                                                                          // [0x112668] 0x008a9000 + 0x112668 = 0x009bb668
RTTIBaseClassDescriptor ?$moneypunct@D$0A@@std 3                                                                   // [0x112680] 0x008a9000 + 0x112680 = 0x009bb680
RTTIBaseClassArray ?$moneypunct@D$0A@@std                                                                          // [0x112698] 0x008a9000 + 0x112698 = 0x009bb698
.long ??_R1A@?0A@A@?$_Mpunct@D@std@@8
.long ??_R1A@?0A@A@money_base@std@@8
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1126ac] 0x008a9000 + 0x1126ac = 0x009bb6ac
RTTIClassHierarchyDescriptor ?$moneypunct@D$0A@@std 4                                                              // [0x1126b0] 0x008a9000 + 0x1126b0 = 0x009bb6b0
RTTICompleteObjectLocator ?$moneypunct@D$0A@@std                                                                   // [0x1126c0] 0x008a9000 + 0x1126c0 = 0x009bb6c0
.long 0x00000000                                                                                                   // [0x1126d4] 0x008a9000 + 0x1126d4 = 0x009bb6d4
RTTIBaseClassDescriptor ?$money_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std 1                    // [0x1126d8] 0x008a9000 + 0x1126d8 = 0x009bb6d8
RTTIBaseClassArray ?$money_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std                           // [0x1126f0] 0x008a9000 + 0x1126f0 = 0x009bb6f0
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1126fc] 0x008a9000 + 0x1126fc = 0x009bb6fc
RTTIClassHierarchyDescriptor ?$money_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std 2               // [0x112700] 0x008a9000 + 0x112700 = 0x009bb700
RTTICompleteObjectLocator ?$money_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std                    // [0x112710] 0x008a9000 + 0x112710 = 0x009bb710
.long 0x00000000                                                                                                   // [0x112724] 0x008a9000 + 0x112724 = 0x009bb724
RTTIBaseClassDescriptor ?$money_get@DV?$istreambuf_iterator@DU?$char_traits@D@std@@@std@@@std 1                    // [0x112728] 0x008a9000 + 0x112728 = 0x009bb728
RTTIBaseClassArray ?$money_get@DV?$istreambuf_iterator@DU?$char_traits@D@std@@@std@@@std                           // [0x112740] 0x008a9000 + 0x112740 = 0x009bb740
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x11274c] 0x008a9000 + 0x11274c = 0x009bb74c
RTTIClassHierarchyDescriptor ?$money_get@DV?$istreambuf_iterator@DU?$char_traits@D@std@@@std@@@std 2               // [0x112750] 0x008a9000 + 0x112750 = 0x009bb750
RTTICompleteObjectLocator ?$money_get@DV?$istreambuf_iterator@DU?$char_traits@D@std@@@std@@@std                    // [0x112760] 0x008a9000 + 0x112760 = 0x009bb760
.long 0x00000000                                                                                                   // [0x112774] 0x008a9000 + 0x112774 = 0x009bb774
RTTIBaseClassDescriptor ?$messages@D@std 2                                                                         // [0x112778] 0x008a9000 + 0x112778 = 0x009bb778
RTTIBaseClassArray ?$messages@D@std                                                                                // [0x112790] 0x008a9000 + 0x112790 = 0x009bb790
.long ??_R1A@?0A@A@messages_base@std@@8
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$messages@D@std 3                                                                    // [0x1127a0] 0x008a9000 + 0x1127a0 = 0x009bb7a0
RTTICompleteObjectLocator ?$messages@D@std                                                                         // [0x1127b0] 0x008a9000 + 0x1127b0 = 0x009bb7b0
.long 0x00000000                                                                                                   // [0x1127c4] 0x008a9000 + 0x1127c4 = 0x009bb7c4
RTTIBaseClassDescriptor ?$collate@D@std 1                                                                          // [0x1127c8] 0x008a9000 + 0x1127c8 = 0x009bb7c8
RTTIBaseClassArray ?$collate@D@std                                                                                 // [0x1127e0] 0x008a9000 + 0x1127e0 = 0x009bb7e0
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1127ec] 0x008a9000 + 0x1127ec = 0x009bb7ec
RTTIClassHierarchyDescriptor ?$collate@D@std 2                                                                     // [0x1127f0] 0x008a9000 + 0x1127f0 = 0x009bb7f0
RTTICompleteObjectLocator ?$collate@D@std                                                                          // [0x112800] 0x008a9000 + 0x112800 = 0x009bb800
.long 0x00000000                                                                                                   // [0x112814] 0x008a9000 + 0x112814 = 0x009bb814
RTTIBaseClassArray ?$_Mpunct@D@std                                                                                 // [0x112818] 0x008a9000 + 0x112818 = 0x009bb818
.long ??_R1A@?0A@A@money_base@std@@8
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$_Mpunct@D@std 3                                                                     // [0x112828] 0x008a9000 + 0x112828 = 0x009bb828
RTTICompleteObjectLocator ?$_Mpunct@D@std                                                                          // [0x112838] 0x008a9000 + 0x112838 = 0x009bb838
.long 0x00000000                                                                                                   // [0x11284c] 0x008a9000 + 0x11284c = 0x009bb84c
