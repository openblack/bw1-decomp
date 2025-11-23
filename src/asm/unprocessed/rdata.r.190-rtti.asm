.intel_syntax noprefix
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

.align 8

RTTIBaseClassDescriptor GVirtualInfluence 1                                                                        // [0x110e78] 0x008a9000 + 0x110e78 = 0x009b9e78
RTTIBaseClassArray GVirtualInfluence                                                                               // [0x110e90] 0x008a9000 + 0x110e90 = 0x009b9e90
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x110e9c] 0x008a9000 + 0x110e9c = 0x009b9e9c
RTTIClassHierarchyDescriptor GVirtualInfluence 2                                                                   // [0x110ea0] 0x008a9000 + 0x110ea0 = 0x009b9ea0
RTTICompleteObjectLocator GVirtualInfluence                                                                        // [0x110eb0] 0x008a9000 + 0x110eb0 = 0x009b9eb0
.long 0x00000000                                                                                                   // [0x110ec4] 0x008a9000 + 0x110ec4 = 0x009b9ec4
RTTIBaseClassDescriptor Fragment 8                                                                                 // [0x110ec8] 0x008a9000 + 0x110ec8 = 0x009b9ec8
RTTIBaseClassArray Fragment                                                                                        // [0x110ee0] 0x008a9000 + 0x110ee0 = 0x009b9ee0
.long ??_R1A@?0A@A@Rock@@8
.long ??_R1A@?0A@A@MobileStatic@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Fragment 9                                                                            // [0x110f08] 0x008a9000 + 0x110f08 = 0x009b9f08
RTTICompleteObjectLocator Fragment                                                                                 // [0x110f18] 0x008a9000 + 0x110f18 = 0x009b9f18
.long 0x00000000                                                                                                   // [0x110f2c] 0x008a9000 + 0x110f2c = 0x009b9f2c
RTTIBaseClassDescriptor VortexSave 2                                                                               // [0x110f30] 0x008a9000 + 0x110f30 = 0x009b9f30
RTTIBaseClassArray VortexSave                                                                                      // [0x110f48] 0x008a9000 + 0x110f48 = 0x009b9f48
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor VortexSave 3                                                                          // [0x110f58] 0x008a9000 + 0x110f58 = 0x009b9f58
RTTICompleteObjectLocator VortexSave                                                                               // [0x110f68] 0x008a9000 + 0x110f68 = 0x009b9f68
.long 0x00000000                                                                                                   // [0x110f7c] 0x008a9000 + 0x110f7c = 0x009b9f7c
RTTIBaseClassDescriptor WayPoint 3                                                                                 // [0x110f80] 0x008a9000 + 0x110f80 = 0x009b9f80
RTTIBaseClassArray WayPoint                                                                                        // [0x110f98] 0x008a9000 + 0x110f98 = 0x009b9f98
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x110fac] 0x008a9000 + 0x110fac = 0x009b9fac
RTTIClassHierarchyDescriptor WayPoint 4                                                                            // [0x110fb0] 0x008a9000 + 0x110fb0 = 0x009b9fb0
RTTICompleteObjectLocator WayPoint                                                                                 // [0x110fc0] 0x008a9000 + 0x110fc0 = 0x009b9fc0
.long 0x00000000                                                                                                   // [0x110fd4] 0x008a9000 + 0x110fd4 = 0x009b9fd4
RTTIBaseClassDescriptor GWeatherInfo 2                                                                             // [0x110fd8] 0x008a9000 + 0x110fd8 = 0x009b9fd8
RTTIBaseClassArray GWeatherInfo                                                                                    // [0x110ff0] 0x008a9000 + 0x110ff0 = 0x009b9ff0
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GWeatherInfo 3                                                                        // [0x111000] 0x008a9000 + 0x111000 = 0x009ba000
RTTICompleteObjectLocator GWeatherInfo                                                                             // [0x111010] 0x008a9000 + 0x111010 = 0x009ba010
.long 0x00000000                                                                                                   // [0x111024] 0x008a9000 + 0x111024 = 0x009ba024
RTTIBaseClassDescriptorStruct LH3DStorm 0                                                                          // [0x111028] 0x008a9000 + 0x111028 = 0x009ba028
RTTIBaseClassDescriptor GWeather 1                                                                                 // [0x111040] 0x008a9000 + 0x111040 = 0x009ba040
RTTIBaseClassArray GWeather                                                                                        // [0x111058] 0x008a9000 + 0x111058 = 0x009ba058
.long ??_R1A@?0A@A@LH3DStorm@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x111064] 0x008a9000 + 0x111064 = 0x009ba064
RTTIClassHierarchyDescriptor GWeather 2                                                                            // [0x111068] 0x008a9000 + 0x111068 = 0x009ba068
RTTICompleteObjectLocator GWeather                                                                                 // [0x111078] 0x008a9000 + 0x111078 = 0x009ba078
.long 0x00000000                                                                                                   // [0x11108c] 0x008a9000 + 0x11108c = 0x009ba08c
RTTIBaseClassDescriptor GClimateInfo 2                                                                             // [0x111090] 0x008a9000 + 0x111090 = 0x009ba090
RTTIBaseClassArray GClimateInfo                                                                                    // [0x1110a8] 0x008a9000 + 0x1110a8 = 0x009ba0a8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GClimateInfo 3                                                                        // [0x1110b8] 0x008a9000 + 0x1110b8 = 0x009ba0b8
RTTICompleteObjectLocator GClimateInfo                                                                             // [0x1110c8] 0x008a9000 + 0x1110c8 = 0x009ba0c8
.long 0x00000000                                                                                                   // [0x1110dc] 0x008a9000 + 0x1110dc = 0x009ba0dc
RTTIBaseClassDescriptor GClimateRainInfo 2                                                                         // [0x1110e0] 0x008a9000 + 0x1110e0 = 0x009ba0e0
RTTIBaseClassArray GClimateRainInfo                                                                                // [0x1110f8] 0x008a9000 + 0x1110f8 = 0x009ba0f8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GClimateRainInfo 3                                                                    // [0x111108] 0x008a9000 + 0x111108 = 0x009ba108
RTTICompleteObjectLocator GClimateRainInfo                                                                         // [0x111118] 0x008a9000 + 0x111118 = 0x009ba118
.long 0x00000000                                                                                                   // [0x11112c] 0x008a9000 + 0x11112c = 0x009ba12c
RTTIBaseClassDescriptor ?$basic_ifstream@DU?$char_traits@D@std@@@std 3                                             // [0x111130] 0x008a9000 + 0x111130 = 0x009ba130
RTTIBaseClassArray ?$basic_ifstream@DU?$char_traits@D@std@@@std                                                    // [0x111148] 0x008a9000 + 0x111148 = 0x009ba148
.long ??_R1A@?0A@A@?$basic_istream@DU?$char_traits@D@std@@@std@@8
.long 0x009b0618
.long 0x009b0600
.long 0x00000000

.long 0x00000000                                                                                                   // [0x11115c] 0x008a9000 + 0x11115c = 0x009ba15c
RTTIClassHierarchyDescriptor ?$basic_ifstream@DU?$char_traits@D@std@@@std 4                                        // [0x111160] 0x008a9000 + 0x111160 = 0x009ba160
_RTTICompleteObjectLocator ?$basic_ifstream@DU?$char_traits@D@std@@@std V 0x5c                                     // [0x111170] 0x008a9000 + 0x111170 = 0x009ba170
.long 0x00000000                                                                                                   // [0x111184] 0x008a9000 + 0x111184 = 0x009ba184
RTTIBaseClassDescriptor ?$basic_filebuf@DU?$char_traits@D@std@@@std 1                                              // [0x111188] 0x008a9000 + 0x111188 = 0x009ba188
RTTIBaseClassArray ?$basic_filebuf@DU?$char_traits@D@std@@@std                                                     // [0x1111a0] 0x008a9000 + 0x1111a0 = 0x009ba1a0
.long ??_R1A@?0A@A@?$basic_streambuf@DU?$char_traits@D@std@@@std@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1111ac] 0x008a9000 + 0x1111ac = 0x009ba1ac
RTTIClassHierarchyDescriptor ?$basic_filebuf@DU?$char_traits@D@std@@@std 2                                         // [0x1111b0] 0x008a9000 + 0x1111b0 = 0x009ba1b0
RTTICompleteObjectLocator ?$basic_filebuf@DU?$char_traits@D@std@@@std                                              // [0x1111c0] 0x008a9000 + 0x1111c0 = 0x009ba1c0
.long 0x00000000                                                                                                   // [0x1111d4] 0x008a9000 + 0x1111d4 = 0x009ba1d4
RTTIBaseClassDescriptor codecvt_base@std 1                                                                         // [0x1111d8] 0x008a9000 + 0x1111d8 = 0x009ba1d8
RTTIBaseClassDescriptor ?$codecvt@DDH@std 2                                                                        // [0x1111f0] 0x008a9000 + 0x1111f0 = 0x009ba1f0
RTTIBaseClassArray ?$codecvt@DDH@std                                                                               // [0x111208] 0x008a9000 + 0x111208 = 0x009ba208
.long ??_R1A@?0A@A@codecvt_base@std@@8
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$codecvt@DDH@std 3                                                                   // [0x111218] 0x008a9000 + 0x111218 = 0x009ba218
RTTICompleteObjectLocator ?$codecvt@DDH@std                                                                        // [0x111228] 0x008a9000 + 0x111228 = 0x009ba228
.long 0x00000000                                                                                                   // [0x11123c] 0x008a9000 + 0x11123c = 0x009ba23c
.byte 0x40, 0xd2, 0x9c, 0x00, 0x00, 0x00, 0x00, 0x00                                                               // [0x111240] 0x008a9000 + 0x111240 = 0x009ba240
.byte 0xc4, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff                                                               // [0x111248] 0x008a9000 + 0x111248 = 0x009ba248
.byte 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00                                                               // [0x111250] 0x008a9000 + 0x111250 = 0x009ba250
RTTIBaseClassDescriptor Workshop 8                                                                                 // [0x111258] 0x008a9000 + 0x111258 = 0x009ba258
RTTIBaseClassArray Workshop                                                                                        // [0x111270] 0x008a9000 + 0x111270 = 0x009ba270
.long ??_R1A@?0A@A@Abode@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x009ba240
.long 0x00000000

RTTIClassHierarchyDescriptorMultiInheritance Workshop 9                                                            // [0x111298] 0x008a9000 + 0x111298 = 0x009ba298
RTTICompleteObjectLocator Workshop                                                                                 // [0x1112a8] 0x008a9000 + 0x1112a8 = 0x009ba2a8
.long 0x00000000                                                                                                   // [0x1112bc] 0x008a9000 + 0x1112bc = 0x009ba2bc
RTTIBaseClassDescriptor GWorshipSiteInfo 5                                                                         // [0x1112c0] 0x008a9000 + 0x1112c0 = 0x009ba2c0
RTTIBaseClassArray GWorshipSiteInfo                                                                                // [0x1112d8] 0x008a9000 + 0x1112d8 = 0x009ba2d8
.long ??_R1A@?0A@A@GCitadelPartInfo@@8
.long ??_R1A@?0A@A@GMultiMapFixedInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1112f4] 0x008a9000 + 0x1112f4 = 0x009ba2f4
RTTIClassHierarchyDescriptor GWorshipSiteInfo 6                                                                    // [0x1112f8] 0x008a9000 + 0x1112f8 = 0x009ba2f8
RTTICompleteObjectLocator GWorshipSiteInfo                                                                         // [0x111308] 0x008a9000 + 0x111308 = 0x009ba308
.long 0x00000000                                                                                                   // [0x11131c] 0x008a9000 + 0x11131c = 0x009ba31c
RTTIBaseClassDescriptor PlannedWorshipSite 5                                                                       // [0x111320] 0x008a9000 + 0x111320 = 0x009ba320
RTTIBaseClassArray PlannedWorshipSite                                                                              // [0x111338] 0x008a9000 + 0x111338 = 0x009ba338
.long ??_R1A@?0A@A@PlannedCitadelPart@@8
.long ??_R1A@?0A@A@PlannedMultiMapFixed@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x111354] 0x008a9000 + 0x111354 = 0x009ba354
RTTIClassHierarchyDescriptor PlannedWorshipSite 6                                                                  // [0x111358] 0x008a9000 + 0x111358 = 0x009ba358
RTTICompleteObjectLocator PlannedWorshipSite                                                                       // [0x111368] 0x008a9000 + 0x111368 = 0x009ba368
.long 0x00000000                                                                                                   // [0x11137c] 0x008a9000 + 0x11137c = 0x009ba37c
RTTIBaseClassDescriptor GWorshipSiteUpgradeInfo 5                                                                  // [0x111380] 0x008a9000 + 0x111380 = 0x009ba380
RTTIBaseClassArray GWorshipSiteUpgradeInfo                                                                         // [0x111398] 0x008a9000 + 0x111398 = 0x009ba398
.long ??_R1A@?0A@A@GFeatureInfo@@8
.long ??_R1A@?0A@A@GMultiMapFixedInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1113b4] 0x008a9000 + 0x1113b4 = 0x009ba3b4
RTTIClassHierarchyDescriptor GWorshipSiteUpgradeInfo 6                                                             // [0x1113b8] 0x008a9000 + 0x1113b8 = 0x009ba3b8
RTTICompleteObjectLocator GWorshipSiteUpgradeInfo                                                                  // [0x1113c8] 0x008a9000 + 0x1113c8 = 0x009ba3c8
.long 0x00000000                                                                                                   // [0x1113dc] 0x008a9000 + 0x1113dc = 0x009ba3dc
RTTIBaseClassDescriptor WorshipSiteUpgrade 7                                                                       // [0x1113e0] 0x008a9000 + 0x1113e0 = 0x009ba3e0
RTTIBaseClassArray WorshipSiteUpgrade                                                                              // [0x1113f8] 0x008a9000 + 0x1113f8 = 0x009ba3f8
.long ??_R1A@?0A@A@Feature@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x11141c] 0x008a9000 + 0x11141c = 0x009ba41c
RTTIClassHierarchyDescriptor WorshipSiteUpgrade 8                                                                  // [0x111420] 0x008a9000 + 0x111420 = 0x009ba420
RTTICompleteObjectLocator WorshipSiteUpgrade                                                                       // [0x111430] 0x008a9000 + 0x111430 = 0x009ba430
.long 0x00000000                                                                                                   // [0x111444] 0x008a9000 + 0x111444 = 0x009ba444
RTTIBaseClassDescriptor PlannedWorshipSiteUpgrade 5                                                                // [0x111448] 0x008a9000 + 0x111448 = 0x009ba448
RTTIBaseClassArray PlannedWorshipSiteUpgrade                                                                       // [0x111460] 0x008a9000 + 0x111460 = 0x009ba460
.long ??_R1A@?0A@A@PlannedFeature@@8
.long ??_R1A@?0A@A@PlannedMultiMapFixed@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x11147c] 0x008a9000 + 0x11147c = 0x009ba47c
RTTIClassHierarchyDescriptor PlannedWorshipSiteUpgrade 6                                                           // [0x111480] 0x008a9000 + 0x111480 = 0x009ba480
RTTICompleteObjectLocator PlannedWorshipSiteUpgrade                                                                // [0x111490] 0x008a9000 + 0x111490 = 0x009ba490
.long 0x00000000                                                                                                   // [0x1114a4] 0x008a9000 + 0x1114a4 = 0x009ba4a4
RTTIBaseClassDescriptor WorshipSpellIcon 7                                                                         // [0x1114a8] 0x008a9000 + 0x1114a8 = 0x009ba4a8
RTTIBaseClassArray WorshipSpellIcon                                                                                // [0x1114c0] 0x008a9000 + 0x1114c0 = 0x009ba4c0
.long ??_R1A@?0A@A@SpellIcon@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1114e4] 0x008a9000 + 0x1114e4 = 0x009ba4e4
RTTIClassHierarchyDescriptor WorshipSpellIcon 8                                                                    // [0x1114e8] 0x008a9000 + 0x1114e8 = 0x009ba4e8
RTTICompleteObjectLocator WorshipSpellIcon                                                                         // [0x1114f8] 0x008a9000 + 0x1114f8 = 0x009ba4f8
.long 0x00000000                                                                                                   // [0x11150c] 0x008a9000 + 0x11150c = 0x009ba50c
RTTIBaseClassDescriptor WorshipTotem 7                                                                             // [0x111510] 0x008a9000 + 0x111510 = 0x009ba510
RTTIBaseClassArray WorshipTotem                                                                                    // [0x111528] 0x008a9000 + 0x111528 = 0x009ba528
.long ??_R1A@?0A@A@CitadelPart@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x11154c] 0x008a9000 + 0x11154c = 0x009ba54c
RTTIClassHierarchyDescriptor WorshipTotem 8                                                                        // [0x111550] 0x008a9000 + 0x111550 = 0x009ba550
RTTICompleteObjectLocator WorshipTotem                                                                             // [0x111560] 0x008a9000 + 0x111560 = 0x009ba560
.long 0x00000000                                                                                                   // [0x111574] 0x008a9000 + 0x111574 = 0x009ba574
RTTIBaseClassDescriptor TempleRoom 0                                                                               // [0x111578] 0x008a9000 + 0x111578 = 0x009ba578
RTTIBaseClassDescriptor PictureRoomBase 1                                                                          // [0x111590] 0x008a9000 + 0x111590 = 0x009ba590
RTTIBaseClassDescriptor ChallengeRoom 2                                                                            // [0x1115a8] 0x008a9000 + 0x1115a8 = 0x009ba5a8
RTTIBaseClassArray ChallengeRoom                                                                                   // [0x1115c0] 0x008a9000 + 0x1115c0 = 0x009ba5c0
.long ??_R1A@?0A@A@PictureRoomBase@@8
.long ??_R1A@?0A@A@TempleRoom@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ChallengeRoom 3                                                                       // [0x1115d0] 0x008a9000 + 0x1115d0 = 0x009ba5d0
RTTICompleteObjectLocator ChallengeRoom                                                                            // [0x1115e0] 0x008a9000 + 0x1115e0 = 0x009ba5e0
.long 0x00000000                                                                                                   // [0x1115f4] 0x008a9000 + 0x1115f4 = 0x009ba5f4
RTTIBaseClassDescriptor CreatureRoom 1                                                                             // [0x1115f8] 0x008a9000 + 0x1115f8 = 0x009ba5f8
RTTIBaseClassArray CreatureRoom                                                                                    // [0x111610] 0x008a9000 + 0x111610 = 0x009ba610
.long ??_R1A@?0A@A@TempleRoom@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x11161c] 0x008a9000 + 0x11161c = 0x009ba61c
RTTIClassHierarchyDescriptor CreatureRoom 2                                                                        // [0x111620] 0x008a9000 + 0x111620 = 0x009ba620
RTTICompleteObjectLocator CreatureRoom                                                                             // [0x111630] 0x008a9000 + 0x111630 = 0x009ba630
.long 0x00000000                                                                                                   // [0x111644] 0x008a9000 + 0x111644 = 0x009ba644
RTTIBaseClassDescriptor CreatureCitadel 3                                                                          // [0x111648] 0x008a9000 + 0x111648 = 0x009ba648
RTTIBaseClassArray CreatureCitadel                                                                                 // [0x111660] 0x008a9000 + 0x111660 = 0x009ba660
.long ??_R1A@?0A@A@LH3DCreature@@8
.long ??_R1A@?0A@A@Morphable@@8
.long 0x009a83d8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x111674] 0x008a9000 + 0x111674 = 0x009ba674
RTTIClassHierarchyDescriptor CreatureCitadel 4                                                                     // [0x111678] 0x008a9000 + 0x111678 = 0x009ba678
RTTICompleteObjectLocator CreatureCitadel                                                                          // [0x111688] 0x008a9000 + 0x111688 = 0x009ba688
.long 0x00000000                                                                                                   // [0x11169c] 0x008a9000 + 0x11169c = 0x009ba69c
RTTIBaseClassDescriptorStruct InnerCamera 0                                                                        // [0x1116a0] 0x008a9000 + 0x1116a0 = 0x009ba6a0
RTTIBaseClassDescriptorStruct CreatureRoomCamera 1                                                                 // [0x1116b8] 0x008a9000 + 0x1116b8 = 0x009ba6b8
RTTIBaseClassArray CreatureRoomCamera                                                                              // [0x1116d0] 0x008a9000 + 0x1116d0 = 0x009ba6d0
.long ??_R1A@?0A@A@InnerCamera@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1116dc] 0x008a9000 + 0x1116dc = 0x009ba6dc
RTTIClassHierarchyDescriptor CreatureRoomCamera 2                                                                  // [0x1116e0] 0x008a9000 + 0x1116e0 = 0x009ba6e0
RTTICompleteObjectLocatorStruct CreatureRoomCamera                                                                 // [0x1116f0] 0x008a9000 + 0x1116f0 = 0x009ba6f0
.long 0x00000000                                                                                                   // [0x111704] 0x008a9000 + 0x111704 = 0x009ba704
RTTIBaseClassDescriptor CreditsRoom 2                                                                              // [0x111708] 0x008a9000 + 0x111708 = 0x009ba708
RTTIBaseClassArray CreditsRoom                                                                                     // [0x111720] 0x008a9000 + 0x111720 = 0x009ba720
.long ??_R1A@?0A@A@PictureRoomBase@@8
.long ??_R1A@?0A@A@TempleRoom@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreditsRoom 3                                                                         // [0x111730] 0x008a9000 + 0x111730 = 0x009ba730
RTTICompleteObjectLocator CreditsRoom                                                                              // [0x111740] 0x008a9000 + 0x111740 = 0x009ba740
.long 0x00000000                                                                                                   // [0x111754] 0x008a9000 + 0x111754 = 0x009ba754
RTTIBaseClassDescriptor GameOptionsRoom 2                                                                          // [0x111758] 0x008a9000 + 0x111758 = 0x009ba758
RTTIBaseClassArray GameOptionsRoom                                                                                 // [0x111770] 0x008a9000 + 0x111770 = 0x009ba770
.long ??_R1A@?0A@A@PictureRoomBase@@8
.long ??_R1A@?0A@A@TempleRoom@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GameOptionsRoom 3                                                                     // [0x111780] 0x008a9000 + 0x111780 = 0x009ba780
RTTICompleteObjectLocator GameOptionsRoom                                                                          // [0x111790] 0x008a9000 + 0x111790 = 0x009ba790
.long 0x00000000                                                                                                   // [0x1117a4] 0x008a9000 + 0x1117a4 = 0x009ba7a4
RTTIBaseClassDescriptor SubOptionEntry 0                                                                           // [0x1117a8] 0x008a9000 + 0x1117a8 = 0x009ba7a8
RTTIBaseClassArray SubOptionEntry                                                                                  // [0x1117c0] 0x008a9000 + 0x1117c0 = 0x009ba7c0
.long 0x00000000

RTTIClassHierarchyDescriptor SubOptionEntry 1                                                                      // [0x1117c8] 0x008a9000 + 0x1117c8 = 0x009ba7c8
RTTICompleteObjectLocator SubOptionEntry                                                                           // [0x1117d8] 0x008a9000 + 0x1117d8 = 0x009ba7d8
.long 0x00000000                                                                                                   // [0x1117ec] 0x008a9000 + 0x1117ec = 0x009ba7ec
RTTIBaseClassDescriptor SubOptionEntryButton 1                                                                     // [0x1117f0] 0x008a9000 + 0x1117f0 = 0x009ba7f0
RTTIBaseClassArray SubOptionEntryButton                                                                            // [0x111808] 0x008a9000 + 0x111808 = 0x009ba808
.long ??_R1A@?0A@A@SubOptionEntry@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x111814] 0x008a9000 + 0x111814 = 0x009ba814
RTTIClassHierarchyDescriptor SubOptionEntryButton 2                                                                // [0x111818] 0x008a9000 + 0x111818 = 0x009ba818
RTTICompleteObjectLocator SubOptionEntryButton                                                                     // [0x111828] 0x008a9000 + 0x111828 = 0x009ba828
.long 0x00000000                                                                                                   // [0x11183c] 0x008a9000 + 0x11183c = 0x009ba83c
RTTIBaseClassDescriptor SubOptionEntryCheckBoxUnChecked 1                                                          // [0x111840] 0x008a9000 + 0x111840 = 0x009ba840
RTTIBaseClassArray SubOptionEntryCheckBoxUnChecked                                                                 // [0x111858] 0x008a9000 + 0x111858 = 0x009ba858
.long ??_R1A@?0A@A@SubOptionEntry@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x111864] 0x008a9000 + 0x111864 = 0x009ba864
RTTIClassHierarchyDescriptor SubOptionEntryCheckBoxUnChecked 2                                                     // [0x111868] 0x008a9000 + 0x111868 = 0x009ba868
RTTICompleteObjectLocator SubOptionEntryCheckBoxUnChecked                                                          // [0x111878] 0x008a9000 + 0x111878 = 0x009ba878
.long 0x00000000                                                                                                   // [0x11188c] 0x008a9000 + 0x11188c = 0x009ba88c
RTTIBaseClassDescriptor SubOptionEntryCheckBoxChecked 1                                                            // [0x111890] 0x008a9000 + 0x111890 = 0x009ba890
RTTIBaseClassArray SubOptionEntryCheckBoxChecked                                                                   // [0x1118a8] 0x008a9000 + 0x1118a8 = 0x009ba8a8
.long ??_R1A@?0A@A@SubOptionEntry@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1118b4] 0x008a9000 + 0x1118b4 = 0x009ba8b4
RTTIClassHierarchyDescriptor SubOptionEntryCheckBoxChecked 2                                                       // [0x1118b8] 0x008a9000 + 0x1118b8 = 0x009ba8b8
RTTICompleteObjectLocator SubOptionEntryCheckBoxChecked                                                            // [0x1118c8] 0x008a9000 + 0x1118c8 = 0x009ba8c8
.long 0x00000000                                                                                                   // [0x1118dc] 0x008a9000 + 0x1118dc = 0x009ba8dc
RTTIBaseClassDescriptor SubOptionEntrySlider 1                                                                     // [0x1118e0] 0x008a9000 + 0x1118e0 = 0x009ba8e0
RTTIBaseClassArray SubOptionEntrySlider                                                                            // [0x1118f8] 0x008a9000 + 0x1118f8 = 0x009ba8f8
.long ??_R1A@?0A@A@SubOptionEntry@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x111904] 0x008a9000 + 0x111904 = 0x009ba904
RTTIClassHierarchyDescriptor SubOptionEntrySlider 2                                                                // [0x111908] 0x008a9000 + 0x111908 = 0x009ba908
RTTICompleteObjectLocator SubOptionEntrySlider                                                                     // [0x111918] 0x008a9000 + 0x111918 = 0x009ba918
.long 0x00000000                                                                                                   // [0x11192c] 0x008a9000 + 0x11192c = 0x009ba92c
RTTIBaseClassDescriptor SubOptionEntryPicture 1                                                                    // [0x111930] 0x008a9000 + 0x111930 = 0x009ba930
RTTIBaseClassArray SubOptionEntryPicture                                                                           // [0x111948] 0x008a9000 + 0x111948 = 0x009ba948
.long ??_R1A@?0A@A@SubOptionEntry@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x111954] 0x008a9000 + 0x111954 = 0x009ba954
RTTIClassHierarchyDescriptor SubOptionEntryPicture 2                                                               // [0x111958] 0x008a9000 + 0x111958 = 0x009ba958
RTTICompleteObjectLocator SubOptionEntryPicture                                                                    // [0x111968] 0x008a9000 + 0x111968 = 0x009ba968
.long 0x00000000                                                                                                   // [0x11197c] 0x008a9000 + 0x11197c = 0x009ba97c
RTTIBaseClassDescriptor SubOptionEntryScroll 1                                                                     // [0x111980] 0x008a9000 + 0x111980 = 0x009ba980
RTTIBaseClassArray SubOptionEntryScroll                                                                            // [0x111998] 0x008a9000 + 0x111998 = 0x009ba998
.long ??_R1A@?0A@A@SubOptionEntry@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1119a4] 0x008a9000 + 0x1119a4 = 0x009ba9a4
RTTIClassHierarchyDescriptor SubOptionEntryScroll 2                                                                // [0x1119a8] 0x008a9000 + 0x1119a8 = 0x009ba9a8
RTTICompleteObjectLocator SubOptionEntryScroll                                                                     // [0x1119b8] 0x008a9000 + 0x1119b8 = 0x009ba9b8
.long 0x00000000                                                                                                   // [0x1119cc] 0x008a9000 + 0x1119cc = 0x009ba9cc
RTTIBaseClassDescriptor SubOptionEntryText 1                                                                       // [0x1119d0] 0x008a9000 + 0x1119d0 = 0x009ba9d0
RTTIBaseClassArray SubOptionEntryText                                                                              // [0x1119e8] 0x008a9000 + 0x1119e8 = 0x009ba9e8
.long ??_R1A@?0A@A@SubOptionEntry@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1119f4] 0x008a9000 + 0x1119f4 = 0x009ba9f4
RTTIClassHierarchyDescriptor SubOptionEntryText 2                                                                  // [0x1119f8] 0x008a9000 + 0x1119f8 = 0x009ba9f8
RTTICompleteObjectLocator SubOptionEntryText                                                                       // [0x111a08] 0x008a9000 + 0x111a08 = 0x009baa08
.long 0x00000000                                                                                                   // [0x111a1c] 0x008a9000 + 0x111a1c = 0x009baa1c
RTTIBaseClassDescriptor SubOptionEntryListBox 1                                                                    // [0x111a20] 0x008a9000 + 0x111a20 = 0x009baa20
RTTIBaseClassArray SubOptionEntryListBox                                                                           // [0x111a38] 0x008a9000 + 0x111a38 = 0x009baa38
.long ??_R1A@?0A@A@SubOptionEntry@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x111a44] 0x008a9000 + 0x111a44 = 0x009baa44
RTTIClassHierarchyDescriptor SubOptionEntryListBox 2                                                               // [0x111a48] 0x008a9000 + 0x111a48 = 0x009baa48
RTTICompleteObjectLocator SubOptionEntryListBox                                                                    // [0x111a58] 0x008a9000 + 0x111a58 = 0x009baa58
.long 0x00000000                                                                                                   // [0x111a6c] 0x008a9000 + 0x111a6c = 0x009baa6c
RTTIBaseClassDescriptor SubOptionEntryFrame 1                                                                      // [0x111a70] 0x008a9000 + 0x111a70 = 0x009baa70
RTTIBaseClassArray SubOptionEntryFrame                                                                             // [0x111a88] 0x008a9000 + 0x111a88 = 0x009baa88
.long ??_R1A@?0A@A@SubOptionEntry@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x111a94] 0x008a9000 + 0x111a94 = 0x009baa94
RTTIClassHierarchyDescriptor SubOptionEntryFrame 2                                                                 // [0x111a98] 0x008a9000 + 0x111a98 = 0x009baa98
RTTICompleteObjectLocator SubOptionEntryFrame                                                                      // [0x111aa8] 0x008a9000 + 0x111aa8 = 0x009baaa8
.long 0x00000000                                                                                                   // [0x111abc] 0x008a9000 + 0x111abc = 0x009baabc
RTTIBaseClassArray PictureRoomBase                                                                                 // [0x111ac0] 0x008a9000 + 0x111ac0 = 0x009baac0
.long ??_R1A@?0A@A@TempleRoom@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x111acc] 0x008a9000 + 0x111acc = 0x009baacc
RTTIClassHierarchyDescriptor PictureRoomBase 2                                                                     // [0x111ad0] 0x008a9000 + 0x111ad0 = 0x009baad0
RTTICompleteObjectLocator PictureRoomBase                                                                          // [0x111ae0] 0x008a9000 + 0x111ae0 = 0x009baae0
.long 0x00000000                                                                                                   // [0x111af4] 0x008a9000 + 0x111af4 = 0x009baaf4
RTTIBaseClassDescriptorStruct ChallengeRoomCamera 1                                                                // [0x111af8] 0x008a9000 + 0x111af8 = 0x009baaf8
RTTIBaseClassArray ChallengeRoomCamera                                                                             // [0x111b10] 0x008a9000 + 0x111b10 = 0x009bab10
.long ??_R1A@?0A@A@InnerCamera@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x111b1c] 0x008a9000 + 0x111b1c = 0x009bab1c
RTTIClassHierarchyDescriptor ChallengeRoomCamera 2                                                                 // [0x111b20] 0x008a9000 + 0x111b20 = 0x009bab20
RTTICompleteObjectLocatorStruct ChallengeRoomCamera                                                                // [0x111b30] 0x008a9000 + 0x111b30 = 0x009bab30
.long 0x00000000                                                                                                   // [0x111b44] 0x008a9000 + 0x111b44 = 0x009bab44
RTTIBaseClassDescriptor SaveGameRoom 2                                                                             // [0x111b48] 0x008a9000 + 0x111b48 = 0x009bab48
RTTIBaseClassArray SaveGameRoom                                                                                    // [0x111b60] 0x008a9000 + 0x111b60 = 0x009bab60
.long ??_R1A@?0A@A@PictureRoomBase@@8
.long ??_R1A@?0A@A@TempleRoom@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SaveGameRoom 3                                                                        // [0x111b70] 0x008a9000 + 0x111b70 = 0x009bab70
RTTICompleteObjectLocator SaveGameRoom                                                                             // [0x111b80] 0x008a9000 + 0x111b80 = 0x009bab80
RTTIBaseClassArray InnerCamera                                                                                     // [0x111b94] 0x008a9000 + 0x111b94 = 0x009bab94
.long 0x00000000
.long 0x00000000

RTTIClassHierarchyDescriptor InnerCamera 1                                                                         // [0x111ba0] 0x008a9000 + 0x111ba0 = 0x009baba0
RTTICompleteObjectLocatorStruct InnerCamera                                                                        // [0x111bb0] 0x008a9000 + 0x111bb0 = 0x009babb0
RTTIBaseClassArray TempleRoom                                                                                      // [0x111bc4] 0x008a9000 + 0x111bc4 = 0x009babc4
.long 0x00000000
.long 0x00000000

RTTIClassHierarchyDescriptor TempleRoom 1                                                                          // [0x111bd0] 0x008a9000 + 0x111bd0 = 0x009babd0
RTTICompleteObjectLocator TempleRoom                                                                               // [0x111be0] 0x008a9000 + 0x111be0 = 0x009babe0
.long 0x00000000                                                                                                   // [0x111bf4] 0x008a9000 + 0x111bf4 = 0x009babf4
RTTIBaseClassDescriptor UniverseRoom 2                                                                             // [0x111bf8] 0x008a9000 + 0x111bf8 = 0x009babf8
RTTIBaseClassArray UniverseRoom                                                                                    // [0x111c10] 0x008a9000 + 0x111c10 = 0x009bac10
.long ??_R1A@?0A@A@PictureRoomBase@@8
.long ??_R1A@?0A@A@TempleRoom@@8
.long 0x00000000

RTTIClassHierarchyDescriptor UniverseRoom 3                                                                        // [0x111c20] 0x008a9000 + 0x111c20 = 0x009bac20
RTTICompleteObjectLocator UniverseRoom                                                                             // [0x111c30] 0x008a9000 + 0x111c30 = 0x009bac30
.long 0x00000000                                                                                                   // [0x111c44] 0x008a9000 + 0x111c44 = 0x009bac44
RTTIBaseClassDescriptor WorldRoom 1                                                                                // [0x111c48] 0x008a9000 + 0x111c48 = 0x009bac48
RTTIBaseClassArray WorldRoom                                                                                       // [0x111c60] 0x008a9000 + 0x111c60 = 0x009bac60
.long ??_R1A@?0A@A@TempleRoom@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x111c6c] 0x008a9000 + 0x111c6c = 0x009bac6c
RTTIClassHierarchyDescriptor WorldRoom 2                                                                           // [0x111c70] 0x008a9000 + 0x111c70 = 0x009bac70
RTTICompleteObjectLocator WorldRoom                                                                                // [0x111c80] 0x008a9000 + 0x111c80 = 0x009bac80
.long 0x00000000                                                                                                   // [0x111c94] 0x008a9000 + 0x111c94 = 0x009bac94
RTTIBaseClassDescriptorStruct WorldRoomCamera 1                                                                    // [0x111c98] 0x008a9000 + 0x111c98 = 0x009bac98
RTTIBaseClassArray WorldRoomCamera                                                                                 // [0x111cb0] 0x008a9000 + 0x111cb0 = 0x009bacb0
.long ??_R1A@?0A@A@InnerCamera@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x111cbc] 0x008a9000 + 0x111cbc = 0x009bacbc
RTTIClassHierarchyDescriptor WorldRoomCamera 2                                                                     // [0x111cc0] 0x008a9000 + 0x111cc0 = 0x009bacc0
RTTICompleteObjectLocatorStruct WorldRoomCamera                                                                    // [0x111cd0] 0x008a9000 + 0x111cd0 = 0x009bacd0
.long 0x00000000                                                                                                   // [0x111ce4] 0x008a9000 + 0x111ce4 = 0x009bace4
