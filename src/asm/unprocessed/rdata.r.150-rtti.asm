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

.long 0x00000000                                                                                                   // [0x10457c] 0x008a9000 + 0x10457c = 0x009ad57c
RTTIBaseClassDescriptor OneOffSpellSeed 6                                                                          // [0x104580] 0x008a9000 + 0x104580 = 0x009ad580
RTTIBaseClassArray OneOffSpellSeed                                                                                 // [0x104598] 0x008a9000 + 0x104598 = 0x009ad598
.long ??_R1A@?0A@A@MobileObject@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor OneOffSpellSeed 7                                                                     // [0x1045b8] 0x008a9000 + 0x1045b8 = 0x009ad5b8
RTTICompleteObjectLocator OneOffSpellSeed                                                                          // [0x1045c8] 0x008a9000 + 0x1045c8 = 0x009ad5c8
.long 0x00000000                                                                                                   // [0x1045dc] 0x008a9000 + 0x1045dc = 0x009ad5dc
RTTIBaseClassDescriptor PileFood 9                                                                                 // [0x1045e0] 0x008a9000 + 0x1045e0 = 0x009ad5e0
RTTIBaseClassDescriptor PuzzleGrain 10                                                                             // [0x1045f8] 0x008a9000 + 0x1045f8 = 0x009ad5f8
RTTIBaseClassArray PuzzleGrain                                                                                     // [0x104610] 0x008a9000 + 0x104610 = 0x009ad610
.long ??_R1A@?0A@A@PileFood@@8
.long ??_R1A@?0A@A@PileResource@@8
.long ??_R1A@?0A@A@PotStructure@@8
.long ??_R1A@?0A@A@Pot@@8
.long ??_R1A@?0A@A@MobileObject@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor PuzzleGrain 11                                                                        // [0x104640] 0x008a9000 + 0x104640 = 0x009ad640
RTTICompleteObjectLocator PuzzleGrain                                                                              // [0x104650] 0x008a9000 + 0x104650 = 0x009ad650
.long 0x00000000                                                                                                   // [0x104664] 0x008a9000 + 0x104664 = 0x009ad664
RTTIBaseClassDescriptor TownDesireFlags 4                                                                          // [0x104668] 0x008a9000 + 0x104668 = 0x009ad668
RTTIBaseClassArray TownDesireFlags                                                                                 // [0x104680] 0x008a9000 + 0x104680 = 0x009ad680
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor TownDesireFlags 5                                                                     // [0x104698] 0x008a9000 + 0x104698 = 0x009ad698
RTTICompleteObjectLocator TownDesireFlags                                                                          // [0x1046a8] 0x008a9000 + 0x1046a8 = 0x009ad6a8
.long 0x00000000                                                                                                   // [0x1046bc] 0x008a9000 + 0x1046bc = 0x009ad6bc
RTTIBaseClassDescriptor Reaction 2                                                                                 // [0x1046c0] 0x008a9000 + 0x1046c0 = 0x009ad6c0
RTTIBaseClassArray Reaction                                                                                        // [0x1046d8] 0x008a9000 + 0x1046d8 = 0x009ad6d8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Reaction 3                                                                            // [0x1046e8] 0x008a9000 + 0x1046e8 = 0x009ad6e8
RTTICompleteObjectLocator Reaction                                                                                 // [0x1046f8] 0x008a9000 + 0x1046f8 = 0x009ad6f8
.long 0x00000000                                                                                                   // [0x10470c] 0x008a9000 + 0x10470c = 0x009ad70c
RTTIBaseClassDescriptor Poo 6                                                                                      // [0x104710] 0x008a9000 + 0x104710 = 0x009ad710
RTTIBaseClassArray Poo                                                                                             // [0x104728] 0x008a9000 + 0x104728 = 0x009ad728
.long ??_R1A@?0A@A@MobileObject@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Poo 7                                                                                 // [0x104748] 0x008a9000 + 0x104748 = 0x009ad748
RTTICompleteObjectLocator Poo                                                                                      // [0x104758] 0x008a9000 + 0x104758 = 0x009ad758
.long 0x00000000                                                                                                   // [0x10476c] 0x008a9000 + 0x10476c = 0x009ad76c
RTTIBaseClassArray Pot                                                                                             // [0x104770] 0x008a9000 + 0x104770 = 0x009ad770
.long ??_R1A@?0A@A@MobileObject@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Pot 7                                                                                 // [0x104790] 0x008a9000 + 0x104790 = 0x009ad790
RTTICompleteObjectLocator Pot                                                                                      // [0x1047a0] 0x008a9000 + 0x1047a0 = 0x009ad7a0
.long 0x00000000                                                                                                   // [0x1047b4] 0x008a9000 + 0x1047b4 = 0x009ad7b4
RTTIBaseClassDescriptor StoragePit 7                                                                               // [0x1047b8] 0x008a9000 + 0x1047b8 = 0x009ad7b8
RTTIBaseClassArray StoragePit                                                                                      // [0x1047d0] 0x008a9000 + 0x1047d0 = 0x009ad7d0
.long ??_R1A@?0A@A@Abode@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1047f4] 0x008a9000 + 0x1047f4 = 0x009ad7f4
RTTIClassHierarchyDescriptor StoragePit 8                                                                          // [0x1047f8] 0x008a9000 + 0x1047f8 = 0x009ad7f8
RTTICompleteObjectLocator StoragePit                                                                               // [0x104808] 0x008a9000 + 0x104808 = 0x009ad808
.long 0x00000000                                                                                                   // [0x10481c] 0x008a9000 + 0x10481c = 0x009ad81c
RTTIBaseClassArray SpellWithObjects                                                                                // [0x104820] 0x008a9000 + 0x104820 = 0x009ad820
.long ??_R1A@?0A@A@Spell@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SpellWithObjects 5                                                                    // [0x104838] 0x008a9000 + 0x104838 = 0x009ad838
RTTICompleteObjectLocator SpellWithObjects                                                                         // [0x104848] 0x008a9000 + 0x104848 = 0x009ad848
.long 0x00000000                                                                                                   // [0x10485c] 0x008a9000 + 0x10485c = 0x009ad85c
RTTIBaseClassDescriptor SpellHeal 4                                                                                // [0x104860] 0x008a9000 + 0x104860 = 0x009ad860
RTTIBaseClassArray SpellHeal                                                                                       // [0x104878] 0x008a9000 + 0x104878 = 0x009ad878
.long ??_R1A@?0A@A@Spell@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SpellHeal 5                                                                           // [0x104890] 0x008a9000 + 0x104890 = 0x009ad890
RTTICompleteObjectLocator SpellHeal                                                                                // [0x1048a0] 0x008a9000 + 0x1048a0 = 0x009ad8a0
.long 0x00000000                                                                                                   // [0x1048b4] 0x008a9000 + 0x1048b4 = 0x009ad8b4

RTTIBaseClassDescriptor Villager 7                                                                                 // [0x1048b8] 0x008a9000 + 0x1048b8 = 0x009ad8b8

RTTIBaseClassDescriptor SpecialVillager 8                                                                          // [0x1048d0] 0x008a9000 + 0x1048d0 = 0x009ad8d0
RTTIBaseClassArray SpecialVillager                                                                                 // [0x1048e8] 0x008a9000 + 0x1048e8 = 0x009ad8e8
.long ??_R1A@?0A@A@Villager@@8
.long ??_R1A@?0A@A@Living@@8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SpecialVillager 9                                                                     // [0x104910] 0x008a9000 + 0x104910 = 0x009ad910
RTTICompleteObjectLocator SpecialVillager                                                                          // [0x104920] 0x008a9000 + 0x104920 = 0x009ad920
.long 0x00000000                                                                                                   // [0x104934] 0x008a9000 + 0x104934 = 0x009ad934
RTTIBaseClassDescriptor BaseInfo 0                                                                                 // [0x104938] 0x008a9000 + 0x104938 = 0x009ad938
RTTIBaseClassArray BaseInfo                                                                                        // [0x104950] 0x008a9000 + 0x104950 = 0x009ad950
.long 0x00000000

RTTIClassHierarchyDescriptor BaseInfo 1                                                                            // [0x104958] 0x008a9000 + 0x104958 = 0x009ad958
RTTICompleteObjectLocator BaseInfo                                                                                 // [0x104968] 0x008a9000 + 0x104968 = 0x009ad968
.long 0x00000000                                                                                                   // [0x10497c] 0x008a9000 + 0x10497c = 0x009ad97c
RTTIBaseClassDescriptor PuzzleGame 3                                                                               // [0x104980] 0x008a9000 + 0x104980 = 0x009ad980
RTTIBaseClassArray PuzzleGame                                                                                      // [0x104998] 0x008a9000 + 0x104998 = 0x009ad998
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1049ac] 0x008a9000 + 0x1049ac = 0x009ad9ac
RTTIClassHierarchyDescriptor PuzzleGame 4                                                                          // [0x1049b0] 0x008a9000 + 0x1049b0 = 0x009ad9b0
RTTICompleteObjectLocator PuzzleGame                                                                               // [0x1049c0] 0x008a9000 + 0x1049c0 = 0x009ad9c0
.long 0x00000000                                                                                                   // [0x1049d4] 0x008a9000 + 0x1049d4 = 0x009ad9d4
RTTIBaseClassDescriptor GStreetLantern 4                                                                           // [0x1049d8] 0x008a9000 + 0x1049d8 = 0x009ad9d8
RTTIBaseClassArray GStreetLantern                                                                                  // [0x1049f0] 0x008a9000 + 0x1049f0 = 0x009ad9f0
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GStreetLantern 5                                                                      // [0x104a08] 0x008a9000 + 0x104a08 = 0x009ada08
RTTICompleteObjectLocator GStreetLantern                                                                           // [0x104a18] 0x008a9000 + 0x104a18 = 0x009ada18
.long 0x00000000                                                                                                   // [0x104a2c] 0x008a9000 + 0x104a2c = 0x009ada2c
RTTIBaseClassDescriptor GStreetLight 3                                                                             // [0x104a30] 0x008a9000 + 0x104a30 = 0x009ada30
RTTIBaseClassArray GStreetLight                                                                                    // [0x104a48] 0x008a9000 + 0x104a48 = 0x009ada48
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x104a5c] 0x008a9000 + 0x104a5c = 0x009ada5c
RTTIClassHierarchyDescriptor GStreetLight 4                                                                        // [0x104a60] 0x008a9000 + 0x104a60 = 0x009ada60
RTTICompleteObjectLocator GStreetLight                                                                             // [0x104a70] 0x008a9000 + 0x104a70 = 0x009ada70
.long 0x00000000                                                                                                   // [0x104a84] 0x008a9000 + 0x104a84 = 0x009ada84
RTTIBaseClassDescriptor TownCentre 7                                                                               // [0x104a88] 0x008a9000 + 0x104a88 = 0x009ada88
RTTIBaseClassArray TownCentre                                                                                      // [0x104aa0] 0x008a9000 + 0x104aa0 = 0x009adaa0
.long ??_R1A@?0A@A@Abode@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x104ac4] 0x008a9000 + 0x104ac4 = 0x009adac4
RTTIClassHierarchyDescriptor TownCentre 8                                                                          // [0x104ac8] 0x008a9000 + 0x104ac8 = 0x009adac8
RTTICompleteObjectLocator TownCentre                                                                               // [0x104ad8] 0x008a9000 + 0x104ad8 = 0x009adad8
.long 0x00000000                                                                                                   // [0x104aec] 0x008a9000 + 0x104aec = 0x009adaec
RTTIBaseClassDescriptor PuzzleLion 11                                                                              // [0x104af0] 0x008a9000 + 0x104af0 = 0x009adaf0
RTTIBaseClassArray PuzzleLion                                                                                      // [0x104b08] 0x008a9000 + 0x104b08 = 0x009adb08
.long ??_R1A@?0A@A@PieceWolf@@8
.long ??_R1A@?0A@A@Wolf@@8
.long ??_R1A@?0A@A@Lion@@8
.long ??_R1A@?0A@A@Animal@@8
.long ??_R1A@?0A@A@Living@@8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x104b3c] 0x008a9000 + 0x104b3c = 0x009adb3c
RTTIClassHierarchyDescriptor PuzzleLion 12                                                                         // [0x104b40] 0x008a9000 + 0x104b40 = 0x009adb40
RTTICompleteObjectLocator PuzzleLion                                                                               // [0x104b50] 0x008a9000 + 0x104b50 = 0x009adb50
.long 0x00000000                                                                                                   // [0x104b64] 0x008a9000 + 0x104b64 = 0x009adb64
RTTIBaseClassDescriptor GWaterfall 4                                                                               // [0x104b68] 0x008a9000 + 0x104b68 = 0x009adb68
RTTIBaseClassArray GWaterfall                                                                                      // [0x104b80] 0x008a9000 + 0x104b80 = 0x009adb80
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GWaterfall 5                                                                          // [0x104b98] 0x008a9000 + 0x104b98 = 0x009adb98
RTTICompleteObjectLocator GWaterfall                                                                               // [0x104ba8] 0x008a9000 + 0x104ba8 = 0x009adba8
.long 0x00000000                                                                                                   // [0x104bbc] 0x008a9000 + 0x104bbc = 0x009adbbc
RTTIBaseClassDescriptor Pot 6                                                                                      // [0x104bc0] 0x008a9000 + 0x104bc0 = 0x009adbc0
RTTIBaseClassDescriptor PotStructure 7                                                                             // [0x104bd8] 0x008a9000 + 0x104bd8 = 0x009adbd8
RTTIBaseClassDescriptor PileResource 8                                                                             // [0x104bf0] 0x008a9000 + 0x104bf0 = 0x009adbf0
RTTIBaseClassDescriptor PileWood 9                                                                                 // [0x104c08] 0x008a9000 + 0x104c08 = 0x009adc08
RTTIBaseClassArray PileWood                                                                                        // [0x104c20] 0x008a9000 + 0x104c20 = 0x009adc20
.long ??_R1A@?0A@A@PileResource@@8
.long ??_R1A@?0A@A@PotStructure@@8
.long ??_R1A@?0A@A@Pot@@8
.long ??_R1A@?0A@A@MobileObject@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x104c4c] 0x008a9000 + 0x104c4c = 0x009adc4c
RTTIClassHierarchyDescriptor PileWood 10                                                                           // [0x104c50] 0x008a9000 + 0x104c50 = 0x009adc50
RTTICompleteObjectLocator PileWood                                                                                 // [0x104c60] 0x008a9000 + 0x104c60 = 0x009adc60
.long 0x00000000                                                                                                   // [0x104c74] 0x008a9000 + 0x104c74 = 0x009adc74
RTTIBaseClassDescriptor GComputerSpellCast 2                                                                       // [0x104c78] 0x008a9000 + 0x104c78 = 0x009adc78
RTTIBaseClassArray GComputerSpellCast                                                                              // [0x104c90] 0x008a9000 + 0x104c90 = 0x009adc90
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GComputerSpellCast 3                                                                  // [0x104ca0] 0x008a9000 + 0x104ca0 = 0x009adca0
RTTICompleteObjectLocator GComputerSpellCast                                                                       // [0x104cb0] 0x008a9000 + 0x104cb0 = 0x009adcb0
.long 0x00000000                                                                                                   // [0x104cc4] 0x008a9000 + 0x104cc4 = 0x009adcc4
RTTIBaseClassDescriptor GStream 2                                                                                  // [0x104cc8] 0x008a9000 + 0x104cc8 = 0x009adcc8
RTTIBaseClassArray GStream                                                                                         // [0x104ce0] 0x008a9000 + 0x104ce0 = 0x009adce0
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GStream 3                                                                             // [0x104cf0] 0x008a9000 + 0x104cf0 = 0x009adcf0
RTTICompleteObjectLocator GStream                                                                                  // [0x104d00] 0x008a9000 + 0x104d00 = 0x009add00
.long 0x00000000                                                                                                   // [0x104d14] 0x008a9000 + 0x104d14 = 0x009add14
RTTIBaseClassDescriptor SpellTeleport 5                                                                            // [0x104d18] 0x008a9000 + 0x104d18 = 0x009add18
RTTIBaseClassArray SpellTeleport                                                                                   // [0x104d30] 0x008a9000 + 0x104d30 = 0x009add30
.long ??_R1A@?0A@A@SpellWithObjects@@8
.long ??_R1A@?0A@A@Spell@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x104d4c] 0x008a9000 + 0x104d4c = 0x009add4c
RTTIClassHierarchyDescriptor SpellTeleport 6                                                                       // [0x104d50] 0x008a9000 + 0x104d50 = 0x009add50
RTTICompleteObjectLocator SpellTeleport                                                                            // [0x104d60] 0x008a9000 + 0x104d60 = 0x009add60
.long 0x00000000                                                                                                   // [0x104d74] 0x008a9000 + 0x104d74 = 0x009add74
RTTIBaseClassDescriptor InfluenceRing 3                                                                            // [0x104d78] 0x008a9000 + 0x104d78 = 0x009add78
RTTIBaseClassArray InfluenceRing                                                                                   // [0x104d90] 0x008a9000 + 0x104d90 = 0x009add90
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x104da4] 0x008a9000 + 0x104da4 = 0x009adda4
RTTIClassHierarchyDescriptor InfluenceRing 4                                                                       // [0x104da8] 0x008a9000 + 0x104da8 = 0x009adda8
RTTICompleteObjectLocator InfluenceRing                                                                            // [0x104db8] 0x008a9000 + 0x104db8 = 0x009addb8
.long 0x00000000                                                                                                   // [0x104dcc] 0x008a9000 + 0x104dcc = 0x009addcc
RTTIBaseClassDescriptor FieldCrop 6                                                                                // [0x104dd0] 0x008a9000 + 0x104dd0 = 0x009addd0
RTTIBaseClassArray FieldCrop                                                                                       // [0x104de8] 0x008a9000 + 0x104de8 = 0x009adde8
.long ??_R1A@?0A@A@MobileObject@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor FieldCrop 7                                                                           // [0x104e08] 0x008a9000 + 0x104e08 = 0x009ade08
RTTICompleteObjectLocator FieldCrop                                                                                // [0x104e18] 0x008a9000 + 0x104e18 = 0x009ade18
.long 0x00000000                                                                                                   // [0x104e2c] 0x008a9000 + 0x104e2c = 0x009ade2c
RTTIBaseClassDescriptor PuzzleVillager 9                                                                           // [0x104e30] 0x008a9000 + 0x104e30 = 0x009ade30
RTTIBaseClassArray PuzzleVillager                                                                                  // [0x104e48] 0x008a9000 + 0x104e48 = 0x009ade48
.long ??_R1A@?0A@A@PieceVillager@@8
.long ??_R1A@?0A@A@Animal@@8
.long ??_R1A@?0A@A@Living@@8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x104e74] 0x008a9000 + 0x104e74 = 0x009ade74
RTTIClassHierarchyDescriptor PuzzleVillager 10                                                                     // [0x104e78] 0x008a9000 + 0x104e78 = 0x009ade78
RTTICompleteObjectLocator PuzzleVillager                                                                           // [0x104e88] 0x008a9000 + 0x104e88 = 0x009ade88
.long 0x00000000                                                                                                   // [0x104e9c] 0x008a9000 + 0x104e9c = 0x009ade9c
RTTIBaseClassDescriptor Mist 3                                                                                     // [0x104ea0] 0x008a9000 + 0x104ea0 = 0x009adea0
RTTIBaseClassArray Mist                                                                                            // [0x104eb8] 0x008a9000 + 0x104eb8 = 0x009adeb8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x104ecc] 0x008a9000 + 0x104ecc = 0x009adecc
RTTIClassHierarchyDescriptor Mist 4                                                                                // [0x104ed0] 0x008a9000 + 0x104ed0 = 0x009aded0
RTTICompleteObjectLocator Mist                                                                                     // [0x104ee0] 0x008a9000 + 0x104ee0 = 0x009adee0
.long 0x00000000                                                                                                   // [0x104ef4] 0x008a9000 + 0x104ef4 = 0x009adef4
RTTIBaseClassArray SpellFlock                                                                                      // [0x104ef8] 0x008a9000 + 0x104ef8 = 0x009adef8
.long ??_R1A@?0A@A@SpellWithObjects@@8
.long ??_R1A@?0A@A@Spell@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x104f14] 0x008a9000 + 0x104f14 = 0x009adf14
RTTIClassHierarchyDescriptor SpellFlock 6                                                                          // [0x104f18] 0x008a9000 + 0x104f18 = 0x009adf18
RTTICompleteObjectLocator SpellFlock                                                                               // [0x104f28] 0x008a9000 + 0x104f28 = 0x009adf28
.long 0x00000000                                                                                                   // [0x104f3c] 0x008a9000 + 0x104f3c = 0x009adf3c
RTTIBaseClassArray MobileStatic                                                                                    // [0x104f40] 0x008a9000 + 0x104f40 = 0x009adf40
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor MobileStatic 7                                                                        // [0x104f60] 0x008a9000 + 0x104f60 = 0x009adf60
RTTICompleteObjectLocator MobileStatic                                                                             // [0x104f70] 0x008a9000 + 0x104f70 = 0x009adf70
.long 0x00000000                                                                                                   // [0x104f84] 0x008a9000 + 0x104f84 = 0x009adf84
RTTIBaseClassDescriptor SpellWithObjects 4                                                                         // [0x104f88] 0x008a9000 + 0x104f88 = 0x009adf88
RTTIBaseClassDescriptor SpellFlock 5                                                                               // [0x104fa0] 0x008a9000 + 0x104fa0 = 0x009adfa0
RTTIBaseClassDescriptor SpellFlockGround 6                                                                         // [0x104fb8] 0x008a9000 + 0x104fb8 = 0x009adfb8
RTTIBaseClassArray SpellFlockGround                                                                                // [0x104fd0] 0x008a9000 + 0x104fd0 = 0x009adfd0
.long ??_R1A@?0A@A@SpellFlock@@8
.long ??_R1A@?0A@A@SpellWithObjects@@8
.long ??_R1A@?0A@A@Spell@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SpellFlockGround 7                                                                    // [0x104ff0] 0x008a9000 + 0x104ff0 = 0x009adff0
RTTICompleteObjectLocator SpellFlockGround                                                                         // [0x105000] 0x008a9000 + 0x105000 = 0x009ae000
.long 0x00000000                                                                                                   // [0x105014] 0x008a9000 + 0x105014 = 0x009ae014
RTTIBaseClassDescriptor WeatherThing 3                                                                             // [0x105018] 0x008a9000 + 0x105018 = 0x009ae018
RTTIBaseClassArray WeatherThing                                                                                    // [0x105030] 0x008a9000 + 0x105030 = 0x009ae030
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x105044] 0x008a9000 + 0x105044 = 0x009ae044
RTTIClassHierarchyDescriptor WeatherThing 4                                                                        // [0x105048] 0x008a9000 + 0x105048 = 0x009ae048
RTTICompleteObjectLocator WeatherThing                                                                             // [0x105058] 0x008a9000 + 0x105058 = 0x009ae058
.long 0x00000000                                                                                                   // [0x10506c] 0x008a9000 + 0x10506c = 0x009ae06c
RTTIBaseClassDescriptor GComputerSeen 2                                                                            // [0x105070] 0x008a9000 + 0x105070 = 0x009ae070
RTTIBaseClassArray GComputerSeen                                                                                   // [0x105088] 0x008a9000 + 0x105088 = 0x009ae088
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GComputerSeen 3                                                                       // [0x105098] 0x008a9000 + 0x105098 = 0x009ae098
RTTICompleteObjectLocator GComputerSeen                                                                            // [0x1050a8] 0x008a9000 + 0x1050a8 = 0x009ae0a8
.long 0x00000000                                                                                                   // [0x1050bc] 0x008a9000 + 0x1050bc = 0x009ae0bc
RTTIBaseClassArray MobileObject                                                                                    // [0x1050c0] 0x008a9000 + 0x1050c0 = 0x009ae0c0
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1050dc] 0x008a9000 + 0x1050dc = 0x009ae0dc
RTTIClassHierarchyDescriptor MobileObject 6                                                                        // [0x1050e0] 0x008a9000 + 0x1050e0 = 0x009ae0e0
RTTICompleteObjectLocator MobileObject                                                                             // [0x1050f0] 0x008a9000 + 0x1050f0 = 0x009ae0f0
.long 0x00000000                                                                                                   // [0x105104] 0x008a9000 + 0x105104 = 0x009ae104
RTTIBaseClassDescriptor GParticleContainer 3                                                                       // [0x105108] 0x008a9000 + 0x105108 = 0x009ae108
RTTIBaseClassArray GParticleContainer                                                                              // [0x105120] 0x008a9000 + 0x105120 = 0x009ae120
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x105134] 0x008a9000 + 0x105134 = 0x009ae134
RTTIClassHierarchyDescriptor GParticleContainer 4                                                                  // [0x105138] 0x008a9000 + 0x105138 = 0x009ae138
RTTICompleteObjectLocator GParticleContainer                                                                       // [0x105148] 0x008a9000 + 0x105148 = 0x009ae148
.long 0x00000000                                                                                                   // [0x10515c] 0x008a9000 + 0x10515c = 0x009ae15c
RTTIBaseClassDescriptor GComputerPlayer 3                                                                          // [0x105160] 0x008a9000 + 0x105160 = 0x009ae160
RTTIBaseClassArray GComputerPlayer                                                                                 // [0x105178] 0x008a9000 + 0x105178 = 0x009ae178
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10518c] 0x008a9000 + 0x10518c = 0x009ae18c
RTTIClassHierarchyDescriptor GComputerPlayer 4                                                                     // [0x105190] 0x008a9000 + 0x105190 = 0x009ae190
RTTICompleteObjectLocator GComputerPlayer                                                                          // [0x1051a0] 0x008a9000 + 0x1051a0 = 0x009ae1a0
.long 0x00000000                                                                                                   // [0x1051b4] 0x008a9000 + 0x1051b4 = 0x009ae1b4
RTTIBaseClassDescriptor PuzzleSheep 11                                                                             // [0x1051b8] 0x008a9000 + 0x1051b8 = 0x009ae1b8
RTTIBaseClassArray PuzzleSheep                                                                                     // [0x1051d0] 0x008a9000 + 0x1051d0 = 0x009ae1d0
.long ??_R1A@?0A@A@PieceSheep@@8
.long ??_R1A@?0A@A@Sheep@@8
.long ??_R1A@?0A@A@Cow@@8
.long ??_R1A@?0A@A@Animal@@8
.long ??_R1A@?0A@A@Living@@8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x105204] 0x008a9000 + 0x105204 = 0x009ae204
RTTIClassHierarchyDescriptor PuzzleSheep 12                                                                        // [0x105208] 0x008a9000 + 0x105208 = 0x009ae208
RTTICompleteObjectLocator PuzzleSheep                                                                              // [0x105218] 0x008a9000 + 0x105218 = 0x009ae218
.long 0x00000000                                                                                                   // [0x10522c] 0x008a9000 + 0x10522c = 0x009ae22c
RTTIBaseClassDescriptor HanoiBlock 6                                                                               // [0x105230] 0x008a9000 + 0x105230 = 0x009ae230
RTTIBaseClassArray HanoiBlock                                                                                      // [0x105248] 0x008a9000 + 0x105248 = 0x009ae248
.long ??_R1A@?0A@A@MobileObject@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor HanoiBlock 7                                                                          // [0x105268] 0x008a9000 + 0x105268 = 0x009ae268
RTTICompleteObjectLocator HanoiBlock                                                                               // [0x105278] 0x008a9000 + 0x105278 = 0x009ae278
.long 0x00000000                                                                                                   // [0x10528c] 0x008a9000 + 0x10528c = 0x009ae28c
RTTIBaseClassDescriptor WorshipSite 7                                                                              // [0x105290] 0x008a9000 + 0x105290 = 0x009ae290
RTTIBaseClassArray WorshipSite                                                                                     // [0x1052a8] 0x008a9000 + 0x1052a8 = 0x009ae2a8
.long ??_R1A@?0A@A@CitadelPart@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1052cc] 0x008a9000 + 0x1052cc = 0x009ae2cc
RTTIClassHierarchyDescriptor WorshipSite 8                                                                         // [0x1052d0] 0x008a9000 + 0x1052d0 = 0x009ae2d0
RTTICompleteObjectLocator WorshipSite                                                                              // [0x1052e0] 0x008a9000 + 0x1052e0 = 0x009ae2e0
.long 0x00000000                                                                                                   // [0x1052f4] 0x008a9000 + 0x1052f4 = 0x009ae2f4
RTTIBaseClassDescriptor SpellResource 4                                                                            // [0x1052f8] 0x008a9000 + 0x1052f8 = 0x009ae2f8
RTTIBaseClassArray SpellResource                                                                                   // [0x105310] 0x008a9000 + 0x105310 = 0x009ae310
.long ??_R1A@?0A@A@Spell@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SpellResource 5                                                                       // [0x105328] 0x008a9000 + 0x105328 = 0x009ae328
RTTICompleteObjectLocator SpellResource                                                                            // [0x105338] 0x008a9000 + 0x105338 = 0x009ae338
.long 0x00000000                                                                                                   // [0x10534c] 0x008a9000 + 0x10534c = 0x009ae34c
RTTIBaseClassDescriptor Graveyard 7                                                                                // [0x105350] 0x008a9000 + 0x105350 = 0x009ae350
RTTIBaseClassArray Graveyard                                                                                       // [0x105368] 0x008a9000 + 0x105368 = 0x009ae368
.long ??_R1A@?0A@A@Abode@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10538c] 0x008a9000 + 0x10538c = 0x009ae38c
RTTIClassHierarchyDescriptor Graveyard 8                                                                           // [0x105390] 0x008a9000 + 0x105390 = 0x009ae390
RTTICompleteObjectLocator Graveyard                                                                                // [0x1053a0] 0x008a9000 + 0x1053a0 = 0x009ae3a0
.long 0x00000000                                                                                                   // [0x1053b4] 0x008a9000 + 0x1053b4 = 0x009ae3b4
RTTIBaseClassDescriptor ScriptTimer 3                                                                              // [0x1053b8] 0x008a9000 + 0x1053b8 = 0x009ae3b8
RTTIBaseClassArray ScriptTimer                                                                                     // [0x1053d0] 0x008a9000 + 0x1053d0 = 0x009ae3d0
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1053e4] 0x008a9000 + 0x1053e4 = 0x009ae3e4
RTTIClassHierarchyDescriptor ScriptTimer 4                                                                         // [0x1053e8] 0x008a9000 + 0x1053e8 = 0x009ae3e8
RTTICompleteObjectLocator ScriptTimer                                                                              // [0x1053f8] 0x008a9000 + 0x1053f8 = 0x009ae3f8
.long 0x00000000                                                                                                   // [0x10540c] 0x008a9000 + 0x10540c = 0x009ae40c
RTTIBaseClassDescriptor Wonder 7                                                                                   // [0x105410] 0x008a9000 + 0x105410 = 0x009ae410
RTTIBaseClassArray Wonder                                                                                          // [0x105428] 0x008a9000 + 0x105428 = 0x009ae428
.long ??_R1A@?0A@A@Abode@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10544c] 0x008a9000 + 0x10544c = 0x009ae44c
RTTIClassHierarchyDescriptor Wonder 8                                                                              // [0x105450] 0x008a9000 + 0x105450 = 0x009ae450
RTTICompleteObjectLocator Wonder                                                                                   // [0x105460] 0x008a9000 + 0x105460 = 0x009ae460
.long 0x00000000                                                                                                   // [0x105474] 0x008a9000 + 0x105474 = 0x009ae474
RTTIBaseClassDescriptor ShowNeeds 2                                                                                // [0x105478] 0x008a9000 + 0x105478 = 0x009ae478
RTTIBaseClassArray ShowNeeds                                                                                       // [0x105490] 0x008a9000 + 0x105490 = 0x009ae490
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ShowNeeds 3                                                                           // [0x1054a0] 0x008a9000 + 0x1054a0 = 0x009ae4a0
RTTICompleteObjectLocator ShowNeeds                                                                                // [0x1054b0] 0x008a9000 + 0x1054b0 = 0x009ae4b0
.long 0x00000000                                                                                                   // [0x1054c4] 0x008a9000 + 0x1054c4 = 0x009ae4c4
RTTIBaseClassArray Totem                                                                                           // [0x1054c8] 0x008a9000 + 0x1054c8 = 0x009ae4c8
.long ??_R1A@?0A@A@Abode@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1054ec] 0x008a9000 + 0x1054ec = 0x009ae4ec
RTTIClassHierarchyDescriptor Totem 8                                                                               // [0x1054f0] 0x008a9000 + 0x1054f0 = 0x009ae4f0
RTTICompleteObjectLocator Totem                                                                                    // [0x105500] 0x008a9000 + 0x105500 = 0x009ae500
.long 0x00000000                                                                                                   // [0x105514] 0x008a9000 + 0x105514 = 0x009ae514
RTTIBaseClassArray TownSpellIcon                                                                                   // [0x105518] 0x008a9000 + 0x105518 = 0x009ae518
.long ??_R1A@?0A@A@SpellIcon@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10553c] 0x008a9000 + 0x10553c = 0x009ae53c
RTTIClassHierarchyDescriptor TownSpellIcon 8                                                                       // [0x105540] 0x008a9000 + 0x105540 = 0x009ae540
RTTICompleteObjectLocator TownSpellIcon                                                                            // [0x105550] 0x008a9000 + 0x105550 = 0x009ae550
.long 0x00000000                                                                                                   // [0x105564] 0x008a9000 + 0x105564 = 0x009ae564
RTTIBaseClassArray Rock                                                                                            // [0x105568] 0x008a9000 + 0x105568 = 0x009ae568
.long ??_R1A@?0A@A@MobileStatic@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10558c] 0x008a9000 + 0x10558c = 0x009ae58c
RTTIClassHierarchyDescriptor Rock 8                                                                                // [0x105590] 0x008a9000 + 0x105590 = 0x009ae590
RTTICompleteObjectLocator Rock                                                                                     // [0x1055a0] 0x008a9000 + 0x1055a0 = 0x009ae5a0
.long 0x00000000                                                                                                   // [0x1055b4] 0x008a9000 + 0x1055b4 = 0x009ae5b4
RTTIBaseClassDescriptor PlannedTownCentre 5                                                                        // [0x1055b8] 0x008a9000 + 0x1055b8 = 0x009ae5b8
RTTIBaseClassArray PlannedTownCentre                                                                               // [0x1055d0] 0x008a9000 + 0x1055d0 = 0x009ae5d0
.long ??_R1A@?0A@A@PlannedAbode@@8
.long ??_R1A@?0A@A@PlannedMultiMapFixed@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1055ec] 0x008a9000 + 0x1055ec = 0x009ae5ec
RTTIClassHierarchyDescriptor PlannedTownCentre 6                                                                   // [0x1055f0] 0x008a9000 + 0x1055f0 = 0x009ae5f0
RTTICompleteObjectLocator PlannedTownCentre                                                                        // [0x105600] 0x008a9000 + 0x105600 = 0x009ae600
.long 0x00000000                                                                                                   // [0x105614] 0x008a9000 + 0x105614 = 0x009ae614
RTTIBaseClassDescriptor Scaffold 6                                                                                 // [0x105618] 0x008a9000 + 0x105618 = 0x009ae618
RTTIBaseClassArray Scaffold                                                                                        // [0x105630] 0x008a9000 + 0x105630 = 0x009ae630
.long ??_R1A@?0A@A@MobileObject@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Scaffold 7                                                                            // [0x105650] 0x008a9000 + 0x105650 = 0x009ae650
RTTICompleteObjectLocator Scaffold                                                                                 // [0x105660] 0x008a9000 + 0x105660 = 0x009ae660
.long 0x00000000                                                                                                   // [0x105674] 0x008a9000 + 0x105674 = 0x009ae674
RTTIBaseClassDescriptor SpellWater 4                                                                               // [0x105678] 0x008a9000 + 0x105678 = 0x009ae678
RTTIBaseClassArray SpellWater                                                                                      // [0x105690] 0x008a9000 + 0x105690 = 0x009ae690
.long ??_R1A@?0A@A@Spell@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SpellWater 5                                                                          // [0x1056a8] 0x008a9000 + 0x1056a8 = 0x009ae6a8
RTTICompleteObjectLocator SpellWater                                                                               // [0x1056b8] 0x008a9000 + 0x1056b8 = 0x009ae6b8
.long 0x00000000                                                                                                   // [0x1056cc] 0x008a9000 + 0x1056cc = 0x009ae6cc
RTTIBaseClassDescriptor ShowNeedsVisuals 4                                                                         // [0x1056d0] 0x008a9000 + 0x1056d0 = 0x009ae6d0
RTTIBaseClassArray ShowNeedsVisuals                                                                                // [0x1056e8] 0x008a9000 + 0x1056e8 = 0x009ae6e8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ShowNeedsVisuals 5                                                                    // [0x105700] 0x008a9000 + 0x105700 = 0x009ae700
RTTICompleteObjectLocator ShowNeedsVisuals                                                                         // [0x105710] 0x008a9000 + 0x105710 = 0x009ae710
.long 0x00000000                                                                                                   // [0x105724] 0x008a9000 + 0x105724 = 0x009ae724
RTTIBaseClassDescriptor Spell 3                                                                                    // [0x105728] 0x008a9000 + 0x105728 = 0x009ae728
RTTIBaseClassDescriptor SpellForest 4                                                                              // [0x105740] 0x008a9000 + 0x105740 = 0x009ae740
RTTIBaseClassArray SpellForest                                                                                     // [0x105758] 0x008a9000 + 0x105758 = 0x009ae758
.long ??_R1A@?0A@A@Spell@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SpellForest 5                                                                         // [0x105770] 0x008a9000 + 0x105770 = 0x009ae770
RTTICompleteObjectLocator SpellForest                                                                              // [0x105780] 0x008a9000 + 0x105780 = 0x009ae780
.long 0x00000000                                                                                                   // [0x105794] 0x008a9000 + 0x105794 = 0x009ae794
RTTIBaseClassDescriptor TotemStatue 6                                                                              // [0x105798] 0x008a9000 + 0x105798 = 0x009ae798
RTTIBaseClassArray TotemStatue                                                                                     // [0x1057b0] 0x008a9000 + 0x1057b0 = 0x009ae7b0
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor TotemStatue 7                                                                         // [0x1057d0] 0x008a9000 + 0x1057d0 = 0x009ae7d0
RTTICompleteObjectLocator TotemStatue                                                                              // [0x1057e0] 0x008a9000 + 0x1057e0 = 0x009ae7e0
.long 0x00000000                                                                                                   // [0x1057f4] 0x008a9000 + 0x1057f4 = 0x009ae7f4
RTTIBaseClassDescriptor SpellIcon 6                                                                                // [0x1057f8] 0x008a9000 + 0x1057f8 = 0x009ae7f8
RTTIBaseClassDescriptor TownSpellIcon 7                                                                            // [0x105810] 0x008a9000 + 0x105810 = 0x009ae810
RTTIBaseClassDescriptor TownCentreSpellIcon 8                                                                      // [0x105828] 0x008a9000 + 0x105828 = 0x009ae828
RTTIBaseClassArray TownCentreSpellIcon                                                                             // [0x105840] 0x008a9000 + 0x105840 = 0x009ae840
.long ??_R1A@?0A@A@TownSpellIcon@@8
.long ??_R1A@?0A@A@SpellIcon@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor TownCentreSpellIcon 9                                                                 // [0x105868] 0x008a9000 + 0x105868 = 0x009ae868
RTTICompleteObjectLocator TownCentreSpellIcon                                                                      // [0x105878] 0x008a9000 + 0x105878 = 0x009ae878
.long 0x00000000                                                                                                   // [0x10588c] 0x008a9000 + 0x10588c = 0x009ae88c
RTTIBaseClassDescriptor ScriptMarker 3                                                                             // [0x105890] 0x008a9000 + 0x105890 = 0x009ae890
RTTIBaseClassArray ScriptMarker                                                                                    // [0x1058a8] 0x008a9000 + 0x1058a8 = 0x009ae8a8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1058bc] 0x008a9000 + 0x1058bc = 0x009ae8bc
RTTIClassHierarchyDescriptor ScriptMarker 4                                                                        // [0x1058c0] 0x008a9000 + 0x1058c0 = 0x009ae8c0
RTTICompleteObjectLocator ScriptMarker                                                                             // [0x1058d0] 0x008a9000 + 0x1058d0 = 0x009ae8d0
.long 0x00000000                                                                                                   // [0x1058e4] 0x008a9000 + 0x1058e4 = 0x009ae8e4
RTTIBaseClassDescriptor Totem 7                                                                                    // [0x1058e8] 0x008a9000 + 0x1058e8 = 0x009ae8e8
RTTIBaseClassDescriptor PuzzleTotem 8                                                                              // [0x105900] 0x008a9000 + 0x105900 = 0x009ae900
RTTIBaseClassArray PuzzleTotem                                                                                     // [0x105918] 0x008a9000 + 0x105918 = 0x009ae918
.long ??_R1A@?0A@A@Totem@@8
.long ??_R1A@?0A@A@Abode@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor PuzzleTotem 9                                                                         // [0x105940] 0x008a9000 + 0x105940 = 0x009ae940
RTTICompleteObjectLocator PuzzleTotem                                                                              // [0x105950] 0x008a9000 + 0x105950 = 0x009ae950
.long 0x00000000                                                                                                   // [0x105964] 0x008a9000 + 0x105964 = 0x009ae964
RTTIBaseClassArray PlannedMultiMapFixed                                                                            // [0x105968] 0x008a9000 + 0x105968 = 0x009ae968
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10597c] 0x008a9000 + 0x10597c = 0x009ae97c
RTTIClassHierarchyDescriptor PlannedMultiMapFixed 4                                                                // [0x105980] 0x008a9000 + 0x105980 = 0x009ae980
RTTICompleteObjectLocator PlannedMultiMapFixed                                                                     // [0x105990] 0x008a9000 + 0x105990 = 0x009ae990
.long 0x00000000                                                                                                   // [0x1059a4] 0x008a9000 + 0x1059a4 = 0x009ae9a4
RTTIBaseClassArray SpellIcon                                                                                       // [0x1059a8] 0x008a9000 + 0x1059a8 = 0x009ae9a8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SpellIcon 7                                                                           // [0x1059c8] 0x008a9000 + 0x1059c8 = 0x009ae9c8
RTTICompleteObjectLocator SpellIcon                                                                                // [0x1059d8] 0x008a9000 + 0x1059d8 = 0x009ae9d8
.long 0x00000000                                                                                                   // [0x1059ec] 0x008a9000 + 0x1059ec = 0x009ae9ec
RTTIBaseClassArray PotStructure                                                                                    // [0x1059f0] 0x008a9000 + 0x1059f0 = 0x009ae9f0
.long ??_R1A@?0A@A@Pot@@8
.long ??_R1A@?0A@A@MobileObject@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x105a14] 0x008a9000 + 0x105a14 = 0x009aea14
RTTIClassHierarchyDescriptor PotStructure 8                                                                        // [0x105a18] 0x008a9000 + 0x105a18 = 0x009aea18
RTTICompleteObjectLocator PotStructure                                                                             // [0x105a28] 0x008a9000 + 0x105a28 = 0x009aea28
.long 0x00000000                                                                                                   // [0x105a3c] 0x008a9000 + 0x105a3c = 0x009aea3c
RTTIBaseClassDescriptor GBaseOnly 4                                                                                // [0x105a40] 0x008a9000 + 0x105a40 = 0x009aea40
RTTIBaseClassArray GBaseOnly                                                                                       // [0x105a58] 0x008a9000 + 0x105a58 = 0x009aea58
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GBaseOnly 5                                                                           // [0x105a70] 0x008a9000 + 0x105a70 = 0x009aea70
RTTICompleteObjectLocator GBaseOnly                                                                                // [0x105a80] 0x008a9000 + 0x105a80 = 0x009aea80
.long 0x00000000                                                                                                   // [0x105a94] 0x008a9000 + 0x105a94 = 0x009aea94
RTTIBaseClassDescriptor VortexObjectInfo 3                                                                         // [0x105a98] 0x008a9000 + 0x105a98 = 0x009aea98
RTTIBaseClassArray VortexObjectInfo                                                                                // [0x105ab0] 0x008a9000 + 0x105ab0 = 0x009aeab0
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x105ac4] 0x008a9000 + 0x105ac4 = 0x009aeac4
RTTIClassHierarchyDescriptor VortexObjectInfo 4                                                                    // [0x105ac8] 0x008a9000 + 0x105ac8 = 0x009aeac8
RTTICompleteObjectLocator VortexObjectInfo                                                                         // [0x105ad8] 0x008a9000 + 0x105ad8 = 0x009aead8
.long 0x00000000                                                                                                   // [0x105aec] 0x008a9000 + 0x105aec = 0x009aeaec
RTTIBaseClassDescriptor GClimate 2                                                                                 // [0x105af0] 0x008a9000 + 0x105af0 = 0x009aeaf0
RTTIBaseClassArray GClimate                                                                                        // [0x105b08] 0x008a9000 + 0x105b08 = 0x009aeb08
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GClimate 3                                                                            // [0x105b18] 0x008a9000 + 0x105b18 = 0x009aeb18
RTTICompleteObjectLocator GClimate                                                                                 // [0x105b28] 0x008a9000 + 0x105b28 = 0x009aeb28
.long 0x00000000                                                                                                   // [0x105b3c] 0x008a9000 + 0x105b3c = 0x009aeb3c
RTTIBaseClassDescriptor PlayerSubActionArgument 2                                                                  // [0x105b40] 0x008a9000 + 0x105b40 = 0x009aeb40
RTTIBaseClassArray PlayerSubActionArgument                                                                         // [0x105b58] 0x008a9000 + 0x105b58 = 0x009aeb58
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor PlayerSubActionArgument 3                                                             // [0x105b68] 0x008a9000 + 0x105b68 = 0x009aeb68
RTTICompleteObjectLocator PlayerSubActionArgument                                                                  // [0x105b78] 0x008a9000 + 0x105b78 = 0x009aeb78
.long 0x00000000                                                                                                   // [0x105b8c] 0x008a9000 + 0x105b8c = 0x009aeb8c
RTTIBaseClassDescriptor PlayerSubAction 2                                                                          // [0x105b90] 0x008a9000 + 0x105b90 = 0x009aeb90
RTTIBaseClassArray PlayerSubAction                                                                                 // [0x105ba8] 0x008a9000 + 0x105ba8 = 0x009aeba8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor PlayerSubAction 3                                                                     // [0x105bb8] 0x008a9000 + 0x105bb8 = 0x009aebb8
RTTICompleteObjectLocator PlayerSubAction                                                                          // [0x105bc8] 0x008a9000 + 0x105bc8 = 0x009aebc8
.long 0x00000000                                                                                                   // [0x105bdc] 0x008a9000 + 0x105bdc = 0x009aebdc
RTTIBaseClassDescriptor PlayerActionState 3                                                                        // [0x105be0] 0x008a9000 + 0x105be0 = 0x009aebe0
RTTIBaseClassArray PlayerActionState                                                                               // [0x105bf8] 0x008a9000 + 0x105bf8 = 0x009aebf8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x105c0c] 0x008a9000 + 0x105c0c = 0x009aec0c
RTTIClassHierarchyDescriptor PlayerActionState 4                                                                   // [0x105c10] 0x008a9000 + 0x105c10 = 0x009aec10
RTTICompleteObjectLocator PlayerActionState                                                                        // [0x105c20] 0x008a9000 + 0x105c20 = 0x009aec20
.long 0x00000000                                                                                                   // [0x105c34] 0x008a9000 + 0x105c34 = 0x009aec34
RTTIBaseClassDescriptor GComputerAttitudeToPlayer 2                                                                // [0x105c38] 0x008a9000 + 0x105c38 = 0x009aec38
RTTIBaseClassArray GComputerAttitudeToPlayer                                                                       // [0x105c50] 0x008a9000 + 0x105c50 = 0x009aec50
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GComputerAttitudeToPlayer 3                                                           // [0x105c60] 0x008a9000 + 0x105c60 = 0x009aec60
RTTICompleteObjectLocator GComputerAttitudeToPlayer                                                                // [0x105c70] 0x008a9000 + 0x105c70 = 0x009aec70
.long 0x00000000                                                                                                   // [0x105c84] 0x008a9000 + 0x105c84 = 0x009aec84
RTTIBaseClassDescriptor PSysInterface 3                                                                            // [0x105c88] 0x008a9000 + 0x105c88 = 0x009aec88
RTTIBaseClassDescriptor GJPSysInterface 4                                                                          // [0x105ca0] 0x008a9000 + 0x105ca0 = 0x009aeca0
RTTIBaseClassArray GJPSysInterface                                                                                 // [0x105cb8] 0x008a9000 + 0x105cb8 = 0x009aecb8
.long ??_R1A@?0A@A@PSysInterface@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GJPSysInterface 5                                                                     // [0x105cd0] 0x008a9000 + 0x105cd0 = 0x009aecd0
RTTICompleteObjectLocator GJPSysInterface                                                                          // [0x105ce0] 0x008a9000 + 0x105ce0 = 0x009aece0
.long 0x00000000                                                                                                   // [0x105cf4] 0x008a9000 + 0x105cf4 = 0x009aecf4
RTTIBaseClassArray PSysInterface                                                                                   // [0x105cf8] 0x008a9000 + 0x105cf8 = 0x009aecf8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x105d0c] 0x008a9000 + 0x105d0c = 0x009aed0c
RTTIClassHierarchyDescriptor PSysInterface 4                                                                       // [0x105d10] 0x008a9000 + 0x105d10 = 0x009aed10
RTTICompleteObjectLocator PSysInterface                                                                            // [0x105d20] 0x008a9000 + 0x105d20 = 0x009aed20
.long 0x00000000                                                                                                   // [0x105d34] 0x008a9000 + 0x105d34 = 0x009aed34
RTTIBaseClassDescriptor RenderParticle 3                                                                           // [0x105d38] 0x008a9000 + 0x105d38 = 0x009aed38
RTTIBaseClassDescriptor Particle3DPnt 4                                                                            // [0x105d50] 0x008a9000 + 0x105d50 = 0x009aed50
RTTIBaseClassArray Particle3DPnt                                                                                   // [0x105d68] 0x008a9000 + 0x105d68 = 0x009aed68
.long ??_R1A@?0A@A@RenderParticle@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Particle3DPnt 5                                                                       // [0x105d80] 0x008a9000 + 0x105d80 = 0x009aed80
RTTICompleteObjectLocator Particle3DPnt                                                                            // [0x105d90] 0x008a9000 + 0x105d90 = 0x009aed90
.long 0x00000000                                                                                                   // [0x105da4] 0x008a9000 + 0x105da4 = 0x009aeda4
RTTIBaseClassArray RenderParticle                                                                                  // [0x105da8] 0x008a9000 + 0x105da8 = 0x009aeda8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x105dbc] 0x008a9000 + 0x105dbc = 0x009aedbc
RTTIClassHierarchyDescriptor RenderParticle 4                                                                      // [0x105dc0] 0x008a9000 + 0x105dc0 = 0x009aedc0
RTTICompleteObjectLocator RenderParticle                                                                           // [0x105dd0] 0x008a9000 + 0x105dd0 = 0x009aedd0
.long 0x00000000                                                                                                   // [0x105de4] 0x008a9000 + 0x105de4 = 0x009aede4
RTTIBaseClassDescriptor RenderParticleGameObjectRef 4                                                              // [0x105de8] 0x008a9000 + 0x105de8 = 0x009aede8
RTTIBaseClassDescriptor RenderParticleGoldenShower 5                                                               // [0x105e00] 0x008a9000 + 0x105e00 = 0x009aee00
RTTIBaseClassArray RenderParticleGoldenShower                                                                      // [0x105e18] 0x008a9000 + 0x105e18 = 0x009aee18
.long ??_R1A@?0A@A@RenderParticleGameObjectRef@@8
.long ??_R1A@?0A@A@RenderParticle@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x105e34] 0x008a9000 + 0x105e34 = 0x009aee34
RTTIClassHierarchyDescriptor RenderParticleGoldenShower 6                                                          // [0x105e38] 0x008a9000 + 0x105e38 = 0x009aee38
RTTICompleteObjectLocator RenderParticleGoldenShower                                                               // [0x105e48] 0x008a9000 + 0x105e48 = 0x009aee48
.long 0x00000000                                                                                                   // [0x105e5c] 0x008a9000 + 0x105e5c = 0x009aee5c
RTTIBaseClassDescriptor Particle3DSprite 4                                                                         // [0x105e60] 0x008a9000 + 0x105e60 = 0x009aee60
RTTIBaseClassArray Particle3DSprite                                                                                // [0x105e78] 0x008a9000 + 0x105e78 = 0x009aee78
.long ??_R1A@?0A@A@RenderParticle@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Particle3DSprite 5                                                                    // [0x105e90] 0x008a9000 + 0x105e90 = 0x009aee90
RTTICompleteObjectLocator Particle3DSprite                                                                         // [0x105ea0] 0x008a9000 + 0x105ea0 = 0x009aeea0
.long 0x00000000                                                                                                   // [0x105eb4] 0x008a9000 + 0x105eb4 = 0x009aeeb4
RTTIBaseClassDescriptor ParticleChainJoint 4                                                                       // [0x105eb8] 0x008a9000 + 0x105eb8 = 0x009aeeb8
RTTIBaseClassArray ParticleChainJoint                                                                              // [0x105ed0] 0x008a9000 + 0x105ed0 = 0x009aeed0
.long ??_R1A@?0A@A@RenderParticle@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ParticleChainJoint 5                                                                  // [0x105ee8] 0x008a9000 + 0x105ee8 = 0x009aeee8
RTTICompleteObjectLocator ParticleChainJoint                                                                       // [0x105ef8] 0x008a9000 + 0x105ef8 = 0x009aeef8
.long 0x00000000                                                                                                   // [0x105f0c] 0x008a9000 + 0x105f0c = 0x009aef0c
RTTIBaseClassDescriptor BaseAtomModifierData 3                                                                     // [0x105f10] 0x008a9000 + 0x105f10 = 0x009aef10
RTTIBaseClassDescriptor AtomData@UR_SimpleBeam 4                                                                   // [0x105f28] 0x008a9000 + 0x105f28 = 0x009aef28
RTTIBaseClassArray AtomData@UR_SimpleBeam                                                                          // [0x105f40] 0x008a9000 + 0x105f40 = 0x009aef40
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_SimpleBeam 5                                                              // [0x105f58] 0x008a9000 + 0x105f58 = 0x009aef58
RTTICompleteObjectLocator AtomData@UR_SimpleBeam                                                                   // [0x105f68] 0x008a9000 + 0x105f68 = 0x009aef68
.long 0x00000000                                                                                                   // [0x105f7c] 0x008a9000 + 0x105f7c = 0x009aef7c
RTTIBaseClassDescriptor BaseCollectionModifierData 3                                                               // [0x105f80] 0x008a9000 + 0x105f80 = 0x009aef80
RTTIBaseClassDescriptor SubCollectionData@UR_SimpleBeam 4                                                          // [0x105f98] 0x008a9000 + 0x105f98 = 0x009aef98
RTTIBaseClassArray SubCollectionData@UR_SimpleBeam                                                                 // [0x105fb0] 0x008a9000 + 0x105fb0 = 0x009aefb0
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SubCollectionData@UR_SimpleBeam 5                                                     // [0x105fc8] 0x008a9000 + 0x105fc8 = 0x009aefc8
RTTICompleteObjectLocator SubCollectionData@UR_SimpleBeam                                                          // [0x105fd8] 0x008a9000 + 0x105fd8 = 0x009aefd8
.long 0x00000000                                                                                                   // [0x105fec] 0x008a9000 + 0x105fec = 0x009aefec
RTTIBaseClassArray BaseAtomModifierData                                                                            // [0x105ff0] 0x008a9000 + 0x105ff0 = 0x009aeff0
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x106004] 0x008a9000 + 0x106004 = 0x009af004
RTTIClassHierarchyDescriptor BaseAtomModifierData 4                                                                // [0x106008] 0x008a9000 + 0x106008 = 0x009af008
RTTICompleteObjectLocator BaseAtomModifierData                                                                     // [0x106018] 0x008a9000 + 0x106018 = 0x009af018
.long 0x00000000                                                                                                   // [0x10602c] 0x008a9000 + 0x10602c = 0x009af02c
RTTIBaseClassArray BaseCollectionModifierData                                                                      // [0x106030] 0x008a9000 + 0x106030 = 0x009af030
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x106044] 0x008a9000 + 0x106044 = 0x009af044
RTTIClassHierarchyDescriptor BaseCollectionModifierData 4                                                          // [0x106048] 0x008a9000 + 0x106048 = 0x009af048
RTTICompleteObjectLocator BaseCollectionModifierData                                                               // [0x106058] 0x008a9000 + 0x106058 = 0x009af058
.long 0x00000000                                                                                                   // [0x10606c] 0x008a9000 + 0x10606c = 0x009af06c
RTTIBaseClassDescriptor SubCollectionData@UR_Plasma 4                                                              // [0x106070] 0x008a9000 + 0x106070 = 0x009af070
RTTIBaseClassArray SubCollectionData@UR_Plasma                                                                     // [0x106088] 0x008a9000 + 0x106088 = 0x009af088
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SubCollectionData@UR_Plasma 5                                                         // [0x1060a0] 0x008a9000 + 0x1060a0 = 0x009af0a0
RTTICompleteObjectLocator SubCollectionData@UR_Plasma                                                              // [0x1060b0] 0x008a9000 + 0x1060b0 = 0x009af0b0
.long 0x00000000                                                                                                   // [0x1060c4] 0x008a9000 + 0x1060c4 = 0x009af0c4
RTTIBaseClassDescriptor AtomData@UR_Plasma 4                                                                       // [0x1060c8] 0x008a9000 + 0x1060c8 = 0x009af0c8
RTTIBaseClassArray AtomData@UR_Plasma                                                                              // [0x1060e0] 0x008a9000 + 0x1060e0 = 0x009af0e0
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_Plasma 5                                                                  // [0x1060f8] 0x008a9000 + 0x1060f8 = 0x009af0f8
RTTICompleteObjectLocator AtomData@UR_Plasma                                                                       // [0x106108] 0x008a9000 + 0x106108 = 0x009af108
.long 0x00000000                                                                                                   // [0x10611c] 0x008a9000 + 0x10611c = 0x009af11c
RTTIBaseClassDescriptor SpellPointInf 3                                                                            // [0x106120] 0x008a9000 + 0x106120 = 0x009af120
RTTIBaseClassArray SpellPointInf                                                                                   // [0x106138] 0x008a9000 + 0x106138 = 0x009af138
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10614c] 0x008a9000 + 0x10614c = 0x009af14c
RTTIClassHierarchyDescriptor SpellPointInf 4                                                                       // [0x106150] 0x008a9000 + 0x106150 = 0x009af150
RTTICompleteObjectLocator SpellPointInf                                                                            // [0x106160] 0x008a9000 + 0x106160 = 0x009af160
.long 0x00000000                                                                                                   // [0x106174] 0x008a9000 + 0x106174 = 0x009af174
RTTIBaseClassDescriptor AtomData@UR_ManaPathNew 4                                                                  // [0x106178] 0x008a9000 + 0x106178 = 0x009af178
RTTIBaseClassArray AtomData@UR_ManaPathNew                                                                         // [0x106190] 0x008a9000 + 0x106190 = 0x009af190
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_ManaPathNew 5                                                             // [0x1061a8] 0x008a9000 + 0x1061a8 = 0x009af1a8
RTTICompleteObjectLocator AtomData@UR_ManaPathNew                                                                  // [0x1061b8] 0x008a9000 + 0x1061b8 = 0x009af1b8
.long 0x00000000                                                                                                   // [0x1061cc] 0x008a9000 + 0x1061cc = 0x009af1cc
RTTIBaseClassDescriptor AtomData@UR_BeliefSprite 4                                                                 // [0x1061d0] 0x008a9000 + 0x1061d0 = 0x009af1d0
RTTIBaseClassArray AtomData@UR_BeliefSprite                                                                        // [0x1061e8] 0x008a9000 + 0x1061e8 = 0x009af1e8
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_BeliefSprite 5                                                            // [0x106200] 0x008a9000 + 0x106200 = 0x009af200
RTTICompleteObjectLocator AtomData@UR_BeliefSprite                                                                 // [0x106210] 0x008a9000 + 0x106210 = 0x009af210
.long 0x00000000                                                                                                   // [0x106224] 0x008a9000 + 0x106224 = 0x009af224
RTTIBaseClassDescriptor CollectionData@UR_LightSheetOnObject 4                                                     // [0x106228] 0x008a9000 + 0x106228 = 0x009af228
RTTIBaseClassArray CollectionData@UR_LightSheetOnObject                                                            // [0x106240] 0x008a9000 + 0x106240 = 0x009af240
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@UR_LightSheetOnObject 5                                                // [0x106258] 0x008a9000 + 0x106258 = 0x009af258
RTTICompleteObjectLocator CollectionData@UR_LightSheetOnObject                                                     // [0x106268] 0x008a9000 + 0x106268 = 0x009af268
.long 0x00000000                                                                                                   // [0x10627c] 0x008a9000 + 0x10627c = 0x009af27c
RTTIBaseClassDescriptor AtomData@AR_FadeOutOnceConditionTrue 4                                                     // [0x106280] 0x008a9000 + 0x106280 = 0x009af280
RTTIBaseClassArray AtomData@AR_FadeOutOnceConditionTrue                                                            // [0x106298] 0x008a9000 + 0x106298 = 0x009af298
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@AR_FadeOutOnceConditionTrue 5                                                // [0x1062b0] 0x008a9000 + 0x1062b0 = 0x009af2b0
RTTICompleteObjectLocator AtomData@AR_FadeOutOnceConditionTrue                                                     // [0x1062c0] 0x008a9000 + 0x1062c0 = 0x009af2c0
.long 0x00000000                                                                                                   // [0x1062d4] 0x008a9000 + 0x1062d4 = 0x009af2d4
RTTIBaseClassDescriptor AtomData@AddSoundToAtom 4                                                                  // [0x1062d8] 0x008a9000 + 0x1062d8 = 0x009af2d8
RTTIBaseClassArray AtomData@AddSoundToAtom                                                                         // [0x1062f0] 0x008a9000 + 0x1062f0 = 0x009af2f0
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@AddSoundToAtom 5                                                             // [0x106308] 0x008a9000 + 0x106308 = 0x009af308
RTTICompleteObjectLocator AtomData@AddSoundToAtom                                                                  // [0x106318] 0x008a9000 + 0x106318 = 0x009af318
.long 0x00000000                                                                                                   // [0x10632c] 0x008a9000 + 0x10632c = 0x009af32c
RTTIBaseClassDescriptor AtomData@RemoveSoundFromAtom 4                                                             // [0x106330] 0x008a9000 + 0x106330 = 0x009af330
RTTIBaseClassArray AtomData@RemoveSoundFromAtom                                                                    // [0x106348] 0x008a9000 + 0x106348 = 0x009af348
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@RemoveSoundFromAtom 5                                                        // [0x106360] 0x008a9000 + 0x106360 = 0x009af360
RTTICompleteObjectLocator AtomData@RemoveSoundFromAtom                                                             // [0x106370] 0x008a9000 + 0x106370 = 0x009af370
.long 0x00000000                                                                                                   // [0x106384] 0x008a9000 + 0x106384 = 0x009af384
RTTIBaseClassDescriptor AtomData@AttatchFireBallToAtom 4                                                           // [0x106388] 0x008a9000 + 0x106388 = 0x009af388
RTTIBaseClassArray AtomData@AttatchFireBallToAtom                                                                  // [0x1063a0] 0x008a9000 + 0x1063a0 = 0x009af3a0
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@AttatchFireBallToAtom 5                                                      // [0x1063b8] 0x008a9000 + 0x1063b8 = 0x009af3b8
RTTICompleteObjectLocator AtomData@AttatchFireBallToAtom                                                           // [0x1063c8] 0x008a9000 + 0x1063c8 = 0x009af3c8
.long 0x00000000                                                                                                   // [0x1063dc] 0x008a9000 + 0x1063dc = 0x009af3dc
RTTIBaseClassDescriptor AtomDataRipple@UpdateRuleGravityWithFloor 4                                                // [0x1063e0] 0x008a9000 + 0x1063e0 = 0x009af3e0
RTTIBaseClassArray AtomDataRipple@UpdateRuleGravityWithFloor                                                       // [0x1063f8] 0x008a9000 + 0x1063f8 = 0x009af3f8
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomDataRipple@UpdateRuleGravityWithFloor 5                                           // [0x106410] 0x008a9000 + 0x106410 = 0x009af410
RTTICompleteObjectLocator AtomDataRipple@UpdateRuleGravityWithFloor                                                // [0x106420] 0x008a9000 + 0x106420 = 0x009af420
.long 0x00000000                                                                                                   // [0x106434] 0x008a9000 + 0x106434 = 0x009af434
RTTIBaseClassDescriptor AtomData@UR_BankedTurning 4                                                                // [0x106438] 0x008a9000 + 0x106438 = 0x009af438
RTTIBaseClassArray AtomData@UR_BankedTurning                                                                       // [0x106450] 0x008a9000 + 0x106450 = 0x009af450
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_BankedTurning 5                                                           // [0x106468] 0x008a9000 + 0x106468 = 0x009af468
RTTICompleteObjectLocator AtomData@UR_BankedTurning                                                                // [0x106478] 0x008a9000 + 0x106478 = 0x009af478
.long 0x00000000                                                                                                   // [0x10648c] 0x008a9000 + 0x10648c = 0x009af48c
RTTIBaseClassDescriptor CollectionData@UR_HandSprinkle 4                                                           // [0x106490] 0x008a9000 + 0x106490 = 0x009af490
RTTIBaseClassArray CollectionData@UR_HandSprinkle                                                                  // [0x1064a8] 0x008a9000 + 0x1064a8 = 0x009af4a8
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@UR_HandSprinkle 5                                                      // [0x1064c0] 0x008a9000 + 0x1064c0 = 0x009af4c0
RTTICompleteObjectLocator CollectionData@UR_HandSprinkle                                                           // [0x1064d0] 0x008a9000 + 0x1064d0 = 0x009af4d0
.long 0x00000000                                                                                                   // [0x1064e4] 0x008a9000 + 0x1064e4 = 0x009af4e4
RTTIBaseClassDescriptor CollectionData@UR_AddDefensiveSphere 4                                                     // [0x1064e8] 0x008a9000 + 0x1064e8 = 0x009af4e8
RTTIBaseClassArray CollectionData@UR_AddDefensiveSphere                                                            // [0x106500] 0x008a9000 + 0x106500 = 0x009af500
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@UR_AddDefensiveSphere 5                                                // [0x106518] 0x008a9000 + 0x106518 = 0x009af518
RTTICompleteObjectLocator CollectionData@UR_AddDefensiveSphere                                                     // [0x106528] 0x008a9000 + 0x106528 = 0x009af528
.long 0x00000000                                                                                                   // [0x10653c] 0x008a9000 + 0x10653c = 0x009af53c
RTTIBaseClassDescriptor AtomData@UpdateRuleShieldSpark 4                                                           // [0x106540] 0x008a9000 + 0x106540 = 0x009af540
RTTIBaseClassArray AtomData@UpdateRuleShieldSpark                                                                  // [0x106558] 0x008a9000 + 0x106558 = 0x009af558
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UpdateRuleShieldSpark 5                                                      // [0x106570] 0x008a9000 + 0x106570 = 0x009af570
RTTICompleteObjectLocator AtomData@UpdateRuleShieldSpark                                                           // [0x106580] 0x008a9000 + 0x106580 = 0x009af580
.long 0x00000000                                                                                                   // [0x106594] 0x008a9000 + 0x106594 = 0x009af594
RTTIBaseClassDescriptor AtomData@UR_SphereSurfaceTracer 4                                                          // [0x106598] 0x008a9000 + 0x106598 = 0x009af598
RTTIBaseClassArray AtomData@UR_SphereSurfaceTracer                                                                 // [0x1065b0] 0x008a9000 + 0x1065b0 = 0x009af5b0
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_SphereSurfaceTracer 5                                                     // [0x1065c8] 0x008a9000 + 0x1065c8 = 0x009af5c8
RTTICompleteObjectLocator AtomData@UR_SphereSurfaceTracer                                                          // [0x1065d8] 0x008a9000 + 0x1065d8 = 0x009af5d8
.long 0x00000000                                                                                                   // [0x1065ec] 0x008a9000 + 0x1065ec = 0x009af5ec
RTTIBaseClassDescriptor AtomData@UR_ForestPath 4                                                                   // [0x1065f0] 0x008a9000 + 0x1065f0 = 0x009af5f0
RTTIBaseClassArray AtomData@UR_ForestPath                                                                          // [0x106608] 0x008a9000 + 0x106608 = 0x009af608
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_ForestPath 5                                                              // [0x106620] 0x008a9000 + 0x106620 = 0x009af620
RTTICompleteObjectLocator AtomData@UR_ForestPath                                                                   // [0x106630] 0x008a9000 + 0x106630 = 0x009af630
.long 0x00000000                                                                                                   // [0x106644] 0x008a9000 + 0x106644 = 0x009af644
RTTIBaseClassDescriptor AtomData@UR_VapourEndEffect 4                                                              // [0x106648] 0x008a9000 + 0x106648 = 0x009af648
RTTIBaseClassArray AtomData@UR_VapourEndEffect                                                                     // [0x106660] 0x008a9000 + 0x106660 = 0x009af660
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_VapourEndEffect 5                                                         // [0x106678] 0x008a9000 + 0x106678 = 0x009af678
RTTICompleteObjectLocator AtomData@UR_VapourEndEffect                                                              // [0x106688] 0x008a9000 + 0x106688 = 0x009af688
.long 0x00000000                                                                                                   // [0x10669c] 0x008a9000 + 0x10669c = 0x009af69c
RTTIBaseClassDescriptor AtomData@AddSubCollectionsToAtom 4                                                         // [0x1066a0] 0x008a9000 + 0x1066a0 = 0x009af6a0
RTTIBaseClassArray AtomData@AddSubCollectionsToAtom                                                                // [0x1066b8] 0x008a9000 + 0x1066b8 = 0x009af6b8
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@AddSubCollectionsToAtom 5                                                    // [0x1066d0] 0x008a9000 + 0x1066d0 = 0x009af6d0
RTTICompleteObjectLocator AtomData@AddSubCollectionsToAtom                                                         // [0x1066e0] 0x008a9000 + 0x1066e0 = 0x009af6e0
.long 0x00000000                                                                                                   // [0x1066f4] 0x008a9000 + 0x1066f4 = 0x009af6f4
RTTIBaseClassDescriptor AtomData@CreateNewBaseAtom 4                                                               // [0x1066f8] 0x008a9000 + 0x1066f8 = 0x009af6f8
RTTIBaseClassArray AtomData@CreateNewBaseAtom                                                                      // [0x106710] 0x008a9000 + 0x106710 = 0x009af710
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@CreateNewBaseAtom 5                                                          // [0x106728] 0x008a9000 + 0x106728 = 0x009af728
RTTICompleteObjectLocator AtomData@CreateNewBaseAtom                                                               // [0x106738] 0x008a9000 + 0x106738 = 0x009af738
.long 0x00000000                                                                                                   // [0x10674c] 0x008a9000 + 0x10674c = 0x009af74c
RTTIBaseClassDescriptor AtomData@CheckShieldDeflections 4                                                          // [0x106750] 0x008a9000 + 0x106750 = 0x009af750
RTTIBaseClassArray AtomData@CheckShieldDeflections                                                                 // [0x106768] 0x008a9000 + 0x106768 = 0x009af768
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@CheckShieldDeflections 5                                                     // [0x106780] 0x008a9000 + 0x106780 = 0x009af780
RTTICompleteObjectLocator AtomData@CheckShieldDeflections                                                          // [0x106790] 0x008a9000 + 0x106790 = 0x009af790
.long 0x00000000                                                                                                   // [0x1067a4] 0x008a9000 + 0x1067a4 = 0x009af7a4
RTTIBaseClassDescriptor CollectionData@EmitterRule 4                                                               // [0x1067a8] 0x008a9000 + 0x1067a8 = 0x009af7a8
RTTIBaseClassArray CollectionData@EmitterRule                                                                      // [0x1067c0] 0x008a9000 + 0x1067c0 = 0x009af7c0
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@EmitterRule 5                                                          // [0x1067d8] 0x008a9000 + 0x1067d8 = 0x009af7d8
RTTICompleteObjectLocator CollectionData@EmitterRule                                                               // [0x1067e8] 0x008a9000 + 0x1067e8 = 0x009af7e8
.long 0x00000000                                                                                                   // [0x1067fc] 0x008a9000 + 0x1067fc = 0x009af7fc
RTTIBaseClassDescriptor CollectionData@EmitterRuleLightningSprite 4                                                // [0x106800] 0x008a9000 + 0x106800 = 0x009af800
RTTIBaseClassArray CollectionData@EmitterRuleLightningSprite                                                       // [0x106818] 0x008a9000 + 0x106818 = 0x009af818
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@EmitterRuleLightningSprite 5                                           // [0x106830] 0x008a9000 + 0x106830 = 0x009af830
RTTICompleteObjectLocator CollectionData@EmitterRuleLightningSprite                                                // [0x106840] 0x008a9000 + 0x106840 = 0x009af840
.long 0x00000000                                                                                                   // [0x106854] 0x008a9000 + 0x106854 = 0x009af854
RTTIBaseClassDescriptor CollectionData@UR_WillowWisp 4                                                             // [0x106858] 0x008a9000 + 0x106858 = 0x009af858
RTTIBaseClassArray CollectionData@UR_WillowWisp                                                                    // [0x106870] 0x008a9000 + 0x106870 = 0x009af870
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@UR_WillowWisp 5                                                        // [0x106888] 0x008a9000 + 0x106888 = 0x009af888
RTTICompleteObjectLocator CollectionData@UR_WillowWisp                                                             // [0x106898] 0x008a9000 + 0x106898 = 0x009af898
.long 0x00000000                                                                                                   // [0x1068ac] 0x008a9000 + 0x1068ac = 0x009af8ac
RTTIBaseClassDescriptor CollectionData@ER_BurstFromParentAtom 4                                                    // [0x1068b0] 0x008a9000 + 0x1068b0 = 0x009af8b0
RTTIBaseClassArray CollectionData@ER_BurstFromParentAtom                                                           // [0x1068c8] 0x008a9000 + 0x1068c8 = 0x009af8c8
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@ER_BurstFromParentAtom 5                                               // [0x1068e0] 0x008a9000 + 0x1068e0 = 0x009af8e0
RTTICompleteObjectLocator CollectionData@ER_BurstFromParentAtom                                                    // [0x1068f0] 0x008a9000 + 0x1068f0 = 0x009af8f0
.long 0x00000000                                                                                                   // [0x106904] 0x008a9000 + 0x106904 = 0x009af904
RTTIBaseClassDescriptor ParentAtomData@ER_GlintsOnTarget 4                                                         // [0x106908] 0x008a9000 + 0x106908 = 0x009af908
RTTIBaseClassArray ParentAtomData@ER_GlintsOnTarget                                                                // [0x106920] 0x008a9000 + 0x106920 = 0x009af920
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ParentAtomData@ER_GlintsOnTarget 5                                                    // [0x106938] 0x008a9000 + 0x106938 = 0x009af938
RTTICompleteObjectLocator ParentAtomData@ER_GlintsOnTarget                                                         // [0x106948] 0x008a9000 + 0x106948 = 0x009af948
.long 0x00000000                                                                                                   // [0x10695c] 0x008a9000 + 0x10695c = 0x009af95c
RTTIBaseClassDescriptor AtomData@ER_GlintsOnTarget 4                                                               // [0x106960] 0x008a9000 + 0x106960 = 0x009af960
RTTIBaseClassArray AtomData@ER_GlintsOnTarget                                                                      // [0x106978] 0x008a9000 + 0x106978 = 0x009af978
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@ER_GlintsOnTarget 5                                                          // [0x106990] 0x008a9000 + 0x106990 = 0x009af990
RTTICompleteObjectLocator AtomData@ER_GlintsOnTarget                                                               // [0x1069a0] 0x008a9000 + 0x1069a0 = 0x009af9a0
.long 0x00000000                                                                                                   // [0x1069b4] 0x008a9000 + 0x1069b4 = 0x009af9b4
RTTIBaseClassDescriptor CollectionData@ER_EmitFromParentAtom 4                                                     // [0x1069b8] 0x008a9000 + 0x1069b8 = 0x009af9b8
RTTIBaseClassArray CollectionData@ER_EmitFromParentAtom                                                            // [0x1069d0] 0x008a9000 + 0x1069d0 = 0x009af9d0
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@ER_EmitFromParentAtom 5                                                // [0x1069e8] 0x008a9000 + 0x1069e8 = 0x009af9e8
RTTICompleteObjectLocator CollectionData@ER_EmitFromParentAtom                                                     // [0x1069f8] 0x008a9000 + 0x1069f8 = 0x009af9f8
.long 0x00000000                                                                                                   // [0x106a0c] 0x008a9000 + 0x106a0c = 0x009afa0c
RTTIBaseClassDescriptor AtomData@UR_SideSpin 4                                                                     // [0x106a10] 0x008a9000 + 0x106a10 = 0x009afa10
RTTIBaseClassArray AtomData@UR_SideSpin                                                                            // [0x106a28] 0x008a9000 + 0x106a28 = 0x009afa28
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_SideSpin 5                                                                // [0x106a40] 0x008a9000 + 0x106a40 = 0x009afa40
RTTICompleteObjectLocator AtomData@UR_SideSpin                                                                     // [0x106a50] 0x008a9000 + 0x106a50 = 0x009afa50
.long 0x00000000                                                                                                   // [0x106a64] 0x008a9000 + 0x106a64 = 0x009afa64
RTTIBaseClassDescriptor AtomData@UR_InitialSpin 4                                                                  // [0x106a68] 0x008a9000 + 0x106a68 = 0x009afa68
RTTIBaseClassArray AtomData@UR_InitialSpin                                                                         // [0x106a80] 0x008a9000 + 0x106a80 = 0x009afa80
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_InitialSpin 5                                                             // [0x106a98] 0x008a9000 + 0x106a98 = 0x009afa98
RTTICompleteObjectLocator AtomData@UR_InitialSpin                                                                  // [0x106aa8] 0x008a9000 + 0x106aa8 = 0x009afaa8
.long 0x00000000                                                                                                   // [0x106abc] 0x008a9000 + 0x106abc = 0x009afabc
RTTIBaseClassDescriptor CollectionData@UR_FollowTargets 4                                                          // [0x106ac0] 0x008a9000 + 0x106ac0 = 0x009afac0
RTTIBaseClassArray CollectionData@UR_FollowTargets                                                                 // [0x106ad8] 0x008a9000 + 0x106ad8 = 0x009afad8
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@UR_FollowTargets 5                                                     // [0x106af0] 0x008a9000 + 0x106af0 = 0x009afaf0
RTTICompleteObjectLocator CollectionData@UR_FollowTargets                                                          // [0x106b00] 0x008a9000 + 0x106b00 = 0x009afb00
.long 0x00000000                                                                                                   // [0x106b14] 0x008a9000 + 0x106b14 = 0x009afb14
RTTIBaseClassDescriptor AtomData@UR_FollowTargets 4                                                                // [0x106b18] 0x008a9000 + 0x106b18 = 0x009afb18
RTTIBaseClassArray AtomData@UR_FollowTargets                                                                       // [0x106b30] 0x008a9000 + 0x106b30 = 0x009afb30
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_FollowTargets 5                                                           // [0x106b48] 0x008a9000 + 0x106b48 = 0x009afb48
RTTICompleteObjectLocator AtomData@UR_FollowTargets                                                                // [0x106b58] 0x008a9000 + 0x106b58 = 0x009afb58
.long 0x00000000                                                                                                   // [0x106b6c] 0x008a9000 + 0x106b6c = 0x009afb6c
RTTIBaseClassDescriptor CollectionData@UR_Trail 4                                                                  // [0x106b70] 0x008a9000 + 0x106b70 = 0x009afb70
RTTIBaseClassArray CollectionData@UR_Trail                                                                         // [0x106b88] 0x008a9000 + 0x106b88 = 0x009afb88
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@UR_Trail 5                                                             // [0x106ba0] 0x008a9000 + 0x106ba0 = 0x009afba0
RTTICompleteObjectLocator CollectionData@UR_Trail                                                                  // [0x106bb0] 0x008a9000 + 0x106bb0 = 0x009afbb0
.long 0x00000000                                                                                                   // [0x106bc4] 0x008a9000 + 0x106bc4 = 0x009afbc4
RTTIBaseClassDescriptor CollectionData@LightningForkFlicker 4                                                      // [0x106bc8] 0x008a9000 + 0x106bc8 = 0x009afbc8
RTTIBaseClassArray CollectionData@LightningForkFlicker                                                             // [0x106be0] 0x008a9000 + 0x106be0 = 0x009afbe0
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@LightningForkFlicker 5                                                 // [0x106bf8] 0x008a9000 + 0x106bf8 = 0x009afbf8
RTTICompleteObjectLocator CollectionData@LightningForkFlicker                                                      // [0x106c08] 0x008a9000 + 0x106c08 = 0x009afc08
.long 0x00000000                                                                                                   // [0x106c1c] 0x008a9000 + 0x106c1c = 0x009afc1c
RTTIBaseClassDescriptor AtomData@RemoveRuleAfterConditionTrue 4                                                    // [0x106c20] 0x008a9000 + 0x106c20 = 0x009afc20
RTTIBaseClassArray AtomData@RemoveRuleAfterConditionTrue                                                           // [0x106c38] 0x008a9000 + 0x106c38 = 0x009afc38
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@RemoveRuleAfterConditionTrue 5                                               // [0x106c50] 0x008a9000 + 0x106c50 = 0x009afc50
RTTICompleteObjectLocator AtomData@RemoveRuleAfterConditionTrue                                                    // [0x106c60] 0x008a9000 + 0x106c60 = 0x009afc60
.long 0x00000000                                                                                                   // [0x106c74] 0x008a9000 + 0x106c74 = 0x009afc74
RTTIBaseClassDescriptor AtomData@UR_OrientSpriteWithRandomAngle 4                                                  // [0x106c78] 0x008a9000 + 0x106c78 = 0x009afc78
RTTIBaseClassArray AtomData@UR_OrientSpriteWithRandomAngle                                                         // [0x106c90] 0x008a9000 + 0x106c90 = 0x009afc90
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_OrientSpriteWithRandomAngle 5                                             // [0x106ca8] 0x008a9000 + 0x106ca8 = 0x009afca8
RTTICompleteObjectLocator AtomData@UR_OrientSpriteWithRandomAngle                                                  // [0x106cb8] 0x008a9000 + 0x106cb8 = 0x009afcb8
.long 0x00000000                                                                                                   // [0x106ccc] 0x008a9000 + 0x106ccc = 0x009afccc
RTTIBaseClassDescriptor AtomData@UR_OrientWithVelocity 4                                                           // [0x106cd0] 0x008a9000 + 0x106cd0 = 0x009afcd0
RTTIBaseClassArray AtomData@UR_OrientWithVelocity                                                                  // [0x106ce8] 0x008a9000 + 0x106ce8 = 0x009afce8
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_OrientWithVelocity 5                                                      // [0x106d00] 0x008a9000 + 0x106d00 = 0x009afd00
RTTICompleteObjectLocator AtomData@UR_OrientWithVelocity                                                           // [0x106d10] 0x008a9000 + 0x106d10 = 0x009afd10
.long 0x00000000                                                                                                   // [0x106d24] 0x008a9000 + 0x106d24 = 0x009afd24
RTTIBaseClassDescriptor CollectionData@UR_CreatureSpell 4                                                          // [0x106d28] 0x008a9000 + 0x106d28 = 0x009afd28
RTTIBaseClassArray CollectionData@UR_CreatureSpell                                                                 // [0x106d40] 0x008a9000 + 0x106d40 = 0x009afd40
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@UR_CreatureSpell 5                                                     // [0x106d58] 0x008a9000 + 0x106d58 = 0x009afd58
RTTICompleteObjectLocator CollectionData@UR_CreatureSpell                                                          // [0x106d68] 0x008a9000 + 0x106d68 = 0x009afd68
.long 0x00000000                                                                                                   // [0x106d7c] 0x008a9000 + 0x106d7c = 0x009afd7c
RTTIBaseClassDescriptor CollectionData@UR_CreatureSpellItch 4                                                      // [0x106d80] 0x008a9000 + 0x106d80 = 0x009afd80
RTTIBaseClassArray CollectionData@UR_CreatureSpellItch                                                             // [0x106d98] 0x008a9000 + 0x106d98 = 0x009afd98
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@UR_CreatureSpellItch 5                                                 // [0x106db0] 0x008a9000 + 0x106db0 = 0x009afdb0
RTTICompleteObjectLocator CollectionData@UR_CreatureSpellItch                                                      // [0x106dc0] 0x008a9000 + 0x106dc0 = 0x009afdc0
.long 0x00000000                                                                                                   // [0x106dd4] 0x008a9000 + 0x106dd4 = 0x009afdd4
RTTIBaseClassDescriptor CollectionData@UR_CreatureSpellFreeze 4                                                    // [0x106dd8] 0x008a9000 + 0x106dd8 = 0x009afdd8
RTTIBaseClassArray CollectionData@UR_CreatureSpellFreeze                                                           // [0x106df0] 0x008a9000 + 0x106df0 = 0x009afdf0
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@UR_CreatureSpellFreeze 5                                               // [0x106e08] 0x008a9000 + 0x106e08 = 0x009afe08
RTTICompleteObjectLocator CollectionData@UR_CreatureSpellFreeze                                                    // [0x106e18] 0x008a9000 + 0x106e18 = 0x009afe18
.long 0x00000000                                                                                                   // [0x106e2c] 0x008a9000 + 0x106e2c = 0x009afe2c
RTTIBaseClassDescriptor CollectionData@UR_CreatureSpellGeneric 4                                                   // [0x106e30] 0x008a9000 + 0x106e30 = 0x009afe30
RTTIBaseClassArray CollectionData@UR_CreatureSpellGeneric                                                          // [0x106e48] 0x008a9000 + 0x106e48 = 0x009afe48
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@UR_CreatureSpellGeneric 5                                              // [0x106e60] 0x008a9000 + 0x106e60 = 0x009afe60
RTTICompleteObjectLocator CollectionData@UR_CreatureSpellGeneric                                                   // [0x106e70] 0x008a9000 + 0x106e70 = 0x009afe70
.long 0x00000000                                                                                                   // [0x106e84] 0x008a9000 + 0x106e84 = 0x009afe84
RTTIBaseClassDescriptor AtomData@UR_CreatureSpellGeneric 4                                                         // [0x106e88] 0x008a9000 + 0x106e88 = 0x009afe88
RTTIBaseClassArray AtomData@UR_CreatureSpellGeneric                                                                // [0x106ea0] 0x008a9000 + 0x106ea0 = 0x009afea0
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_CreatureSpellGeneric 5                                                    // [0x106eb8] 0x008a9000 + 0x106eb8 = 0x009afeb8
RTTICompleteObjectLocator AtomData@UR_CreatureSpellGeneric                                                         // [0x106ec8] 0x008a9000 + 0x106ec8 = 0x009afec8
.long 0x00000000                                                                                                   // [0x106edc] 0x008a9000 + 0x106edc = 0x009afedc
RTTIBaseClassDescriptor CollectionData@UR_CreatureSpellCompassion 4                                                // [0x106ee0] 0x008a9000 + 0x106ee0 = 0x009afee0
RTTIBaseClassArray CollectionData@UR_CreatureSpellCompassion                                                       // [0x106ef8] 0x008a9000 + 0x106ef8 = 0x009afef8
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@UR_CreatureSpellCompassion 5                                           // [0x106f10] 0x008a9000 + 0x106f10 = 0x009aff10
RTTICompleteObjectLocator CollectionData@UR_CreatureSpellCompassion                                                // [0x106f20] 0x008a9000 + 0x106f20 = 0x009aff20
.long 0x00000000                                                                                                   // [0x106f34] 0x008a9000 + 0x106f34 = 0x009aff34
RTTIBaseClassDescriptor CollectionData@UR_Tornado 4                                                                // [0x106f38] 0x008a9000 + 0x106f38 = 0x009aff38
RTTIBaseClassArray CollectionData@UR_Tornado                                                                       // [0x106f50] 0x008a9000 + 0x106f50 = 0x009aff50
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@UR_Tornado 5                                                           // [0x106f68] 0x008a9000 + 0x106f68 = 0x009aff68
RTTICompleteObjectLocator CollectionData@UR_Tornado                                                                // [0x106f78] 0x008a9000 + 0x106f78 = 0x009aff78
.long 0x00000000                                                                                                   // [0x106f8c] 0x008a9000 + 0x106f8c = 0x009aff8c
RTTIBaseClassDescriptor DebrisCollectionData@UR_Tornado 4                                                          // [0x106f90] 0x008a9000 + 0x106f90 = 0x009aff90
RTTIBaseClassArray DebrisCollectionData@UR_Tornado                                                                 // [0x106fa8] 0x008a9000 + 0x106fa8 = 0x009affa8
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor DebrisCollectionData@UR_Tornado 5                                                     // [0x106fc0] 0x008a9000 + 0x106fc0 = 0x009affc0
RTTICompleteObjectLocator DebrisCollectionData@UR_Tornado                                                          // [0x106fd0] 0x008a9000 + 0x106fd0 = 0x009affd0
.long 0x00000000                                                                                                   // [0x106fe4] 0x008a9000 + 0x106fe4 = 0x009affe4
RTTIBaseClassDescriptor FlyingCollectionData@UR_Tornado 4                                                          // [0x106fe8] 0x008a9000 + 0x106fe8 = 0x009affe8
RTTIBaseClassArray FlyingCollectionData@UR_Tornado                                                                 // [0x107000] 0x008a9000 + 0x107000 = 0x009b0000
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor FlyingCollectionData@UR_Tornado 5                                                     // [0x107018] 0x008a9000 + 0x107018 = 0x009b0018
RTTICompleteObjectLocator FlyingCollectionData@UR_Tornado                                                          // [0x107028] 0x008a9000 + 0x107028 = 0x009b0028
.long 0x00000000                                                                                                   // [0x10703c] 0x008a9000 + 0x10703c = 0x009b003c
RTTIBaseClassDescriptor FlyingAtomData@UR_Tornado 4                                                                // [0x107040] 0x008a9000 + 0x107040 = 0x009b0040
RTTIBaseClassArray FlyingAtomData@UR_Tornado                                                                       // [0x107058] 0x008a9000 + 0x107058 = 0x009b0058
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor FlyingAtomData@UR_Tornado 5                                                           // [0x107070] 0x008a9000 + 0x107070 = 0x009b0070
RTTICompleteObjectLocator FlyingAtomData@UR_Tornado                                                                // [0x107080] 0x008a9000 + 0x107080 = 0x009b0080
.long 0x00000000                                                                                                   // [0x107094] 0x008a9000 + 0x107094 = 0x009b0094
RTTIBaseClassDescriptor CollectionData@UR_CloudGather 4                                                            // [0x107098] 0x008a9000 + 0x107098 = 0x009b0098
RTTIBaseClassArray CollectionData@UR_CloudGather                                                                   // [0x1070b0] 0x008a9000 + 0x1070b0 = 0x009b00b0
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@UR_CloudGather 5                                                       // [0x1070c8] 0x008a9000 + 0x1070c8 = 0x009b00c8
RTTICompleteObjectLocator CollectionData@UR_CloudGather                                                            // [0x1070d8] 0x008a9000 + 0x1070d8 = 0x009b00d8
.long 0x00000000                                                                                                   // [0x1070ec] 0x008a9000 + 0x1070ec = 0x009b00ec
RTTIBaseClassDescriptor AtomData@UR_CloudGather 4                                                                  // [0x1070f0] 0x008a9000 + 0x1070f0 = 0x009b00f0
RTTIBaseClassArray AtomData@UR_CloudGather                                                                         // [0x107108] 0x008a9000 + 0x107108 = 0x009b0108
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_CloudGather 5                                                             // [0x107120] 0x008a9000 + 0x107120 = 0x009b0120
RTTICompleteObjectLocator AtomData@UR_CloudGather                                                                  // [0x107130] 0x008a9000 + 0x107130 = 0x009b0130
.long 0x00000000                                                                                                   // [0x107144] 0x008a9000 + 0x107144 = 0x009b0144
RTTIBaseClassDescriptor CollectionData@UR_CloudMoverNew 4                                                          // [0x107148] 0x008a9000 + 0x107148 = 0x009b0148
RTTIBaseClassArray CollectionData@UR_CloudMoverNew                                                                 // [0x107160] 0x008a9000 + 0x107160 = 0x009b0160
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@UR_CloudMoverNew 5                                                     // [0x107178] 0x008a9000 + 0x107178 = 0x009b0178
RTTICompleteObjectLocator CollectionData@UR_CloudMoverNew                                                          // [0x107188] 0x008a9000 + 0x107188 = 0x009b0188
.long 0x00000000                                                                                                   // [0x10719c] 0x008a9000 + 0x10719c = 0x009b019c
RTTIBaseClassDescriptor AtomData@UR_VortexAttract 4                                                                // [0x1071a0] 0x008a9000 + 0x1071a0 = 0x009b01a0
RTTIBaseClassArray AtomData@UR_VortexAttract                                                                       // [0x1071b8] 0x008a9000 + 0x1071b8 = 0x009b01b8
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_VortexAttract 5                                                           // [0x1071d0] 0x008a9000 + 0x1071d0 = 0x009b01d0
RTTICompleteObjectLocator AtomData@UR_VortexAttract                                                                // [0x1071e0] 0x008a9000 + 0x1071e0 = 0x009b01e0
.long 0x00000000                                                                                                   // [0x1071f4] 0x008a9000 + 0x1071f4 = 0x009b01f4
RTTIBaseClassDescriptor AtomData@UR_Explosion 4                                                                    // [0x1071f8] 0x008a9000 + 0x1071f8 = 0x009b01f8
RTTIBaseClassArray AtomData@UR_Explosion                                                                           // [0x107210] 0x008a9000 + 0x107210 = 0x009b0210
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_Explosion 5                                                               // [0x107228] 0x008a9000 + 0x107228 = 0x009b0228
RTTICompleteObjectLocator AtomData@UR_Explosion                                                                    // [0x107238] 0x008a9000 + 0x107238 = 0x009b0238
.long 0x00000000                                                                                                   // [0x10724c] 0x008a9000 + 0x10724c = 0x009b024c
RTTIBaseClassDescriptor AtomData@UR_OrientSpriteWithVelocity 4                                                     // [0x107250] 0x008a9000 + 0x107250 = 0x009b0250
RTTIBaseClassArray AtomData@UR_OrientSpriteWithVelocity                                                            // [0x107268] 0x008a9000 + 0x107268 = 0x009b0268
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_OrientSpriteWithVelocity 5                                                // [0x107280] 0x008a9000 + 0x107280 = 0x009b0280
RTTICompleteObjectLocator AtomData@UR_OrientSpriteWithVelocity                                                     // [0x107290] 0x008a9000 + 0x107290 = 0x009b0290
.long 0x00000000                                                                                                   // [0x1072a4] 0x008a9000 + 0x1072a4 = 0x009b02a4
RTTIBaseClassDescriptor CollectionData@UR_AtomsAtEPTarget 4                                                        // [0x1072a8] 0x008a9000 + 0x1072a8 = 0x009b02a8
RTTIBaseClassArray CollectionData@UR_AtomsAtEPTarget                                                               // [0x1072c0] 0x008a9000 + 0x1072c0 = 0x009b02c0
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@UR_AtomsAtEPTarget 5                                                   // [0x1072d8] 0x008a9000 + 0x1072d8 = 0x009b02d8
RTTICompleteObjectLocator CollectionData@UR_AtomsAtEPTarget                                                        // [0x1072e8] 0x008a9000 + 0x1072e8 = 0x009b02e8
.long 0x00000000                                                                                                   // [0x1072fc] 0x008a9000 + 0x1072fc = 0x009b02fc
RTTIBaseClassDescriptor CollectionData@UR_Flocking 4                                                               // [0x107300] 0x008a9000 + 0x107300 = 0x009b0300
RTTIBaseClassArray CollectionData@UR_Flocking                                                                      // [0x107318] 0x008a9000 + 0x107318 = 0x009b0318
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@UR_Flocking 5                                                          // [0x107330] 0x008a9000 + 0x107330 = 0x009b0330
RTTICompleteObjectLocator CollectionData@UR_Flocking                                                               // [0x107340] 0x008a9000 + 0x107340 = 0x009b0340
.long 0x00000000                                                                                                   // [0x107354] 0x008a9000 + 0x107354 = 0x009b0354
RTTIBaseClassDescriptor Whale 6                                                                                    // [0x107358] 0x008a9000 + 0x107358 = 0x009b0358
RTTIBaseClassArray Whale                                                                                           // [0x107370] 0x008a9000 + 0x107370 = 0x009b0370
.long ??_R1A@?0A@A@MobileObject@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Whale 7                                                                               // [0x107390] 0x008a9000 + 0x107390 = 0x009b0390
RTTICompleteObjectLocator Whale                                                                                    // [0x1073a0] 0x008a9000 + 0x1073a0 = 0x009b03a0
.long 0x00000000                                                                                                   // [0x1073b4] 0x008a9000 + 0x1073b4 = 0x009b03b4
RTTIBaseClassDescriptor PuzzleMobileObject 6                                                                       // [0x1073b8] 0x008a9000 + 0x1073b8 = 0x009b03b8
RTTIBaseClassArray PuzzleMobileObject                                                                              // [0x1073d0] 0x008a9000 + 0x1073d0 = 0x009b03d0
.long ??_R1A@?0A@A@MobileObject@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor PuzzleMobileObject 7                                                                  // [0x1073f0] 0x008a9000 + 0x1073f0 = 0x009b03f0
RTTICompleteObjectLocator PuzzleMobileObject                                                                       // [0x107400] 0x008a9000 + 0x107400 = 0x009b0400
.long 0x00000000                                                                                                   // [0x107414] 0x008a9000 + 0x107414 = 0x009b0414
RTTIBaseClassDescriptor GComputerPlayerQueue 2                                                                     // [0x107418] 0x008a9000 + 0x107418 = 0x009b0418
RTTIBaseClassArray GComputerPlayerQueue                                                                            // [0x107430] 0x008a9000 + 0x107430 = 0x009b0430
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GComputerPlayerQueue 3                                                                // [0x107440] 0x008a9000 + 0x107440 = 0x009b0440
RTTICompleteObjectLocator GComputerPlayerQueue                                                                     // [0x107450] 0x008a9000 + 0x107450 = 0x009b0450
.long 0x00000000                                                                                                   // [0x107464] 0x008a9000 + 0x107464 = 0x009b0464
RTTIBaseClassDescriptor GameStats 2                                                                                // [0x107468] 0x008a9000 + 0x107468 = 0x009b0468
RTTIBaseClassArray GameStats                                                                                       // [0x107480] 0x008a9000 + 0x107480 = 0x009b0480
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GameStats 3                                                                           // [0x107490] 0x008a9000 + 0x107490 = 0x009b0490
RTTICompleteObjectLocator GameStats                                                                                // [0x1074a0] 0x008a9000 + 0x1074a0 = 0x009b04a0
.long 0x00000000                                                                                                   // [0x1074b4] 0x008a9000 + 0x1074b4 = 0x009b04b4
RTTIBaseClassDescriptorStruct SetupHSBarGraph 3                                                                    // [0x1074b8] 0x008a9000 + 0x1074b8 = 0x009b04b8
RTTIBaseClassArray SetupHSBarGraph                                                                                 // [0x1074d0] 0x008a9000 + 0x1074d0 = 0x009b04d0
.long ??_R1A@?0A@A@SetupVBarGraph@@8
.long ??_R1A@?0A@A@SetupButton@@8
.long ??_R1A@?0A@A@SetupControl@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1074e4] 0x008a9000 + 0x1074e4 = 0x009b04e4
RTTIClassHierarchyDescriptor SetupHSBarGraph 4                                                                     // [0x1074e8] 0x008a9000 + 0x1074e8 = 0x009b04e8
RTTICompleteObjectLocatorStruct SetupHSBarGraph                                                                    // [0x1074f8] 0x008a9000 + 0x1074f8 = 0x009b04f8
.long 0x00000000                                                                                                   // [0x10750c] 0x008a9000 + 0x10750c = 0x009b050c
RTTIBaseClassArray GameThing                                                                                       // [0x107510] 0x008a9000 + 0x107510 = 0x009b0510
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10751c] 0x008a9000 + 0x10751c = 0x009b051c
RTTIClassHierarchyDescriptor GameThing 2                                                                           // [0x107520] 0x008a9000 + 0x107520 = 0x009b0520
RTTICompleteObjectLocator GameThing                                                                                // [0x107530] 0x008a9000 + 0x107530 = 0x009b0530
.long 0x00000000                                                                                                   // [0x107544] 0x008a9000 + 0x107544 = 0x009b0544
RTTIBaseClassDescriptorStruct SetupMP3Button 2                                                                     // [0x107548] 0x008a9000 + 0x107548 = 0x009b0548
RTTIBaseClassArray SetupMP3Button                                                                                  // [0x107560] 0x008a9000 + 0x107560 = 0x009b0560
.long ??_R1A@?0A@A@SetupButton@@8
.long ??_R1A@?0A@A@SetupControl@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SetupMP3Button 3                                                                      // [0x107570] 0x008a9000 + 0x107570 = 0x009b0570
RTTICompleteObjectLocatorStruct SetupMP3Button                                                                     // [0x107580] 0x008a9000 + 0x107580 = 0x009b0580
.long 0x00000000                                                                                                   // [0x107594] 0x008a9000 + 0x107594 = 0x009b0594
RTTIBaseClassDescriptorStruct SetupStaticTextNoHit 2                                                               // [0x107598] 0x008a9000 + 0x107598 = 0x009b0598
RTTIBaseClassArray SetupStaticTextNoHit                                                                            // [0x1075b0] 0x008a9000 + 0x1075b0 = 0x009b05b0
.long ??_R1A@?0A@A@SetupStaticText@@8
.long ??_R1A@?0A@A@SetupControl@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SetupStaticTextNoHit 3                                                                // [0x1075c0] 0x008a9000 + 0x1075c0 = 0x009b05c0
RTTICompleteObjectLocatorStruct SetupStaticTextNoHit                                                               // [0x1075d0] 0x008a9000 + 0x1075d0 = 0x009b05d0
.long 0x00000000                                                                                                   // [0x1075e4] 0x008a9000 + 0x1075e4 = 0x009b05e4
.byte 0x68, 0xf6, 0xbe, 0x00, 0x02, 0x00, 0x00, 0x00                                                               // [0x1075e8] 0x008a9000 + 0x1075e8 = 0x009b05e8
.byte 0x08, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff                                                               // [0x1075f0] 0x008a9000 + 0x1075f0 = 0x009b05f0
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00                                                               // [0x1075f8] 0x008a9000 + 0x1075f8 = 0x009b05f8
.byte 0x08, 0xf8, 0xbe, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00               // [0x107600] 0x008a9000 + 0x107600 = 0x009b0600
.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x28, 0xf8, 0xbe, 0x00, 0x01, 0x00, 0x00, 0x00               // [0x107610] 0x008a9000 + 0x107610 = 0x009b0610
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00               // [0x107620] 0x008a9000 + 0x107620 = 0x009b0620
RTTIBaseClassDescriptor ?$basic_istream@DU?$char_traits@D@std@@@std 2                                              // [0x107630] 0x008a9000 + 0x107630 = 0x009b0630
RTTIBaseClassDescriptor ?$basic_iostream@DU?$char_traits@D@std@@@std 6                                             // [0x107648] 0x008a9000 + 0x107648 = 0x009b0648
RTTIBaseClassDescriptor ?$basic_stringstream@DU?$char_traits@D@std@@V?$allocator@D@2@@std 7                        // [0x107660] 0x008a9000 + 0x107660 = 0x009b0660
RTTIBaseClassArray ?$basic_stringstream@DU?$char_traits@D@std@@V?$allocator@D@2@@std                               // [0x107678] 0x008a9000 + 0x107678 = 0x009b0678
.long ??_R1A@?0A@A@?$basic_iostream@DU?$char_traits@D@std@@@std@@8
.long ??_R1A@?0A@A@?$basic_istream@DU?$char_traits@D@std@@@std@@8
.long 0x009b0618
.long 0x009b0600
.long 0x009b05e8
.long 0x009b0618
.long 0x009b0600
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10769c] 0x008a9000 + 0x10769c = 0x009b069c
RTTIClassHierarchyDescriptorMultiInheritanceVirtual ?$basic_stringstream@DU?$char_traits@D@std@@V?$allocator@D@2@@std 8   // [0x1076a0] 0x008a9000 + 0x1076a0 = 0x009b06a0
_RTTICompleteObjectLocator ?$basic_stringstream@DU?$char_traits@D@std@@V?$allocator@D@2@@std V 0x58                // [0x1076b0] 0x008a9000 + 0x1076b0 = 0x009b06b0
.long 0x00000000                                                                                                   // [0x1076c4] 0x008a9000 + 0x1076c4 = 0x009b06c4
RTTIBaseClassDescriptor ?$basic_streambuf@DU?$char_traits@D@std@@@std 0                                            // [0x1076c8] 0x008a9000 + 0x1076c8 = 0x009b06c8
RTTIBaseClassDescriptor ?$basic_stringbuf@DU?$char_traits@D@std@@V?$allocator@D@2@@std 1                           // [0x1076e0] 0x008a9000 + 0x1076e0 = 0x009b06e0
RTTIBaseClassArray ?$basic_stringbuf@DU?$char_traits@D@std@@V?$allocator@D@2@@std                                  // [0x1076f8] 0x008a9000 + 0x1076f8 = 0x009b06f8
.long ??_R1A@?0A@A@?$basic_streambuf@DU?$char_traits@D@std@@@std@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x107704] 0x008a9000 + 0x107704 = 0x009b0704
RTTIClassHierarchyDescriptor ?$basic_stringbuf@DU?$char_traits@D@std@@V?$allocator@D@2@@std 2                      // [0x107708] 0x008a9000 + 0x107708 = 0x009b0708
RTTICompleteObjectLocator ?$basic_stringbuf@DU?$char_traits@D@std@@V?$allocator@D@2@@std                           // [0x107718] 0x008a9000 + 0x107718 = 0x009b0718
.long 0x00000000                                                                                                   // [0x10772c] 0x008a9000 + 0x10772c = 0x009b072c
RTTIBaseClassDescriptor ios_base@std 0                                                                             // [0x107730] 0x008a9000 + 0x107730 = 0x009b0730
RTTIBaseClassDescriptor ?$basic_ios@DU?$char_traits@D@std@@@std 1                                                  // [0x107748] 0x008a9000 + 0x107748 = 0x009b0748
RTTIBaseClassArray ?$basic_ios@DU?$char_traits@D@std@@@std                                                         // [0x107760] 0x008a9000 + 0x107760 = 0x009b0760
.long ??_R1A@?0A@A@ios_base@std@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10776c] 0x008a9000 + 0x10776c = 0x009b076c
RTTIClassHierarchyDescriptor ?$basic_ios@DU?$char_traits@D@std@@@std 2                                             // [0x107770] 0x008a9000 + 0x107770 = 0x009b0770
RTTICompleteObjectLocator ?$basic_ios@DU?$char_traits@D@std@@@std                                                  // [0x107780] 0x008a9000 + 0x107780 = 0x009b0780
.long 0x00000000                                                                                                   // [0x107794] 0x008a9000 + 0x107794 = 0x009b0794
RTTIBaseClassDescriptor Persistent 0                                                                               // [0x107798] 0x008a9000 + 0x107798 = 0x009b0798
RTTIBaseClassArray Persistent                                                                                      // [0x1077b0] 0x008a9000 + 0x1077b0 = 0x009b07b0
.long 0x00000000

RTTIClassHierarchyDescriptor Persistent 1                                                                          // [0x1077b8] 0x008a9000 + 0x1077b8 = 0x009b07b8
RTTICompleteObjectLocator Persistent                                                                               // [0x1077c8] 0x008a9000 + 0x1077c8 = 0x009b07c8
RTTIBaseClassArray ios_base@std                                                                                    // [0x1077dc] 0x008a9000 + 0x1077dc = 0x009b07dc
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1077e4] 0x008a9000 + 0x1077e4 = 0x009b07e4
RTTIClassHierarchyDescriptor ios_base@std 1                                                                        // [0x1077e8] 0x008a9000 + 0x1077e8 = 0x009b07e8
RTTICompleteObjectLocator ios_base@std                                                                             // [0x1077f8] 0x008a9000 + 0x1077f8 = 0x009b07f8
.long 0x00000000                                                                                                   // [0x10780c] 0x008a9000 + 0x10780c = 0x009b080c
RTTIBaseClassDescriptor exception 0                                                                                // [0x107810] 0x008a9000 + 0x107810 = 0x009b0810
RTTIBaseClassDescriptor bad_cast@std 1                                                                             // [0x107828] 0x008a9000 + 0x107828 = 0x009b0828
RTTIBaseClassArray bad_cast@std                                                                                    // [0x107840] 0x008a9000 + 0x107840 = 0x009b0840
.long ??_R1A@?0A@A@exception@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10784c] 0x008a9000 + 0x10784c = 0x009b084c
RTTIClassHierarchyDescriptor bad_cast@std 2                                                                        // [0x107850] 0x008a9000 + 0x107850 = 0x009b0850
RTTICompleteObjectLocator bad_cast@std                                                                             // [0x107860] 0x008a9000 + 0x107860 = 0x009b0860
RTTIBaseClassArray ?$basic_streambuf@DU?$char_traits@D@std@@@std                                                   // [0x107874] 0x008a9000 + 0x107874 = 0x009b0874
.long 0x00000000
.long 0x00000000

RTTIClassHierarchyDescriptor ?$basic_streambuf@DU?$char_traits@D@std@@@std 1                                       // [0x107880] 0x008a9000 + 0x107880 = 0x009b0880
RTTICompleteObjectLocator ?$basic_streambuf@DU?$char_traits@D@std@@@std                                            // [0x107890] 0x008a9000 + 0x107890 = 0x009b0890
.long 0x00000000                                                                                                   // [0x1078a4] 0x008a9000 + 0x1078a4 = 0x009b08a4
RTTIBaseClassArray ?$basic_iostream@DU?$char_traits@D@std@@@std                                                    // [0x1078a8] 0x008a9000 + 0x1078a8 = 0x009b08a8
.long ??_R1A@?0A@A@?$basic_istream@DU?$char_traits@D@std@@@std@@8
.long 0x009b0618
.long 0x009b0600
.long 0x009b05e8
.long 0x009b0618
.long 0x009b0600
.long 0x00000000

RTTIClassHierarchyDescriptorMultiInheritanceVirtual ?$basic_iostream@DU?$char_traits@D@std@@@std 7                 // [0x1078c8] 0x008a9000 + 0x1078c8 = 0x009b08c8
_RTTICompleteObjectLocator ?$basic_iostream@DU?$char_traits@D@std@@@std V 0xc                                      // [0x1078d8] 0x008a9000 + 0x1078d8 = 0x009b08d8
.long 0x00000000                                                                                                   // [0x1078ec] 0x008a9000 + 0x1078ec = 0x009b08ec
RTTIBaseClassDescriptor ?$basic_ostream@DU?$char_traits@D@std@@@std 2                                              // [0x1078f0] 0x008a9000 + 0x1078f0 = 0x009b08f0
RTTIBaseClassArray ?$basic_ostream@DU?$char_traits@D@std@@@std                                                     // [0x107908] 0x008a9000 + 0x107908 = 0x009b0908
.long 0x009b0618
.long 0x009b0600
.long 0x00000000

RTTIClassHierarchyDescriptor ?$basic_ostream@DU?$char_traits@D@std@@@std 3                                         // [0x107918] 0x008a9000 + 0x107918 = 0x009b0918
_RTTICompleteObjectLocator ?$basic_ostream@DU?$char_traits@D@std@@@std V 4                                         // [0x107928] 0x008a9000 + 0x107928 = 0x009b0928
.long 0x00000000                                                                                                   // [0x10793c] 0x008a9000 + 0x10793c = 0x009b093c
RTTIBaseClassArray ?$basic_istream@DU?$char_traits@D@std@@@std                                                     // [0x107940] 0x008a9000 + 0x107940 = 0x009b0940
.long 0x009b0618
.long 0x009b0600
.long 0x00000000

RTTIClassHierarchyDescriptor ?$basic_istream@DU?$char_traits@D@std@@@std 3                                         // [0x107950] 0x008a9000 + 0x107950 = 0x009b0950
_RTTICompleteObjectLocator ?$basic_istream@DU?$char_traits@D@std@@@std V 0x8                                       // [0x107960] 0x008a9000 + 0x107960 = 0x009b0960
.long 0x00000000                                                                                                   // [0x107974] 0x008a9000 + 0x107974 = 0x009b0974
RTTIBaseClassDescriptor facet@locale@std 0                                                                         // [0x107978] 0x008a9000 + 0x107978 = 0x009b0978
RTTIBaseClassDescriptor ?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std 1                      // [0x107990] 0x008a9000 + 0x107990 = 0x009b0990
RTTIBaseClassArray ?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std                             // [0x1079a8] 0x008a9000 + 0x1079a8 = 0x009b09a8
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1079b4] 0x008a9000 + 0x1079b4 = 0x009b09b4
RTTIClassHierarchyDescriptor ?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std 2                 // [0x1079b8] 0x008a9000 + 0x1079b8 = 0x009b09b8
RTTICompleteObjectLocator ?$num_put@DV?$ostreambuf_iterator@DU?$char_traits@D@std@@@std@@@std                      // [0x1079c8] 0x008a9000 + 0x1079c8 = 0x009b09c8
RTTIBaseClassArray facet@locale@std                                                                                // [0x1079dc] 0x008a9000 + 0x1079dc = 0x009b09dc
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1079e4] 0x008a9000 + 0x1079e4 = 0x009b09e4
RTTIClassHierarchyDescriptor facet@locale@std 1                                                                    // [0x1079e8] 0x008a9000 + 0x1079e8 = 0x009b09e8
RTTICompleteObjectLocator facet@locale@std                                                                         // [0x1079f8] 0x008a9000 + 0x1079f8 = 0x009b09f8
.long 0x00000000                                                                                                   // [0x107a0c] 0x008a9000 + 0x107a0c = 0x009b0a0c
RTTIBaseClassDescriptor ?$numpunct@D@std 1                                                                         // [0x107a10] 0x008a9000 + 0x107a10 = 0x009b0a10
RTTIBaseClassArray ?$numpunct@D@std                                                                                // [0x107a28] 0x008a9000 + 0x107a28 = 0x009b0a28
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x107a34] 0x008a9000 + 0x107a34 = 0x009b0a34
RTTIClassHierarchyDescriptor ?$numpunct@D@std 2                                                                    // [0x107a38] 0x008a9000 + 0x107a38 = 0x009b0a38
RTTICompleteObjectLocator ?$numpunct@D@std                                                                         // [0x107a48] 0x008a9000 + 0x107a48 = 0x009b0a48
.long 0x00000000                                                                                                   // [0x107a5c] 0x008a9000 + 0x107a5c = 0x009b0a5c
RTTIBaseClassDescriptor Property 0                                                                                 // [0x107a60] 0x008a9000 + 0x107a60 = 0x009b0a60
RTTIBaseClassDescriptor FloatProperty 1                                                                            // [0x107a78] 0x008a9000 + 0x107a78 = 0x009b0a78
RTTIBaseClassDescriptor FloatValueProperty 2                                                                       // [0x107a90] 0x008a9000 + 0x107a90 = 0x009b0a90
RTTIBaseClassArray FloatValueProperty                                                                              // [0x107aa8] 0x008a9000 + 0x107aa8 = 0x009b0aa8
.long ??_R1A@?0A@A@FloatProperty@@8
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

RTTIClassHierarchyDescriptor FloatValueProperty 3                                                                  // [0x107ab8] 0x008a9000 + 0x107ab8 = 0x009b0ab8
RTTICompleteObjectLocator FloatValueProperty                                                                       // [0x107ac8] 0x008a9000 + 0x107ac8 = 0x009b0ac8
.long 0x00000000                                                                                                   // [0x107adc] 0x008a9000 + 0x107adc = 0x009b0adc
RTTIBaseClassDescriptor IntegerProperty 1                                                                          // [0x107ae0] 0x008a9000 + 0x107ae0 = 0x009b0ae0
RTTIBaseClassDescriptor IntegerValueProperty 2                                                                     // [0x107af8] 0x008a9000 + 0x107af8 = 0x009b0af8
RTTIBaseClassArray IntegerValueProperty                                                                            // [0x107b10] 0x008a9000 + 0x107b10 = 0x009b0b10
.long ??_R1A@?0A@A@IntegerProperty@@8
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

RTTIClassHierarchyDescriptor IntegerValueProperty 3                                                                // [0x107b20] 0x008a9000 + 0x107b20 = 0x009b0b20
RTTICompleteObjectLocator IntegerValueProperty                                                                     // [0x107b30] 0x008a9000 + 0x107b30 = 0x009b0b30
.long 0x00000000                                                                                                   // [0x107b44] 0x008a9000 + 0x107b44 = 0x009b0b44
RTTIBaseClassDescriptor SoundActionProperty 1                                                                      // [0x107b48] 0x008a9000 + 0x107b48 = 0x009b0b48
RTTIBaseClassArray SoundActionProperty                                                                             // [0x107b60] 0x008a9000 + 0x107b60 = 0x009b0b60
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x107b6c] 0x008a9000 + 0x107b6c = 0x009b0b6c
RTTIClassHierarchyDescriptor SoundActionProperty 2                                                                 // [0x107b70] 0x008a9000 + 0x107b70 = 0x009b0b70
RTTICompleteObjectLocator SoundActionProperty                                                                      // [0x107b80] 0x008a9000 + 0x107b80 = 0x009b0b80
.long 0x00000000                                                                                                   // [0x107b94] 0x008a9000 + 0x107b94 = 0x009b0b94
RTTIBaseClassDescriptor StringProperty 1                                                                           // [0x107b98] 0x008a9000 + 0x107b98 = 0x009b0b98
RTTIBaseClassArray StringProperty                                                                                  // [0x107bb0] 0x008a9000 + 0x107bb0 = 0x009b0bb0
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x107bbc] 0x008a9000 + 0x107bbc = 0x009b0bbc
RTTIClassHierarchyDescriptor StringProperty 2                                                                      // [0x107bc0] 0x008a9000 + 0x107bc0 = 0x009b0bc0
RTTICompleteObjectLocator StringProperty                                                                           // [0x107bd0] 0x008a9000 + 0x107bd0 = 0x009b0bd0
.long 0x00000000                                                                                                   // [0x107be4] 0x008a9000 + 0x107be4 = 0x009b0be4
RTTIBaseClassDescriptor FileNameProperty 2                                                                         // [0x107be8] 0x008a9000 + 0x107be8 = 0x009b0be8
RTTIBaseClassArray FileNameProperty                                                                                // [0x107c00] 0x008a9000 + 0x107c00 = 0x009b0c00
.long ??_R1A@?0A@A@StringProperty@@8
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

RTTIClassHierarchyDescriptor FileNameProperty 3                                                                    // [0x107c10] 0x008a9000 + 0x107c10 = 0x009b0c10
RTTICompleteObjectLocator FileNameProperty                                                                         // [0x107c20] 0x008a9000 + 0x107c20 = 0x009b0c20
.long 0x00000000                                                                                                   // [0x107c34] 0x008a9000 + 0x107c34 = 0x009b0c34
RTTIBaseClassDescriptor BoolProperty 1                                                                             // [0x107c38] 0x008a9000 + 0x107c38 = 0x009b0c38
RTTIBaseClassArray BoolProperty                                                                                    // [0x107c50] 0x008a9000 + 0x107c50 = 0x009b0c50
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x107c5c] 0x008a9000 + 0x107c5c = 0x009b0c5c
RTTIClassHierarchyDescriptor BoolProperty 2                                                                        // [0x107c60] 0x008a9000 + 0x107c60 = 0x009b0c60
RTTICompleteObjectLocator BoolProperty                                                                             // [0x107c70] 0x008a9000 + 0x107c70 = 0x009b0c70
.long 0x00000000                                                                                                   // [0x107c84] 0x008a9000 + 0x107c84 = 0x009b0c84
RTTIBaseClassDescriptor EnumProperty 1                                                                             // [0x107c88] 0x008a9000 + 0x107c88 = 0x009b0c88
RTTIBaseClassDescriptor MeshEnumProperty 2                                                                         // [0x107ca0] 0x008a9000 + 0x107ca0 = 0x009b0ca0
RTTIBaseClassArray MeshEnumProperty                                                                                // [0x107cb8] 0x008a9000 + 0x107cb8 = 0x009b0cb8
.long ??_R1A@?0A@A@EnumProperty@@8
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

RTTIClassHierarchyDescriptor MeshEnumProperty 3                                                                    // [0x107cc8] 0x008a9000 + 0x107cc8 = 0x009b0cc8
RTTICompleteObjectLocator MeshEnumProperty                                                                         // [0x107cd8] 0x008a9000 + 0x107cd8 = 0x009b0cd8
.long 0x00000000                                                                                                   // [0x107cec] 0x008a9000 + 0x107cec = 0x009b0cec
RTTIBaseClassDescriptor AnimEnumProperty 2                                                                         // [0x107cf0] 0x008a9000 + 0x107cf0 = 0x009b0cf0
RTTIBaseClassArray AnimEnumProperty                                                                                // [0x107d08] 0x008a9000 + 0x107d08 = 0x009b0d08
.long ??_R1A@?0A@A@EnumProperty@@8
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AnimEnumProperty 3                                                                    // [0x107d18] 0x008a9000 + 0x107d18 = 0x009b0d18
RTTICompleteObjectLocator AnimEnumProperty                                                                         // [0x107d28] 0x008a9000 + 0x107d28 = 0x009b0d28
.long 0x00000000                                                                                                   // [0x107d3c] 0x008a9000 + 0x107d3c = 0x009b0d3c
RTTIBaseClassDescriptorStruct ctype_base@std 1                                                                     // [0x107d40] 0x008a9000 + 0x107d40 = 0x009b0d40
RTTIBaseClassDescriptor ?$ctype@D@std 2                                                                            // [0x107d58] 0x008a9000 + 0x107d58 = 0x009b0d58
RTTIBaseClassArray ?$ctype@D@std                                                                                   // [0x107d70] 0x008a9000 + 0x107d70 = 0x009b0d70
.long ??_R1A@?0A@A@ctype_base@std@@8
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$ctype@D@std 3                                                                       // [0x107d80] 0x008a9000 + 0x107d80 = 0x009b0d80
RTTICompleteObjectLocator ?$ctype@D@std                                                                            // [0x107d90] 0x008a9000 + 0x107d90 = 0x009b0d90
.long 0x00000000                                                                                                   // [0x107da4] 0x008a9000 + 0x107da4 = 0x009b0da4
RTTIBaseClassDescriptor ?$num_get@DV?$istreambuf_iterator@DU?$char_traits@D@std@@@std@@@std 1                      // [0x107da8] 0x008a9000 + 0x107da8 = 0x009b0da8
RTTIBaseClassArray ?$num_get@DV?$istreambuf_iterator@DU?$char_traits@D@std@@@std@@@std                             // [0x107dc0] 0x008a9000 + 0x107dc0 = 0x009b0dc0
.long ??_R1A@?0A@A@facet@locale@std@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x107dcc] 0x008a9000 + 0x107dcc = 0x009b0dcc
RTTIClassHierarchyDescriptor ?$num_get@DV?$istreambuf_iterator@DU?$char_traits@D@std@@@std@@@std 2                 // [0x107dd0] 0x008a9000 + 0x107dd0 = 0x009b0dd0
RTTICompleteObjectLocator ?$num_get@DV?$istreambuf_iterator@DU?$char_traits@D@std@@@std@@@std                      // [0x107de0] 0x008a9000 + 0x107de0 = 0x009b0de0
.long 0x00000000                                                                                                   // [0x107df4] 0x008a9000 + 0x107df4 = 0x009b0df4
RTTIBaseClassDescriptor DancePathInfo 2                                                                            // [0x107df8] 0x008a9000 + 0x107df8 = 0x009b0df8
RTTIBaseClassArray DancePathInfo                                                                                   // [0x107e10] 0x008a9000 + 0x107e10 = 0x009b0e10
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor DancePathInfo 3                                                                       // [0x107e20] 0x008a9000 + 0x107e20 = 0x009b0e20
RTTICompleteObjectLocator DancePathInfo                                                                            // [0x107e30] 0x008a9000 + 0x107e30 = 0x009b0e30
.long 0x00000000                                                                                                   // [0x107e44] 0x008a9000 + 0x107e44 = 0x009b0e44
RTTIBaseClassArray GroupBehaviour                                                                                  // [0x107e48] 0x008a9000 + 0x107e48 = 0x009b0e48
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x107e5c] 0x008a9000 + 0x107e5c = 0x009b0e5c
RTTIClassHierarchyDescriptor GroupBehaviour 4                                                                      // [0x107e60] 0x008a9000 + 0x107e60 = 0x009b0e60
RTTICompleteObjectLocator GroupBehaviour                                                                           // [0x107e70] 0x008a9000 + 0x107e70 = 0x009b0e70
.long 0x00000000                                                                                                   // [0x107e84] 0x008a9000 + 0x107e84 = 0x009b0e84
RTTIBaseClassDescriptor HandStateCamera 1                                                                          // [0x107e88] 0x008a9000 + 0x107e88 = 0x009b0e88
RTTIBaseClassArray HandStateCamera                                                                                 // [0x107ea0] 0x008a9000 + 0x107ea0 = 0x009b0ea0
.long ??_R1A@?0A@A@HandState@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x107eac] 0x008a9000 + 0x107eac = 0x009b0eac
RTTIClassHierarchyDescriptor HandStateCamera 2                                                                     // [0x107eb0] 0x008a9000 + 0x107eb0 = 0x009b0eb0
RTTICompleteObjectLocator HandStateCamera                                                                          // [0x107ec0] 0x008a9000 + 0x107ec0 = 0x009b0ec0
.long 0x00000000                                                                                                   // [0x107ed4] 0x008a9000 + 0x107ed4 = 0x009b0ed4
RTTIBaseClassDescriptor HandStateCitadel 1                                                                         // [0x107ed8] 0x008a9000 + 0x107ed8 = 0x009b0ed8
RTTIBaseClassArray HandStateCitadel                                                                                // [0x107ef0] 0x008a9000 + 0x107ef0 = 0x009b0ef0
.long ??_R1A@?0A@A@HandState@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x107efc] 0x008a9000 + 0x107efc = 0x009b0efc
RTTIClassHierarchyDescriptor HandStateCitadel 2                                                                    // [0x107f00] 0x008a9000 + 0x107f00 = 0x009b0f00
RTTICompleteObjectLocator HandStateCitadel                                                                         // [0x107f10] 0x008a9000 + 0x107f10 = 0x009b0f10
.long 0x00000000                                                                                                   // [0x107f24] 0x008a9000 + 0x107f24 = 0x009b0f24
RTTIBaseClassDescriptor HandStateCreature 1                                                                        // [0x107f28] 0x008a9000 + 0x107f28 = 0x009b0f28
RTTIBaseClassArray HandStateCreature                                                                               // [0x107f40] 0x008a9000 + 0x107f40 = 0x009b0f40
.long ??_R1A@?0A@A@HandState@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x107f4c] 0x008a9000 + 0x107f4c = 0x009b0f4c
RTTIClassHierarchyDescriptor HandStateCreature 2                                                                   // [0x107f50] 0x008a9000 + 0x107f50 = 0x009b0f50
RTTICompleteObjectLocator HandStateCreature                                                                        // [0x107f60] 0x008a9000 + 0x107f60 = 0x009b0f60
.long 0x00000000                                                                                                   // [0x107f74] 0x008a9000 + 0x107f74 = 0x009b0f74
RTTIBaseClassDescriptor HandStateHolding 1                                                                         // [0x107f78] 0x008a9000 + 0x107f78 = 0x009b0f78
RTTIBaseClassDescriptor HandStateGrain 2                                                                           // [0x107f90] 0x008a9000 + 0x107f90 = 0x009b0f90
RTTIBaseClassArray HandStateGrain                                                                                  // [0x107fa8] 0x008a9000 + 0x107fa8 = 0x009b0fa8
.long ??_R1A@?0A@A@HandStateHolding@@8
.long ??_R1A@?0A@A@HandState@@8
.long 0x00000000

RTTIClassHierarchyDescriptor HandStateGrain 3                                                                      // [0x107fb8] 0x008a9000 + 0x107fb8 = 0x009b0fb8
RTTICompleteObjectLocator HandStateGrain                                                                           // [0x107fc8] 0x008a9000 + 0x107fc8 = 0x009b0fc8
.long 0x00000000                                                                                                   // [0x107fdc] 0x008a9000 + 0x107fdc = 0x009b0fdc
RTTIBaseClassArray HandStateHolding                                                                                // [0x107fe0] 0x008a9000 + 0x107fe0 = 0x009b0fe0
.long ??_R1A@?0A@A@HandState@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x107fec] 0x008a9000 + 0x107fec = 0x009b0fec
RTTIClassHierarchyDescriptor HandStateHolding 2                                                                    // [0x107ff0] 0x008a9000 + 0x107ff0 = 0x009b0ff0
RTTICompleteObjectLocator HandStateHolding                                                                         // [0x108000] 0x008a9000 + 0x108000 = 0x009b1000
.long 0x00000000                                                                                                   // [0x108014] 0x008a9000 + 0x108014 = 0x009b1014
RTTIBaseClassDescriptor HandStateMultiPickUp 1                                                                     // [0x108018] 0x008a9000 + 0x108018 = 0x009b1018
RTTIBaseClassArray HandStateMultiPickUp                                                                            // [0x108030] 0x008a9000 + 0x108030 = 0x009b1030
.long ??_R1A@?0A@A@HandState@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10803c] 0x008a9000 + 0x10803c = 0x009b103c
RTTIClassHierarchyDescriptor HandStateMultiPickUp 2                                                                // [0x108040] 0x008a9000 + 0x108040 = 0x009b1040
RTTICompleteObjectLocator HandStateMultiPickUp                                                                     // [0x108050] 0x008a9000 + 0x108050 = 0x009b1050
.long 0x00000000                                                                                                   // [0x108064] 0x008a9000 + 0x108064 = 0x009b1064
RTTIBaseClassDescriptor HandStateNormal 1                                                                          // [0x108068] 0x008a9000 + 0x108068 = 0x009b1068
RTTIBaseClassArray HandStateNormal                                                                                 // [0x108080] 0x008a9000 + 0x108080 = 0x009b1080
.long ??_R1A@?0A@A@HandState@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10808c] 0x008a9000 + 0x10808c = 0x009b108c
RTTIClassHierarchyDescriptor HandStateNormal 2                                                                     // [0x108090] 0x008a9000 + 0x108090 = 0x009b1090
RTTICompleteObjectLocator HandStateNormal                                                                          // [0x1080a0] 0x008a9000 + 0x1080a0 = 0x009b10a0
.long 0x00000000                                                                                                   // [0x1080b4] 0x008a9000 + 0x1080b4 = 0x009b10b4
RTTIBaseClassDescriptor HandStatePlayAnim 1                                                                        // [0x1080b8] 0x008a9000 + 0x1080b8 = 0x009b10b8
RTTIBaseClassArray HandStatePlayAnim                                                                               // [0x1080d0] 0x008a9000 + 0x1080d0 = 0x009b10d0
.long ??_R1A@?0A@A@HandState@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1080dc] 0x008a9000 + 0x1080dc = 0x009b10dc
RTTIClassHierarchyDescriptor HandStatePlayAnim 2                                                                   // [0x1080e0] 0x008a9000 + 0x1080e0 = 0x009b10e0
RTTICompleteObjectLocator HandStatePlayAnim                                                                        // [0x1080f0] 0x008a9000 + 0x1080f0 = 0x009b10f0
.long 0x00000000                                                                                                   // [0x108104] 0x008a9000 + 0x108104 = 0x009b1104
RTTIBaseClassDescriptor HandStateTotem 1                                                                           // [0x108108] 0x008a9000 + 0x108108 = 0x009b1108
RTTIBaseClassArray HandStateTotem                                                                                  // [0x108120] 0x008a9000 + 0x108120 = 0x009b1120
.long ??_R1A@?0A@A@HandState@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10812c] 0x008a9000 + 0x10812c = 0x009b112c
RTTIClassHierarchyDescriptor HandStateTotem 2                                                                      // [0x108130] 0x008a9000 + 0x108130 = 0x009b1130
RTTICompleteObjectLocator HandStateTotem                                                                           // [0x108140] 0x008a9000 + 0x108140 = 0x009b1140
.long 0x00000000                                                                                                   // [0x108154] 0x008a9000 + 0x108154 = 0x009b1154
RTTIBaseClassDescriptor HandStateTug 1                                                                             // [0x108158] 0x008a9000 + 0x108158 = 0x009b1158
RTTIBaseClassArray HandStateTug                                                                                    // [0x108170] 0x008a9000 + 0x108170 = 0x009b1170
.long ??_R1A@?0A@A@HandState@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10817c] 0x008a9000 + 0x10817c = 0x009b117c
RTTIClassHierarchyDescriptor HandStateTug 2                                                                        // [0x108180] 0x008a9000 + 0x108180 = 0x009b1180
RTTICompleteObjectLocator HandStateTug                                                                             // [0x108190] 0x008a9000 + 0x108190 = 0x009b1190
.long 0x00000000                                                                                                   // [0x1081a4] 0x008a9000 + 0x1081a4 = 0x009b11a4
RTTIBaseClassArray LocalBase                                                                                       // [0x1081a8] 0x008a9000 + 0x1081a8 = 0x009b11a8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1081b4] 0x008a9000 + 0x1081b4 = 0x009b11b4
RTTIClassHierarchyDescriptor LocalBase 2                                                                           // [0x1081b8] 0x008a9000 + 0x1081b8 = 0x009b11b8
RTTICompleteObjectLocator LocalBase                                                                                // [0x1081c8] 0x008a9000 + 0x1081c8 = 0x009b11c8
.long 0x00000000                                                                                                   // [0x1081dc] 0x008a9000 + 0x1081dc = 0x009b11dc
RTTIBaseClassDescriptor LocalBase 1                                                                                // [0x1081e0] 0x008a9000 + 0x1081e0 = 0x009b11e0
RTTIBaseClassDescriptorStruct HelpDude 2                                                                           // [0x1081f8] 0x008a9000 + 0x1081f8 = 0x009b11f8
RTTIBaseClassArray HelpDude                                                                                        // [0x108210] 0x008a9000 + 0x108210 = 0x009b1210
.long ??_R1A@?0A@A@LocalBase@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor HelpDude 3                                                                            // [0x108220] 0x008a9000 + 0x108220 = 0x009b1220
RTTICompleteObjectLocatorStruct HelpDude                                                                           // [0x108230] 0x008a9000 + 0x108230 = 0x009b1230
.long 0x00000000                                                                                                   // [0x108244] 0x008a9000 + 0x108244 = 0x009b1244
RTTIBaseClassDescriptor HelpProfile 1                                                                              // [0x108248] 0x008a9000 + 0x108248 = 0x009b1248
RTTIBaseClassArray HelpProfile                                                                                     // [0x108260] 0x008a9000 + 0x108260 = 0x009b1260
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10826c] 0x008a9000 + 0x10826c = 0x009b126c
RTTIClassHierarchyDescriptor HelpProfile 2                                                                         // [0x108270] 0x008a9000 + 0x108270 = 0x009b1270
RTTICompleteObjectLocator HelpProfile                                                                              // [0x108280] 0x008a9000 + 0x108280 = 0x009b1280
.long 0x00000000                                                                                                   // [0x108294] 0x008a9000 + 0x108294 = 0x009b1294
RTTIBaseClassDescriptor HelpSpiritInfo 6                                                                           // [0x108298] 0x008a9000 + 0x108298 = 0x009b1298
RTTIBaseClassArray HelpSpiritInfo                                                                                  // [0x1082b0] 0x008a9000 + 0x1082b0 = 0x009b12b0
.long ??_R1A@?0A@A@GLivingInfo@@8
.long ??_R1A@?0A@A@GMobileWallHugInfo@@8
.long ??_R1A@?0A@A@GMobileInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor HelpSpiritInfo 7                                                                      // [0x1082d0] 0x008a9000 + 0x1082d0 = 0x009b12d0
RTTICompleteObjectLocator HelpSpiritInfo                                                                           // [0x1082e0] 0x008a9000 + 0x1082e0 = 0x009b12e0
.long 0x00000000                                                                                                   // [0x1082f4] 0x008a9000 + 0x1082f4 = 0x009b12f4
RTTIBaseClassDescriptor HelpSpirit 4                                                                               // [0x1082f8] 0x008a9000 + 0x1082f8 = 0x009b12f8
RTTIBaseClassArray HelpSpirit                                                                                      // [0x108310] 0x008a9000 + 0x108310 = 0x009b1310
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor HelpSpirit 5                                                                          // [0x108328] 0x008a9000 + 0x108328 = 0x009b1328
RTTICompleteObjectLocator HelpSpirit                                                                               // [0x108338] 0x008a9000 + 0x108338 = 0x009b1338
.long 0x00000000                                                                                                   // [0x10834c] 0x008a9000 + 0x10834c = 0x009b134c
RTTIBaseClassDescriptor HelpSystemInfo 2                                                                           // [0x108350] 0x008a9000 + 0x108350 = 0x009b1350
RTTIBaseClassArray HelpSystemInfo                                                                                  // [0x108368] 0x008a9000 + 0x108368 = 0x009b1368
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor HelpSystemInfo 3                                                                      // [0x108378] 0x008a9000 + 0x108378 = 0x009b1378
RTTICompleteObjectLocator HelpSystemInfo                                                                           // [0x108388] 0x008a9000 + 0x108388 = 0x009b1388
.long 0x00000000                                                                                                   // [0x10839c] 0x008a9000 + 0x10839c = 0x009b139c
RTTIBaseClassDescriptor HelpSystem 1                                                                               // [0x1083a0] 0x008a9000 + 0x1083a0 = 0x009b13a0
RTTIBaseClassArray HelpSystem                                                                                      // [0x1083b8] 0x008a9000 + 0x1083b8 = 0x009b13b8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1083c4] 0x008a9000 + 0x1083c4 = 0x009b13c4
RTTIClassHierarchyDescriptor HelpSystem 2                                                                          // [0x1083c8] 0x008a9000 + 0x1083c8 = 0x009b13c8
RTTICompleteObjectLocator HelpSystem                                                                               // [0x1083d8] 0x008a9000 + 0x1083d8 = 0x009b13d8
.long 0x00000000                                                                                                   // [0x1083ec] 0x008a9000 + 0x1083ec = 0x009b13ec
RTTIBaseClassDescriptor GToolTipsInfo 2                                                                            // [0x1083f0] 0x008a9000 + 0x1083f0 = 0x009b13f0
RTTIBaseClassArray GToolTipsInfo                                                                                   // [0x108408] 0x008a9000 + 0x108408 = 0x009b1408
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GToolTipsInfo 3                                                                       // [0x108418] 0x008a9000 + 0x108418 = 0x009b1418
RTTICompleteObjectLocator GToolTipsInfo                                                                            // [0x108428] 0x008a9000 + 0x108428 = 0x009b1428
.long 0x00000000                                                                                                   // [0x10843c] 0x008a9000 + 0x10843c = 0x009b143c
RTTIBaseClassDescriptor HelpText 1                                                                                 // [0x108440] 0x008a9000 + 0x108440 = 0x009b1440
RTTIBaseClassArray HelpText                                                                                        // [0x108458] 0x008a9000 + 0x108458 = 0x009b1458
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x108464] 0x008a9000 + 0x108464 = 0x009b1464
RTTIClassHierarchyDescriptor HelpText 2                                                                            // [0x108468] 0x008a9000 + 0x108468 = 0x009b1468
RTTICompleteObjectLocator HelpText                                                                                 // [0x108478] 0x008a9000 + 0x108478 = 0x009b1478
.long 0x00000000                                                                                                   // [0x10848c] 0x008a9000 + 0x10848c = 0x009b148c
RTTIBaseClassDescriptor GInfluenceInfo 2                                                                           // [0x108490] 0x008a9000 + 0x108490 = 0x009b1490
RTTIBaseClassArray GInfluenceInfo                                                                                  // [0x1084a8] 0x008a9000 + 0x1084a8 = 0x009b14a8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GInfluenceInfo 3                                                                      // [0x1084b8] 0x008a9000 + 0x1084b8 = 0x009b14b8
RTTICompleteObjectLocator GInfluenceInfo                                                                           // [0x1084c8] 0x008a9000 + 0x1084c8 = 0x009b14c8
.long 0x00000000                                                                                                   // [0x1084dc] 0x008a9000 + 0x1084dc = 0x009b14dc
RTTIBaseClassDescriptor GInterface 3                                                                               // [0x1084e0] 0x008a9000 + 0x1084e0 = 0x009b14e0
RTTIBaseClassArray GInterface                                                                                      // [0x1084f8] 0x008a9000 + 0x1084f8 = 0x009b14f8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10850c] 0x008a9000 + 0x10850c = 0x009b150c
RTTIClassHierarchyDescriptor GInterface 4                                                                          // [0x108510] 0x008a9000 + 0x108510 = 0x009b1510
RTTICompleteObjectLocator GInterface                                                                               // [0x108520] 0x008a9000 + 0x108520 = 0x009b1520
.long 0x00000000                                                                                                   // [0x108534] 0x008a9000 + 0x108534 = 0x009b1534
RTTIBaseClassDescriptor GInterfaceFlags 1                                                                          // [0x108538] 0x008a9000 + 0x108538 = 0x009b1538
RTTIBaseClassArray GInterfaceFlags                                                                                 // [0x108550] 0x008a9000 + 0x108550 = 0x009b1550
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10855c] 0x008a9000 + 0x10855c = 0x009b155c
RTTIClassHierarchyDescriptor GInterfaceFlags 2                                                                     // [0x108560] 0x008a9000 + 0x108560 = 0x009b1560
RTTICompleteObjectLocator GInterfaceFlags                                                                          // [0x108570] 0x008a9000 + 0x108570 = 0x009b1570
.long 0x00000000                                                                                                   // [0x108584] 0x008a9000 + 0x108584 = 0x009b1584
RTTIBaseClassDescriptor GInterfaceCollide 1                                                                        // [0x108588] 0x008a9000 + 0x108588 = 0x009b1588
RTTIBaseClassArray GInterfaceCollide                                                                               // [0x1085a0] 0x008a9000 + 0x1085a0 = 0x009b15a0
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1085ac] 0x008a9000 + 0x1085ac = 0x009b15ac
RTTIClassHierarchyDescriptor GInterfaceCollide 2                                                                   // [0x1085b0] 0x008a9000 + 0x1085b0 = 0x009b15b0
RTTICompleteObjectLocator GInterfaceCollide                                                                        // [0x1085c0] 0x008a9000 + 0x1085c0 = 0x009b15c0
.long 0x00000000                                                                                                   // [0x1085d4] 0x008a9000 + 0x1085d4 = 0x009b15d4
RTTIBaseClassDescriptor InterfaceHandState 1                                                                       // [0x1085d8] 0x008a9000 + 0x1085d8 = 0x009b15d8
RTTIBaseClassArray InterfaceHandState                                                                              // [0x1085f0] 0x008a9000 + 0x1085f0 = 0x009b15f0
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1085fc] 0x008a9000 + 0x1085fc = 0x009b15fc
RTTIClassHierarchyDescriptor InterfaceHandState 2                                                                  // [0x108600] 0x008a9000 + 0x108600 = 0x009b1600
RTTICompleteObjectLocator InterfaceHandState                                                                       // [0x108610] 0x008a9000 + 0x108610 = 0x009b1610
.long 0x00000000                                                                                                   // [0x108624] 0x008a9000 + 0x108624 = 0x009b1624
RTTIBaseClassDescriptor GInterfaceMessageBuffer 1                                                                  // [0x108628] 0x008a9000 + 0x108628 = 0x009b1628
RTTIBaseClassArray GInterfaceMessageBuffer                                                                         // [0x108640] 0x008a9000 + 0x108640 = 0x009b1640
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10864c] 0x008a9000 + 0x10864c = 0x009b164c
RTTIClassHierarchyDescriptor GInterfaceMessageBuffer 2                                                             // [0x108650] 0x008a9000 + 0x108650 = 0x009b1650
RTTICompleteObjectLocator GInterfaceMessageBuffer                                                                  // [0x108660] 0x008a9000 + 0x108660 = 0x009b1660
.long 0x00000000                                                                                                   // [0x108674] 0x008a9000 + 0x108674 = 0x009b1674
RTTIBaseClassDescriptor CImmDevice 0                                                                               // [0x108678] 0x008a9000 + 0x108678 = 0x009b1678
RTTIBaseClassDescriptor CImmMouse 1                                                                                // [0x108690] 0x008a9000 + 0x108690 = 0x009b1690
RTTIBaseClassArray CImmMouse                                                                                       // [0x1086a8] 0x008a9000 + 0x1086a8 = 0x009b16a8
.long ??_R1A@?0A@A@CImmDevice@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1086b4] 0x008a9000 + 0x1086b4 = 0x009b16b4
RTTIClassHierarchyDescriptor CImmMouse 2                                                                           // [0x1086b8] 0x008a9000 + 0x1086b8 = 0x009b16b8
RTTICompleteObjectLocator CImmMouse                                                                                // [0x1086c8] 0x008a9000 + 0x1086c8 = 0x009b16c8
.long 0x00000000                                                                                                   // [0x1086dc] 0x008a9000 + 0x1086dc = 0x009b16dc
RTTIBaseClassDescriptor GInterfaceStatus 3                                                                         // [0x1086e0] 0x008a9000 + 0x1086e0 = 0x009b16e0
RTTIBaseClassArray GInterfaceStatus                                                                                // [0x1086f8] 0x008a9000 + 0x1086f8 = 0x009b16f8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10870c] 0x008a9000 + 0x10870c = 0x009b170c
RTTIClassHierarchyDescriptor GInterfaceStatus 4                                                                    // [0x108710] 0x008a9000 + 0x108710 = 0x009b1710
RTTICompleteObjectLocator GInterfaceStatus                                                                         // [0x108720] 0x008a9000 + 0x108720 = 0x009b1720
.long 0x00000000                                                                                                   // [0x108734] 0x008a9000 + 0x108734 = 0x009b1734
RTTIBaseClassDescriptor GLeashStatus 2                                                                             // [0x108738] 0x008a9000 + 0x108738 = 0x009b1738
RTTIBaseClassArray GLeashStatus                                                                                    // [0x108750] 0x008a9000 + 0x108750 = 0x009b1750
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GLeashStatus 3                                                                        // [0x108760] 0x008a9000 + 0x108760 = 0x009b1760
RTTICompleteObjectLocator GLeashStatus                                                                             // [0x108770] 0x008a9000 + 0x108770 = 0x009b1770
.long 0x00000000                                                                                                   // [0x108784] 0x008a9000 + 0x108784 = 0x009b1784
RTTIBaseClassDescriptor IPSpecialDialog 1                                                                          // [0x108788] 0x008a9000 + 0x108788 = 0x009b1788
RTTIBaseClassArray IPSpecialDialog                                                                                 // [0x1087a0] 0x008a9000 + 0x1087a0 = 0x009b17a0
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1087ac] 0x008a9000 + 0x1087ac = 0x009b17ac
RTTIClassHierarchyDescriptor IPSpecialDialog 2                                                                     // [0x1087b0] 0x008a9000 + 0x1087b0 = 0x009b17b0
RTTICompleteObjectLocator IPSpecialDialog                                                                          // [0x1087c0] 0x008a9000 + 0x1087c0 = 0x009b17c0
.long 0x00000000                                                                                                   // [0x1087d4] 0x008a9000 + 0x1087d4 = 0x009b17d4
RTTIBaseClassDescriptor GJobInfo 2                                                                                 // [0x1087d8] 0x008a9000 + 0x1087d8 = 0x009b17d8
RTTIBaseClassArray GJobInfo                                                                                        // [0x1087f0] 0x008a9000 + 0x1087f0 = 0x009b17f0
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GJobInfo 3                                                                            // [0x108800] 0x008a9000 + 0x108800 = 0x009b1800
RTTICompleteObjectLocator GJobInfo                                                                                 // [0x108810] 0x008a9000 + 0x108810 = 0x009b1810
.long 0x00000000                                                                                                   // [0x108824] 0x008a9000 + 0x108824 = 0x009b1824
RTTIBaseClassDescriptor GKeyInput 1                                                                                // [0x108828] 0x008a9000 + 0x108828 = 0x009b1828
RTTIBaseClassArray GKeyInput                                                                                       // [0x108840] 0x008a9000 + 0x108840 = 0x009b1840
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10884c] 0x008a9000 + 0x10884c = 0x009b184c
RTTIClassHierarchyDescriptor GKeyInput 2                                                                           // [0x108850] 0x008a9000 + 0x108850 = 0x009b1850
RTTICompleteObjectLocator GKeyInput                                                                                // [0x108860] 0x008a9000 + 0x108860 = 0x009b1860
.long 0x00000000                                                                                                   // [0x108874] 0x008a9000 + 0x108874 = 0x009b1874
RTTIBaseClassDescriptor GLanguage 1                                                                                // [0x108878] 0x008a9000 + 0x108878 = 0x009b1878
RTTIBaseClassArray GLanguage                                                                                       // [0x108890] 0x008a9000 + 0x108890 = 0x009b1890
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10889c] 0x008a9000 + 0x10889c = 0x009b189c
RTTIClassHierarchyDescriptor GLanguage 2                                                                           // [0x1088a0] 0x008a9000 + 0x1088a0 = 0x009b18a0
RTTICompleteObjectLocator GLanguage                                                                                // [0x1088b0] 0x008a9000 + 0x1088b0 = 0x009b18b0
.long 0x00000000                                                                                                   // [0x1088c4] 0x008a9000 + 0x1088c4 = 0x009b18c4
RTTIBaseClassDescriptor LevelOfDetail 1                                                                            // [0x1088c8] 0x008a9000 + 0x1088c8 = 0x009b18c8
RTTIBaseClassArray LevelOfDetail                                                                                   // [0x1088e0] 0x008a9000 + 0x1088e0 = 0x009b18e0
.long ??_R1A@?0A@A@Prss@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1088ec] 0x008a9000 + 0x1088ec = 0x009b18ec
RTTIClassHierarchyDescriptor LevelOfDetail 2                                                                       // [0x1088f0] 0x008a9000 + 0x1088f0 = 0x009b18f0
RTTICompleteObjectLocator LevelOfDetail                                                                            // [0x108900] 0x008a9000 + 0x108900 = 0x009b1900
.long 0x00000000                                                                                                   // [0x108914] 0x008a9000 + 0x108914 = 0x009b1914
RTTIBaseClassDescriptor LHConnection 0                                                                             // [0x108918] 0x008a9000 + 0x108918 = 0x009b1918
RTTIBaseClassDescriptor LHLobby 1                                                                                  // [0x108930] 0x008a9000 + 0x108930 = 0x009b1930
RTTIBaseClassArray LHLobby                                                                                         // [0x108948] 0x008a9000 + 0x108948 = 0x009b1948
.long ??_R1A@?0A@A@LHConnection@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x108954] 0x008a9000 + 0x108954 = 0x009b1954
RTTIClassHierarchyDescriptor LHLobby 2                                                                             // [0x108958] 0x008a9000 + 0x108958 = 0x009b1958
RTTICompleteObjectLocator LHLobby                                                                                  // [0x108968] 0x008a9000 + 0x108968 = 0x009b1968
.long 0x00000000                                                                                                   // [0x10897c] 0x008a9000 + 0x10897c = 0x009b197c
RTTIBaseClassDescriptor LHSession 1                                                                                // [0x108980] 0x008a9000 + 0x108980 = 0x009b1980
RTTIBaseClassArray LHSession                                                                                       // [0x108998] 0x008a9000 + 0x108998 = 0x009b1998
.long ??_R1A@?0A@A@LHConnection@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1089a4] 0x008a9000 + 0x1089a4 = 0x009b19a4
RTTIClassHierarchyDescriptor LHSession 2                                                                           // [0x1089a8] 0x008a9000 + 0x1089a8 = 0x009b19a8
RTTICompleteObjectLocator LHSession                                                                                // [0x1089b8] 0x008a9000 + 0x1089b8 = 0x009b19b8
.long 0x00000000                                                                                                   // [0x1089cc] 0x008a9000 + 0x1089cc = 0x009b19cc
RTTIBaseClassDescriptor DataPath 2                                                                                 // [0x1089d0] 0x008a9000 + 0x1089d0 = 0x009b19d0
RTTIBaseClassArray DataPath                                                                                        // [0x1089e8] 0x008a9000 + 0x1089e8 = 0x009b19e8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor DataPath 3                                                                            // [0x1089f8] 0x008a9000 + 0x1089f8 = 0x009b19f8
RTTICompleteObjectLocator DataPath                                                                                 // [0x108a08] 0x008a9000 + 0x108a08 = 0x009b1a08
.long 0x00000000                                                                                                   // [0x108a1c] 0x008a9000 + 0x108a1c = 0x009b1a1c
RTTIBaseClassDescriptor DataForScriptRemind 2                                                                      // [0x108a20] 0x008a9000 + 0x108a20 = 0x009b1a20
RTTIBaseClassArray DataForScriptRemind                                                                             // [0x108a38] 0x008a9000 + 0x108a38 = 0x009b1a38
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor DataForScriptRemind 3                                                                 // [0x108a48] 0x008a9000 + 0x108a48 = 0x009b1a48
RTTICompleteObjectLocator DataForScriptRemind                                                                      // [0x108a58] 0x008a9000 + 0x108a58 = 0x009b1a58
.long 0x00000000                                                                                                   // [0x108a6c] 0x008a9000 + 0x108a6c = 0x009b1a6c
RTTIBaseClassDescriptor MagicFood 10                                                                               // [0x108a70] 0x008a9000 + 0x108a70 = 0x009b1a70
RTTIBaseClassArray MagicFood                                                                                       // [0x108a88] 0x008a9000 + 0x108a88 = 0x009b1a88
.long ??_R1A@?0A@A@PileFood@@8
.long ??_R1A@?0A@A@PileResource@@8
.long ??_R1A@?0A@A@PotStructure@@8
.long ??_R1A@?0A@A@Pot@@8
.long ??_R1A@?0A@A@MobileObject@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor MagicFood 11                                                                          // [0x108ab8] 0x008a9000 + 0x108ab8 = 0x009b1ab8
RTTICompleteObjectLocator MagicFood                                                                                // [0x108ac8] 0x008a9000 + 0x108ac8 = 0x009b1ac8
.long 0x00000000                                                                                                   // [0x108adc] 0x008a9000 + 0x108adc = 0x009b1adc
RTTIBaseClassDescriptor GMagicHand 2                                                                               // [0x108ae0] 0x008a9000 + 0x108ae0 = 0x009b1ae0
RTTIBaseClassArray GMagicHand                                                                                      // [0x108af8] 0x008a9000 + 0x108af8 = 0x009b1af8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GMagicHand 3                                                                          // [0x108b08] 0x008a9000 + 0x108b08 = 0x009b1b08
RTTICompleteObjectLocator GMagicHand                                                                               // [0x108b18] 0x008a9000 + 0x108b18 = 0x009b1b18
.long 0x00000000                                                                                                   // [0x108b2c] 0x008a9000 + 0x108b2c = 0x009b1b2c
RTTIBaseClassDescriptor GMagicLivingInfo 6                                                                         // [0x108b30] 0x008a9000 + 0x108b30 = 0x009b1b30
RTTIBaseClassArray GMagicLivingInfo                                                                                // [0x108b48] 0x008a9000 + 0x108b48 = 0x009b1b48
.long ??_R1A@?0A@A@GLivingInfo@@8
.long ??_R1A@?0A@A@GMobileWallHugInfo@@8
.long ??_R1A@?0A@A@GMobileInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GMagicLivingInfo 7                                                                    // [0x108b68] 0x008a9000 + 0x108b68 = 0x009b1b68
RTTICompleteObjectLocator GMagicLivingInfo                                                                         // [0x108b78] 0x008a9000 + 0x108b78 = 0x009b1b78
.long 0x00000000                                                                                                   // [0x108b8c] 0x008a9000 + 0x108b8c = 0x009b1b8c
RTTIBaseClassDescriptor MagicTeleport 7                                                                            // [0x108b90] 0x008a9000 + 0x108b90 = 0x009b1b90
RTTIBaseClassArray MagicTeleport                                                                                   // [0x108ba8] 0x008a9000 + 0x108ba8 = 0x009b1ba8
.long ??_R1A@?0A@A@MobileStatic@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x108bcc] 0x008a9000 + 0x108bcc = 0x009b1bcc
RTTIClassHierarchyDescriptor MagicTeleport 8                                                                       // [0x108bd0] 0x008a9000 + 0x108bd0 = 0x009b1bd0
RTTICompleteObjectLocator MagicTeleport                                                                            // [0x108be0] 0x008a9000 + 0x108be0 = 0x009b1be0
.long 0x00000000                                                                                                   // [0x108bf4] 0x008a9000 + 0x108bf4 = 0x009b1bf4
RTTIBaseClassDescriptor MagicTree 7                                                                                // [0x108bf8] 0x008a9000 + 0x108bf8 = 0x009b1bf8
RTTIBaseClassArray MagicTree                                                                                       // [0x108c10] 0x008a9000 + 0x108c10 = 0x009b1c10
.long ??_R1A@?0A@A@Tree@@8
.long ??_R1A@?0A@A@SingleMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x108c34] 0x008a9000 + 0x108c34 = 0x009b1c34
RTTIClassHierarchyDescriptor MagicTree 8                                                                           // [0x108c38] 0x008a9000 + 0x108c38 = 0x009b1c38
RTTICompleteObjectLocator MagicTree                                                                                // [0x108c48] 0x008a9000 + 0x108c48 = 0x009b1c48
.long 0x00000000                                                                                                   // [0x108c5c] 0x008a9000 + 0x108c5c = 0x009b1c5c
RTTIBaseClassDescriptor GVortexInfo 2                                                                              // [0x108c60] 0x008a9000 + 0x108c60 = 0x009b1c60
RTTIBaseClassArray GVortexInfo                                                                                     // [0x108c78] 0x008a9000 + 0x108c78 = 0x009b1c78
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GVortexInfo 3                                                                         // [0x108c88] 0x008a9000 + 0x108c88 = 0x009b1c88
RTTICompleteObjectLocator GVortexInfo                                                                              // [0x108c98] 0x008a9000 + 0x108c98 = 0x009b1c98
.long 0x00000000                                                                                                   // [0x108cac] 0x008a9000 + 0x108cac = 0x009b1cac
.byte 0x40, 0xd2, 0x9c, 0x00, 0x00, 0x00, 0x00, 0x00                                                               // [0x108cb0] 0x008a9000 + 0x108cb0 = 0x009b1cb0
.byte 0x88, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff                                                               // [0x108cb8] 0x008a9000 + 0x108cb8 = 0x009b1cb8
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00                                                               // [0x108cc0] 0x008a9000 + 0x108cc0 = 0x009b1cc0
RTTIBaseClassDescriptor LandscapeVortex 8                                                                          // [0x108cc8] 0x008a9000 + 0x108cc8 = 0x009b1cc8
RTTIBaseClassDescriptor LandscapeVortexVolc 9                                                                      // [0x108ce0] 0x008a9000 + 0x108ce0 = 0x009b1ce0
RTTIBaseClassArray LandscapeVortexVolc                                                                             // [0x108cf8] 0x008a9000 + 0x108cf8 = 0x009b1cf8
.long ??_R1A@?0A@A@LandscapeVortex@@8
.long ??_R1A@?0A@A@MobileStatic@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x009b1cb0
.long 0x00000000

.long 0x00000000                                                                                                   // [0x108d24] 0x008a9000 + 0x108d24 = 0x009b1d24
RTTIClassHierarchyDescriptorMultiInheritance LandscapeVortexVolc 10                                                // [0x108d28] 0x008a9000 + 0x108d28 = 0x009b1d28
RTTICompleteObjectLocator LandscapeVortexVolc                                                                      // [0x108d38] 0x008a9000 + 0x108d38 = 0x009b1d38
.long 0x00000000                                                                                                   // [0x108d4c] 0x008a9000 + 0x108d4c = 0x009b1d4c
RTTIBaseClassDescriptor LandscapeVortexIn 9                                                                        // [0x108d50] 0x008a9000 + 0x108d50 = 0x009b1d50
RTTIBaseClassArray LandscapeVortexIn                                                                               // [0x108d68] 0x008a9000 + 0x108d68 = 0x009b1d68
.long ??_R1A@?0A@A@LandscapeVortex@@8
.long ??_R1A@?0A@A@MobileStatic@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x009b1cb0
.long 0x00000000

.long 0x00000000                                                                                                   // [0x108d94] 0x008a9000 + 0x108d94 = 0x009b1d94
RTTIClassHierarchyDescriptorMultiInheritance LandscapeVortexIn 10                                                  // [0x108d98] 0x008a9000 + 0x108d98 = 0x009b1d98
RTTICompleteObjectLocator LandscapeVortexIn                                                                        // [0x108da8] 0x008a9000 + 0x108da8 = 0x009b1da8
.long 0x00000000                                                                                                   // [0x108dbc] 0x008a9000 + 0x108dbc = 0x009b1dbc
RTTIBaseClassDescriptor LandscapeVortexOut 9                                                                       // [0x108dc0] 0x008a9000 + 0x108dc0 = 0x009b1dc0
RTTIBaseClassArray LandscapeVortexOut                                                                              // [0x108dd8] 0x008a9000 + 0x108dd8 = 0x009b1dd8
.long ??_R1A@?0A@A@LandscapeVortex@@8
.long ??_R1A@?0A@A@MobileStatic@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x009b1cb0
.long 0x00000000

.long 0x00000000                                                                                                   // [0x108e04] 0x008a9000 + 0x108e04 = 0x009b1e04
RTTIClassHierarchyDescriptorMultiInheritance LandscapeVortexOut 10                                                 // [0x108e08] 0x008a9000 + 0x108e08 = 0x009b1e08
RTTICompleteObjectLocator LandscapeVortexOut                                                                       // [0x108e18] 0x008a9000 + 0x108e18 = 0x009b1e18
.long 0x00000000                                                                                                   // [0x108e2c] 0x008a9000 + 0x108e2c = 0x009b1e2c
RTTIBaseClassArray LandscapeVortex                                                                                 // [0x108e30] 0x008a9000 + 0x108e30 = 0x009b1e30
.long ??_R1A@?0A@A@MobileStatic@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x009b1cb0
.long 0x00000000

RTTIClassHierarchyDescriptorMultiInheritance LandscapeVortex 9                                                     // [0x108e58] 0x008a9000 + 0x108e58 = 0x009b1e58
RTTICompleteObjectLocator LandscapeVortex                                                                          // [0x108e68] 0x008a9000 + 0x108e68 = 0x009b1e68
.long 0x00000000                                                                                                   // [0x108e7c] 0x008a9000 + 0x108e7c = 0x009b1e7c
RTTIBaseClassDescriptor MagicWood 10                                                                               // [0x108e80] 0x008a9000 + 0x108e80 = 0x009b1e80
RTTIBaseClassArray MagicWood                                                                                       // [0x108e98] 0x008a9000 + 0x108e98 = 0x009b1e98
.long ??_R1A@?0A@A@PileWood@@8
.long ??_R1A@?0A@A@PileResource@@8
.long ??_R1A@?0A@A@PotStructure@@8
.long ??_R1A@?0A@A@Pot@@8
.long ??_R1A@?0A@A@MobileObject@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor MagicWood 11                                                                          // [0x108ec8] 0x008a9000 + 0x108ec8 = 0x009b1ec8
RTTICompleteObjectLocator MagicWood                                                                                // [0x108ed8] 0x008a9000 + 0x108ed8 = 0x009b1ed8
.long 0x00000000                                                                                                   // [0x108eec] 0x008a9000 + 0x108eec = 0x009b1eec
RTTIBaseClassDescriptor GMap 1                                                                                     // [0x108ef0] 0x008a9000 + 0x108ef0 = 0x009b1ef0
RTTIBaseClassArray GMap                                                                                            // [0x108f08] 0x008a9000 + 0x108f08 = 0x009b1f08
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x108f14] 0x008a9000 + 0x108f14 = 0x009b1f14
RTTIClassHierarchyDescriptor GMap 2                                                                                // [0x108f18] 0x008a9000 + 0x108f18 = 0x009b1f18
RTTICompleteObjectLocator GMap                                                                                     // [0x108f28] 0x008a9000 + 0x108f28 = 0x009b1f28
.long 0x00000000                                                                                                   // [0x108f3c] 0x008a9000 + 0x108f3c = 0x009b1f3c
RTTIBaseClassDescriptor Meeting 3                                                                                  // [0x108f40] 0x008a9000 + 0x108f40 = 0x009b1f40
RTTIBaseClassArray Meeting                                                                                         // [0x108f58] 0x008a9000 + 0x108f58 = 0x009b1f58
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x108f6c] 0x008a9000 + 0x108f6c = 0x009b1f6c
RTTIClassHierarchyDescriptor Meeting 4                                                                             // [0x108f70] 0x008a9000 + 0x108f70 = 0x009b1f70
RTTICompleteObjectLocator Meeting                                                                                  // [0x108f80] 0x008a9000 + 0x108f80 = 0x009b1f80
.long 0x00000000                                                                                                   // [0x108f94] 0x008a9000 + 0x108f94 = 0x009b1f94
RTTIBaseClassDescriptor GSpeedThreshold 2                                                                          // [0x108f98] 0x008a9000 + 0x108f98 = 0x009b1f98
RTTIBaseClassArray GSpeedThreshold                                                                                 // [0x108fb0] 0x008a9000 + 0x108fb0 = 0x009b1fb0
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GSpeedThreshold 3                                                                     // [0x108fc0] 0x008a9000 + 0x108fc0 = 0x009b1fc0
RTTICompleteObjectLocator GSpeedThreshold                                                                          // [0x108fd0] 0x008a9000 + 0x108fd0 = 0x009b1fd0
.long 0x00000000                                                                                                   // [0x108fe4] 0x008a9000 + 0x108fe4 = 0x009b1fe4
RTTIBaseClassArray GMobileObjectInfo                                                                               // [0x108fe8] 0x008a9000 + 0x108fe8 = 0x009b1fe8
.long ??_R1A@?0A@A@GMobileInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GMobileObjectInfo 5                                                                   // [0x109000] 0x008a9000 + 0x109000 = 0x009b2000
RTTICompleteObjectLocator GMobileObjectInfo                                                                        // [0x109010] 0x008a9000 + 0x109010 = 0x009b2010
.long 0x00000000                                                                                                   // [0x109024] 0x008a9000 + 0x109024 = 0x009b2024
RTTIBaseClassDescriptor GMobileStaticInfo 4                                                                        // [0x109028] 0x008a9000 + 0x109028 = 0x009b2028
RTTIBaseClassArray GMobileStaticInfo                                                                               // [0x109040] 0x008a9000 + 0x109040 = 0x009b2040
.long ??_R1A@?0A@A@GMultiMapFixedInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GMobileStaticInfo 5                                                                   // [0x109058] 0x008a9000 + 0x109058 = 0x009b2058
RTTICompleteObjectLocator GMobileStaticInfo                                                                        // [0x109068] 0x008a9000 + 0x109068 = 0x009b2068
.long 0x00000000                                                                                                   // [0x10907c] 0x008a9000 + 0x10907c = 0x009b207c
RTTIBaseClassDescriptor MPFEDownloads 0                                                                            // [0x109080] 0x008a9000 + 0x109080 = 0x009b2080
RTTIBaseClassDescriptor MPFEThumbDownload 1                                                                        // [0x109098] 0x008a9000 + 0x109098 = 0x009b2098
RTTIBaseClassArray MPFEThumbDownload                                                                               // [0x1090b0] 0x008a9000 + 0x1090b0 = 0x009b20b0
.long ??_R1A@?0A@A@MPFEDownloads@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1090bc] 0x008a9000 + 0x1090bc = 0x009b20bc
RTTIClassHierarchyDescriptor MPFEThumbDownload 2                                                                   // [0x1090c0] 0x008a9000 + 0x1090c0 = 0x009b20c0
RTTICompleteObjectLocator MPFEThumbDownload                                                                        // [0x1090d0] 0x008a9000 + 0x1090d0 = 0x009b20d0
.long 0x00000000                                                                                                   // [0x1090e4] 0x008a9000 + 0x1090e4 = 0x009b20e4
RTTIBaseClassDescriptor MPFEPublicChatMessage 1                                                                    // [0x1090e8] 0x008a9000 + 0x1090e8 = 0x009b20e8
RTTIBaseClassArray MPFEPublicChatMessage                                                                           // [0x109100] 0x008a9000 + 0x109100 = 0x009b2100
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10910c] 0x008a9000 + 0x10910c = 0x009b210c
RTTIClassHierarchyDescriptor MPFEPublicChatMessage 2                                                               // [0x109110] 0x008a9000 + 0x109110 = 0x009b2110
RTTICompleteObjectLocator MPFEPublicChatMessage                                                                    // [0x109120] 0x008a9000 + 0x109120 = 0x009b2120
.long 0x00000000                                                                                                   // [0x109134] 0x008a9000 + 0x109134 = 0x009b2134
RTTIBaseClassDescriptor MPFEPrivateChatMessage 1                                                                   // [0x109138] 0x008a9000 + 0x109138 = 0x009b2138
RTTIBaseClassArray MPFEPrivateChatMessage                                                                          // [0x109150] 0x008a9000 + 0x109150 = 0x009b2150
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10915c] 0x008a9000 + 0x10915c = 0x009b215c
RTTIClassHierarchyDescriptor MPFEPrivateChatMessage 2                                                              // [0x109160] 0x008a9000 + 0x109160 = 0x009b2160
RTTICompleteObjectLocator MPFEPrivateChatMessage                                                                   // [0x109170] 0x008a9000 + 0x109170 = 0x009b2170
.long 0x00000000                                                                                                   // [0x109184] 0x008a9000 + 0x109184 = 0x009b2184
RTTIBaseClassDescriptor MPFEAskJoinMessage 1                                                                       // [0x109188] 0x008a9000 + 0x109188 = 0x009b2188
RTTIBaseClassArray MPFEAskJoinMessage                                                                              // [0x1091a0] 0x008a9000 + 0x1091a0 = 0x009b21a0
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1091ac] 0x008a9000 + 0x1091ac = 0x009b21ac
RTTIClassHierarchyDescriptor MPFEAskJoinMessage 2                                                                  // [0x1091b0] 0x008a9000 + 0x1091b0 = 0x009b21b0
RTTICompleteObjectLocator MPFEAskJoinMessage                                                                       // [0x1091c0] 0x008a9000 + 0x1091c0 = 0x009b21c0
.long 0x00000000                                                                                                   // [0x1091d4] 0x008a9000 + 0x1091d4 = 0x009b21d4
RTTIBaseClassDescriptor MPFEReplyToJoinMessage 1                                                                   // [0x1091d8] 0x008a9000 + 0x1091d8 = 0x009b21d8
RTTIBaseClassArray MPFEReplyToJoinMessage                                                                          // [0x1091f0] 0x008a9000 + 0x1091f0 = 0x009b21f0
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1091fc] 0x008a9000 + 0x1091fc = 0x009b21fc
RTTIClassHierarchyDescriptor MPFEReplyToJoinMessage 2                                                              // [0x109200] 0x008a9000 + 0x109200 = 0x009b2200
RTTICompleteObjectLocator MPFEReplyToJoinMessage                                                                   // [0x109210] 0x008a9000 + 0x109210 = 0x009b2210
.long 0x00000000                                                                                                   // [0x109224] 0x008a9000 + 0x109224 = 0x009b2224
RTTIBaseClassDescriptor MPFEInviteToTeamMessage 1                                                                  // [0x109228] 0x008a9000 + 0x109228 = 0x009b2228
RTTIBaseClassArray MPFEInviteToTeamMessage                                                                         // [0x109240] 0x008a9000 + 0x109240 = 0x009b2240
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10924c] 0x008a9000 + 0x10924c = 0x009b224c
RTTIClassHierarchyDescriptor MPFEInviteToTeamMessage 2                                                             // [0x109250] 0x008a9000 + 0x109250 = 0x009b2250
RTTICompleteObjectLocator MPFEInviteToTeamMessage                                                                  // [0x109260] 0x008a9000 + 0x109260 = 0x009b2260
.long 0x00000000                                                                                                   // [0x109274] 0x008a9000 + 0x109274 = 0x009b2274
RTTIBaseClassDescriptor MPFEReplyToInviteMessage 1                                                                 // [0x109278] 0x008a9000 + 0x109278 = 0x009b2278
RTTIBaseClassArray MPFEReplyToInviteMessage                                                                        // [0x109290] 0x008a9000 + 0x109290 = 0x009b2290
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10929c] 0x008a9000 + 0x10929c = 0x009b229c
RTTIClassHierarchyDescriptor MPFEReplyToInviteMessage 2                                                            // [0x1092a0] 0x008a9000 + 0x1092a0 = 0x009b22a0
RTTICompleteObjectLocator MPFEReplyToInviteMessage                                                                 // [0x1092b0] 0x008a9000 + 0x1092b0 = 0x009b22b0
.long 0x00000000                                                                                                   // [0x1092c4] 0x008a9000 + 0x1092c4 = 0x009b22c4
RTTIBaseClassDescriptor MPFECancelStartMessage 1                                                                   // [0x1092c8] 0x008a9000 + 0x1092c8 = 0x009b22c8
RTTIBaseClassArray MPFECancelStartMessage                                                                          // [0x1092e0] 0x008a9000 + 0x1092e0 = 0x009b22e0
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1092ec] 0x008a9000 + 0x1092ec = 0x009b22ec
RTTIClassHierarchyDescriptor MPFECancelStartMessage 2                                                              // [0x1092f0] 0x008a9000 + 0x1092f0 = 0x009b22f0
RTTICompleteObjectLocator MPFECancelStartMessage                                                                   // [0x109300] 0x008a9000 + 0x109300 = 0x009b2300
.long 0x00000000                                                                                                   // [0x109314] 0x008a9000 + 0x109314 = 0x009b2314
RTTIBaseClassDescriptor MPFEKickMessageRequest 1                                                                   // [0x109318] 0x008a9000 + 0x109318 = 0x009b2318
RTTIBaseClassArray MPFEKickMessageRequest                                                                          // [0x109330] 0x008a9000 + 0x109330 = 0x009b2330
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10933c] 0x008a9000 + 0x10933c = 0x009b233c
RTTIClassHierarchyDescriptor MPFEKickMessageRequest 2                                                              // [0x109340] 0x008a9000 + 0x109340 = 0x009b2340
RTTICompleteObjectLocator MPFEKickMessageRequest                                                                   // [0x109350] 0x008a9000 + 0x109350 = 0x009b2350
.long 0x00000000                                                                                                   // [0x109364] 0x008a9000 + 0x109364 = 0x009b2364
RTTIBaseClassDescriptor MPFEKickMessage 1                                                                          // [0x109368] 0x008a9000 + 0x109368 = 0x009b2368
RTTIBaseClassArray MPFEKickMessage                                                                                 // [0x109380] 0x008a9000 + 0x109380 = 0x009b2380
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10938c] 0x008a9000 + 0x10938c = 0x009b238c
RTTIClassHierarchyDescriptor MPFEKickMessage 2                                                                     // [0x109390] 0x008a9000 + 0x109390 = 0x009b2390
RTTICompleteObjectLocator MPFEKickMessage                                                                          // [0x1093a0] 0x008a9000 + 0x1093a0 = 0x009b23a0
.long 0x00000000                                                                                                   // [0x1093b4] 0x008a9000 + 0x1093b4 = 0x009b23b4
RTTIBaseClassDescriptor MPFEDatabaseID 1                                                                           // [0x1093b8] 0x008a9000 + 0x1093b8 = 0x009b23b8
RTTIBaseClassArray MPFEDatabaseID                                                                                  // [0x1093d0] 0x008a9000 + 0x1093d0 = 0x009b23d0
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1093dc] 0x008a9000 + 0x1093dc = 0x009b23dc
RTTIClassHierarchyDescriptor MPFEDatabaseID 2                                                                      // [0x1093e0] 0x008a9000 + 0x1093e0 = 0x009b23e0
RTTICompleteObjectLocator MPFEDatabaseID                                                                           // [0x1093f0] 0x008a9000 + 0x1093f0 = 0x009b23f0
.long 0x00000000                                                                                                   // [0x109404] 0x008a9000 + 0x109404 = 0x009b2404
RTTIBaseClassDescriptor MPFEReadyMessage 1                                                                         // [0x109408] 0x008a9000 + 0x109408 = 0x009b2408
RTTIBaseClassArray MPFEReadyMessage                                                                                // [0x109420] 0x008a9000 + 0x109420 = 0x009b2420
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10942c] 0x008a9000 + 0x10942c = 0x009b242c
RTTIClassHierarchyDescriptor MPFEReadyMessage 2                                                                    // [0x109430] 0x008a9000 + 0x109430 = 0x009b2430
RTTICompleteObjectLocator MPFEReadyMessage                                                                         // [0x109440] 0x008a9000 + 0x109440 = 0x009b2440
.long 0x00000000                                                                                                   // [0x109454] 0x008a9000 + 0x109454 = 0x009b2454
RTTIBaseClassDescriptor MPFETeamsReadyList 1                                                                       // [0x109458] 0x008a9000 + 0x109458 = 0x009b2458
RTTIBaseClassArray MPFETeamsReadyList                                                                              // [0x109470] 0x008a9000 + 0x109470 = 0x009b2470
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10947c] 0x008a9000 + 0x10947c = 0x009b247c
RTTIClassHierarchyDescriptor MPFETeamsReadyList 2                                                                  // [0x109480] 0x008a9000 + 0x109480 = 0x009b2480
RTTICompleteObjectLocator MPFETeamsReadyList                                                                       // [0x109490] 0x008a9000 + 0x109490 = 0x009b2490
.long 0x00000000                                                                                                   // [0x1094a4] 0x008a9000 + 0x1094a4 = 0x009b24a4
RTTIBaseClassDescriptor MPFEHasCreature 1                                                                          // [0x1094a8] 0x008a9000 + 0x1094a8 = 0x009b24a8
RTTIBaseClassArray MPFEHasCreature                                                                                 // [0x1094c0] 0x008a9000 + 0x1094c0 = 0x009b24c0
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1094cc] 0x008a9000 + 0x1094cc = 0x009b24cc
RTTIClassHierarchyDescriptor MPFEHasCreature 2                                                                     // [0x1094d0] 0x008a9000 + 0x1094d0 = 0x009b24d0
RTTICompleteObjectLocator MPFEHasCreature                                                                          // [0x1094e0] 0x008a9000 + 0x1094e0 = 0x009b24e0
.long 0x00000000                                                                                                   // [0x1094f4] 0x008a9000 + 0x1094f4 = 0x009b24f4
RTTIBaseClassDescriptor MPFEChannelSelector 1                                                                      // [0x1094f8] 0x008a9000 + 0x1094f8 = 0x009b24f8
RTTIBaseClassArray MPFEChannelSelector                                                                             // [0x109510] 0x008a9000 + 0x109510 = 0x009b2510
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10951c] 0x008a9000 + 0x10951c = 0x009b251c
RTTIClassHierarchyDescriptor MPFEChannelSelector 2                                                                 // [0x109520] 0x008a9000 + 0x109520 = 0x009b2520
RTTICompleteObjectLocator MPFEChannelSelector                                                                      // [0x109530] 0x008a9000 + 0x109530 = 0x009b2530
.long 0x00000000                                                                                                   // [0x109544] 0x008a9000 + 0x109544 = 0x009b2544
RTTIBaseClassDescriptor MPFECreateGame 1                                                                           // [0x109548] 0x008a9000 + 0x109548 = 0x009b2548
RTTIBaseClassArray MPFECreateGame                                                                                  // [0x109560] 0x008a9000 + 0x109560 = 0x009b2560
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10956c] 0x008a9000 + 0x10956c = 0x009b256c
RTTIClassHierarchyDescriptor MPFECreateGame 2                                                                      // [0x109570] 0x008a9000 + 0x109570 = 0x009b2570
RTTICompleteObjectLocator MPFECreateGame                                                                           // [0x109580] 0x008a9000 + 0x109580 = 0x009b2580
.long 0x00000000                                                                                                   // [0x109594] 0x008a9000 + 0x109594 = 0x009b2594
RTTIBaseClassDescriptor MPFEChooseConnection 1                                                                     // [0x109598] 0x008a9000 + 0x109598 = 0x009b2598
RTTIBaseClassArray MPFEChooseConnection                                                                            // [0x1095b0] 0x008a9000 + 0x1095b0 = 0x009b25b0
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1095bc] 0x008a9000 + 0x1095bc = 0x009b25bc
RTTIClassHierarchyDescriptor MPFEChooseConnection 2                                                                // [0x1095c0] 0x008a9000 + 0x1095c0 = 0x009b25c0
RTTICompleteObjectLocator MPFEChooseConnection                                                                     // [0x1095d0] 0x008a9000 + 0x1095d0 = 0x009b25d0
.long 0x00000000                                                                                                   // [0x1095e4] 0x008a9000 + 0x1095e4 = 0x009b25e4
RTTIBaseClassDescriptor MPFEClanList 1                                                                             // [0x1095e8] 0x008a9000 + 0x1095e8 = 0x009b25e8
RTTIBaseClassArray MPFEClanList                                                                                    // [0x109600] 0x008a9000 + 0x109600 = 0x009b2600
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10960c] 0x008a9000 + 0x10960c = 0x009b260c
RTTIClassHierarchyDescriptor MPFEClanList 2                                                                        // [0x109610] 0x008a9000 + 0x109610 = 0x009b2610
RTTICompleteObjectLocator MPFEClanList                                                                             // [0x109620] 0x008a9000 + 0x109620 = 0x009b2620
.long 0x00000000                                                                                                   // [0x109634] 0x008a9000 + 0x109634 = 0x009b2634
RTTIBaseClassDescriptor MPFEChangeClanRequest 1                                                                    // [0x109638] 0x008a9000 + 0x109638 = 0x009b2638
RTTIBaseClassArray MPFEChangeClanRequest                                                                           // [0x109650] 0x008a9000 + 0x109650 = 0x009b2650
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10965c] 0x008a9000 + 0x10965c = 0x009b265c
RTTIClassHierarchyDescriptor MPFEChangeClanRequest 2                                                               // [0x109660] 0x008a9000 + 0x109660 = 0x009b2660
RTTICompleteObjectLocator MPFEChangeClanRequest                                                                    // [0x109670] 0x008a9000 + 0x109670 = 0x009b2670
.long 0x00000000                                                                                                   // [0x109684] 0x008a9000 + 0x109684 = 0x009b2684
RTTIBaseClassDescriptor MPFEResetClan 1                                                                            // [0x109688] 0x008a9000 + 0x109688 = 0x009b2688
RTTIBaseClassArray MPFEResetClan                                                                                   // [0x1096a0] 0x008a9000 + 0x1096a0 = 0x009b26a0
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1096ac] 0x008a9000 + 0x1096ac = 0x009b26ac
RTTIClassHierarchyDescriptor MPFEResetClan 2                                                                       // [0x1096b0] 0x008a9000 + 0x1096b0 = 0x009b26b0
RTTICompleteObjectLocator MPFEResetClan                                                                            // [0x1096c0] 0x008a9000 + 0x1096c0 = 0x009b26c0
.long 0x00000000                                                                                                   // [0x1096d4] 0x008a9000 + 0x1096d4 = 0x009b26d4
RTTIBaseClassDescriptor MPFECondtionUpdateMessage 1                                                                // [0x1096d8] 0x008a9000 + 0x1096d8 = 0x009b26d8
RTTIBaseClassArray MPFECondtionUpdateMessage                                                                       // [0x1096f0] 0x008a9000 + 0x1096f0 = 0x009b26f0
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1096fc] 0x008a9000 + 0x1096fc = 0x009b26fc
RTTIClassHierarchyDescriptor MPFECondtionUpdateMessage 2                                                           // [0x109700] 0x008a9000 + 0x109700 = 0x009b2700
RTTICompleteObjectLocator MPFECondtionUpdateMessage                                                                // [0x109710] 0x008a9000 + 0x109710 = 0x009b2710
.long 0x00000000                                                                                                   // [0x109724] 0x008a9000 + 0x109724 = 0x009b2724
RTTIBaseClassDescriptor MPFEAllConditions 1                                                                        // [0x109728] 0x008a9000 + 0x109728 = 0x009b2728
RTTIBaseClassArray MPFEAllConditions                                                                               // [0x109740] 0x008a9000 + 0x109740 = 0x009b2740
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10974c] 0x008a9000 + 0x10974c = 0x009b274c
RTTIClassHierarchyDescriptor MPFEAllConditions 2                                                                   // [0x109750] 0x008a9000 + 0x109750 = 0x009b2750
RTTICompleteObjectLocator MPFEAllConditions                                                                        // [0x109760] 0x008a9000 + 0x109760 = 0x009b2760
.long 0x00000000                                                                                                   // [0x109774] 0x008a9000 + 0x109774 = 0x009b2774
RTTIBaseClassDescriptor MPFEDatabase 0                                                                             // [0x109778] 0x008a9000 + 0x109778 = 0x009b2778
RTTIBaseClassArray MPFEDatabase                                                                                    // [0x109790] 0x008a9000 + 0x109790 = 0x009b2790
.long 0x00000000

RTTIClassHierarchyDescriptor MPFEDatabase 1                                                                        // [0x109798] 0x008a9000 + 0x109798 = 0x009b2798
RTTICompleteObjectLocator MPFEDatabase                                                                             // [0x1097a8] 0x008a9000 + 0x1097a8 = 0x009b27a8
RTTIBaseClassArray MPFEDownloads                                                                                   // [0x1097bc] 0x008a9000 + 0x1097bc = 0x009b27bc
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1097c4] 0x008a9000 + 0x1097c4 = 0x009b27c4
RTTIClassHierarchyDescriptor MPFEDownloads 1                                                                       // [0x1097c8] 0x008a9000 + 0x1097c8 = 0x009b27c8
RTTICompleteObjectLocator MPFEDownloads                                                                            // [0x1097d8] 0x008a9000 + 0x1097d8 = 0x009b27d8
.long 0x00000000                                                                                                   // [0x1097ec] 0x008a9000 + 0x1097ec = 0x009b27ec
_RTTICompleteObjectLocator MPFEMapDownload V 0x280                                                                 // [0x1097f0] 0x008a9000 + 0x1097f0 = 0x009b27f0
.long 0x00000000                                                                                                   // [0x109804] 0x008a9000 + 0x109804 = 0x009b2804
.byte 0x10, 0xd8, 0xbf, 0x00, 0x00, 0x00, 0x00, 0x00                                                               // [0x109808] 0x008a9000 + 0x109808 = 0x009b2808
.byte 0x80, 0x02, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff                                                               // [0x109810] 0x008a9000 + 0x109810 = 0x009b2810
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00                                                               // [0x109818] 0x008a9000 + 0x109818 = 0x009b2818
RTTIBaseClassDescriptor MPFEMapDownload 2                                                                          // [0x109820] 0x008a9000 + 0x109820 = 0x009b2820
RTTIBaseClassArray MPFEMapDownload                                                                                 // [0x109838] 0x008a9000 + 0x109838 = 0x009b2838
.long ??_R1A@?0A@A@MPFEDownloads@@8
.long 0x009b2808
.long 0x00000000

RTTIClassHierarchyDescriptorMultiInheritance MPFEMapDownload 3                                                     // [0x109848] 0x008a9000 + 0x109848 = 0x009b2848
RTTICompleteObjectLocator MPFEMapDownload                                                                          // [0x109858] 0x008a9000 + 0x109858 = 0x009b2858
.long 0x00000000                                                                                                   // [0x10986c] 0x008a9000 + 0x10986c = 0x009b286c
RTTIBaseClassDescriptor MPFEFileTransferMessage 1                                                                  // [0x109870] 0x008a9000 + 0x109870 = 0x009b2870
RTTIBaseClassArray MPFEFileTransferMessage                                                                         // [0x109888] 0x008a9000 + 0x109888 = 0x009b2888
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x109894] 0x008a9000 + 0x109894 = 0x009b2894
RTTIClassHierarchyDescriptor MPFEFileTransferMessage 2                                                             // [0x109898] 0x008a9000 + 0x109898 = 0x009b2898
RTTICompleteObjectLocator MPFEFileTransferMessage                                                                  // [0x1098a8] 0x008a9000 + 0x1098a8 = 0x009b28a8
.long 0x00000000                                                                                                   // [0x1098bc] 0x008a9000 + 0x1098bc = 0x009b28bc
RTTIBaseClassDescriptor MPFEFindGame 1                                                                             // [0x1098c0] 0x008a9000 + 0x1098c0 = 0x009b28c0
RTTIBaseClassArray MPFEFindGame                                                                                    // [0x1098d8] 0x008a9000 + 0x1098d8 = 0x009b28d8
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1098e4] 0x008a9000 + 0x1098e4 = 0x009b28e4
RTTIClassHierarchyDescriptor MPFEFindGame 2                                                                        // [0x1098e8] 0x008a9000 + 0x1098e8 = 0x009b28e8
RTTICompleteObjectLocator MPFEFindGame                                                                             // [0x1098f8] 0x008a9000 + 0x1098f8 = 0x009b28f8
.long 0x00000000                                                                                                   // [0x10990c] 0x008a9000 + 0x10990c = 0x009b290c
RTTIBaseClassDescriptor MPFEStartGameOkayToStartMessage 1                                                          // [0x109910] 0x008a9000 + 0x109910 = 0x009b2910
RTTIBaseClassArray MPFEStartGameOkayToStartMessage                                                                 // [0x109928] 0x008a9000 + 0x109928 = 0x009b2928
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x109934] 0x008a9000 + 0x109934 = 0x009b2934
RTTIClassHierarchyDescriptor MPFEStartGameOkayToStartMessage 2                                                     // [0x109938] 0x008a9000 + 0x109938 = 0x009b2938
RTTICompleteObjectLocator MPFEStartGameOkayToStartMessage                                                          // [0x109948] 0x008a9000 + 0x109948 = 0x009b2948
.long 0x00000000                                                                                                   // [0x10995c] 0x008a9000 + 0x10995c = 0x009b295c
RTTIBaseClassDescriptor MPFEStartGameReadyMessage 1                                                                // [0x109960] 0x008a9000 + 0x109960 = 0x009b2960
RTTIBaseClassArray MPFEStartGameReadyMessage                                                                       // [0x109978] 0x008a9000 + 0x109978 = 0x009b2978
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x109984] 0x008a9000 + 0x109984 = 0x009b2984
RTTIClassHierarchyDescriptor MPFEStartGameReadyMessage 2                                                           // [0x109988] 0x008a9000 + 0x109988 = 0x009b2988
RTTICompleteObjectLocator MPFEStartGameReadyMessage                                                                // [0x109998] 0x008a9000 + 0x109998 = 0x009b2998
.long 0x00000000                                                                                                   // [0x1099ac] 0x008a9000 + 0x1099ac = 0x009b29ac
RTTIBaseClassDescriptor MPFEStartGameTransferFilesMessage 1                                                        // [0x1099b0] 0x008a9000 + 0x1099b0 = 0x009b29b0
RTTIBaseClassArray MPFEStartGameTransferFilesMessage                                                               // [0x1099c8] 0x008a9000 + 0x1099c8 = 0x009b29c8
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1099d4] 0x008a9000 + 0x1099d4 = 0x009b29d4
RTTIClassHierarchyDescriptor MPFEStartGameTransferFilesMessage 2                                                   // [0x1099d8] 0x008a9000 + 0x1099d8 = 0x009b29d8
RTTICompleteObjectLocator MPFEStartGameTransferFilesMessage                                                        // [0x1099e8] 0x008a9000 + 0x1099e8 = 0x009b29e8
.long 0x00000000                                                                                                   // [0x1099fc] 0x008a9000 + 0x1099fc = 0x009b29fc
RTTIBaseClassDescriptor MPFEStartGameNowMessage 1                                                                  // [0x109a00] 0x008a9000 + 0x109a00 = 0x009b2a00
RTTIBaseClassArray MPFEStartGameNowMessage                                                                         // [0x109a18] 0x008a9000 + 0x109a18 = 0x009b2a18
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x109a24] 0x008a9000 + 0x109a24 = 0x009b2a24
RTTIClassHierarchyDescriptor MPFEStartGameNowMessage 2                                                             // [0x109a28] 0x008a9000 + 0x109a28 = 0x009b2a28
RTTICompleteObjectLocator MPFEStartGameNowMessage                                                                  // [0x109a38] 0x008a9000 + 0x109a38 = 0x009b2a38
.long 0x00000000                                                                                                   // [0x109a4c] 0x008a9000 + 0x109a4c = 0x009b2a4c
RTTIBaseClassDescriptor MPFEDisconnectNowMessage 1                                                                 // [0x109a50] 0x008a9000 + 0x109a50 = 0x009b2a50
RTTIBaseClassArray MPFEDisconnectNowMessage                                                                        // [0x109a68] 0x008a9000 + 0x109a68 = 0x009b2a68
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x109a74] 0x008a9000 + 0x109a74 = 0x009b2a74
RTTIClassHierarchyDescriptor MPFEDisconnectNowMessage 2                                                            // [0x109a78] 0x008a9000 + 0x109a78 = 0x009b2a78
RTTICompleteObjectLocator MPFEDisconnectNowMessage                                                                 // [0x109a88] 0x008a9000 + 0x109a88 = 0x009b2a88
.long 0x00000000                                                                                                   // [0x109a9c] 0x008a9000 + 0x109a9c = 0x009b2a9c
RTTIBaseClassDescriptor MPFEStopGameStartMessage 1                                                                 // [0x109aa0] 0x008a9000 + 0x109aa0 = 0x009b2aa0
RTTIBaseClassArray MPFEStopGameStartMessage                                                                        // [0x109ab8] 0x008a9000 + 0x109ab8 = 0x009b2ab8
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x109ac4] 0x008a9000 + 0x109ac4 = 0x009b2ac4
RTTIClassHierarchyDescriptor MPFEStopGameStartMessage 2                                                            // [0x109ac8] 0x008a9000 + 0x109ac8 = 0x009b2ac8
RTTICompleteObjectLocator MPFEStopGameStartMessage                                                                 // [0x109ad8] 0x008a9000 + 0x109ad8 = 0x009b2ad8
.long 0x00000000                                                                                                   // [0x109aec] 0x008a9000 + 0x109aec = 0x009b2aec
RTTIBaseClassDescriptor MPFELogin 1                                                                                // [0x109af0] 0x008a9000 + 0x109af0 = 0x009b2af0
RTTIBaseClassArray MPFELogin                                                                                       // [0x109b08] 0x008a9000 + 0x109b08 = 0x009b2b08
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x109b14] 0x008a9000 + 0x109b14 = 0x009b2b14
RTTIClassHierarchyDescriptor MPFELogin 2                                                                           // [0x109b18] 0x008a9000 + 0x109b18 = 0x009b2b18
RTTICompleteObjectLocator MPFELogin                                                                                // [0x109b28] 0x008a9000 + 0x109b28 = 0x009b2b28
.long 0x00000000                                                                                                   // [0x109b3c] 0x008a9000 + 0x109b3c = 0x009b2b3c
RTTIBaseClassDescriptor MPFELoginDatabase 1                                                                        // [0x109b40] 0x008a9000 + 0x109b40 = 0x009b2b40
RTTIBaseClassArray MPFELoginDatabase                                                                               // [0x109b58] 0x008a9000 + 0x109b58 = 0x009b2b58
.long ??_R1A@?0A@A@MPFEDatabase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x109b64] 0x008a9000 + 0x109b64 = 0x009b2b64
RTTIClassHierarchyDescriptor MPFELoginDatabase 2                                                                   // [0x109b68] 0x008a9000 + 0x109b68 = 0x009b2b68
RTTICompleteObjectLocator MPFELoginDatabase                                                                        // [0x109b78] 0x008a9000 + 0x109b78 = 0x009b2b78
.long 0x00000000                                                                                                   // [0x109b8c] 0x008a9000 + 0x109b8c = 0x009b2b8c
RTTIBaseClassDescriptor MPFEChangedMapMessage 1                                                                    // [0x109b90] 0x008a9000 + 0x109b90 = 0x009b2b90
RTTIBaseClassArray MPFEChangedMapMessage                                                                           // [0x109ba8] 0x008a9000 + 0x109ba8 = 0x009b2ba8
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x109bb4] 0x008a9000 + 0x109bb4 = 0x009b2bb4
RTTIClassHierarchyDescriptor MPFEChangedMapMessage 2                                                               // [0x109bb8] 0x008a9000 + 0x109bb8 = 0x009b2bb8
RTTICompleteObjectLocator MPFEChangedMapMessage                                                                    // [0x109bc8] 0x008a9000 + 0x109bc8 = 0x009b2bc8
.long 0x00000000                                                                                                   // [0x109bdc] 0x008a9000 + 0x109bdc = 0x009b2bdc
RTTIBaseClassDescriptor MPFEMapErrorMessage 1                                                                      // [0x109be0] 0x008a9000 + 0x109be0 = 0x009b2be0
RTTIBaseClassArray MPFEMapErrorMessage                                                                             // [0x109bf8] 0x008a9000 + 0x109bf8 = 0x009b2bf8
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x109c04] 0x008a9000 + 0x109c04 = 0x009b2c04
RTTIClassHierarchyDescriptor MPFEMapErrorMessage 2                                                                 // [0x109c08] 0x008a9000 + 0x109c08 = 0x009b2c08
RTTICompleteObjectLocator MPFEMapErrorMessage                                                                      // [0x109c18] 0x008a9000 + 0x109c18 = 0x009b2c18
.long 0x00000000                                                                                                   // [0x109c2c] 0x008a9000 + 0x109c2c = 0x009b2c2c
RTTIBaseClassDescriptor MPFEChangedTeamRequestMessage 1                                                            // [0x109c30] 0x008a9000 + 0x109c30 = 0x009b2c30
RTTIBaseClassArray MPFEChangedTeamRequestMessage                                                                   // [0x109c48] 0x008a9000 + 0x109c48 = 0x009b2c48
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x109c54] 0x008a9000 + 0x109c54 = 0x009b2c54
RTTIClassHierarchyDescriptor MPFEChangedTeamRequestMessage 2                                                       // [0x109c58] 0x008a9000 + 0x109c58 = 0x009b2c58
RTTICompleteObjectLocator MPFEChangedTeamRequestMessage                                                            // [0x109c68] 0x008a9000 + 0x109c68 = 0x009b2c68
.long 0x00000000                                                                                                   // [0x109c7c] 0x008a9000 + 0x109c7c = 0x009b2c7c
RTTIBaseClassDescriptor MPFEUserTeamList 1                                                                         // [0x109c80] 0x008a9000 + 0x109c80 = 0x009b2c80
RTTIBaseClassArray MPFEUserTeamList                                                                                // [0x109c98] 0x008a9000 + 0x109c98 = 0x009b2c98
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x109ca4] 0x008a9000 + 0x109ca4 = 0x009b2ca4
RTTIClassHierarchyDescriptor MPFEUserTeamList 2                                                                    // [0x109ca8] 0x008a9000 + 0x109ca8 = 0x009b2ca8
RTTICompleteObjectLocator MPFEUserTeamList                                                                         // [0x109cb8] 0x008a9000 + 0x109cb8 = 0x009b2cb8
.long 0x00000000                                                                                                   // [0x109ccc] 0x008a9000 + 0x109ccc = 0x009b2ccc
RTTIBaseClassDescriptor MPFEAskForTeamDetailsMessage 1                                                             // [0x109cd0] 0x008a9000 + 0x109cd0 = 0x009b2cd0
RTTIBaseClassArray MPFEAskForTeamDetailsMessage                                                                    // [0x109ce8] 0x008a9000 + 0x109ce8 = 0x009b2ce8
.long ??_R1A@?0A@A@MPFEMessageObject@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x109cf4] 0x008a9000 + 0x109cf4 = 0x009b2cf4
RTTIClassHierarchyDescriptor MPFEAskForTeamDetailsMessage 2                                                        // [0x109cf8] 0x008a9000 + 0x109cf8 = 0x009b2cf8
RTTICompleteObjectLocator MPFEAskForTeamDetailsMessage                                                             // [0x109d08] 0x008a9000 + 0x109d08 = 0x009b2d08
.long 0x00000000                                                                                                   // [0x109d1c] 0x008a9000 + 0x109d1c = 0x009b2d1c
RTTIBaseClassDescriptor MultiplayerDatabase 0                                                                      // [0x109d20] 0x008a9000 + 0x109d20 = 0x009b2d20
RTTIBaseClassArray MultiplayerDatabase                                                                             // [0x109d38] 0x008a9000 + 0x109d38 = 0x009b2d38
.long 0x00000000

RTTIClassHierarchyDescriptor MultiplayerDatabase 1                                                                 // [0x109d40] 0x008a9000 + 0x109d40 = 0x009b2d40
RTTICompleteObjectLocator MultiplayerDatabase                                                                      // [0x109d50] 0x008a9000 + 0x109d50 = 0x009b2d50
.long 0x00000000                                                                                                   // [0x109d64] 0x008a9000 + 0x109d64 = 0x009b2d64
RTTIBaseClassDescriptor CreatureDatabase 1                                                                         // [0x109d68] 0x008a9000 + 0x109d68 = 0x009b2d68
RTTIBaseClassArray CreatureDatabase                                                                                // [0x109d80] 0x008a9000 + 0x109d80 = 0x009b2d80
.long ??_R1A@?0A@A@MultiplayerDatabase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x109d8c] 0x008a9000 + 0x109d8c = 0x009b2d8c
RTTIClassHierarchyDescriptor CreatureDatabase 2                                                                    // [0x109d90] 0x008a9000 + 0x109d90 = 0x009b2d90
RTTICompleteObjectLocator CreatureDatabase                                                                         // [0x109da0] 0x008a9000 + 0x109da0 = 0x009b2da0
.long 0x00000000                                                                                                   // [0x109db4] 0x008a9000 + 0x109db4 = 0x009b2db4
RTTIBaseClassDescriptor StatsDatabase 1                                                                            // [0x109db8] 0x008a9000 + 0x109db8 = 0x009b2db8
RTTIBaseClassArray StatsDatabase                                                                                   // [0x109dd0] 0x008a9000 + 0x109dd0 = 0x009b2dd0
.long ??_R1A@?0A@A@MultiplayerDatabase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x109ddc] 0x008a9000 + 0x109ddc = 0x009b2ddc
RTTIClassHierarchyDescriptor StatsDatabase 2                                                                       // [0x109de0] 0x008a9000 + 0x109de0 = 0x009b2de0
RTTICompleteObjectLocator StatsDatabase                                                                            // [0x109df0] 0x008a9000 + 0x109df0 = 0x009b2df0
.long 0x00000000                                                                                                   // [0x109e04] 0x008a9000 + 0x109e04 = 0x009b2e04
RTTIBaseClassArray GObjectInfo                                                                                     // [0x109e08] 0x008a9000 + 0x109e08 = 0x009b2e08
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GObjectInfo 3                                                                         // [0x109e18] 0x008a9000 + 0x109e18 = 0x009b2e18
RTTICompleteObjectLocator GObjectInfo                                                                              // [0x109e28] 0x008a9000 + 0x109e28 = 0x009b2e28
.long 0x00000000                                                                                                   // [0x109e3c] 0x008a9000 + 0x109e3c = 0x009b2e3c
RTTIBaseClassArray Object                                                                                          // [0x109e40] 0x008a9000 + 0x109e40 = 0x009b2e40
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x109e54] 0x008a9000 + 0x109e54 = 0x009b2e54
RTTIClassHierarchyDescriptor Object 4                                                                              // [0x109e58] 0x008a9000 + 0x109e58 = 0x009b2e58
RTTICompleteObjectLocator Object                                                                                   // [0x109e68] 0x008a9000 + 0x109e68 = 0x009b2e68
.long 0x00000000                                                                                                   // [0x109e7c] 0x008a9000 + 0x109e7c = 0x009b2e7c
RTTIBaseClassDescriptor GSpotVisualInfo 2                                                                          // [0x109e80] 0x008a9000 + 0x109e80 = 0x009b2e80
RTTIBaseClassArray GSpotVisualInfo                                                                                 // [0x109e98] 0x008a9000 + 0x109e98 = 0x009b2e98
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GSpotVisualInfo 3                                                                     // [0x109ea8] 0x008a9000 + 0x109ea8 = 0x009b2ea8
RTTICompleteObjectLocator GSpotVisualInfo                                                                          // [0x109eb8] 0x008a9000 + 0x109eb8 = 0x009b2eb8
.long 0x00000000                                                                                                   // [0x109ecc] 0x008a9000 + 0x109ecc = 0x009b2ecc
RTTIBaseClassDescriptor GPBallInfo 5                                                                               // [0x109ed0] 0x008a9000 + 0x109ed0 = 0x009b2ed0
RTTIBaseClassArray GPBallInfo                                                                                      // [0x109ee8] 0x008a9000 + 0x109ee8 = 0x009b2ee8
.long ??_R1A@?0A@A@GMobileObjectInfo@@8
.long ??_R1A@?0A@A@GMobileInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x109f04] 0x008a9000 + 0x109f04 = 0x009b2f04
RTTIClassHierarchyDescriptor GPBallInfo 6                                                                          // [0x109f08] 0x008a9000 + 0x109f08 = 0x009b2f08
RTTICompleteObjectLocator GPBallInfo                                                                               // [0x109f18] 0x008a9000 + 0x109f18 = 0x009b2f18
.long 0x00000000                                                                                                   // [0x109f2c] 0x008a9000 + 0x109f2c = 0x009b2f2c
RTTIBaseClassDescriptor PBall 6                                                                                    // [0x109f30] 0x008a9000 + 0x109f30 = 0x009b2f30
RTTIBaseClassArray PBall                                                                                           // [0x109f48] 0x008a9000 + 0x109f48 = 0x009b2f48
.long ??_R1A@?0A@A@MobileObject@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor PBall 7                                                                               // [0x109f68] 0x008a9000 + 0x109f68 = 0x009b2f68
RTTICompleteObjectLocator PBall                                                                                    // [0x109f78] 0x008a9000 + 0x109f78 = 0x009b2f78
.long 0x00000000                                                                                                   // [0x109f8c] 0x008a9000 + 0x109f8c = 0x009b2f8c
RTTIBaseClassDescriptor HeapWithPools 1                                                                            // [0x109f90] 0x008a9000 + 0x109f90 = 0x009b2f90
RTTIBaseClassDescriptor UniqueKeyHeap 2                                                                            // [0x109fa8] 0x008a9000 + 0x109fa8 = 0x009b2fa8
RTTIBaseClassDescriptor HeapStore 3                                                                                // [0x109fc0] 0x008a9000 + 0x109fc0 = 0x009b2fc0
RTTIBaseClassArray HeapStore                                                                                       // [0x109fd8] 0x008a9000 + 0x109fd8 = 0x009b2fd8
.long ??_R1A@?0A@A@UniqueKeyHeap@@8
.long ??_R1A@?0A@A@HeapWithPools@@8
.long ??_R1A@?0A@A@Heap@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x109fec] 0x008a9000 + 0x109fec = 0x009b2fec
RTTIClassHierarchyDescriptor HeapStore 4                                                                           // [0x109ff0] 0x008a9000 + 0x109ff0 = 0x009b2ff0
RTTICompleteObjectLocator HeapStore                                                                                // [0x10a000] 0x008a9000 + 0x10a000 = 0x009b3000
.long 0x00000000                                                                                                   // [0x10a014] 0x008a9000 + 0x10a014 = 0x009b3014
RTTIBaseClassDescriptor Heap 0                                                                                     // [0x10a018] 0x008a9000 + 0x10a018 = 0x009b3018
RTTIBaseClassArray Heap                                                                                            // [0x10a030] 0x008a9000 + 0x10a030 = 0x009b3030
.long 0x00000000

RTTIClassHierarchyDescriptor Heap 1                                                                                // [0x10a038] 0x008a9000 + 0x10a038 = 0x009b3038
RTTICompleteObjectLocator Heap                                                                                     // [0x10a048] 0x008a9000 + 0x10a048 = 0x009b3048
.long 0x00000000                                                                                                   // [0x10a05c] 0x008a9000 + 0x10a05c = 0x009b305c
RTTIBaseClassDescriptor GPFootballInfo 4                                                                           // [0x10a060] 0x008a9000 + 0x10a060 = 0x009b3060
RTTIBaseClassArray GPFootballInfo                                                                                  // [0x10a078] 0x008a9000 + 0x10a078 = 0x009b3078
.long ??_R1A@?0A@A@GMultiMapFixedInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GPFootballInfo 5                                                                      // [0x10a090] 0x008a9000 + 0x10a090 = 0x009b3090
RTTICompleteObjectLocator GPFootballInfo                                                                           // [0x10a0a0] 0x008a9000 + 0x10a0a0 = 0x009b30a0
.long 0x00000000                                                                                                   // [0x10a0b4] 0x008a9000 + 0x10a0b4 = 0x009b30b4
RTTIBaseClassDescriptor GPFootballPositionInfo 2                                                                   // [0x10a0b8] 0x008a9000 + 0x10a0b8 = 0x009b30b8
RTTIBaseClassArray GPFootballPositionInfo                                                                          // [0x10a0d0] 0x008a9000 + 0x10a0d0 = 0x009b30d0
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GPFootballPositionInfo 3                                                              // [0x10a0e0] 0x008a9000 + 0x10a0e0 = 0x009b30e0
RTTICompleteObjectLocator GPFootballPositionInfo                                                                   // [0x10a0f0] 0x008a9000 + 0x10a0f0 = 0x009b30f0
.long 0x00000000                                                                                                   // [0x10a104] 0x008a9000 + 0x10a104 = 0x009b3104
RTTIBaseClassDescriptor PPlannedFootball 4                                                                         // [0x10a108] 0x008a9000 + 0x10a108 = 0x009b3108
RTTIBaseClassArray PPlannedFootball                                                                                // [0x10a120] 0x008a9000 + 0x10a120 = 0x009b3120
.long ??_R1A@?0A@A@PlannedMultiMapFixed@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor PPlannedFootball 5                                                                    // [0x10a138] 0x008a9000 + 0x10a138 = 0x009b3138
RTTICompleteObjectLocator PPlannedFootball                                                                         // [0x10a148] 0x008a9000 + 0x10a148 = 0x009b3148
.long 0x00000000                                                                                                   // [0x10a15c] 0x008a9000 + 0x10a15c = 0x009b315c
RTTIBaseClassDescriptor PFootball 6                                                                                // [0x10a160] 0x008a9000 + 0x10a160 = 0x009b3160
RTTIBaseClassArray PFootball                                                                                       // [0x10a178] 0x008a9000 + 0x10a178 = 0x009b3178
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor PFootball 7                                                                           // [0x10a198] 0x008a9000 + 0x10a198 = 0x009b3198
RTTICompleteObjectLocator PFootball                                                                                // [0x10a1a8] 0x008a9000 + 0x10a1a8 = 0x009b31a8
.long 0x00000000                                                                                                   // [0x10a1bc] 0x008a9000 + 0x10a1bc = 0x009b31bc
RTTIBaseClassDescriptor PhysicsObject 1                                                                            // [0x10a1c0] 0x008a9000 + 0x10a1c0 = 0x009b31c0
RTTIBaseClassArray PhysicsObject                                                                                   // [0x10a1d8] 0x008a9000 + 0x10a1d8 = 0x009b31d8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10a1e4] 0x008a9000 + 0x10a1e4 = 0x009b31e4
RTTIClassHierarchyDescriptor PhysicsObject 2                                                                       // [0x10a1e8] 0x008a9000 + 0x10a1e8 = 0x009b31e8
RTTICompleteObjectLocator PhysicsObject                                                                            // [0x10a1f8] 0x008a9000 + 0x10a1f8 = 0x009b31f8
.long 0x00000000                                                                                                   // [0x10a20c] 0x008a9000 + 0x10a20c = 0x009b320c
RTTIBaseClassDescriptor GPlayer 2                                                                                  // [0x10a210] 0x008a9000 + 0x10a210 = 0x009b3210
RTTIBaseClassArray GPlayer                                                                                         // [0x10a228] 0x008a9000 + 0x10a228 = 0x009b3228
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GPlayer 3                                                                             // [0x10a238] 0x008a9000 + 0x10a238 = 0x009b3238
RTTICompleteObjectLocator GPlayer                                                                                  // [0x10a248] 0x008a9000 + 0x10a248 = 0x009b3248
.long 0x00000000                                                                                                   // [0x10a25c] 0x008a9000 + 0x10a25c = 0x009b325c
RTTIBaseClassDescriptor CPDesireNodeInfo 0                                                                         // [0x10a260] 0x008a9000 + 0x10a260 = 0x009b3260
RTTIBaseClassArray CPDesireNodeInfo                                                                                // [0x10a278] 0x008a9000 + 0x10a278 = 0x009b3278
.long 0x00000000

RTTIClassHierarchyDescriptor CPDesireNodeInfo 1                                                                    // [0x10a280] 0x008a9000 + 0x10a280 = 0x009b3280
RTTICompleteObjectLocator CPDesireNodeInfo                                                                         // [0x10a290] 0x008a9000 + 0x10a290 = 0x009b3290
.long 0x00000000                                                                                                   // [0x10a2a4] 0x008a9000 + 0x10a2a4 = 0x009b32a4
RTTIBaseClassDescriptor PlayerMessage 1                                                                            // [0x10a2a8] 0x008a9000 + 0x10a2a8 = 0x009b32a8
RTTIBaseClassArray PlayerMessage                                                                                   // [0x10a2c0] 0x008a9000 + 0x10a2c0 = 0x009b32c0
.long ??_R1A@?0A@A@Prss@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10a2cc] 0x008a9000 + 0x10a2cc = 0x009b32cc
RTTIClassHierarchyDescriptor PlayerMessage 2                                                                       // [0x10a2d0] 0x008a9000 + 0x10a2d0 = 0x009b32d0
RTTICompleteObjectLocator PlayerMessage                                                                            // [0x10a2e0] 0x008a9000 + 0x10a2e0 = 0x009b32e0
.long 0x00000000                                                                                                   // [0x10a2f4] 0x008a9000 + 0x10a2f4 = 0x009b32f4
RTTIBaseClassDescriptor GPlaytimeInfo 2                                                                            // [0x10a2f8] 0x008a9000 + 0x10a2f8 = 0x009b32f8
RTTIBaseClassArray GPlaytimeInfo                                                                                   // [0x10a310] 0x008a9000 + 0x10a310 = 0x009b3310
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GPlaytimeInfo 3                                                                       // [0x10a320] 0x008a9000 + 0x10a320 = 0x009b3320
RTTICompleteObjectLocator GPlaytimeInfo                                                                            // [0x10a330] 0x008a9000 + 0x10a330 = 0x009b3330
.long 0x00000000                                                                                                   // [0x10a344] 0x008a9000 + 0x10a344 = 0x009b3344
RTTIBaseClassDescriptor Playtime 2                                                                                 // [0x10a348] 0x008a9000 + 0x10a348 = 0x009b3348
RTTIBaseClassArray Playtime                                                                                        // [0x10a360] 0x008a9000 + 0x10a360 = 0x009b3360
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Playtime 3                                                                            // [0x10a370] 0x008a9000 + 0x10a370 = 0x009b3370
RTTICompleteObjectLocator Playtime                                                                                 // [0x10a380] 0x008a9000 + 0x10a380 = 0x009b3380
.long 0x00000000                                                                                                   // [0x10a394] 0x008a9000 + 0x10a394 = 0x009b3394
RTTIBaseClassDescriptor PlaytimeElement 2                                                                          // [0x10a398] 0x008a9000 + 0x10a398 = 0x009b3398
RTTIBaseClassArray PlaytimeElement                                                                                 // [0x10a3b0] 0x008a9000 + 0x10a3b0 = 0x009b33b0
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor PlaytimeElement 3                                                                     // [0x10a3c0] 0x008a9000 + 0x10a3c0 = 0x009b33c0
RTTICompleteObjectLocator PlaytimeElement                                                                          // [0x10a3d0] 0x008a9000 + 0x10a3d0 = 0x009b33d0
.long 0x00000000                                                                                                   // [0x10a3e4] 0x008a9000 + 0x10a3e4 = 0x009b33e4
RTTIBaseClassDescriptor GPotInfo 5                                                                                 // [0x10a3e8] 0x008a9000 + 0x10a3e8 = 0x009b33e8
RTTIBaseClassArray GPotInfo                                                                                        // [0x10a400] 0x008a9000 + 0x10a400 = 0x009b3400
.long ??_R1A@?0A@A@GMobileObjectInfo@@8
.long ??_R1A@?0A@A@GMobileInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10a41c] 0x008a9000 + 0x10a41c = 0x009b341c
RTTIClassHierarchyDescriptor GPotInfo 6                                                                            // [0x10a420] 0x008a9000 + 0x10a420 = 0x009b3420
RTTICompleteObjectLocator GPotInfo                                                                                 // [0x10a430] 0x008a9000 + 0x10a430 = 0x009b3430
.long 0x00000000                                                                                                   // [0x10a444] 0x008a9000 + 0x10a444 = 0x009b3444
RTTIBaseClassArray PileFood                                                                                        // [0x10a448] 0x008a9000 + 0x10a448 = 0x009b3448
.long ??_R1A@?0A@A@PileResource@@8
.long ??_R1A@?0A@A@PotStructure@@8
.long ??_R1A@?0A@A@Pot@@8
.long ??_R1A@?0A@A@MobileObject@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10a474] 0x008a9000 + 0x10a474 = 0x009b3474
RTTIClassHierarchyDescriptor PileFood 10                                                                           // [0x10a478] 0x008a9000 + 0x10a478 = 0x009b3478
RTTICompleteObjectLocator PileFood                                                                                 // [0x10a488] 0x008a9000 + 0x10a488 = 0x009b3488
.long 0x00000000                                                                                                   // [0x10a49c] 0x008a9000 + 0x10a49c = 0x009b349c
RTTIBaseClassArray PileResource                                                                                    // [0x10a4a0] 0x008a9000 + 0x10a4a0 = 0x009b34a0
.long ??_R1A@?0A@A@PotStructure@@8
.long ??_R1A@?0A@A@Pot@@8
.long ??_R1A@?0A@A@MobileObject@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor PileResource 9                                                                        // [0x10a4c8] 0x008a9000 + 0x10a4c8 = 0x009b34c8
RTTICompleteObjectLocator PileResource                                                                             // [0x10a4d8] 0x008a9000 + 0x10a4d8 = 0x009b34d8
.long 0x00000000                                                                                                   // [0x10a4ec] 0x008a9000 + 0x10a4ec = 0x009b34ec
RTTIBaseClassDescriptor PowerSpin 1                                                                                // [0x10a4f0] 0x008a9000 + 0x10a4f0 = 0x009b34f0
RTTIBaseClassDescriptor PowerSpinRunner 2                                                                          // [0x10a508] 0x008a9000 + 0x10a508 = 0x009b3508
RTTIBaseClassArray PowerSpinRunner                                                                                 // [0x10a520] 0x008a9000 + 0x10a520 = 0x009b3520
.long ??_R1A@?0A@A@PowerSpin@@8
.long 0x009a83d8
.long 0x00000000

RTTIClassHierarchyDescriptor PowerSpinRunner 3                                                                     // [0x10a530] 0x008a9000 + 0x10a530 = 0x009b3530
RTTICompleteObjectLocator PowerSpinRunner                                                                          // [0x10a540] 0x008a9000 + 0x10a540 = 0x009b3540
.long 0x00000000                                                                                                   // [0x10a554] 0x008a9000 + 0x10a554 = 0x009b3554
RTTIBaseClassDescriptor GPrayerSiteInfo 4                                                                          // [0x10a558] 0x008a9000 + 0x10a558 = 0x009b3558
RTTIBaseClassArray GPrayerSiteInfo                                                                                 // [0x10a570] 0x008a9000 + 0x10a570 = 0x009b3570
.long ??_R1A@?0A@A@GMultiMapFixedInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GPrayerSiteInfo 5                                                                     // [0x10a588] 0x008a9000 + 0x10a588 = 0x009b3588
RTTICompleteObjectLocator GPrayerSiteInfo                                                                          // [0x10a598] 0x008a9000 + 0x10a598 = 0x009b3598
.long 0x00000000                                                                                                   // [0x10a5ac] 0x008a9000 + 0x10a5ac = 0x009b35ac
RTTIBaseClassDescriptor GPrayerIconInfo 4                                                                          // [0x10a5b0] 0x008a9000 + 0x10a5b0 = 0x009b35b0
RTTIBaseClassArray GPrayerIconInfo                                                                                 // [0x10a5c8] 0x008a9000 + 0x10a5c8 = 0x009b35c8
.long ??_R1A@?0A@A@GSingleMapFixedInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GPrayerIconInfo 5                                                                     // [0x10a5e0] 0x008a9000 + 0x10a5e0 = 0x009b35e0
RTTICompleteObjectLocator GPrayerIconInfo                                                                          // [0x10a5f0] 0x008a9000 + 0x10a5f0 = 0x009b35f0
.long 0x00000000                                                                                                   // [0x10a604] 0x008a9000 + 0x10a604 = 0x009b3604
RTTIBaseClassDescriptor PrayerSite 6                                                                               // [0x10a608] 0x008a9000 + 0x10a608 = 0x009b3608
RTTIBaseClassArray PrayerSite                                                                                      // [0x10a620] 0x008a9000 + 0x10a620 = 0x009b3620
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor PrayerSite 7                                                                          // [0x10a640] 0x008a9000 + 0x10a640 = 0x009b3640
RTTICompleteObjectLocator PrayerSite                                                                               // [0x10a650] 0x008a9000 + 0x10a650 = 0x009b3650
.long 0x00000000                                                                                                   // [0x10a664] 0x008a9000 + 0x10a664 = 0x009b3664
RTTIBaseClassDescriptor PrayerIcon 6                                                                               // [0x10a668] 0x008a9000 + 0x10a668 = 0x009b3668
RTTIBaseClassArray PrayerIcon                                                                                      // [0x10a680] 0x008a9000 + 0x10a680 = 0x009b3680
.long ??_R1A@?0A@A@SingleMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor PrayerIcon 7                                                                          // [0x10a6a0] 0x008a9000 + 0x10a6a0 = 0x009b36a0
RTTICompleteObjectLocator PrayerIcon                                                                               // [0x10a6b0] 0x008a9000 + 0x10a6b0 = 0x009b36b0
.long 0x00000000                                                                                                   // [0x10a6c4] 0x008a9000 + 0x10a6c4 = 0x009b36c4
RTTIBaseClassArray PersistentOwner                                                                                 // [0x10a6c8] 0x008a9000 + 0x10a6c8 = 0x009b36c8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10a6d4] 0x008a9000 + 0x10a6d4 = 0x009b36d4
RTTIClassHierarchyDescriptor PersistentOwner 2                                                                     // [0x10a6d8] 0x008a9000 + 0x10a6d8 = 0x009b36d8
RTTICompleteObjectLocator PersistentOwner                                                                          // [0x10a6e8] 0x008a9000 + 0x10a6e8 = 0x009b36e8
.long 0x00000000                                                                                                   // [0x10a6fc] 0x008a9000 + 0x10a6fc = 0x009b36fc
RTTIBaseClassDescriptor PersistentOwner 1                                                                          // [0x10a700] 0x008a9000 + 0x10a700 = 0x009b3700
RTTIBaseClassDescriptor PSysFileData 2                                                                             // [0x10a718] 0x008a9000 + 0x10a718 = 0x009b3718
RTTIBaseClassArray PSysFileData                                                                                    // [0x10a730] 0x008a9000 + 0x10a730 = 0x009b3730
.long ??_R1A@?0A@A@PersistentOwner@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor PSysFileData 3                                                                        // [0x10a740] 0x008a9000 + 0x10a740 = 0x009b3740
RTTICompleteObjectLocator PSysFileData                                                                             // [0x10a750] 0x008a9000 + 0x10a750 = 0x009b3750
.long 0x00000000                                                                                                   // [0x10a764] 0x008a9000 + 0x10a764 = 0x009b3764
RTTIBaseClassDescriptor PSysManager 3                                                                              // [0x10a768] 0x008a9000 + 0x10a768 = 0x009b3768
RTTIBaseClassArray PSysManager                                                                                     // [0x10a780] 0x008a9000 + 0x10a780 = 0x009b3780
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10a794] 0x008a9000 + 0x10a794 = 0x009b3794
RTTIClassHierarchyDescriptor PSysManager 4                                                                         // [0x10a798] 0x008a9000 + 0x10a798 = 0x009b3798
RTTICompleteObjectLocator PSysManager                                                                              // [0x10a7a8] 0x008a9000 + 0x10a7a8 = 0x009b37a8
.long 0x00000000                                                                                                   // [0x10a7bc] 0x008a9000 + 0x10a7bc = 0x009b37bc
RTTIBaseClassDescriptor AtomCore 3                                                                                 // [0x10a7c0] 0x008a9000 + 0x10a7c0 = 0x009b37c0
RTTIBaseClassArray AtomCore                                                                                        // [0x10a7d8] 0x008a9000 + 0x10a7d8 = 0x009b37d8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10a7ec] 0x008a9000 + 0x10a7ec = 0x009b37ec
RTTIClassHierarchyDescriptor AtomCore 4                                                                            // [0x10a7f0] 0x008a9000 + 0x10a7f0 = 0x009b37f0
RTTICompleteObjectLocator AtomCore                                                                                 // [0x10a800] 0x008a9000 + 0x10a800 = 0x009b3800
.long 0x00000000                                                                                                   // [0x10a814] 0x008a9000 + 0x10a814 = 0x009b3814
RTTIBaseClassDescriptor AtomCollection 3                                                                           // [0x10a818] 0x008a9000 + 0x10a818 = 0x009b3818
RTTIBaseClassArray AtomCollection                                                                                  // [0x10a830] 0x008a9000 + 0x10a830 = 0x009b3830
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10a844] 0x008a9000 + 0x10a844 = 0x009b3844
RTTIClassHierarchyDescriptor AtomCollection 4                                                                      // [0x10a848] 0x008a9000 + 0x10a848 = 0x009b3848
RTTICompleteObjectLocator AtomCollection                                                                           // [0x10a858] 0x008a9000 + 0x10a858 = 0x009b3858
.long 0x00000000                                                                                                   // [0x10a86c] 0x008a9000 + 0x10a86c = 0x009b386c
RTTIBaseClassDescriptor AtomCollectionModifier 1                                                                   // [0x10a870] 0x008a9000 + 0x10a870 = 0x009b3870
RTTIBaseClassArray AtomCollectionModifier                                                                          // [0x10a888] 0x008a9000 + 0x10a888 = 0x009b3888
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10a894] 0x008a9000 + 0x10a894 = 0x009b3894
RTTIClassHierarchyDescriptor AtomCollectionModifier 2                                                              // [0x10a898] 0x008a9000 + 0x10a898 = 0x009b3898
RTTICompleteObjectLocator AtomCollectionModifier                                                                   // [0x10a8a8] 0x008a9000 + 0x10a8a8 = 0x009b38a8
.long 0x00000000                                                                                                   // [0x10a8bc] 0x008a9000 + 0x10a8bc = 0x009b38bc
RTTIBaseClassDescriptor AtomCreateRule 2                                                                           // [0x10a8c0] 0x008a9000 + 0x10a8c0 = 0x009b38c0
RTTIBaseClassDescriptor UR_SimpleBeam 3                                                                            // [0x10a8d8] 0x008a9000 + 0x10a8d8 = 0x009b38d8
RTTIBaseClassArray UR_SimpleBeam                                                                                   // [0x10a8f0] 0x008a9000 + 0x10a8f0 = 0x009b38f0
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10a904] 0x008a9000 + 0x10a904 = 0x009b3904
RTTIClassHierarchyDescriptor UR_SimpleBeam 4                                                                       // [0x10a908] 0x008a9000 + 0x10a908 = 0x009b3908
RTTICompleteObjectLocator UR_SimpleBeam                                                                            // [0x10a918] 0x008a9000 + 0x10a918 = 0x009b3918
.long 0x00000000                                                                                                   // [0x10a92c] 0x008a9000 + 0x10a92c = 0x009b392c
RTTIBaseClassDescriptor UR_Plasma 3                                                                                // [0x10a930] 0x008a9000 + 0x10a930 = 0x009b3930
RTTIBaseClassArray UR_Plasma                                                                                       // [0x10a948] 0x008a9000 + 0x10a948 = 0x009b3948
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10a95c] 0x008a9000 + 0x10a95c = 0x009b395c
RTTIClassHierarchyDescriptor UR_Plasma 4                                                                           // [0x10a960] 0x008a9000 + 0x10a960 = 0x009b3960
RTTICompleteObjectLocator UR_Plasma                                                                                // [0x10a970] 0x008a9000 + 0x10a970 = 0x009b3970
.long 0x00000000                                                                                                   // [0x10a984] 0x008a9000 + 0x10a984 = 0x009b3984
RTTIBaseClassArray AtomCreateRule                                                                                  // [0x10a988] 0x008a9000 + 0x10a988 = 0x009b3988
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomCreateRule 3                                                                      // [0x10a998] 0x008a9000 + 0x10a998 = 0x009b3998
RTTICompleteObjectLocator AtomCreateRule                                                                           // [0x10a9a8] 0x008a9000 + 0x10a9a8 = 0x009b39a8
.long 0x00000000                                                                                                   // [0x10a9bc] 0x008a9000 + 0x10a9bc = 0x009b39bc
RTTIBaseClassDescriptor UR_CreatureSpell 3                                                                         // [0x10a9c0] 0x008a9000 + 0x10a9c0 = 0x009b39c0
RTTIBaseClassArray UR_CreatureSpell                                                                                // [0x10a9d8] 0x008a9000 + 0x10a9d8 = 0x009b39d8
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10a9ec] 0x008a9000 + 0x10a9ec = 0x009b39ec
RTTIClassHierarchyDescriptor UR_CreatureSpell 4                                                                    // [0x10a9f0] 0x008a9000 + 0x10a9f0 = 0x009b39f0
RTTICompleteObjectLocator UR_CreatureSpell                                                                         // [0x10aa00] 0x008a9000 + 0x10aa00 = 0x009b3a00
.long 0x00000000                                                                                                   // [0x10aa14] 0x008a9000 + 0x10aa14 = 0x009b3a14
RTTIBaseClassDescriptor UR_Explosion 3                                                                             // [0x10aa18] 0x008a9000 + 0x10aa18 = 0x009b3a18
RTTIBaseClassArray UR_Explosion                                                                                    // [0x10aa30] 0x008a9000 + 0x10aa30 = 0x009b3a30
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10aa44] 0x008a9000 + 0x10aa44 = 0x009b3a44
RTTIClassHierarchyDescriptor UR_Explosion 4                                                                        // [0x10aa48] 0x008a9000 + 0x10aa48 = 0x009b3a48
RTTICompleteObjectLocator UR_Explosion                                                                             // [0x10aa58] 0x008a9000 + 0x10aa58 = 0x009b3a58
.long 0x00000000                                                                                                   // [0x10aa6c] 0x008a9000 + 0x10aa6c = 0x009b3a6c
RTTIBaseClassDescriptor CollectionData@UR_Explosion 4                                                              // [0x10aa70] 0x008a9000 + 0x10aa70 = 0x009b3a70
RTTIBaseClassArray CollectionData@UR_Explosion                                                                     // [0x10aa88] 0x008a9000 + 0x10aa88 = 0x009b3a88
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@UR_Explosion 5                                                         // [0x10aaa0] 0x008a9000 + 0x10aaa0 = 0x009b3aa0
RTTICompleteObjectLocator CollectionData@UR_Explosion                                                              // [0x10aab0] 0x008a9000 + 0x10aab0 = 0x009b3ab0
.long 0x00000000                                                                                                   // [0x10aac4] 0x008a9000 + 0x10aac4 = 0x009b3ac4
RTTIBaseClassDescriptor GMagicFireBallInfo 3                                                                       // [0x10aac8] 0x008a9000 + 0x10aac8 = 0x009b3ac8
RTTIBaseClassArray GMagicFireBallInfo                                                                              // [0x10aae0] 0x008a9000 + 0x10aae0 = 0x009b3ae0
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10aaf4] 0x008a9000 + 0x10aaf4 = 0x009b3af4
RTTIClassHierarchyDescriptor GMagicFireBallInfo 4                                                                  // [0x10aaf8] 0x008a9000 + 0x10aaf8 = 0x009b3af8
RTTICompleteObjectLocator GMagicFireBallInfo                                                                       // [0x10ab08] 0x008a9000 + 0x10ab08 = 0x009b3b08
.long 0x00000000                                                                                                   // [0x10ab1c] 0x008a9000 + 0x10ab1c = 0x009b3b1c
RTTIBaseClassDescriptor MagicFireBall 4                                                                            // [0x10ab20] 0x008a9000 + 0x10ab20 = 0x009b3b20
RTTIBaseClassArray MagicFireBall                                                                                   // [0x10ab38] 0x008a9000 + 0x10ab38 = 0x009b3b38
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor MagicFireBall 5                                                                       // [0x10ab50] 0x008a9000 + 0x10ab50 = 0x009b3b50
RTTICompleteObjectLocator MagicFireBall                                                                            // [0x10ab60] 0x008a9000 + 0x10ab60 = 0x009b3b60
.long 0x00000000                                                                                                   // [0x10ab74] 0x008a9000 + 0x10ab74 = 0x009b3b74
RTTIBaseClassDescriptor UpdateRule 2                                                                               // [0x10ab78] 0x008a9000 + 0x10ab78 = 0x009b3b78
RTTIBaseClassDescriptor UR_Flocking 3                                                                              // [0x10ab90] 0x008a9000 + 0x10ab90 = 0x009b3b90
RTTIBaseClassArray UR_Flocking                                                                                     // [0x10aba8] 0x008a9000 + 0x10aba8 = 0x009b3ba8
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10abbc] 0x008a9000 + 0x10abbc = 0x009b3bbc
RTTIClassHierarchyDescriptor UR_Flocking 4                                                                         // [0x10abc0] 0x008a9000 + 0x10abc0 = 0x009b3bc0
RTTICompleteObjectLocator UR_Flocking                                                                              // [0x10abd0] 0x008a9000 + 0x10abd0 = 0x009b3bd0
.long 0x00000000                                                                                                   // [0x10abe4] 0x008a9000 + 0x10abe4 = 0x009b3be4
RTTIBaseClassDescriptor CollectionData@UR_Rope 4                                                                   // [0x10abe8] 0x008a9000 + 0x10abe8 = 0x009b3be8
RTTIBaseClassArray CollectionData@UR_Rope                                                                          // [0x10ac00] 0x008a9000 + 0x10ac00 = 0x009b3c00
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@UR_Rope 5                                                              // [0x10ac18] 0x008a9000 + 0x10ac18 = 0x009b3c18
RTTICompleteObjectLocator CollectionData@UR_Rope                                                                   // [0x10ac28] 0x008a9000 + 0x10ac28 = 0x009b3c28
.long 0x00000000                                                                                                   // [0x10ac3c] 0x008a9000 + 0x10ac3c = 0x009b3c3c
RTTIBaseClassDescriptor CollectionData@UR_Articulate 4                                                             // [0x10ac40] 0x008a9000 + 0x10ac40 = 0x009b3c40
RTTIBaseClassArray CollectionData@UR_Articulate                                                                    // [0x10ac58] 0x008a9000 + 0x10ac58 = 0x009b3c58
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@UR_Articulate 5                                                        // [0x10ac70] 0x008a9000 + 0x10ac70 = 0x009b3c70
RTTICompleteObjectLocator CollectionData@UR_Articulate                                                             // [0x10ac80] 0x008a9000 + 0x10ac80 = 0x009b3c80
.long 0x00000000                                                                                                   // [0x10ac94] 0x008a9000 + 0x10ac94 = 0x009b3c94
RTTIBaseClassDescriptor AtomData@UR_Articulate 4                                                                   // [0x10ac98] 0x008a9000 + 0x10ac98 = 0x009b3c98
RTTIBaseClassArray AtomData@UR_Articulate                                                                          // [0x10acb0] 0x008a9000 + 0x10acb0 = 0x009b3cb0
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_Articulate 5                                                              // [0x10acc8] 0x008a9000 + 0x10acc8 = 0x009b3cc8
RTTICompleteObjectLocator AtomData@UR_Articulate                                                                   // [0x10acd8] 0x008a9000 + 0x10acd8 = 0x009b3cd8
.long 0x00000000                                                                                                   // [0x10acec] 0x008a9000 + 0x10acec = 0x009b3cec
RTTIBaseClassDescriptor CollectionData@ZR_SurfRevol 4                                                              // [0x10acf0] 0x008a9000 + 0x10acf0 = 0x009b3cf0
RTTIBaseClassArray CollectionData@ZR_SurfRevol                                                                     // [0x10ad08] 0x008a9000 + 0x10ad08 = 0x009b3d08
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@ZR_SurfRevol 5                                                         // [0x10ad20] 0x008a9000 + 0x10ad20 = 0x009b3d20
RTTICompleteObjectLocator CollectionData@ZR_SurfRevol                                                              // [0x10ad30] 0x008a9000 + 0x10ad30 = 0x009b3d30
.long 0x00000000                                                                                                   // [0x10ad44] 0x008a9000 + 0x10ad44 = 0x009b3d44
RTTIBaseClassDescriptor ZR_SurfRevol 3                                                                             // [0x10ad48] 0x008a9000 + 0x10ad48 = 0x009b3d48
RTTIBaseClassArray ZR_SurfRevol                                                                                    // [0x10ad60] 0x008a9000 + 0x10ad60 = 0x009b3d60
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10ad74] 0x008a9000 + 0x10ad74 = 0x009b3d74
RTTIClassHierarchyDescriptor ZR_SurfRevol 4                                                                        // [0x10ad78] 0x008a9000 + 0x10ad78 = 0x009b3d78
RTTICompleteObjectLocator ZR_SurfRevol                                                                             // [0x10ad88] 0x008a9000 + 0x10ad88 = 0x009b3d88
.long 0x00000000                                                                                                   // [0x10ad9c] 0x008a9000 + 0x10ad9c = 0x009b3d9c
RTTIBaseClassDescriptor TestFunnelSpout 1                                                                          // [0x10ada0] 0x008a9000 + 0x10ada0 = 0x009b3da0
RTTIBaseClassArray TestFunnelSpout                                                                                 // [0x10adb8] 0x008a9000 + 0x10adb8 = 0x009b3db8
.long ??_R1A@?0A@A@FuncT@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10adc4] 0x008a9000 + 0x10adc4 = 0x009b3dc4
RTTIClassHierarchyDescriptor TestFunnelSpout 2                                                                     // [0x10adc8] 0x008a9000 + 0x10adc8 = 0x009b3dc8
RTTICompleteObjectLocator TestFunnelSpout                                                                          // [0x10add8] 0x008a9000 + 0x10add8 = 0x009b3dd8
.long 0x00000000                                                                                                   // [0x10adec] 0x008a9000 + 0x10adec = 0x009b3dec
RTTIBaseClassDescriptor TestFunnelParab 1                                                                          // [0x10adf0] 0x008a9000 + 0x10adf0 = 0x009b3df0
RTTIBaseClassArray TestFunnelParab                                                                                 // [0x10ae08] 0x008a9000 + 0x10ae08 = 0x009b3e08
.long ??_R1A@?0A@A@FuncT@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10ae14] 0x008a9000 + 0x10ae14 = 0x009b3e14
RTTIClassHierarchyDescriptor TestFunnelParab 2                                                                     // [0x10ae18] 0x008a9000 + 0x10ae18 = 0x009b3e18
RTTICompleteObjectLocator TestFunnelParab                                                                          // [0x10ae28] 0x008a9000 + 0x10ae28 = 0x009b3e28
.long 0x00000000                                                                                                   // [0x10ae3c] 0x008a9000 + 0x10ae3c = 0x009b3e3c
RTTIBaseClassDescriptor TestFunnel 1                                                                               // [0x10ae40] 0x008a9000 + 0x10ae40 = 0x009b3e40
RTTIBaseClassArray TestFunnel                                                                                      // [0x10ae58] 0x008a9000 + 0x10ae58 = 0x009b3e58
.long ??_R1A@?0A@A@FuncT@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10ae64] 0x008a9000 + 0x10ae64 = 0x009b3e64
RTTIClassHierarchyDescriptor TestFunnel 2                                                                          // [0x10ae68] 0x008a9000 + 0x10ae68 = 0x009b3e68
RTTICompleteObjectLocator TestFunnel                                                                               // [0x10ae78] 0x008a9000 + 0x10ae78 = 0x009b3e78
.long 0x00000000                                                                                                   // [0x10ae8c] 0x008a9000 + 0x10ae8c = 0x009b3e8c
RTTIBaseClassDescriptor FuncT 0                                                                                    // [0x10ae90] 0x008a9000 + 0x10ae90 = 0x009b3e90
RTTIBaseClassDescriptor TestDisk 1                                                                                 // [0x10aea8] 0x008a9000 + 0x10aea8 = 0x009b3ea8
RTTIBaseClassArray TestDisk                                                                                        // [0x10aec0] 0x008a9000 + 0x10aec0 = 0x009b3ec0
.long ??_R1A@?0A@A@FuncT@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10aecc] 0x008a9000 + 0x10aecc = 0x009b3ecc
RTTIClassHierarchyDescriptor TestDisk 2                                                                            // [0x10aed0] 0x008a9000 + 0x10aed0 = 0x009b3ed0
RTTICompleteObjectLocator TestDisk                                                                                 // [0x10aee0] 0x008a9000 + 0x10aee0 = 0x009b3ee0
.long 0x00000000                                                                                                   // [0x10aef4] 0x008a9000 + 0x10aef4 = 0x009b3ef4
RTTIBaseClassDescriptor CollectionData@UR_RingSpin 4                                                               // [0x10aef8] 0x008a9000 + 0x10aef8 = 0x009b3ef8
RTTIBaseClassArray CollectionData@UR_RingSpin                                                                      // [0x10af10] 0x008a9000 + 0x10af10 = 0x009b3f10
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@UR_RingSpin 5                                                          // [0x10af28] 0x008a9000 + 0x10af28 = 0x009b3f28
RTTICompleteObjectLocator CollectionData@UR_RingSpin                                                               // [0x10af38] 0x008a9000 + 0x10af38 = 0x009b3f38
.long 0x00000000                                                                                                   // [0x10af4c] 0x008a9000 + 0x10af4c = 0x009b3f4c
RTTIBaseClassDescriptor AtomData@UR_GesturingRecognised 4                                                          // [0x10af50] 0x008a9000 + 0x10af50 = 0x009b3f50
RTTIBaseClassArray AtomData@UR_GesturingRecognised                                                                 // [0x10af68] 0x008a9000 + 0x10af68 = 0x009b3f68
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_GesturingRecognised 5                                                     // [0x10af80] 0x008a9000 + 0x10af80 = 0x009b3f80
RTTICompleteObjectLocator AtomData@UR_GesturingRecognised                                                          // [0x10af90] 0x008a9000 + 0x10af90 = 0x009b3f90
.long 0x00000000                                                                                                   // [0x10afa4] 0x008a9000 + 0x10afa4 = 0x009b3fa4
RTTIBaseClassDescriptor UR_GesturingRecognised 3                                                                   // [0x10afa8] 0x008a9000 + 0x10afa8 = 0x009b3fa8
RTTIBaseClassArray UR_GesturingRecognised                                                                          // [0x10afc0] 0x008a9000 + 0x10afc0 = 0x009b3fc0
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10afd4] 0x008a9000 + 0x10afd4 = 0x009b3fd4
RTTIClassHierarchyDescriptor UR_GesturingRecognised 4                                                              // [0x10afd8] 0x008a9000 + 0x10afd8 = 0x009b3fd8
RTTICompleteObjectLocator UR_GesturingRecognised                                                                   // [0x10afe8] 0x008a9000 + 0x10afe8 = 0x009b3fe8
.long 0x00000000                                                                                                   // [0x10affc] 0x008a9000 + 0x10affc = 0x009b3ffc
RTTIBaseClassDescriptor ZR_ChainGesture 3                                                                          // [0x10b000] 0x008a9000 + 0x10b000 = 0x009b4000
RTTIBaseClassArray ZR_ChainGesture                                                                                 // [0x10b018] 0x008a9000 + 0x10b018 = 0x009b4018
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10b02c] 0x008a9000 + 0x10b02c = 0x009b402c
RTTIClassHierarchyDescriptor ZR_ChainGesture 4                                                                     // [0x10b030] 0x008a9000 + 0x10b030 = 0x009b4030
RTTICompleteObjectLocator ZR_ChainGesture                                                                          // [0x10b040] 0x008a9000 + 0x10b040 = 0x009b4040
.long 0x00000000                                                                                                   // [0x10b054] 0x008a9000 + 0x10b054 = 0x009b4054
RTTIBaseClassDescriptor ParentCollectionData@ZR_ChainGesture 4                                                     // [0x10b058] 0x008a9000 + 0x10b058 = 0x009b4058
RTTIBaseClassArray ParentCollectionData@ZR_ChainGesture                                                            // [0x10b070] 0x008a9000 + 0x10b070 = 0x009b4070
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ParentCollectionData@ZR_ChainGesture 5                                                // [0x10b088] 0x008a9000 + 0x10b088 = 0x009b4088
RTTICompleteObjectLocator ParentCollectionData@ZR_ChainGesture                                                     // [0x10b098] 0x008a9000 + 0x10b098 = 0x009b4098
.long 0x00000000                                                                                                   // [0x10b0ac] 0x008a9000 + 0x10b0ac = 0x009b40ac
RTTIBaseClassDescriptor AtomData@ZR_ChainGesture 4                                                                 // [0x10b0b0] 0x008a9000 + 0x10b0b0 = 0x009b40b0
RTTIBaseClassArray AtomData@ZR_ChainGesture                                                                        // [0x10b0c8] 0x008a9000 + 0x10b0c8 = 0x009b40c8
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@ZR_ChainGesture 5                                                            // [0x10b0e0] 0x008a9000 + 0x10b0e0 = 0x009b40e0
RTTICompleteObjectLocator AtomData@ZR_ChainGesture                                                                 // [0x10b0f0] 0x008a9000 + 0x10b0f0 = 0x009b40f0
.long 0x00000000                                                                                                   // [0x10b104] 0x008a9000 + 0x10b104 = 0x009b4104
RTTIBaseClassDescriptor Band@PHandFX 3                                                                             // [0x10b108] 0x008a9000 + 0x10b108 = 0x009b4108
RTTIBaseClassArray Band@PHandFX                                                                                    // [0x10b120] 0x008a9000 + 0x10b120 = 0x009b4120
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10b134] 0x008a9000 + 0x10b134 = 0x009b4134
RTTIClassHierarchyDescriptor Band@PHandFX 4                                                                        // [0x10b138] 0x008a9000 + 0x10b138 = 0x009b4138
RTTICompleteObjectLocator Band@PHandFX                                                                             // [0x10b148] 0x008a9000 + 0x10b148 = 0x009b4148
.long 0x00000000                                                                                                   // [0x10b15c] 0x008a9000 + 0x10b15c = 0x009b415c
RTTIBaseClassDescriptor PSysHandFX 0                                                                               // [0x10b160] 0x008a9000 + 0x10b160 = 0x009b4160
RTTIBaseClassDescriptor PHandFX 1                                                                                  // [0x10b178] 0x008a9000 + 0x10b178 = 0x009b4178
RTTIBaseClassArray PHandFX                                                                                         // [0x10b190] 0x008a9000 + 0x10b190 = 0x009b4190
.long ??_R1A@?0A@A@PSysHandFX@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10b19c] 0x008a9000 + 0x10b19c = 0x009b419c
RTTIClassHierarchyDescriptor PHandFX 2                                                                             // [0x10b1a0] 0x008a9000 + 0x10b1a0 = 0x009b41a0
RTTICompleteObjectLocator PHandFX                                                                                  // [0x10b1b0] 0x008a9000 + 0x10b1b0 = 0x009b41b0
.long 0x00000000                                                                                                   // [0x10b1c4] 0x008a9000 + 0x10b1c4 = 0x009b41c4
RTTIBaseClassDescriptor UR_Lightning_CollectionData 4                                                              // [0x10b1c8] 0x008a9000 + 0x10b1c8 = 0x009b41c8
RTTIBaseClassArray UR_Lightning_CollectionData                                                                     // [0x10b1e0] 0x008a9000 + 0x10b1e0 = 0x009b41e0
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor UR_Lightning_CollectionData 5                                                         // [0x10b1f8] 0x008a9000 + 0x10b1f8 = 0x009b41f8
RTTICompleteObjectLocator UR_Lightning_CollectionData                                                              // [0x10b208] 0x008a9000 + 0x10b208 = 0x009b4208
.long 0x00000000                                                                                                   // [0x10b21c] 0x008a9000 + 0x10b21c = 0x009b421c
RTTIBaseClassDescriptor UR_Lightning 3                                                                             // [0x10b220] 0x008a9000 + 0x10b220 = 0x009b4220
RTTIBaseClassArray UR_Lightning                                                                                    // [0x10b238] 0x008a9000 + 0x10b238 = 0x009b4238
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10b24c] 0x008a9000 + 0x10b24c = 0x009b424c
RTTIClassHierarchyDescriptor UR_Lightning 4                                                                        // [0x10b250] 0x008a9000 + 0x10b250 = 0x009b4250
RTTICompleteObjectLocator UR_Lightning                                                                             // [0x10b260] 0x008a9000 + 0x10b260 = 0x009b4260
.long 0x00000000                                                                                                   // [0x10b274] 0x008a9000 + 0x10b274 = 0x009b4274
RTTIBaseClassDescriptor AtomData@UR_ObjectArcer 4                                                                  // [0x10b278] 0x008a9000 + 0x10b278 = 0x009b4278
RTTIBaseClassArray AtomData@UR_ObjectArcer                                                                         // [0x10b290] 0x008a9000 + 0x10b290 = 0x009b4290
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_ObjectArcer 5                                                             // [0x10b2a8] 0x008a9000 + 0x10b2a8 = 0x009b42a8
RTTICompleteObjectLocator AtomData@UR_ObjectArcer                                                                  // [0x10b2b8] 0x008a9000 + 0x10b2b8 = 0x009b42b8
.long 0x00000000                                                                                                   // [0x10b2cc] 0x008a9000 + 0x10b2cc = 0x009b42cc
RTTIBaseClassDescriptor UR_LightningStrike 3                                                                       // [0x10b2d0] 0x008a9000 + 0x10b2d0 = 0x009b42d0
RTTIBaseClassArray UR_LightningStrike                                                                              // [0x10b2e8] 0x008a9000 + 0x10b2e8 = 0x009b42e8
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10b2fc] 0x008a9000 + 0x10b2fc = 0x009b42fc
RTTIClassHierarchyDescriptor UR_LightningStrike 4                                                                  // [0x10b300] 0x008a9000 + 0x10b300 = 0x009b4300
RTTICompleteObjectLocator UR_LightningStrike                                                                       // [0x10b310] 0x008a9000 + 0x10b310 = 0x009b4310
.long 0x00000000                                                                                                   // [0x10b324] 0x008a9000 + 0x10b324 = 0x009b4324
RTTIBaseClassDescriptor AtomData@UR_LightningStrike 4                                                              // [0x10b328] 0x008a9000 + 0x10b328 = 0x009b4328
RTTIBaseClassArray AtomData@UR_LightningStrike                                                                     // [0x10b340] 0x008a9000 + 0x10b340 = 0x009b4340
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_LightningStrike 5                                                         // [0x10b358] 0x008a9000 + 0x10b358 = 0x009b4358
RTTICompleteObjectLocator AtomData@UR_LightningStrike                                                              // [0x10b368] 0x008a9000 + 0x10b368 = 0x009b4368
.long 0x00000000                                                                                                   // [0x10b37c] 0x008a9000 + 0x10b37c = 0x009b437c
RTTIBaseClassDescriptor CollectionData@UR_TownCentreBelief 4                                                       // [0x10b380] 0x008a9000 + 0x10b380 = 0x009b4380
RTTIBaseClassArray CollectionData@UR_TownCentreBelief                                                              // [0x10b398] 0x008a9000 + 0x10b398 = 0x009b4398
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@UR_TownCentreBelief 5                                                  // [0x10b3b0] 0x008a9000 + 0x10b3b0 = 0x009b43b0
RTTICompleteObjectLocator CollectionData@UR_TownCentreBelief                                                       // [0x10b3c0] 0x008a9000 + 0x10b3c0 = 0x009b43c0
.long 0x00000000                                                                                                   // [0x10b3d4] 0x008a9000 + 0x10b3d4 = 0x009b43d4
RTTIBaseClassDescriptor AtomData@UR_TownCentreBelief 4                                                             // [0x10b3d8] 0x008a9000 + 0x10b3d8 = 0x009b43d8
RTTIBaseClassArray AtomData@UR_TownCentreBelief                                                                    // [0x10b3f0] 0x008a9000 + 0x10b3f0 = 0x009b43f0
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_TownCentreBelief 5                                                        // [0x10b408] 0x008a9000 + 0x10b408 = 0x009b4408
RTTICompleteObjectLocator AtomData@UR_TownCentreBelief                                                             // [0x10b418] 0x008a9000 + 0x10b418 = 0x009b4418
.long 0x00000000                                                                                                   // [0x10b42c] 0x008a9000 + 0x10b42c = 0x009b442c
RTTIBaseClassDescriptor AtomData@UR_LightSheetOnObject 4                                                           // [0x10b430] 0x008a9000 + 0x10b430 = 0x009b4430
RTTIBaseClassArray AtomData@UR_LightSheetOnObject                                                                  // [0x10b448] 0x008a9000 + 0x10b448 = 0x009b4448
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_LightSheetOnObject 5                                                      // [0x10b460] 0x008a9000 + 0x10b460 = 0x009b4460
RTTICompleteObjectLocator AtomData@UR_LightSheetOnObject                                                           // [0x10b470] 0x008a9000 + 0x10b470 = 0x009b4470
.long 0x00000000                                                                                                   // [0x10b484] 0x008a9000 + 0x10b484 = 0x009b4484
RTTIBaseClassDescriptor UR_LightSheetOnObject 3                                                                    // [0x10b488] 0x008a9000 + 0x10b488 = 0x009b4488
RTTIBaseClassArray UR_LightSheetOnObject                                                                           // [0x10b4a0] 0x008a9000 + 0x10b4a0 = 0x009b44a0
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10b4b4] 0x008a9000 + 0x10b4b4 = 0x009b44b4
RTTIClassHierarchyDescriptor UR_LightSheetOnObject 4                                                               // [0x10b4b8] 0x008a9000 + 0x10b4b8 = 0x009b44b8
RTTICompleteObjectLocator UR_LightSheetOnObject                                                                    // [0x10b4c8] 0x008a9000 + 0x10b4c8 = 0x009b44c8
.long 0x00000000                                                                                                   // [0x10b4dc] 0x008a9000 + 0x10b4dc = 0x009b44dc
RTTIBaseClassDescriptor AtomData@UR_VolFXOnObject 4                                                                // [0x10b4e0] 0x008a9000 + 0x10b4e0 = 0x009b44e0
RTTIBaseClassArray AtomData@UR_VolFXOnObject                                                                       // [0x10b4f8] 0x008a9000 + 0x10b4f8 = 0x009b44f8
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_VolFXOnObject 5                                                           // [0x10b510] 0x008a9000 + 0x10b510 = 0x009b4510
RTTICompleteObjectLocator AtomData@UR_VolFXOnObject                                                                // [0x10b520] 0x008a9000 + 0x10b520 = 0x009b4520
.long 0x00000000                                                                                                   // [0x10b534] 0x008a9000 + 0x10b534 = 0x009b4534
RTTIBaseClassDescriptor UR_VolFXOnObject 3                                                                         // [0x10b538] 0x008a9000 + 0x10b538 = 0x009b4538
RTTIBaseClassArray UR_VolFXOnObject                                                                                // [0x10b550] 0x008a9000 + 0x10b550 = 0x009b4550
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10b564] 0x008a9000 + 0x10b564 = 0x009b4564
RTTIClassHierarchyDescriptor UR_VolFXOnObject 4                                                                    // [0x10b568] 0x008a9000 + 0x10b568 = 0x009b4568
RTTICompleteObjectLocator UR_VolFXOnObject                                                                         // [0x10b578] 0x008a9000 + 0x10b578 = 0x009b4578
.long 0x00000000                                                                                                   // [0x10b58c] 0x008a9000 + 0x10b58c = 0x009b458c
.byte 0x80, 0x7e, 0x9c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff               // [0x10b590] 0x008a9000 + 0x10b590 = 0x009b4590
.byte 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x18, 0x7f, 0x9c, 0x00, 0x01, 0x00, 0x00, 0x00               // [0x10b5a0] 0x008a9000 + 0x10b5a0 = 0x009b45a0
.byte 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00               // [0x10b5b0] 0x008a9000 + 0x10b5b0 = 0x009b45b0
.byte 0x90, 0xea, 0x9c, 0x00, 0x02, 0x00, 0x00, 0x00                                                               // [0x10b5c0] 0x008a9000 + 0x10b5c0 = 0x009b45c0
.byte 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff                                                               // [0x10b5c8] 0x008a9000 + 0x10b5c8 = 0x009b45c8
.byte 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00                                                               // [0x10b5d0] 0x008a9000 + 0x10b5d0 = 0x009b45d0
RTTIBaseClassDescriptor GJAnimVolFX 3                                                                              // [0x10b5d8] 0x008a9000 + 0x10b5d8 = 0x009b45d8
RTTIBaseClassArray GJAnimVolFX                                                                                     // [0x10b5f0] 0x008a9000 + 0x10b5f0 = 0x009b45f0
.long 0x009b45c0
.long 0x009b45a8
.long 0x009b4590
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10b604] 0x008a9000 + 0x10b604 = 0x009b4604
RTTIClassHierarchyDescriptor GJAnimVolFX 4                                                                         // [0x10b608] 0x008a9000 + 0x10b608 = 0x009b4608
RTTICompleteObjectLocator GJAnimVolFX                                                                              // [0x10b618] 0x008a9000 + 0x10b618 = 0x009b4618
.long 0x00000000                                                                                                   // [0x10b62c] 0x008a9000 + 0x10b62c = 0x009b462c
RTTIBaseClassArray OnceOnlyCreateRule                                                                              // [0x10b630] 0x008a9000 + 0x10b630 = 0x009b4630
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10b644] 0x008a9000 + 0x10b644 = 0x009b4644
RTTIClassHierarchyDescriptor OnceOnlyCreateRule 4                                                                  // [0x10b648] 0x008a9000 + 0x10b648 = 0x009b4648
RTTICompleteObjectLocator OnceOnlyCreateRule                                                                       // [0x10b658] 0x008a9000 + 0x10b658 = 0x009b4658
.long 0x00000000                                                                                                   // [0x10b66c] 0x008a9000 + 0x10b66c = 0x009b466c
RTTIBaseClassDescriptor OnceOnlyCreateRule 3                                                                       // [0x10b670] 0x008a9000 + 0x10b670 = 0x009b4670
RTTIBaseClassDescriptor CreateWithInitialDirection 4                                                               // [0x10b688] 0x008a9000 + 0x10b688 = 0x009b4688
RTTIBaseClassArray CreateWithInitialDirection                                                                      // [0x10b6a0] 0x008a9000 + 0x10b6a0 = 0x009b46a0
.long ??_R1A@?0A@A@OnceOnlyCreateRule@@8
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreateWithInitialDirection 5                                                          // [0x10b6b8] 0x008a9000 + 0x10b6b8 = 0x009b46b8
RTTICompleteObjectLocator CreateWithInitialDirection                                                               // [0x10b6c8] 0x008a9000 + 0x10b6c8 = 0x009b46c8
.long 0x00000000                                                                                                   // [0x10b6dc] 0x008a9000 + 0x10b6dc = 0x009b46dc
RTTIBaseClassDescriptor CreateRuleAnAtom 4                                                                         // [0x10b6e0] 0x008a9000 + 0x10b6e0 = 0x009b46e0
RTTIBaseClassArray CreateRuleAnAtom                                                                                // [0x10b6f8] 0x008a9000 + 0x10b6f8 = 0x009b46f8
.long ??_R1A@?0A@A@OnceOnlyCreateRule@@8
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreateRuleAnAtom 5                                                                    // [0x10b710] 0x008a9000 + 0x10b710 = 0x009b4710
RTTICompleteObjectLocator CreateRuleAnAtom                                                                         // [0x10b720] 0x008a9000 + 0x10b720 = 0x009b4720
.long 0x00000000                                                                                                   // [0x10b734] 0x008a9000 + 0x10b734 = 0x009b4734
RTTIBaseClassDescriptor UR_FireWorkSimple 4                                                                        // [0x10b738] 0x008a9000 + 0x10b738 = 0x009b4738
RTTIBaseClassArray UR_FireWorkSimple                                                                               // [0x10b750] 0x008a9000 + 0x10b750 = 0x009b4750
.long ??_R1A@?0A@A@OnceOnlyCreateRule@@8
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor UR_FireWorkSimple 5                                                                   // [0x10b768] 0x008a9000 + 0x10b768 = 0x009b4768
RTTICompleteObjectLocator UR_FireWorkSimple                                                                        // [0x10b778] 0x008a9000 + 0x10b778 = 0x009b4778
.long 0x00000000                                                                                                   // [0x10b78c] 0x008a9000 + 0x10b78c = 0x009b478c
RTTIBaseClassDescriptor UR_HandSprinkle 3                                                                          // [0x10b790] 0x008a9000 + 0x10b790 = 0x009b4790
RTTIBaseClassArray UR_HandSprinkle                                                                                 // [0x10b7a8] 0x008a9000 + 0x10b7a8 = 0x009b47a8
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10b7bc] 0x008a9000 + 0x10b7bc = 0x009b47bc
RTTIClassHierarchyDescriptor UR_HandSprinkle 4                                                                     // [0x10b7c0] 0x008a9000 + 0x10b7c0 = 0x009b47c0
RTTICompleteObjectLocator UR_HandSprinkle                                                                          // [0x10b7d0] 0x008a9000 + 0x10b7d0 = 0x009b47d0
.long 0x00000000                                                                                                   // [0x10b7e4] 0x008a9000 + 0x10b7e4 = 0x009b47e4
RTTIBaseClassDescriptor UR_HealSpellChakra 3                                                                       // [0x10b7e8] 0x008a9000 + 0x10b7e8 = 0x009b47e8
RTTIBaseClassArray UR_HealSpellChakra                                                                              // [0x10b800] 0x008a9000 + 0x10b800 = 0x009b4800
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10b814] 0x008a9000 + 0x10b814 = 0x009b4814
RTTIClassHierarchyDescriptor UR_HealSpellChakra 4                                                                  // [0x10b818] 0x008a9000 + 0x10b818 = 0x009b4818
RTTICompleteObjectLocator UR_HealSpellChakra                                                                       // [0x10b828] 0x008a9000 + 0x10b828 = 0x009b4828
.long 0x00000000                                                                                                   // [0x10b83c] 0x008a9000 + 0x10b83c = 0x009b483c
RTTIBaseClassDescriptor AtomData@UR_HealSpellChakra 4                                                              // [0x10b840] 0x008a9000 + 0x10b840 = 0x009b4840
RTTIBaseClassArray AtomData@UR_HealSpellChakra                                                                     // [0x10b858] 0x008a9000 + 0x10b858 = 0x009b4858
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_HealSpellChakra 5                                                         // [0x10b870] 0x008a9000 + 0x10b870 = 0x009b4870
RTTICompleteObjectLocator AtomData@UR_HealSpellChakra                                                              // [0x10b880] 0x008a9000 + 0x10b880 = 0x009b4880
.long 0x00000000                                                                                                   // [0x10b894] 0x008a9000 + 0x10b894 = 0x009b4894
RTTIBaseClassDescriptor UpdateRuleGravityWithFloor 4                                                               // [0x10b898] 0x008a9000 + 0x10b898 = 0x009b4898
RTTIBaseClassArray UpdateRuleGravityWithFloor                                                                      // [0x10b8b0] 0x008a9000 + 0x10b8b0 = 0x009b48b0
.long ??_R1A@?0A@A@UpdateRuleGravity@@8
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor UpdateRuleGravityWithFloor 5                                                          // [0x10b8c8] 0x008a9000 + 0x10b8c8 = 0x009b48c8
RTTICompleteObjectLocator UpdateRuleGravityWithFloor                                                               // [0x10b8d8] 0x008a9000 + 0x10b8d8 = 0x009b48d8
.long 0x00000000                                                                                                   // [0x10b8ec] 0x008a9000 + 0x10b8ec = 0x009b48ec
RTTIBaseClassDescriptor UpdateRuleGravity 3                                                                        // [0x10b8f0] 0x008a9000 + 0x10b8f0 = 0x009b48f0
RTTIBaseClassArray UpdateRuleGravity                                                                               // [0x10b908] 0x008a9000 + 0x10b908 = 0x009b4908
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10b91c] 0x008a9000 + 0x10b91c = 0x009b491c
RTTIClassHierarchyDescriptor UpdateRuleGravity 4                                                                   // [0x10b920] 0x008a9000 + 0x10b920 = 0x009b4920
RTTICompleteObjectLocator UpdateRuleGravity                                                                        // [0x10b930] 0x008a9000 + 0x10b930 = 0x009b4930
.long 0x00000000                                                                                                   // [0x10b944] 0x008a9000 + 0x10b944 = 0x009b4944
RTTIBaseClassDescriptor UpdateRuleShieldSpark 3                                                                    // [0x10b948] 0x008a9000 + 0x10b948 = 0x009b4948
RTTIBaseClassArray UpdateRuleShieldSpark                                                                           // [0x10b960] 0x008a9000 + 0x10b960 = 0x009b4960
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10b974] 0x008a9000 + 0x10b974 = 0x009b4974
RTTIClassHierarchyDescriptor UpdateRuleShieldSpark 4                                                               // [0x10b978] 0x008a9000 + 0x10b978 = 0x009b4978
RTTICompleteObjectLocator UpdateRuleShieldSpark                                                                    // [0x10b988] 0x008a9000 + 0x10b988 = 0x009b4988
.long 0x00000000                                                                                                   // [0x10b99c] 0x008a9000 + 0x10b99c = 0x009b499c
RTTIBaseClassDescriptor UR_ForestPath 3                                                                            // [0x10b9a0] 0x008a9000 + 0x10b9a0 = 0x009b49a0
RTTIBaseClassArray UR_ForestPath                                                                                   // [0x10b9b8] 0x008a9000 + 0x10b9b8 = 0x009b49b8
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10b9cc] 0x008a9000 + 0x10b9cc = 0x009b49cc
RTTIClassHierarchyDescriptor UR_ForestPath 4                                                                       // [0x10b9d0] 0x008a9000 + 0x10b9d0 = 0x009b49d0
RTTICompleteObjectLocator UR_ForestPath                                                                            // [0x10b9e0] 0x008a9000 + 0x10b9e0 = 0x009b49e0
.long 0x00000000                                                                                                   // [0x10b9f4] 0x008a9000 + 0x10b9f4 = 0x009b49f4
RTTIBaseClassDescriptor UR_Trail 3                                                                                 // [0x10b9f8] 0x008a9000 + 0x10b9f8 = 0x009b49f8
RTTIBaseClassArray UR_Trail                                                                                        // [0x10ba10] 0x008a9000 + 0x10ba10 = 0x009b4a10
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10ba24] 0x008a9000 + 0x10ba24 = 0x009b4a24
RTTIClassHierarchyDescriptor UR_Trail 4                                                                            // [0x10ba28] 0x008a9000 + 0x10ba28 = 0x009b4a28
RTTICompleteObjectLocator UR_Trail                                                                                 // [0x10ba38] 0x008a9000 + 0x10ba38 = 0x009b4a38
.long 0x00000000                                                                                                   // [0x10ba4c] 0x008a9000 + 0x10ba4c = 0x009b4a4c
RTTIBaseClassDescriptor UR_KPStretchHeight 3                                                                       // [0x10ba50] 0x008a9000 + 0x10ba50 = 0x009b4a50
RTTIBaseClassArray UR_KPStretchHeight                                                                              // [0x10ba68] 0x008a9000 + 0x10ba68 = 0x009b4a68
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10ba7c] 0x008a9000 + 0x10ba7c = 0x009b4a7c
RTTIClassHierarchyDescriptor UR_KPStretchHeight 4                                                                  // [0x10ba80] 0x008a9000 + 0x10ba80 = 0x009b4a80
RTTICompleteObjectLocator UR_KPStretchHeight                                                                       // [0x10ba90] 0x008a9000 + 0x10ba90 = 0x009b4a90
.long 0x00000000                                                                                                   // [0x10baa4] 0x008a9000 + 0x10baa4 = 0x009b4aa4
RTTIBaseClassDescriptor ER_GlintsOnTarget 3                                                                        // [0x10baa8] 0x008a9000 + 0x10baa8 = 0x009b4aa8
RTTIBaseClassArray ER_GlintsOnTarget                                                                               // [0x10bac0] 0x008a9000 + 0x10bac0 = 0x009b4ac0
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10bad4] 0x008a9000 + 0x10bad4 = 0x009b4ad4
RTTIClassHierarchyDescriptor ER_GlintsOnTarget 4                                                                   // [0x10bad8] 0x008a9000 + 0x10bad8 = 0x009b4ad8
RTTICompleteObjectLocator ER_GlintsOnTarget                                                                        // [0x10bae8] 0x008a9000 + 0x10bae8 = 0x009b4ae8
.long 0x00000000                                                                                                   // [0x10bafc] 0x008a9000 + 0x10bafc = 0x009b4afc
RTTIBaseClassDescriptor ER_BurstFromParentAtom 3                                                                   // [0x10bb00] 0x008a9000 + 0x10bb00 = 0x009b4b00
RTTIBaseClassArray ER_BurstFromParentAtom                                                                          // [0x10bb18] 0x008a9000 + 0x10bb18 = 0x009b4b18
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10bb2c] 0x008a9000 + 0x10bb2c = 0x009b4b2c
RTTIClassHierarchyDescriptor ER_BurstFromParentAtom 4                                                              // [0x10bb30] 0x008a9000 + 0x10bb30 = 0x009b4b30
RTTICompleteObjectLocator ER_BurstFromParentAtom                                                                   // [0x10bb40] 0x008a9000 + 0x10bb40 = 0x009b4b40
.long 0x00000000                                                                                                   // [0x10bb54] 0x008a9000 + 0x10bb54 = 0x009b4b54
RTTIBaseClassDescriptor ER_EmitFromParentAtom 3                                                                    // [0x10bb58] 0x008a9000 + 0x10bb58 = 0x009b4b58
RTTIBaseClassArray ER_EmitFromParentAtom                                                                           // [0x10bb70] 0x008a9000 + 0x10bb70 = 0x009b4b70
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10bb84] 0x008a9000 + 0x10bb84 = 0x009b4b84
RTTIClassHierarchyDescriptor ER_EmitFromParentAtom 4                                                               // [0x10bb88] 0x008a9000 + 0x10bb88 = 0x009b4b88
RTTICompleteObjectLocator ER_EmitFromParentAtom                                                                    // [0x10bb98] 0x008a9000 + 0x10bb98 = 0x009b4b98
.long 0x00000000                                                                                                   // [0x10bbac] 0x008a9000 + 0x10bbac = 0x009b4bac
RTTIBaseClassDescriptor UR_KPMoveAtoms 3                                                                           // [0x10bbb0] 0x008a9000 + 0x10bbb0 = 0x009b4bb0
RTTIBaseClassArray UR_KPMoveAtoms                                                                                  // [0x10bbc8] 0x008a9000 + 0x10bbc8 = 0x009b4bc8
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10bbdc] 0x008a9000 + 0x10bbdc = 0x009b4bdc
RTTIClassHierarchyDescriptor UR_KPMoveAtoms 4                                                                      // [0x10bbe0] 0x008a9000 + 0x10bbe0 = 0x009b4be0
RTTICompleteObjectLocator UR_KPMoveAtoms                                                                           // [0x10bbf0] 0x008a9000 + 0x10bbf0 = 0x009b4bf0
.long 0x00000000                                                                                                   // [0x10bc04] 0x008a9000 + 0x10bc04 = 0x009b4c04
RTTIBaseClassDescriptor UR_WillowWisp 3                                                                            // [0x10bc08] 0x008a9000 + 0x10bc08 = 0x009b4c08
RTTIBaseClassArray UR_WillowWisp                                                                                   // [0x10bc20] 0x008a9000 + 0x10bc20 = 0x009b4c20
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10bc34] 0x008a9000 + 0x10bc34 = 0x009b4c34
RTTIClassHierarchyDescriptor UR_WillowWisp 4                                                                       // [0x10bc38] 0x008a9000 + 0x10bc38 = 0x009b4c38
RTTICompleteObjectLocator UR_WillowWisp                                                                            // [0x10bc48] 0x008a9000 + 0x10bc48 = 0x009b4c48
.long 0x00000000                                                                                                   // [0x10bc5c] 0x008a9000 + 0x10bc5c = 0x009b4c5c
RTTIBaseClassDescriptor ER_MultiPickup 3                                                                           // [0x10bc60] 0x008a9000 + 0x10bc60 = 0x009b4c60
RTTIBaseClassArray ER_MultiPickup                                                                                  // [0x10bc78] 0x008a9000 + 0x10bc78 = 0x009b4c78
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10bc8c] 0x008a9000 + 0x10bc8c = 0x009b4c8c
RTTIClassHierarchyDescriptor ER_MultiPickup 4                                                                      // [0x10bc90] 0x008a9000 + 0x10bc90 = 0x009b4c90
RTTICompleteObjectLocator ER_MultiPickup                                                                           // [0x10bca0] 0x008a9000 + 0x10bca0 = 0x009b4ca0
.long 0x00000000                                                                                                   // [0x10bcb4] 0x008a9000 + 0x10bcb4 = 0x009b4cb4
RTTIBaseClassDescriptor CollectionData@ER_MultiPickup 4                                                            // [0x10bcb8] 0x008a9000 + 0x10bcb8 = 0x009b4cb8
RTTIBaseClassArray CollectionData@ER_MultiPickup                                                                   // [0x10bcd0] 0x008a9000 + 0x10bcd0 = 0x009b4cd0
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@ER_MultiPickup 5                                                       // [0x10bce8] 0x008a9000 + 0x10bce8 = 0x009b4ce8
RTTICompleteObjectLocator CollectionData@ER_MultiPickup                                                            // [0x10bcf8] 0x008a9000 + 0x10bcf8 = 0x009b4cf8
.long 0x00000000                                                                                                   // [0x10bd0c] 0x008a9000 + 0x10bd0c = 0x009b4d0c
RTTIBaseClassDescriptor AtomData@ER_MultiPickup 4                                                                  // [0x10bd10] 0x008a9000 + 0x10bd10 = 0x009b4d10
RTTIBaseClassArray AtomData@ER_MultiPickup                                                                         // [0x10bd28] 0x008a9000 + 0x10bd28 = 0x009b4d28
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@ER_MultiPickup 5                                                             // [0x10bd40] 0x008a9000 + 0x10bd40 = 0x009b4d40
RTTICompleteObjectLocator AtomData@ER_MultiPickup                                                                  // [0x10bd50] 0x008a9000 + 0x10bd50 = 0x009b4d50
.long 0x00000000                                                                                                   // [0x10bd64] 0x008a9000 + 0x10bd64 = 0x009b4d64
RTTIBaseClassDescriptor ParticleCreator 1                                                                          // [0x10bd68] 0x008a9000 + 0x10bd68 = 0x009b4d68
RTTIBaseClassDescriptor ParticleBaseMeshCreator 2                                                                  // [0x10bd80] 0x008a9000 + 0x10bd80 = 0x009b4d80
RTTIBaseClassArray ParticleBaseMeshCreator                                                                         // [0x10bd98] 0x008a9000 + 0x10bd98 = 0x009b4d98
.long ??_R1A@?0A@A@ParticleCreator@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ParticleBaseMeshCreator 3                                                             // [0x10bda8] 0x008a9000 + 0x10bda8 = 0x009b4da8
RTTICompleteObjectLocator ParticleBaseMeshCreator                                                                  // [0x10bdb8] 0x008a9000 + 0x10bdb8 = 0x009b4db8
.long 0x00000000                                                                                                   // [0x10bdcc] 0x008a9000 + 0x10bdcc = 0x009b4dcc
RTTIBaseClassDescriptor ParticleMeshCreator 3                                                                      // [0x10bdd0] 0x008a9000 + 0x10bdd0 = 0x009b4dd0
RTTIBaseClassArray ParticleMeshCreator                                                                             // [0x10bde8] 0x008a9000 + 0x10bde8 = 0x009b4de8
.long ??_R1A@?0A@A@ParticleBaseMeshCreator@@8
.long ??_R1A@?0A@A@ParticleCreator@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10bdfc] 0x008a9000 + 0x10bdfc = 0x009b4dfc
RTTIClassHierarchyDescriptor ParticleMeshCreator 4                                                                 // [0x10be00] 0x008a9000 + 0x10be00 = 0x009b4e00
RTTICompleteObjectLocator ParticleMeshCreator                                                                      // [0x10be10] 0x008a9000 + 0x10be10 = 0x009b4e10
.long 0x00000000                                                                                                   // [0x10be24] 0x008a9000 + 0x10be24 = 0x009b4e24
RTTIBaseClassDescriptor ParticleMeshCreatorAnimTextured 3                                                          // [0x10be28] 0x008a9000 + 0x10be28 = 0x009b4e28
RTTIBaseClassArray ParticleMeshCreatorAnimTextured                                                                 // [0x10be40] 0x008a9000 + 0x10be40 = 0x009b4e40
.long ??_R1A@?0A@A@ParticleBaseMeshCreator@@8
.long ??_R1A@?0A@A@ParticleCreator@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10be54] 0x008a9000 + 0x10be54 = 0x009b4e54
RTTIClassHierarchyDescriptor ParticleMeshCreatorAnimTextured 4                                                     // [0x10be58] 0x008a9000 + 0x10be58 = 0x009b4e58
RTTICompleteObjectLocator ParticleMeshCreatorAnimTextured                                                          // [0x10be68] 0x008a9000 + 0x10be68 = 0x009b4e68
.long 0x00000000                                                                                                   // [0x10be7c] 0x008a9000 + 0x10be7c = 0x009b4e7c
RTTIBaseClassDescriptor ParticleGJMeshCreator 2                                                                    // [0x10be80] 0x008a9000 + 0x10be80 = 0x009b4e80
RTTIBaseClassArray ParticleGJMeshCreator                                                                           // [0x10be98] 0x008a9000 + 0x10be98 = 0x009b4e98
.long ??_R1A@?0A@A@ParticleCreator@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ParticleGJMeshCreator 3                                                               // [0x10bea8] 0x008a9000 + 0x10bea8 = 0x009b4ea8
RTTICompleteObjectLocator ParticleGJMeshCreator                                                                    // [0x10beb8] 0x008a9000 + 0x10beb8 = 0x009b4eb8
.long 0x00000000                                                                                                   // [0x10becc] 0x008a9000 + 0x10becc = 0x009b4ecc
RTTIBaseClassArray ParticleCreator                                                                                 // [0x10bed0] 0x008a9000 + 0x10bed0 = 0x009b4ed0
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10bedc] 0x008a9000 + 0x10bedc = 0x009b4edc
RTTIClassHierarchyDescriptor ParticleCreator 2                                                                     // [0x10bee0] 0x008a9000 + 0x10bee0 = 0x009b4ee0
RTTICompleteObjectLocator ParticleCreator                                                                          // [0x10bef0] 0x008a9000 + 0x10bef0 = 0x009b4ef0
.long 0x00000000                                                                                                   // [0x10bf04] 0x008a9000 + 0x10bf04 = 0x009b4f04
RTTIBaseClassDescriptor ParticleAnimCreator 2                                                                      // [0x10bf08] 0x008a9000 + 0x10bf08 = 0x009b4f08
RTTIBaseClassArray ParticleAnimCreator                                                                             // [0x10bf20] 0x008a9000 + 0x10bf20 = 0x009b4f20
.long ??_R1A@?0A@A@ParticleCreator@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ParticleAnimCreator 3                                                                 // [0x10bf30] 0x008a9000 + 0x10bf30 = 0x009b4f30
RTTICompleteObjectLocator ParticleAnimCreator                                                                      // [0x10bf40] 0x008a9000 + 0x10bf40 = 0x009b4f40
.long 0x00000000                                                                                                   // [0x10bf54] 0x008a9000 + 0x10bf54 = 0x009b4f54
RTTIBaseClassDescriptor ParticleAnimWithCameraCreator 3                                                            // [0x10bf58] 0x008a9000 + 0x10bf58 = 0x009b4f58
RTTIBaseClassArray ParticleAnimWithCameraCreator                                                                   // [0x10bf70] 0x008a9000 + 0x10bf70 = 0x009b4f70
.long ??_R1A@?0A@A@ParticleAnimCreator@@8
.long ??_R1A@?0A@A@ParticleCreator@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10bf84] 0x008a9000 + 0x10bf84 = 0x009b4f84
RTTIClassHierarchyDescriptor ParticleAnimWithCameraCreator 4                                                       // [0x10bf88] 0x008a9000 + 0x10bf88 = 0x009b4f88
RTTICompleteObjectLocator ParticleAnimWithCameraCreator                                                            // [0x10bf98] 0x008a9000 + 0x10bf98 = 0x009b4f98
.long 0x00000000                                                                                                   // [0x10bfac] 0x008a9000 + 0x10bfac = 0x009b4fac
RTTIBaseClassDescriptor ParticleLightMapCreator 2                                                                  // [0x10bfb0] 0x008a9000 + 0x10bfb0 = 0x009b4fb0
RTTIBaseClassArray ParticleLightMapCreator                                                                         // [0x10bfc8] 0x008a9000 + 0x10bfc8 = 0x009b4fc8
.long ??_R1A@?0A@A@ParticleCreator@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ParticleLightMapCreator 3                                                             // [0x10bfd8] 0x008a9000 + 0x10bfd8 = 0x009b4fd8
RTTICompleteObjectLocator ParticleLightMapCreator                                                                  // [0x10bfe8] 0x008a9000 + 0x10bfe8 = 0x009b4fe8
.long 0x00000000                                                                                                   // [0x10bffc] 0x008a9000 + 0x10bffc = 0x009b4ffc
RTTIBaseClassDescriptor ParticleSpriteCreator 2                                                                    // [0x10c000] 0x008a9000 + 0x10c000 = 0x009b5000
RTTIBaseClassArray ParticleSpriteCreator                                                                           // [0x10c018] 0x008a9000 + 0x10c018 = 0x009b5018
.long ??_R1A@?0A@A@ParticleCreator@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ParticleSpriteCreator 3                                                               // [0x10c028] 0x008a9000 + 0x10c028 = 0x009b5028
RTTICompleteObjectLocator ParticleSpriteCreator                                                                    // [0x10c038] 0x008a9000 + 0x10c038 = 0x009b5038
.long 0x00000000                                                                                                   // [0x10c04c] 0x008a9000 + 0x10c04c = 0x009b504c
RTTIBaseClassDescriptor ParticleSymbolSpriteCreator 2                                                              // [0x10c050] 0x008a9000 + 0x10c050 = 0x009b5050
RTTIBaseClassArray ParticleSymbolSpriteCreator                                                                     // [0x10c068] 0x008a9000 + 0x10c068 = 0x009b5068
.long ??_R1A@?0A@A@ParticleCreator@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ParticleSymbolSpriteCreator 3                                                         // [0x10c078] 0x008a9000 + 0x10c078 = 0x009b5078
RTTICompleteObjectLocator ParticleSymbolSpriteCreator                                                              // [0x10c088] 0x008a9000 + 0x10c088 = 0x009b5088
.long 0x00000000                                                                                                   // [0x10c09c] 0x008a9000 + 0x10c09c = 0x009b509c
RTTIBaseClassDescriptor ParticleMistCreator 2                                                                      // [0x10c0a0] 0x008a9000 + 0x10c0a0 = 0x009b50a0
RTTIBaseClassArray ParticleMistCreator                                                                             // [0x10c0b8] 0x008a9000 + 0x10c0b8 = 0x009b50b8
.long ??_R1A@?0A@A@ParticleCreator@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ParticleMistCreator 3                                                                 // [0x10c0c8] 0x008a9000 + 0x10c0c8 = 0x009b50c8
RTTICompleteObjectLocator ParticleMistCreator                                                                      // [0x10c0d8] 0x008a9000 + 0x10c0d8 = 0x009b50d8
.long 0x00000000                                                                                                   // [0x10c0ec] 0x008a9000 + 0x10c0ec = 0x009b50ec
RTTIBaseClassDescriptor ParticleBaseChainCreator 2                                                                 // [0x10c0f0] 0x008a9000 + 0x10c0f0 = 0x009b50f0
RTTIBaseClassDescriptor ParticleChainCreator 3                                                                     // [0x10c108] 0x008a9000 + 0x10c108 = 0x009b5108
RTTIBaseClassArray ParticleChainCreator                                                                            // [0x10c120] 0x008a9000 + 0x10c120 = 0x009b5120
.long ??_R1A@?0A@A@ParticleBaseChainCreator@@8
.long ??_R1A@?0A@A@ParticleCreator@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10c134] 0x008a9000 + 0x10c134 = 0x009b5134
RTTIClassHierarchyDescriptor ParticleChainCreator 4                                                                // [0x10c138] 0x008a9000 + 0x10c138 = 0x009b5138
RTTICompleteObjectLocator ParticleChainCreator                                                                     // [0x10c148] 0x008a9000 + 0x10c148 = 0x009b5148
.long 0x00000000                                                                                                   // [0x10c15c] 0x008a9000 + 0x10c15c = 0x009b515c
RTTIBaseClassDescriptor ParticleGoodEvilCreator 2                                                                  // [0x10c160] 0x008a9000 + 0x10c160 = 0x009b5160
RTTIBaseClassArray ParticleGoodEvilCreator                                                                         // [0x10c178] 0x008a9000 + 0x10c178 = 0x009b5178
.long ??_R1A@?0A@A@ParticleCreator@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ParticleGoodEvilCreator 3                                                             // [0x10c188] 0x008a9000 + 0x10c188 = 0x009b5188
RTTICompleteObjectLocator ParticleGoodEvilCreator                                                                  // [0x10c198] 0x008a9000 + 0x10c198 = 0x009b5198
.long 0x00000000                                                                                                   // [0x10c1ac] 0x008a9000 + 0x10c1ac = 0x009b51ac
RTTIBaseClassDescriptor ParticleVolBlendMeshCreator 2                                                              // [0x10c1b0] 0x008a9000 + 0x10c1b0 = 0x009b51b0
RTTIBaseClassArray ParticleVolBlendMeshCreator                                                                     // [0x10c1c8] 0x008a9000 + 0x10c1c8 = 0x009b51c8
.long ??_R1A@?0A@A@ParticleCreator@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ParticleVolBlendMeshCreator 3                                                         // [0x10c1d8] 0x008a9000 + 0x10c1d8 = 0x009b51d8
RTTICompleteObjectLocator ParticleVolBlendMeshCreator                                                              // [0x10c1e8] 0x008a9000 + 0x10c1e8 = 0x009b51e8
.long 0x00000000                                                                                                   // [0x10c1fc] 0x008a9000 + 0x10c1fc = 0x009b51fc
RTTIBaseClassDescriptor BoolArrayProperty 1                                                                        // [0x10c200] 0x008a9000 + 0x10c200 = 0x009b5200
RTTIBaseClassDescriptor ?$TemplateBoolArrayProperty@VPSysFileData@@ 2                                              // [0x10c218] 0x008a9000 + 0x10c218 = 0x009b5218
RTTIBaseClassArray ?$TemplateBoolArrayProperty@VPSysFileData@@                                                     // [0x10c230] 0x008a9000 + 0x10c230 = 0x009b5230
.long ??_R1A@?0A@A@BoolArrayProperty@@8
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$TemplateBoolArrayProperty@VPSysFileData@@ 3                                         // [0x10c240] 0x008a9000 + 0x10c240 = 0x009b5240
RTTICompleteObjectLocator ?$TemplateBoolArrayProperty@VPSysFileData@@                                              // [0x10c250] 0x008a9000 + 0x10c250 = 0x009b5250
.long 0x00000000                                                                                                   // [0x10c264] 0x008a9000 + 0x10c264 = 0x009b5264
RTTIBaseClassDescriptor TPointerProperty 1                                                                         // [0x10c268] 0x008a9000 + 0x10c268 = 0x009b5268
RTTIBaseClassDescriptor ?$PointerProperty@VTEventCondition@@ 2                                                     // [0x10c280] 0x008a9000 + 0x10c280 = 0x009b5280
RTTIBaseClassArray ?$PointerProperty@VTEventCondition@@                                                            // [0x10c298] 0x008a9000 + 0x10c298 = 0x009b5298
.long ??_R1A@?0A@A@TPointerProperty@@8
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$PointerProperty@VTEventCondition@@ 3                                                // [0x10c2a8] 0x008a9000 + 0x10c2a8 = 0x009b52a8
RTTICompleteObjectLocator ?$PointerProperty@VTEventCondition@@                                                     // [0x10c2b8] 0x008a9000 + 0x10c2b8 = 0x009b52b8
.long 0x00000000                                                                                                   // [0x10c2cc] 0x008a9000 + 0x10c2cc = 0x009b52cc
RTTIBaseClassDescriptor ?$GetSetIntegerProperty@VUR_Flocking@@ 2                                                   // [0x10c2d0] 0x008a9000 + 0x10c2d0 = 0x009b52d0
RTTIBaseClassArray ?$GetSetIntegerProperty@VUR_Flocking@@                                                          // [0x10c2e8] 0x008a9000 + 0x10c2e8 = 0x009b52e8
.long ??_R1A@?0A@A@IntegerProperty@@8
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$GetSetIntegerProperty@VUR_Flocking@@ 3                                              // [0x10c2f8] 0x008a9000 + 0x10c2f8 = 0x009b52f8
RTTICompleteObjectLocator ?$GetSetIntegerProperty@VUR_Flocking@@                                                   // [0x10c308] 0x008a9000 + 0x10c308 = 0x009b5308
.long 0x00000000                                                                                                   // [0x10c31c] 0x008a9000 + 0x10c31c = 0x009b531c
RTTIBaseClassArray IntegerProperty                                                                                 // [0x10c320] 0x008a9000 + 0x10c320 = 0x009b5320
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10c32c] 0x008a9000 + 0x10c32c = 0x009b532c
RTTIClassHierarchyDescriptor IntegerProperty 2                                                                     // [0x10c330] 0x008a9000 + 0x10c330 = 0x009b5330
RTTICompleteObjectLocator IntegerProperty                                                                          // [0x10c340] 0x008a9000 + 0x10c340 = 0x009b5340
.long 0x00000000                                                                                                   // [0x10c354] 0x008a9000 + 0x10c354 = 0x009b5354
RTTIBaseClassDescriptor ?$GetSetFloatProperty@VUpdateRuleGravity@@ 2                                               // [0x10c358] 0x008a9000 + 0x10c358 = 0x009b5358
RTTIBaseClassArray ?$GetSetFloatProperty@VUpdateRuleGravity@@                                                      // [0x10c370] 0x008a9000 + 0x10c370 = 0x009b5370
.long ??_R1A@?0A@A@FloatProperty@@8
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$GetSetFloatProperty@VUpdateRuleGravity@@ 3                                          // [0x10c380] 0x008a9000 + 0x10c380 = 0x009b5380
RTTICompleteObjectLocator ?$GetSetFloatProperty@VUpdateRuleGravity@@                                               // [0x10c390] 0x008a9000 + 0x10c390 = 0x009b5390
.long 0x00000000                                                                                                   // [0x10c3a4] 0x008a9000 + 0x10c3a4 = 0x009b53a4
RTTIBaseClassDescriptor ?$GetSetIntegerProperty@VUpdateRuleRotatePrincipalAxis@@ 2                                 // [0x10c3a8] 0x008a9000 + 0x10c3a8 = 0x009b53a8
RTTIBaseClassArray ?$GetSetIntegerProperty@VUpdateRuleRotatePrincipalAxis@@                                        // [0x10c3c0] 0x008a9000 + 0x10c3c0 = 0x009b53c0
.long ??_R1A@?0A@A@IntegerProperty@@8
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$GetSetIntegerProperty@VUpdateRuleRotatePrincipalAxis@@ 3                            // [0x10c3d0] 0x008a9000 + 0x10c3d0 = 0x009b53d0
RTTICompleteObjectLocator ?$GetSetIntegerProperty@VUpdateRuleRotatePrincipalAxis@@                                 // [0x10c3e0] 0x008a9000 + 0x10c3e0 = 0x009b53e0
.long 0x00000000                                                                                                   // [0x10c3f4] 0x008a9000 + 0x10c3f4 = 0x009b53f4
RTTIBaseClassDescriptor ?$PointerProperty@VFloatProvider@@ 2                                                       // [0x10c3f8] 0x008a9000 + 0x10c3f8 = 0x009b53f8
RTTIBaseClassArray ?$PointerProperty@VFloatProvider@@                                                              // [0x10c410] 0x008a9000 + 0x10c410 = 0x009b5410
.long ??_R1A@?0A@A@TPointerProperty@@8
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$PointerProperty@VFloatProvider@@ 3                                                  // [0x10c420] 0x008a9000 + 0x10c420 = 0x009b5420
RTTICompleteObjectLocator ?$PointerProperty@VFloatProvider@@                                                       // [0x10c430] 0x008a9000 + 0x10c430 = 0x009b5430
.long 0x00000000                                                                                                   // [0x10c444] 0x008a9000 + 0x10c444 = 0x009b5444
RTTIBaseClassDescriptor ?$PointerProperty@VParticleCreator@@ 2                                                     // [0x10c448] 0x008a9000 + 0x10c448 = 0x009b5448
RTTIBaseClassArray ?$PointerProperty@VParticleCreator@@                                                            // [0x10c460] 0x008a9000 + 0x10c460 = 0x009b5460
.long ??_R1A@?0A@A@TPointerProperty@@8
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$PointerProperty@VParticleCreator@@ 3                                                // [0x10c470] 0x008a9000 + 0x10c470 = 0x009b5470
RTTICompleteObjectLocator ?$PointerProperty@VParticleCreator@@                                                     // [0x10c480] 0x008a9000 + 0x10c480 = 0x009b5480
.long 0x00000000                                                                                                   // [0x10c494] 0x008a9000 + 0x10c494 = 0x009b5494
RTTIBaseClassDescriptor FloatArrayProperty 1                                                                       // [0x10c498] 0x008a9000 + 0x10c498 = 0x009b5498
RTTIBaseClassDescriptor ?$TemplateFloatArrayProperty@VUR_KPStretchHeight@@ 2                                       // [0x10c4b0] 0x008a9000 + 0x10c4b0 = 0x009b54b0
RTTIBaseClassArray ?$TemplateFloatArrayProperty@VUR_KPStretchHeight@@                                              // [0x10c4c8] 0x008a9000 + 0x10c4c8 = 0x009b54c8
.long ??_R1A@?0A@A@FloatArrayProperty@@8
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$TemplateFloatArrayProperty@VUR_KPStretchHeight@@ 3                                  // [0x10c4d8] 0x008a9000 + 0x10c4d8 = 0x009b54d8
RTTICompleteObjectLocator ?$TemplateFloatArrayProperty@VUR_KPStretchHeight@@                                       // [0x10c4e8] 0x008a9000 + 0x10c4e8 = 0x009b54e8
.long 0x00000000                                                                                                   // [0x10c4fc] 0x008a9000 + 0x10c4fc = 0x009b54fc
RTTIBaseClassDescriptor ?$GetSetFloatProperty@VUR_MoveAtom@@ 2                                                     // [0x10c500] 0x008a9000 + 0x10c500 = 0x009b5500
RTTIBaseClassArray ?$GetSetFloatProperty@VUR_MoveAtom@@                                                            // [0x10c518] 0x008a9000 + 0x10c518 = 0x009b5518
.long ??_R1A@?0A@A@FloatProperty@@8
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$GetSetFloatProperty@VUR_MoveAtom@@ 3                                                // [0x10c528] 0x008a9000 + 0x10c528 = 0x009b5528
RTTICompleteObjectLocator ?$GetSetFloatProperty@VUR_MoveAtom@@                                                     // [0x10c538] 0x008a9000 + 0x10c538 = 0x009b5538
.long 0x00000000                                                                                                   // [0x10c54c] 0x008a9000 + 0x10c54c = 0x009b554c
RTTIBaseClassArray FloatProperty                                                                                   // [0x10c550] 0x008a9000 + 0x10c550 = 0x009b5550
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10c55c] 0x008a9000 + 0x10c55c = 0x009b555c
RTTIClassHierarchyDescriptor FloatProperty 2                                                                       // [0x10c560] 0x008a9000 + 0x10c560 = 0x009b5560
RTTICompleteObjectLocator FloatProperty                                                                            // [0x10c570] 0x008a9000 + 0x10c570 = 0x009b5570
.long 0x00000000                                                                                                   // [0x10c584] 0x008a9000 + 0x10c584 = 0x009b5584
RTTIBaseClassDescriptor ?$TemplateFloatArrayProperty@VUR_KPMoveAtoms@@ 2                                           // [0x10c588] 0x008a9000 + 0x10c588 = 0x009b5588
RTTIBaseClassArray ?$TemplateFloatArrayProperty@VUR_KPMoveAtoms@@                                                  // [0x10c5a0] 0x008a9000 + 0x10c5a0 = 0x009b55a0
.long ??_R1A@?0A@A@FloatArrayProperty@@8
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$TemplateFloatArrayProperty@VUR_KPMoveAtoms@@ 3                                      // [0x10c5b0] 0x008a9000 + 0x10c5b0 = 0x009b55b0
RTTICompleteObjectLocator ?$TemplateFloatArrayProperty@VUR_KPMoveAtoms@@                                           // [0x10c5c0] 0x008a9000 + 0x10c5c0 = 0x009b55c0
.long 0x00000000                                                                                                   // [0x10c5d4] 0x008a9000 + 0x10c5d4 = 0x009b55d4
RTTIBaseClassDescriptor ?$TemplateFloatArrayProperty@VUR_ForestPath@@ 2                                            // [0x10c5d8] 0x008a9000 + 0x10c5d8 = 0x009b55d8
RTTIBaseClassArray ?$TemplateFloatArrayProperty@VUR_ForestPath@@                                                   // [0x10c5f0] 0x008a9000 + 0x10c5f0 = 0x009b55f0
.long ??_R1A@?0A@A@FloatArrayProperty@@8
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$TemplateFloatArrayProperty@VUR_ForestPath@@ 3                                       // [0x10c600] 0x008a9000 + 0x10c600 = 0x009b5600
RTTICompleteObjectLocator ?$TemplateFloatArrayProperty@VUR_ForestPath@@                                            // [0x10c610] 0x008a9000 + 0x10c610 = 0x009b5610
.long 0x00000000                                                                                                   // [0x10c624] 0x008a9000 + 0x10c624 = 0x009b5624
RTTIBaseClassDescriptor IntegerArrayProperty 1                                                                     // [0x10c628] 0x008a9000 + 0x10c628 = 0x009b5628
RTTIBaseClassDescriptor ?$TemplateIntegerArrayProperty@VAddSubCollectionsToAtom@@ 2                                // [0x10c640] 0x008a9000 + 0x10c640 = 0x009b5640
RTTIBaseClassArray ?$TemplateIntegerArrayProperty@VAddSubCollectionsToAtom@@                                       // [0x10c658] 0x008a9000 + 0x10c658 = 0x009b5658
.long ??_R1A@?0A@A@IntegerArrayProperty@@8
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$TemplateIntegerArrayProperty@VAddSubCollectionsToAtom@@ 3                           // [0x10c668] 0x008a9000 + 0x10c668 = 0x009b5668
RTTICompleteObjectLocator ?$TemplateIntegerArrayProperty@VAddSubCollectionsToAtom@@                                // [0x10c678] 0x008a9000 + 0x10c678 = 0x009b5678
.long 0x00000000                                                                                                   // [0x10c68c] 0x008a9000 + 0x10c68c = 0x009b568c
RTTIBaseClassDescriptor ?$TemplateIntegerArrayProperty@VAtomCreateRule@@ 2                                         // [0x10c690] 0x008a9000 + 0x10c690 = 0x009b5690
RTTIBaseClassArray ?$TemplateIntegerArrayProperty@VAtomCreateRule@@                                                // [0x10c6a8] 0x008a9000 + 0x10c6a8 = 0x009b56a8
.long ??_R1A@?0A@A@IntegerArrayProperty@@8
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$TemplateIntegerArrayProperty@VAtomCreateRule@@ 3                                    // [0x10c6b8] 0x008a9000 + 0x10c6b8 = 0x009b56b8
RTTICompleteObjectLocator ?$TemplateIntegerArrayProperty@VAtomCreateRule@@                                         // [0x10c6c8] 0x008a9000 + 0x10c6c8 = 0x009b56c8
.long 0x00000000                                                                                                   // [0x10c6dc] 0x008a9000 + 0x10c6dc = 0x009b56dc
RTTIBaseClassArray TPointerProperty                                                                                // [0x10c6e0] 0x008a9000 + 0x10c6e0 = 0x009b56e0
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10c6ec] 0x008a9000 + 0x10c6ec = 0x009b56ec
RTTIClassHierarchyDescriptor TPointerProperty 2                                                                    // [0x10c6f0] 0x008a9000 + 0x10c6f0 = 0x009b56f0
RTTICompleteObjectLocator TPointerProperty                                                                         // [0x10c700] 0x008a9000 + 0x10c700 = 0x009b5700
.long 0x00000000                                                                                                   // [0x10c714] 0x008a9000 + 0x10c714 = 0x009b5714
RTTIBaseClassDescriptor ?$TemplateFloatArrayProperty@VUR_HandSprinkle@@ 2                                          // [0x10c718] 0x008a9000 + 0x10c718 = 0x009b5718
RTTIBaseClassArray ?$TemplateFloatArrayProperty@VUR_HandSprinkle@@                                                 // [0x10c730] 0x008a9000 + 0x10c730 = 0x009b5730
.long ??_R1A@?0A@A@FloatArrayProperty@@8
.long ??_R1A@?0A@A@Property@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$TemplateFloatArrayProperty@VUR_HandSprinkle@@ 3                                     // [0x10c740] 0x008a9000 + 0x10c740 = 0x009b5740
RTTICompleteObjectLocator ?$TemplateFloatArrayProperty@VUR_HandSprinkle@@                                          // [0x10c750] 0x008a9000 + 0x10c750 = 0x009b5750
.long 0x00000000                                                                                                   // [0x10c764] 0x008a9000 + 0x10c764 = 0x009b5764
RTTIBaseClassDescriptor ParticlePointCreator 2                                                                     // [0x10c768] 0x008a9000 + 0x10c768 = 0x009b5768
RTTIBaseClassArray ParticlePointCreator                                                                            // [0x10c780] 0x008a9000 + 0x10c780 = 0x009b5780
.long ??_R1A@?0A@A@ParticleCreator@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ParticlePointCreator 3                                                                // [0x10c790] 0x008a9000 + 0x10c790 = 0x009b5790
RTTICompleteObjectLocator ParticlePointCreator                                                                     // [0x10c7a0] 0x008a9000 + 0x10c7a0 = 0x009b57a0
.long 0x00000000                                                                                                   // [0x10c7b4] 0x008a9000 + 0x10c7b4 = 0x009b57b4
RTTIBaseClassDescriptor TEventCondition 1                                                                          // [0x10c7b8] 0x008a9000 + 0x10c7b8 = 0x009b57b8
RTTIBaseClassDescriptor TCollectionEventCondition 2                                                                // [0x10c7d0] 0x008a9000 + 0x10c7d0 = 0x009b57d0
RTTIBaseClassDescriptor EventConditionCollectionDelay 3                                                            // [0x10c7e8] 0x008a9000 + 0x10c7e8 = 0x009b57e8
RTTIBaseClassArray EventConditionCollectionDelay                                                                   // [0x10c800] 0x008a9000 + 0x10c800 = 0x009b5800
.long ??_R1A@?0A@A@TCollectionEventCondition@@8
.long ??_R1A@?0A@A@TEventCondition@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10c814] 0x008a9000 + 0x10c814 = 0x009b5814
RTTIClassHierarchyDescriptor EventConditionCollectionDelay 4                                                       // [0x10c818] 0x008a9000 + 0x10c818 = 0x009b5818
RTTICompleteObjectLocator EventConditionCollectionDelay                                                            // [0x10c828] 0x008a9000 + 0x10c828 = 0x009b5828
.long 0x00000000                                                                                                   // [0x10c83c] 0x008a9000 + 0x10c83c = 0x009b583c
RTTIBaseClassDescriptor EventConditionTrueOnCloseDown 3                                                            // [0x10c840] 0x008a9000 + 0x10c840 = 0x009b5840
RTTIBaseClassArray EventConditionTrueOnCloseDown                                                                   // [0x10c858] 0x008a9000 + 0x10c858 = 0x009b5858
.long ??_R1A@?0A@A@TCollectionEventCondition@@8
.long ??_R1A@?0A@A@TEventCondition@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10c86c] 0x008a9000 + 0x10c86c = 0x009b586c
RTTIClassHierarchyDescriptor EventConditionTrueOnCloseDown 4                                                       // [0x10c870] 0x008a9000 + 0x10c870 = 0x009b5870
RTTICompleteObjectLocator EventConditionTrueOnCloseDown                                                            // [0x10c880] 0x008a9000 + 0x10c880 = 0x009b5880
.long 0x00000000                                                                                                   // [0x10c894] 0x008a9000 + 0x10c894 = 0x009b5894
RTTIBaseClassDescriptor EventConditionTrueWhenEnabled 3                                                            // [0x10c898] 0x008a9000 + 0x10c898 = 0x009b5898
RTTIBaseClassArray EventConditionTrueWhenEnabled                                                                   // [0x10c8b0] 0x008a9000 + 0x10c8b0 = 0x009b58b0
.long ??_R1A@?0A@A@TCollectionEventCondition@@8
.long ??_R1A@?0A@A@TEventCondition@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10c8c4] 0x008a9000 + 0x10c8c4 = 0x009b58c4
RTTIClassHierarchyDescriptor EventConditionTrueWhenEnabled 4                                                       // [0x10c8c8] 0x008a9000 + 0x10c8c8 = 0x009b58c8
RTTICompleteObjectLocator EventConditionTrueWhenEnabled                                                            // [0x10c8d8] 0x008a9000 + 0x10c8d8 = 0x009b58d8
.long 0x00000000                                                                                                   // [0x10c8ec] 0x008a9000 + 0x10c8ec = 0x009b58ec
RTTIBaseClassDescriptor TAtomEventCondition 2                                                                      // [0x10c8f0] 0x008a9000 + 0x10c8f0 = 0x009b58f0
RTTIBaseClassDescriptor EC_DeflectionInAtomsHierarchy 3                                                            // [0x10c908] 0x008a9000 + 0x10c908 = 0x009b5908
RTTIBaseClassArray EC_DeflectionInAtomsHierarchy                                                                   // [0x10c920] 0x008a9000 + 0x10c920 = 0x009b5920
.long ??_R1A@?0A@A@TAtomEventCondition@@8
.long ??_R1A@?0A@A@TEventCondition@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10c934] 0x008a9000 + 0x10c934 = 0x009b5934
RTTIClassHierarchyDescriptor EC_DeflectionInAtomsHierarchy 4                                                       // [0x10c938] 0x008a9000 + 0x10c938 = 0x009b5938
RTTICompleteObjectLocator EC_DeflectionInAtomsHierarchy                                                            // [0x10c948] 0x008a9000 + 0x10c948 = 0x009b5948
.long 0x00000000                                                                                                   // [0x10c95c] 0x008a9000 + 0x10c95c = 0x009b595c
RTTIBaseClassDescriptor EC_CollectionShouldBeEmitting 3                                                            // [0x10c960] 0x008a9000 + 0x10c960 = 0x009b5960
RTTIBaseClassArray EC_CollectionShouldBeEmitting                                                                   // [0x10c978] 0x008a9000 + 0x10c978 = 0x009b5978
.long ??_R1A@?0A@A@TCollectionEventCondition@@8
.long ??_R1A@?0A@A@TEventCondition@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10c98c] 0x008a9000 + 0x10c98c = 0x009b598c
RTTIClassHierarchyDescriptor EC_CollectionShouldBeEmitting 4                                                       // [0x10c990] 0x008a9000 + 0x10c990 = 0x009b5990
RTTICompleteObjectLocator EC_CollectionShouldBeEmitting                                                            // [0x10c9a0] 0x008a9000 + 0x10c9a0 = 0x009b59a0
.long 0x00000000                                                                                                   // [0x10c9b4] 0x008a9000 + 0x10c9b4 = 0x009b59b4
RTTIBaseClassDescriptor EC_DeflectionInCollectionsHierarchy 3                                                      // [0x10c9b8] 0x008a9000 + 0x10c9b8 = 0x009b59b8
RTTIBaseClassArray EC_DeflectionInCollectionsHierarchy                                                             // [0x10c9d0] 0x008a9000 + 0x10c9d0 = 0x009b59d0
.long ??_R1A@?0A@A@TCollectionEventCondition@@8
.long ??_R1A@?0A@A@TEventCondition@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10c9e4] 0x008a9000 + 0x10c9e4 = 0x009b59e4
RTTIClassHierarchyDescriptor EC_DeflectionInCollectionsHierarchy 4                                                 // [0x10c9e8] 0x008a9000 + 0x10c9e8 = 0x009b59e8
RTTICompleteObjectLocator EC_DeflectionInCollectionsHierarchy                                                      // [0x10c9f8] 0x008a9000 + 0x10c9f8 = 0x009b59f8
.long 0x00000000                                                                                                   // [0x10ca0c] 0x008a9000 + 0x10ca0c = 0x009b5a0c
RTTIBaseClassDescriptor EventConditionNever 3                                                                      // [0x10ca10] 0x008a9000 + 0x10ca10 = 0x009b5a10
RTTIBaseClassArray EventConditionNever                                                                             // [0x10ca28] 0x008a9000 + 0x10ca28 = 0x009b5a28
.long ??_R1A@?0A@A@TCollectionEventCondition@@8
.long ??_R1A@?0A@A@TEventCondition@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10ca3c] 0x008a9000 + 0x10ca3c = 0x009b5a3c
RTTIClassHierarchyDescriptor EventConditionNever 4                                                                 // [0x10ca40] 0x008a9000 + 0x10ca40 = 0x009b5a40
RTTICompleteObjectLocator EventConditionNever                                                                      // [0x10ca50] 0x008a9000 + 0x10ca50 = 0x009b5a50
.long 0x00000000                                                                                                   // [0x10ca64] 0x008a9000 + 0x10ca64 = 0x009b5a64
RTTIBaseClassDescriptor EventConditionCollectionLimitedTime 3                                                      // [0x10ca68] 0x008a9000 + 0x10ca68 = 0x009b5a68
RTTIBaseClassArray EventConditionCollectionLimitedTime                                                             // [0x10ca80] 0x008a9000 + 0x10ca80 = 0x009b5a80
.long ??_R1A@?0A@A@TCollectionEventCondition@@8
.long ??_R1A@?0A@A@TEventCondition@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10ca94] 0x008a9000 + 0x10ca94 = 0x009b5a94
RTTIClassHierarchyDescriptor EventConditionCollectionLimitedTime 4                                                 // [0x10ca98] 0x008a9000 + 0x10ca98 = 0x009b5a98
RTTICompleteObjectLocator EventConditionCollectionLimitedTime                                                      // [0x10caa8] 0x008a9000 + 0x10caa8 = 0x009b5aa8
.long 0x00000000                                                                                                   // [0x10cabc] 0x008a9000 + 0x10cabc = 0x009b5abc
RTTIBaseClassDescriptor EventConditionAtomDelay 3                                                                  // [0x10cac0] 0x008a9000 + 0x10cac0 = 0x009b5ac0
RTTIBaseClassArray EventConditionAtomDelay                                                                         // [0x10cad8] 0x008a9000 + 0x10cad8 = 0x009b5ad8
.long ??_R1A@?0A@A@TAtomEventCondition@@8
.long ??_R1A@?0A@A@TEventCondition@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10caec] 0x008a9000 + 0x10caec = 0x009b5aec
RTTIClassHierarchyDescriptor EventConditionAtomDelay 4                                                             // [0x10caf0] 0x008a9000 + 0x10caf0 = 0x009b5af0
RTTICompleteObjectLocator EventConditionAtomDelay                                                                  // [0x10cb00] 0x008a9000 + 0x10cb00 = 0x009b5b00
.long 0x00000000                                                                                                   // [0x10cb14] 0x008a9000 + 0x10cb14 = 0x009b5b14
RTTIBaseClassDescriptor EventConditionAtomNearVillagers 3                                                          // [0x10cb18] 0x008a9000 + 0x10cb18 = 0x009b5b18
RTTIBaseClassArray EventConditionAtomNearVillagers                                                                 // [0x10cb30] 0x008a9000 + 0x10cb30 = 0x009b5b30
.long ??_R1A@?0A@A@TAtomEventCondition@@8
.long ??_R1A@?0A@A@TEventCondition@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10cb44] 0x008a9000 + 0x10cb44 = 0x009b5b44
RTTIClassHierarchyDescriptor EventConditionAtomNearVillagers 4                                                     // [0x10cb48] 0x008a9000 + 0x10cb48 = 0x009b5b48
RTTICompleteObjectLocator EventConditionAtomNearVillagers                                                          // [0x10cb58] 0x008a9000 + 0x10cb58 = 0x009b5b58
.long 0x00000000                                                                                                   // [0x10cb6c] 0x008a9000 + 0x10cb6c = 0x009b5b6c
RTTIBaseClassDescriptor EventConditionAtomLimitedTime 3                                                            // [0x10cb70] 0x008a9000 + 0x10cb70 = 0x009b5b70
RTTIBaseClassArray EventConditionAtomLimitedTime                                                                   // [0x10cb88] 0x008a9000 + 0x10cb88 = 0x009b5b88
.long ??_R1A@?0A@A@TAtomEventCondition@@8
.long ??_R1A@?0A@A@TEventCondition@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10cb9c] 0x008a9000 + 0x10cb9c = 0x009b5b9c
RTTIClassHierarchyDescriptor EventConditionAtomLimitedTime 4                                                       // [0x10cba0] 0x008a9000 + 0x10cba0 = 0x009b5ba0
RTTICompleteObjectLocator EventConditionAtomLimitedTime                                                            // [0x10cbb0] 0x008a9000 + 0x10cbb0 = 0x009b5bb0
.long 0x00000000                                                                                                   // [0x10cbc4] 0x008a9000 + 0x10cbc4 = 0x009b5bc4
RTTIBaseClassDescriptor EventConditionRandom 3                                                                     // [0x10cbc8] 0x008a9000 + 0x10cbc8 = 0x009b5bc8
RTTIBaseClassArray EventConditionRandom                                                                            // [0x10cbe0] 0x008a9000 + 0x10cbe0 = 0x009b5be0
.long ??_R1A@?0A@A@TCollectionEventCondition@@8
.long ??_R1A@?0A@A@TEventCondition@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10cbf4] 0x008a9000 + 0x10cbf4 = 0x009b5bf4
RTTIClassHierarchyDescriptor EventConditionRandom 4                                                                // [0x10cbf8] 0x008a9000 + 0x10cbf8 = 0x009b5bf8
RTTICompleteObjectLocator EventConditionRandom                                                                     // [0x10cc08] 0x008a9000 + 0x10cc08 = 0x009b5c08
.long 0x00000000                                                                                                   // [0x10cc1c] 0x008a9000 + 0x10cc1c = 0x009b5c1c
RTTIBaseClassDescriptor EventConditionParentFrameTime 3                                                            // [0x10cc20] 0x008a9000 + 0x10cc20 = 0x009b5c20
RTTIBaseClassArray EventConditionParentFrameTime                                                                   // [0x10cc38] 0x008a9000 + 0x10cc38 = 0x009b5c38
.long ??_R1A@?0A@A@TCollectionEventCondition@@8
.long ??_R1A@?0A@A@TEventCondition@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10cc4c] 0x008a9000 + 0x10cc4c = 0x009b5c4c
RTTIClassHierarchyDescriptor EventConditionParentFrameTime 4                                                       // [0x10cc50] 0x008a9000 + 0x10cc50 = 0x009b5c50
RTTICompleteObjectLocator EventConditionParentFrameTime                                                            // [0x10cc60] 0x008a9000 + 0x10cc60 = 0x009b5c60
.long 0x00000000                                                                                                   // [0x10cc74] 0x008a9000 + 0x10cc74 = 0x009b5c74
RTTIBaseClassDescriptor EventConditionFrameTime 3                                                                  // [0x10cc78] 0x008a9000 + 0x10cc78 = 0x009b5c78
RTTIBaseClassArray EventConditionFrameTime                                                                         // [0x10cc90] 0x008a9000 + 0x10cc90 = 0x009b5c90
.long ??_R1A@?0A@A@TAtomEventCondition@@8
.long ??_R1A@?0A@A@TEventCondition@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10cca4] 0x008a9000 + 0x10cca4 = 0x009b5ca4
RTTIClassHierarchyDescriptor EventConditionFrameTime 4                                                             // [0x10cca8] 0x008a9000 + 0x10cca8 = 0x009b5ca8
RTTICompleteObjectLocator EventConditionFrameTime                                                                  // [0x10ccb8] 0x008a9000 + 0x10ccb8 = 0x009b5cb8
.long 0x00000000                                                                                                   // [0x10cccc] 0x008a9000 + 0x10cccc = 0x009b5ccc
RTTIBaseClassDescriptor EventConditionAtomBelowHeight 3                                                            // [0x10ccd0] 0x008a9000 + 0x10ccd0 = 0x009b5cd0
RTTIBaseClassArray EventConditionAtomBelowHeight                                                                   // [0x10cce8] 0x008a9000 + 0x10cce8 = 0x009b5ce8
.long ??_R1A@?0A@A@TAtomEventCondition@@8
.long ??_R1A@?0A@A@TEventCondition@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10ccfc] 0x008a9000 + 0x10ccfc = 0x009b5cfc
RTTIClassHierarchyDescriptor EventConditionAtomBelowHeight 4                                                       // [0x10cd00] 0x008a9000 + 0x10cd00 = 0x009b5d00
RTTICompleteObjectLocator EventConditionAtomBelowHeight                                                            // [0x10cd10] 0x008a9000 + 0x10cd10 = 0x009b5d10
.long 0x00000000                                                                                                   // [0x10cd24] 0x008a9000 + 0x10cd24 = 0x009b5d24
RTTIBaseClassDescriptor EC_AtomAlphaAbove 3                                                                        // [0x10cd28] 0x008a9000 + 0x10cd28 = 0x009b5d28
RTTIBaseClassArray EC_AtomAlphaAbove                                                                               // [0x10cd40] 0x008a9000 + 0x10cd40 = 0x009b5d40
.long ??_R1A@?0A@A@TAtomEventCondition@@8
.long ??_R1A@?0A@A@TEventCondition@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10cd54] 0x008a9000 + 0x10cd54 = 0x009b5d54
RTTIClassHierarchyDescriptor EC_AtomAlphaAbove 4                                                                   // [0x10cd58] 0x008a9000 + 0x10cd58 = 0x009b5d58
RTTICompleteObjectLocator EC_AtomAlphaAbove                                                                        // [0x10cd68] 0x008a9000 + 0x10cd68 = 0x009b5d68
.long 0x00000000                                                                                                   // [0x10cd7c] 0x008a9000 + 0x10cd7c = 0x009b5d7c
RTTIBaseClassDescriptor EventConditionAtomCloseWater 3                                                             // [0x10cd80] 0x008a9000 + 0x10cd80 = 0x009b5d80
RTTIBaseClassArray EventConditionAtomCloseWater                                                                    // [0x10cd98] 0x008a9000 + 0x10cd98 = 0x009b5d98
.long ??_R1A@?0A@A@TAtomEventCondition@@8
.long ??_R1A@?0A@A@TEventCondition@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10cdac] 0x008a9000 + 0x10cdac = 0x009b5dac
RTTIClassHierarchyDescriptor EventConditionAtomCloseWater 4                                                        // [0x10cdb0] 0x008a9000 + 0x10cdb0 = 0x009b5db0
RTTICompleteObjectLocator EventConditionAtomCloseWater                                                             // [0x10cdc0] 0x008a9000 + 0x10cdc0 = 0x009b5dc0
.long 0x00000000                                                                                                   // [0x10cdd4] 0x008a9000 + 0x10cdd4 = 0x009b5dd4
RTTIBaseClassDescriptor EventConditionFireBallSteam 3                                                              // [0x10cdd8] 0x008a9000 + 0x10cdd8 = 0x009b5dd8
RTTIBaseClassArray EventConditionFireBallSteam                                                                     // [0x10cdf0] 0x008a9000 + 0x10cdf0 = 0x009b5df0
.long ??_R1A@?0A@A@TAtomEventCondition@@8
.long ??_R1A@?0A@A@TEventCondition@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10ce04] 0x008a9000 + 0x10ce04 = 0x009b5e04
RTTIClassHierarchyDescriptor EventConditionFireBallSteam 4                                                         // [0x10ce08] 0x008a9000 + 0x10ce08 = 0x009b5e08
RTTICompleteObjectLocator EventConditionFireBallSteam                                                              // [0x10ce18] 0x008a9000 + 0x10ce18 = 0x009b5e18
.long 0x00000000                                                                                                   // [0x10ce2c] 0x008a9000 + 0x10ce2c = 0x009b5e2c
RTTIBaseClassDescriptor EventConditionAtomInUse 3                                                                  // [0x10ce30] 0x008a9000 + 0x10ce30 = 0x009b5e30
RTTIBaseClassArray EventConditionAtomInUse                                                                         // [0x10ce48] 0x008a9000 + 0x10ce48 = 0x009b5e48
.long ??_R1A@?0A@A@TAtomEventCondition@@8
.long ??_R1A@?0A@A@TEventCondition@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10ce5c] 0x008a9000 + 0x10ce5c = 0x009b5e5c
RTTIClassHierarchyDescriptor EventConditionAtomInUse 4                                                             // [0x10ce60] 0x008a9000 + 0x10ce60 = 0x009b5e60
RTTICompleteObjectLocator EventConditionAtomInUse                                                                  // [0x10ce70] 0x008a9000 + 0x10ce70 = 0x009b5e70
.long 0x00000000                                                                                                   // [0x10ce84] 0x008a9000 + 0x10ce84 = 0x009b5e84
RTTIBaseClassDescriptor EventConditionAtomBelowSpeed 3                                                             // [0x10ce88] 0x008a9000 + 0x10ce88 = 0x009b5e88
RTTIBaseClassArray EventConditionAtomBelowSpeed                                                                    // [0x10cea0] 0x008a9000 + 0x10cea0 = 0x009b5ea0
.long ??_R1A@?0A@A@TAtomEventCondition@@8
.long ??_R1A@?0A@A@TEventCondition@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10ceb4] 0x008a9000 + 0x10ceb4 = 0x009b5eb4
RTTIClassHierarchyDescriptor EventConditionAtomBelowSpeed 4                                                        // [0x10ceb8] 0x008a9000 + 0x10ceb8 = 0x009b5eb8
RTTICompleteObjectLocator EventConditionAtomBelowSpeed                                                             // [0x10cec8] 0x008a9000 + 0x10cec8 = 0x009b5ec8
.long 0x00000000                                                                                                   // [0x10cedc] 0x008a9000 + 0x10cedc = 0x009b5edc
RTTIBaseClassDescriptor EventConditionAtomHasBeenDeflected 3                                                       // [0x10cee0] 0x008a9000 + 0x10cee0 = 0x009b5ee0
RTTIBaseClassArray EventConditionAtomHasBeenDeflected                                                              // [0x10cef8] 0x008a9000 + 0x10cef8 = 0x009b5ef8
.long ??_R1A@?0A@A@TAtomEventCondition@@8
.long ??_R1A@?0A@A@TEventCondition@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10cf0c] 0x008a9000 + 0x10cf0c = 0x009b5f0c
RTTIClassHierarchyDescriptor EventConditionAtomHasBeenDeflected 4                                                  // [0x10cf10] 0x008a9000 + 0x10cf10 = 0x009b5f10
RTTICompleteObjectLocator EventConditionAtomHasBeenDeflected                                                       // [0x10cf20] 0x008a9000 + 0x10cf20 = 0x009b5f20
.long 0x00000000                                                                                                   // [0x10cf34] 0x008a9000 + 0x10cf34 = 0x009b5f34
RTTIBaseClassDescriptor FloatProvider 1                                                                            // [0x10cf38] 0x008a9000 + 0x10cf38 = 0x009b5f38
RTTIBaseClassDescriptor ConstFloatProvider 2                                                                       // [0x10cf50] 0x008a9000 + 0x10cf50 = 0x009b5f50
RTTIBaseClassArray ConstFloatProvider                                                                              // [0x10cf68] 0x008a9000 + 0x10cf68 = 0x009b5f68
.long ??_R1A@?0A@A@FloatProvider@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ConstFloatProvider 3                                                                  // [0x10cf78] 0x008a9000 + 0x10cf78 = 0x009b5f78
RTTICompleteObjectLocator ConstFloatProvider                                                                       // [0x10cf88] 0x008a9000 + 0x10cf88 = 0x009b5f88
.long 0x00000000                                                                                                   // [0x10cf9c] 0x008a9000 + 0x10cf9c = 0x009b5f9c
RTTIBaseClassArray FloatProvider                                                                                   // [0x10cfa0] 0x008a9000 + 0x10cfa0 = 0x009b5fa0
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10cfac] 0x008a9000 + 0x10cfac = 0x009b5fac
RTTIClassHierarchyDescriptor FloatProvider 2                                                                       // [0x10cfb0] 0x008a9000 + 0x10cfb0 = 0x009b5fb0
RTTICompleteObjectLocator FloatProvider                                                                            // [0x10cfc0] 0x008a9000 + 0x10cfc0 = 0x009b5fc0
.long 0x00000000                                                                                                   // [0x10cfd4] 0x008a9000 + 0x10cfd4 = 0x009b5fd4
RTTIBaseClassDescriptor FloatProvider_ParentAtomScale 2                                                            // [0x10cfd8] 0x008a9000 + 0x10cfd8 = 0x009b5fd8
RTTIBaseClassArray FloatProvider_ParentAtomScale                                                                   // [0x10cff0] 0x008a9000 + 0x10cff0 = 0x009b5ff0
.long ??_R1A@?0A@A@FloatProvider@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor FloatProvider_ParentAtomScale 3                                                       // [0x10d000] 0x008a9000 + 0x10d000 = 0x009b6000
RTTICompleteObjectLocator FloatProvider_ParentAtomScale                                                            // [0x10d010] 0x008a9000 + 0x10d010 = 0x009b6010
.long 0x00000000                                                                                                   // [0x10d024] 0x008a9000 + 0x10d024 = 0x009b6024
RTTIBaseClassDescriptor StrengthFloatProvider 2                                                                    // [0x10d028] 0x008a9000 + 0x10d028 = 0x009b6028
RTTIBaseClassArray StrengthFloatProvider                                                                           // [0x10d040] 0x008a9000 + 0x10d040 = 0x009b6040
.long ??_R1A@?0A@A@FloatProvider@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor StrengthFloatProvider 3                                                               // [0x10d050] 0x008a9000 + 0x10d050 = 0x009b6050
RTTICompleteObjectLocator StrengthFloatProvider                                                                    // [0x10d060] 0x008a9000 + 0x10d060 = 0x009b6060
.long 0x00000000                                                                                                   // [0x10d074] 0x008a9000 + 0x10d074 = 0x009b6074
RTTIBaseClassDescriptor MagnitudeFloatProvider 2                                                                   // [0x10d078] 0x008a9000 + 0x10d078 = 0x009b6078
RTTIBaseClassArray MagnitudeFloatProvider                                                                          // [0x10d090] 0x008a9000 + 0x10d090 = 0x009b6090
.long ??_R1A@?0A@A@FloatProvider@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor MagnitudeFloatProvider 3                                                              // [0x10d0a0] 0x008a9000 + 0x10d0a0 = 0x009b60a0
RTTICompleteObjectLocator MagnitudeFloatProvider                                                                   // [0x10d0b0] 0x008a9000 + 0x10d0b0 = 0x009b60b0
.long 0x00000000                                                                                                   // [0x10d0c4] 0x008a9000 + 0x10d0c4 = 0x009b60c4
RTTIBaseClassDescriptor MagnitudeTimesStrengthFloatProvider 2                                                      // [0x10d0c8] 0x008a9000 + 0x10d0c8 = 0x009b60c8
RTTIBaseClassArray MagnitudeTimesStrengthFloatProvider                                                             // [0x10d0e0] 0x008a9000 + 0x10d0e0 = 0x009b60e0
.long ??_R1A@?0A@A@FloatProvider@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor MagnitudeTimesStrengthFloatProvider 3                                                 // [0x10d0f0] 0x008a9000 + 0x10d0f0 = 0x009b60f0
RTTICompleteObjectLocator MagnitudeTimesStrengthFloatProvider                                                      // [0x10d100] 0x008a9000 + 0x10d100 = 0x009b6100
.long 0x00000000                                                                                                   // [0x10d114] 0x008a9000 + 0x10d114 = 0x009b6114
RTTIBaseClassDescriptor RenderHandScaleFloatProvider 2                                                             // [0x10d118] 0x008a9000 + 0x10d118 = 0x009b6118
RTTIBaseClassArray RenderHandScaleFloatProvider                                                                    // [0x10d130] 0x008a9000 + 0x10d130 = 0x009b6130
.long ??_R1A@?0A@A@FloatProvider@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor RenderHandScaleFloatProvider 3                                                        // [0x10d140] 0x008a9000 + 0x10d140 = 0x009b6140
RTTICompleteObjectLocator RenderHandScaleFloatProvider                                                             // [0x10d150] 0x008a9000 + 0x10d150 = 0x009b6150
.long 0x00000000                                                                                                   // [0x10d164] 0x008a9000 + 0x10d164 = 0x009b6164
RTTIBaseClassDescriptor RenderHandScaleTimesStrengthFloatProvider 2                                                // [0x10d168] 0x008a9000 + 0x10d168 = 0x009b6168
RTTIBaseClassArray RenderHandScaleTimesStrengthFloatProvider                                                       // [0x10d180] 0x008a9000 + 0x10d180 = 0x009b6180
.long ??_R1A@?0A@A@FloatProvider@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor RenderHandScaleTimesStrengthFloatProvider 3                                           // [0x10d190] 0x008a9000 + 0x10d190 = 0x009b6190
RTTICompleteObjectLocator RenderHandScaleTimesStrengthFloatProvider                                                // [0x10d1a0] 0x008a9000 + 0x10d1a0 = 0x009b61a0
.long 0x00000000                                                                                                   // [0x10d1b4] 0x008a9000 + 0x10d1b4 = 0x009b61b4
RTTIBaseClassDescriptor UR_RingSpin 3                                                                              // [0x10d1b8] 0x008a9000 + 0x10d1b8 = 0x009b61b8
RTTIBaseClassArray UR_RingSpin                                                                                     // [0x10d1d0] 0x008a9000 + 0x10d1d0 = 0x009b61d0
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10d1e4] 0x008a9000 + 0x10d1e4 = 0x009b61e4
RTTIClassHierarchyDescriptor UR_RingSpin 4                                                                         // [0x10d1e8] 0x008a9000 + 0x10d1e8 = 0x009b61e8
RTTICompleteObjectLocator UR_RingSpin                                                                              // [0x10d1f8] 0x008a9000 + 0x10d1f8 = 0x009b61f8
.long 0x00000000                                                                                                   // [0x10d20c] 0x008a9000 + 0x10d20c = 0x009b620c
RTTIBaseClassDescriptor UR_Articulate 3                                                                            // [0x10d210] 0x008a9000 + 0x10d210 = 0x009b6210
RTTIBaseClassArray UR_Articulate                                                                                   // [0x10d228] 0x008a9000 + 0x10d228 = 0x009b6228
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10d23c] 0x008a9000 + 0x10d23c = 0x009b623c
RTTIClassHierarchyDescriptor UR_Articulate 4                                                                       // [0x10d240] 0x008a9000 + 0x10d240 = 0x009b6240
RTTICompleteObjectLocator UR_Articulate                                                                            // [0x10d250] 0x008a9000 + 0x10d250 = 0x009b6250
.long 0x00000000                                                                                                   // [0x10d264] 0x008a9000 + 0x10d264 = 0x009b6264
RTTIBaseClassDescriptor AppearanceUpdateRule 2                                                                     // [0x10d268] 0x008a9000 + 0x10d268 = 0x009b6268
RTTIBaseClassDescriptor AppearanceRuleFadeOut 3                                                                    // [0x10d280] 0x008a9000 + 0x10d280 = 0x009b6280
RTTIBaseClassArray AppearanceRuleFadeOut                                                                           // [0x10d298] 0x008a9000 + 0x10d298 = 0x009b6298
.long ??_R1A@?0A@A@AppearanceUpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10d2ac] 0x008a9000 + 0x10d2ac = 0x009b62ac
RTTIClassHierarchyDescriptor AppearanceRuleFadeOut 4                                                               // [0x10d2b0] 0x008a9000 + 0x10d2b0 = 0x009b62b0
RTTICompleteObjectLocator AppearanceRuleFadeOut                                                                    // [0x10d2c0] 0x008a9000 + 0x10d2c0 = 0x009b62c0
.long 0x00000000                                                                                                   // [0x10d2d4] 0x008a9000 + 0x10d2d4 = 0x009b62d4
RTTIBaseClassArray AppearanceUpdateRule                                                                            // [0x10d2d8] 0x008a9000 + 0x10d2d8 = 0x009b62d8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AppearanceUpdateRule 3                                                                // [0x10d2e8] 0x008a9000 + 0x10d2e8 = 0x009b62e8
RTTICompleteObjectLocator AppearanceUpdateRule                                                                     // [0x10d2f8] 0x008a9000 + 0x10d2f8 = 0x009b62f8
.long 0x00000000                                                                                                   // [0x10d30c] 0x008a9000 + 0x10d30c = 0x009b630c
RTTIBaseClassDescriptor AddSoundToAtom 3                                                                           // [0x10d310] 0x008a9000 + 0x10d310 = 0x009b6310
RTTIBaseClassArray AddSoundToAtom                                                                                  // [0x10d328] 0x008a9000 + 0x10d328 = 0x009b6328
.long ??_R1A@?0A@A@AppearanceUpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10d33c] 0x008a9000 + 0x10d33c = 0x009b633c
RTTIClassHierarchyDescriptor AddSoundToAtom 4                                                                      // [0x10d340] 0x008a9000 + 0x10d340 = 0x009b6340
RTTICompleteObjectLocator AddSoundToAtom                                                                           // [0x10d350] 0x008a9000 + 0x10d350 = 0x009b6350
.long 0x00000000                                                                                                   // [0x10d364] 0x008a9000 + 0x10d364 = 0x009b6364
RTTIBaseClassDescriptor StartStopSoundOnCondition 3                                                                // [0x10d368] 0x008a9000 + 0x10d368 = 0x009b6368
RTTIBaseClassArray StartStopSoundOnCondition                                                                       // [0x10d380] 0x008a9000 + 0x10d380 = 0x009b6380
.long ??_R1A@?0A@A@AppearanceUpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10d394] 0x008a9000 + 0x10d394 = 0x009b6394
RTTIClassHierarchyDescriptor StartStopSoundOnCondition 4                                                           // [0x10d398] 0x008a9000 + 0x10d398 = 0x009b6398
RTTICompleteObjectLocator StartStopSoundOnCondition                                                                // [0x10d3a8] 0x008a9000 + 0x10d3a8 = 0x009b63a8
.long 0x00000000                                                                                                   // [0x10d3bc] 0x008a9000 + 0x10d3bc = 0x009b63bc
RTTIBaseClassDescriptor RemoveSoundFromAtom 3                                                                      // [0x10d3c0] 0x008a9000 + 0x10d3c0 = 0x009b63c0
RTTIBaseClassArray RemoveSoundFromAtom                                                                             // [0x10d3d8] 0x008a9000 + 0x10d3d8 = 0x009b63d8
.long ??_R1A@?0A@A@AppearanceUpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10d3ec] 0x008a9000 + 0x10d3ec = 0x009b63ec
RTTIClassHierarchyDescriptor RemoveSoundFromAtom 4                                                                 // [0x10d3f0] 0x008a9000 + 0x10d3f0 = 0x009b63f0
RTTICompleteObjectLocator RemoveSoundFromAtom                                                                      // [0x10d400] 0x008a9000 + 0x10d400 = 0x009b6400
.long 0x00000000                                                                                                   // [0x10d414] 0x008a9000 + 0x10d414 = 0x009b6414
RTTIBaseClassDescriptor AR_SetAnimPlay 3                                                                           // [0x10d418] 0x008a9000 + 0x10d418 = 0x009b6418
RTTIBaseClassArray AR_SetAnimPlay                                                                                  // [0x10d430] 0x008a9000 + 0x10d430 = 0x009b6430
.long ??_R1A@?0A@A@AppearanceUpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10d444] 0x008a9000 + 0x10d444 = 0x009b6444
RTTIClassHierarchyDescriptor AR_SetAnimPlay 4                                                                      // [0x10d448] 0x008a9000 + 0x10d448 = 0x009b6448
RTTICompleteObjectLocator AR_SetAnimPlay                                                                           // [0x10d458] 0x008a9000 + 0x10d458 = 0x009b6458
.long 0x00000000                                                                                                   // [0x10d46c] 0x008a9000 + 0x10d46c = 0x009b646c
RTTIBaseClassDescriptor AR_FadeAlpha 3                                                                             // [0x10d470] 0x008a9000 + 0x10d470 = 0x009b6470
RTTIBaseClassArray AR_FadeAlpha                                                                                    // [0x10d488] 0x008a9000 + 0x10d488 = 0x009b6488
.long ??_R1A@?0A@A@AppearanceUpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10d49c] 0x008a9000 + 0x10d49c = 0x009b649c
RTTIClassHierarchyDescriptor AR_FadeAlpha 4                                                                        // [0x10d4a0] 0x008a9000 + 0x10d4a0 = 0x009b64a0
RTTICompleteObjectLocator AR_FadeAlpha                                                                             // [0x10d4b0] 0x008a9000 + 0x10d4b0 = 0x009b64b0
.long 0x00000000                                                                                                   // [0x10d4c4] 0x008a9000 + 0x10d4c4 = 0x009b64c4
RTTIBaseClassDescriptor AR_FadeCollectionAlpha 3                                                                   // [0x10d4c8] 0x008a9000 + 0x10d4c8 = 0x009b64c8
RTTIBaseClassArray AR_FadeCollectionAlpha                                                                          // [0x10d4e0] 0x008a9000 + 0x10d4e0 = 0x009b64e0
.long ??_R1A@?0A@A@AppearanceUpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10d4f4] 0x008a9000 + 0x10d4f4 = 0x009b64f4
RTTIClassHierarchyDescriptor AR_FadeCollectionAlpha 4                                                              // [0x10d4f8] 0x008a9000 + 0x10d4f8 = 0x009b64f8
RTTICompleteObjectLocator AR_FadeCollectionAlpha                                                                   // [0x10d508] 0x008a9000 + 0x10d508 = 0x009b6508
.long 0x00000000                                                                                                   // [0x10d51c] 0x008a9000 + 0x10d51c = 0x009b651c
RTTIBaseClassDescriptor AR_FadeOutOnceConditionTrue 3                                                              // [0x10d520] 0x008a9000 + 0x10d520 = 0x009b6520
RTTIBaseClassArray AR_FadeOutOnceConditionTrue                                                                     // [0x10d538] 0x008a9000 + 0x10d538 = 0x009b6538
.long ??_R1A@?0A@A@AppearanceUpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10d54c] 0x008a9000 + 0x10d54c = 0x009b654c
RTTIClassHierarchyDescriptor AR_FadeOutOnceConditionTrue 4                                                         // [0x10d550] 0x008a9000 + 0x10d550 = 0x009b6550
RTTICompleteObjectLocator AR_FadeOutOnceConditionTrue                                                              // [0x10d560] 0x008a9000 + 0x10d560 = 0x009b6560
.long 0x00000000                                                                                                   // [0x10d574] 0x008a9000 + 0x10d574 = 0x009b6574
RTTIBaseClassDescriptor AR_FadeAlphaWithHeightAboveLandscape 3                                                     // [0x10d578] 0x008a9000 + 0x10d578 = 0x009b6578
RTTIBaseClassArray AR_FadeAlphaWithHeightAboveLandscape                                                            // [0x10d590] 0x008a9000 + 0x10d590 = 0x009b6590
.long ??_R1A@?0A@A@AppearanceUpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10d5a4] 0x008a9000 + 0x10d5a4 = 0x009b65a4
RTTIClassHierarchyDescriptor AR_FadeAlphaWithHeightAboveLandscape 4                                                // [0x10d5a8] 0x008a9000 + 0x10d5a8 = 0x009b65a8
RTTICompleteObjectLocator AR_FadeAlphaWithHeightAboveLandscape                                                     // [0x10d5b8] 0x008a9000 + 0x10d5b8 = 0x009b65b8
.long 0x00000000                                                                                                   // [0x10d5cc] 0x008a9000 + 0x10d5cc = 0x009b65cc
RTTIBaseClassDescriptor AR_GetColorFromParent 3                                                                    // [0x10d5d0] 0x008a9000 + 0x10d5d0 = 0x009b65d0
RTTIBaseClassArray AR_GetColorFromParent                                                                           // [0x10d5e8] 0x008a9000 + 0x10d5e8 = 0x009b65e8
.long ??_R1A@?0A@A@AppearanceUpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10d5fc] 0x008a9000 + 0x10d5fc = 0x009b65fc
RTTIClassHierarchyDescriptor AR_GetColorFromParent 4                                                               // [0x10d600] 0x008a9000 + 0x10d600 = 0x009b6600
RTTICompleteObjectLocator AR_GetColorFromParent                                                                    // [0x10d610] 0x008a9000 + 0x10d610 = 0x009b6610
.long 0x00000000                                                                                                   // [0x10d624] 0x008a9000 + 0x10d624 = 0x009b6624
RTTIBaseClassDescriptor AppearanceRuleTumble 3                                                                     // [0x10d628] 0x008a9000 + 0x10d628 = 0x009b6628
RTTIBaseClassArray AppearanceRuleTumble                                                                            // [0x10d640] 0x008a9000 + 0x10d640 = 0x009b6640
.long ??_R1A@?0A@A@AppearanceUpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10d654] 0x008a9000 + 0x10d654 = 0x009b6654
RTTIClassHierarchyDescriptor AppearanceRuleTumble 4                                                                // [0x10d658] 0x008a9000 + 0x10d658 = 0x009b6658
RTTICompleteObjectLocator AppearanceRuleTumble                                                                     // [0x10d668] 0x008a9000 + 0x10d668 = 0x009b6668
.long 0x00000000                                                                                                   // [0x10d67c] 0x008a9000 + 0x10d67c = 0x009b667c
RTTIBaseClassDescriptor UR_UpdatePosnFromVelocity 3                                                                // [0x10d680] 0x008a9000 + 0x10d680 = 0x009b6680
RTTIBaseClassArray UR_UpdatePosnFromVelocity                                                                       // [0x10d698] 0x008a9000 + 0x10d698 = 0x009b6698
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10d6ac] 0x008a9000 + 0x10d6ac = 0x009b66ac
RTTIClassHierarchyDescriptor UR_UpdatePosnFromVelocity 4                                                           // [0x10d6b0] 0x008a9000 + 0x10d6b0 = 0x009b66b0
RTTICompleteObjectLocator UR_UpdatePosnFromVelocity                                                                // [0x10d6c0] 0x008a9000 + 0x10d6c0 = 0x009b66c0
.long 0x00000000                                                                                                   // [0x10d6d4] 0x008a9000 + 0x10d6d4 = 0x009b66d4
RTTIBaseClassDescriptor EventAlways 2                                                                              // [0x10d6d8] 0x008a9000 + 0x10d6d8 = 0x009b66d8
RTTIBaseClassArray EventAlways                                                                                     // [0x10d6f0] 0x008a9000 + 0x10d6f0 = 0x009b66f0
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor EventAlways 3                                                                         // [0x10d700] 0x008a9000 + 0x10d700 = 0x009b6700
RTTICompleteObjectLocator EventAlways                                                                              // [0x10d710] 0x008a9000 + 0x10d710 = 0x009b6710
.long 0x00000000                                                                                                   // [0x10d724] 0x008a9000 + 0x10d724 = 0x009b6724
RTTIBaseClassDescriptor UR_OrientWithVelocity 3                                                                    // [0x10d728] 0x008a9000 + 0x10d728 = 0x009b6728
RTTIBaseClassArray UR_OrientWithVelocity                                                                           // [0x10d740] 0x008a9000 + 0x10d740 = 0x009b6740
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10d754] 0x008a9000 + 0x10d754 = 0x009b6754
RTTIClassHierarchyDescriptor UR_OrientWithVelocity 4                                                               // [0x10d758] 0x008a9000 + 0x10d758 = 0x009b6758
RTTICompleteObjectLocator UR_OrientWithVelocity                                                                    // [0x10d768] 0x008a9000 + 0x10d768 = 0x009b6768
.long 0x00000000                                                                                                   // [0x10d77c] 0x008a9000 + 0x10d77c = 0x009b677c
RTTIBaseClassDescriptor UR_OrientSpriteWithVelocity 3                                                              // [0x10d780] 0x008a9000 + 0x10d780 = 0x009b6780
RTTIBaseClassArray UR_OrientSpriteWithVelocity                                                                     // [0x10d798] 0x008a9000 + 0x10d798 = 0x009b6798
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10d7ac] 0x008a9000 + 0x10d7ac = 0x009b67ac
RTTIClassHierarchyDescriptor UR_OrientSpriteWithVelocity 4                                                         // [0x10d7b0] 0x008a9000 + 0x10d7b0 = 0x009b67b0
RTTICompleteObjectLocator UR_OrientSpriteWithVelocity                                                              // [0x10d7c0] 0x008a9000 + 0x10d7c0 = 0x009b67c0
.long 0x00000000                                                                                                   // [0x10d7d4] 0x008a9000 + 0x10d7d4 = 0x009b67d4
RTTIBaseClassDescriptor UR_OrientSpriteWithRandomAngle 3                                                           // [0x10d7d8] 0x008a9000 + 0x10d7d8 = 0x009b67d8
RTTIBaseClassArray UR_OrientSpriteWithRandomAngle                                                                  // [0x10d7f0] 0x008a9000 + 0x10d7f0 = 0x009b67f0
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10d804] 0x008a9000 + 0x10d804 = 0x009b6804
RTTIClassHierarchyDescriptor UR_OrientSpriteWithRandomAngle 4                                                      // [0x10d808] 0x008a9000 + 0x10d808 = 0x009b6808
RTTICompleteObjectLocator UR_OrientSpriteWithRandomAngle                                                           // [0x10d818] 0x008a9000 + 0x10d818 = 0x009b6818
.long 0x00000000                                                                                                   // [0x10d82c] 0x008a9000 + 0x10d82c = 0x009b682c
RTTIBaseClassDescriptor UR_GustyWind 3                                                                             // [0x10d830] 0x008a9000 + 0x10d830 = 0x009b6830
RTTIBaseClassArray UR_GustyWind                                                                                    // [0x10d848] 0x008a9000 + 0x10d848 = 0x009b6848
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10d85c] 0x008a9000 + 0x10d85c = 0x009b685c
RTTIClassHierarchyDescriptor UR_GustyWind 4                                                                        // [0x10d860] 0x008a9000 + 0x10d860 = 0x009b6860
RTTICompleteObjectLocator UR_GustyWind                                                                             // [0x10d870] 0x008a9000 + 0x10d870 = 0x009b6870
.long 0x00000000                                                                                                   // [0x10d884] 0x008a9000 + 0x10d884 = 0x009b6884
RTTIBaseClassDescriptor FollowOrigin 3                                                                             // [0x10d888] 0x008a9000 + 0x10d888 = 0x009b6888
RTTIBaseClassArray FollowOrigin                                                                                    // [0x10d8a0] 0x008a9000 + 0x10d8a0 = 0x009b68a0
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10d8b4] 0x008a9000 + 0x10d8b4 = 0x009b68b4
RTTIClassHierarchyDescriptor FollowOrigin 4                                                                        // [0x10d8b8] 0x008a9000 + 0x10d8b8 = 0x009b68b8
RTTICompleteObjectLocator FollowOrigin                                                                             // [0x10d8c8] 0x008a9000 + 0x10d8c8 = 0x009b68c8
.long 0x00000000                                                                                                   // [0x10d8dc] 0x008a9000 + 0x10d8dc = 0x009b68dc
RTTIBaseClassDescriptor SetScale 3                                                                                 // [0x10d8e0] 0x008a9000 + 0x10d8e0 = 0x009b68e0
RTTIBaseClassArray SetScale                                                                                        // [0x10d8f8] 0x008a9000 + 0x10d8f8 = 0x009b68f8
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10d90c] 0x008a9000 + 0x10d90c = 0x009b690c
RTTIClassHierarchyDescriptor SetScale 4                                                                            // [0x10d910] 0x008a9000 + 0x10d910 = 0x009b6910
RTTICompleteObjectLocator SetScale                                                                                 // [0x10d920] 0x008a9000 + 0x10d920 = 0x009b6920
.long 0x00000000                                                                                                   // [0x10d934] 0x008a9000 + 0x10d934 = 0x009b6934
RTTIBaseClassDescriptor SetCollectionAlpha 3                                                                       // [0x10d938] 0x008a9000 + 0x10d938 = 0x009b6938
RTTIBaseClassArray SetCollectionAlpha                                                                              // [0x10d950] 0x008a9000 + 0x10d950 = 0x009b6950
.long ??_R1A@?0A@A@AppearanceUpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10d964] 0x008a9000 + 0x10d964 = 0x009b6964
RTTIClassHierarchyDescriptor SetCollectionAlpha 4                                                                  // [0x10d968] 0x008a9000 + 0x10d968 = 0x009b6968
RTTICompleteObjectLocator SetCollectionAlpha                                                                       // [0x10d978] 0x008a9000 + 0x10d978 = 0x009b6978
.long 0x00000000                                                                                                   // [0x10d98c] 0x008a9000 + 0x10d98c = 0x009b698c
RTTIBaseClassDescriptor SetAtomAlpha 3                                                                             // [0x10d990] 0x008a9000 + 0x10d990 = 0x009b6990
RTTIBaseClassArray SetAtomAlpha                                                                                    // [0x10d9a8] 0x008a9000 + 0x10d9a8 = 0x009b69a8
.long ??_R1A@?0A@A@AppearanceUpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10d9bc] 0x008a9000 + 0x10d9bc = 0x009b69bc
RTTIClassHierarchyDescriptor SetAtomAlpha 4                                                                        // [0x10d9c0] 0x008a9000 + 0x10d9c0 = 0x009b69c0
RTTICompleteObjectLocator SetAtomAlpha                                                                             // [0x10d9d0] 0x008a9000 + 0x10d9d0 = 0x009b69d0
.long 0x00000000                                                                                                   // [0x10d9e4] 0x008a9000 + 0x10d9e4 = 0x009b69e4
RTTIBaseClassDescriptor SetPSysCloseDown 2                                                                         // [0x10d9e8] 0x008a9000 + 0x10d9e8 = 0x009b69e8
RTTIBaseClassArray SetPSysCloseDown                                                                                // [0x10da00] 0x008a9000 + 0x10da00 = 0x009b6a00
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SetPSysCloseDown 3                                                                    // [0x10da10] 0x008a9000 + 0x10da10 = 0x009b6a10
RTTICompleteObjectLocator SetPSysCloseDown                                                                         // [0x10da20] 0x008a9000 + 0x10da20 = 0x009b6a20
.long 0x00000000                                                                                                   // [0x10da34] 0x008a9000 + 0x10da34 = 0x009b6a34
RTTIBaseClassDescriptor SetAtomHasBeenDeflected 2                                                                  // [0x10da38] 0x008a9000 + 0x10da38 = 0x009b6a38
RTTIBaseClassArray SetAtomHasBeenDeflected                                                                         // [0x10da50] 0x008a9000 + 0x10da50 = 0x009b6a50
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SetAtomHasBeenDeflected 3                                                             // [0x10da60] 0x008a9000 + 0x10da60 = 0x009b6a60
RTTICompleteObjectLocator SetAtomHasBeenDeflected                                                                  // [0x10da70] 0x008a9000 + 0x10da70 = 0x009b6a70
.long 0x00000000                                                                                                   // [0x10da84] 0x008a9000 + 0x10da84 = 0x009b6a84
RTTIBaseClassDescriptor ForceConstantAltitude 3                                                                    // [0x10da88] 0x008a9000 + 0x10da88 = 0x009b6a88
RTTIBaseClassArray ForceConstantAltitude                                                                           // [0x10daa0] 0x008a9000 + 0x10daa0 = 0x009b6aa0
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10dab4] 0x008a9000 + 0x10dab4 = 0x009b6ab4
RTTIClassHierarchyDescriptor ForceConstantAltitude 4                                                               // [0x10dab8] 0x008a9000 + 0x10dab8 = 0x009b6ab8
RTTICompleteObjectLocator ForceConstantAltitude                                                                    // [0x10dac8] 0x008a9000 + 0x10dac8 = 0x009b6ac8
.long 0x00000000                                                                                                   // [0x10dadc] 0x008a9000 + 0x10dadc = 0x009b6adc
RTTIBaseClassDescriptor ForceConstantHeight 3                                                                      // [0x10dae0] 0x008a9000 + 0x10dae0 = 0x009b6ae0
RTTIBaseClassArray ForceConstantHeight                                                                             // [0x10daf8] 0x008a9000 + 0x10daf8 = 0x009b6af8
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10db0c] 0x008a9000 + 0x10db0c = 0x009b6b0c
RTTIClassHierarchyDescriptor ForceConstantHeight 4                                                                 // [0x10db10] 0x008a9000 + 0x10db10 = 0x009b6b10
RTTICompleteObjectLocator ForceConstantHeight                                                                      // [0x10db20] 0x008a9000 + 0x10db20 = 0x009b6b20
.long 0x00000000                                                                                                   // [0x10db34] 0x008a9000 + 0x10db34 = 0x009b6b34
RTTIBaseClassDescriptor ForceMinimumHeight 3                                                                       // [0x10db38] 0x008a9000 + 0x10db38 = 0x009b6b38
RTTIBaseClassArray ForceMinimumHeight                                                                              // [0x10db50] 0x008a9000 + 0x10db50 = 0x009b6b50
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10db64] 0x008a9000 + 0x10db64 = 0x009b6b64
RTTIClassHierarchyDescriptor ForceMinimumHeight 4                                                                  // [0x10db68] 0x008a9000 + 0x10db68 = 0x009b6b68
RTTICompleteObjectLocator ForceMinimumHeight                                                                       // [0x10db78] 0x008a9000 + 0x10db78 = 0x009b6b78
.long 0x00000000                                                                                                   // [0x10db8c] 0x008a9000 + 0x10db8c = 0x009b6b8c
RTTIBaseClassDescriptor ForceLandscapeHeight 3                                                                     // [0x10db90] 0x008a9000 + 0x10db90 = 0x009b6b90
RTTIBaseClassArray ForceLandscapeHeight                                                                            // [0x10dba8] 0x008a9000 + 0x10dba8 = 0x009b6ba8
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10dbbc] 0x008a9000 + 0x10dbbc = 0x009b6bbc
RTTIClassHierarchyDescriptor ForceLandscapeHeight 4                                                                // [0x10dbc0] 0x008a9000 + 0x10dbc0 = 0x009b6bc0
RTTICompleteObjectLocator ForceLandscapeHeight                                                                     // [0x10dbd0] 0x008a9000 + 0x10dbd0 = 0x009b6bd0
.long 0x00000000                                                                                                   // [0x10dbe4] 0x008a9000 + 0x10dbe4 = 0x009b6be4
RTTIBaseClassDescriptor UpdateRuleRotatePrincipalAxis 3                                                            // [0x10dbe8] 0x008a9000 + 0x10dbe8 = 0x009b6be8
RTTIBaseClassArray UpdateRuleRotatePrincipalAxis                                                                   // [0x10dc00] 0x008a9000 + 0x10dc00 = 0x009b6c00
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10dc14] 0x008a9000 + 0x10dc14 = 0x009b6c14
RTTIClassHierarchyDescriptor UpdateRuleRotatePrincipalAxis 4                                                       // [0x10dc18] 0x008a9000 + 0x10dc18 = 0x009b6c18
RTTICompleteObjectLocator UpdateRuleRotatePrincipalAxis                                                            // [0x10dc28] 0x008a9000 + 0x10dc28 = 0x009b6c28
.long 0x00000000                                                                                                   // [0x10dc3c] 0x008a9000 + 0x10dc3c = 0x009b6c3c
RTTIBaseClassDescriptor UR_StormCast 3                                                                             // [0x10dc40] 0x008a9000 + 0x10dc40 = 0x009b6c40
RTTIBaseClassArray UR_StormCast                                                                                    // [0x10dc58] 0x008a9000 + 0x10dc58 = 0x009b6c58
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10dc6c] 0x008a9000 + 0x10dc6c = 0x009b6c6c
RTTIClassHierarchyDescriptor UR_StormCast 4                                                                        // [0x10dc70] 0x008a9000 + 0x10dc70 = 0x009b6c70
RTTICompleteObjectLocator UR_StormCast                                                                             // [0x10dc80] 0x008a9000 + 0x10dc80 = 0x009b6c80
.long 0x00000000                                                                                                   // [0x10dc94] 0x008a9000 + 0x10dc94 = 0x009b6c94
RTTIBaseClassDescriptor UR_ChangeScale 3                                                                           // [0x10dc98] 0x008a9000 + 0x10dc98 = 0x009b6c98
RTTIBaseClassArray UR_ChangeScale                                                                                  // [0x10dcb0] 0x008a9000 + 0x10dcb0 = 0x009b6cb0
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10dcc4] 0x008a9000 + 0x10dcc4 = 0x009b6cc4
RTTIClassHierarchyDescriptor UR_ChangeScale 4                                                                      // [0x10dcc8] 0x008a9000 + 0x10dcc8 = 0x009b6cc8
RTTICompleteObjectLocator UR_ChangeScale                                                                           // [0x10dcd8] 0x008a9000 + 0x10dcd8 = 0x009b6cd8
.long 0x00000000                                                                                                   // [0x10dcec] 0x008a9000 + 0x10dcec = 0x009b6cec
RTTIBaseClassDescriptor UR_ChangeScaleXYZ 3                                                                        // [0x10dcf0] 0x008a9000 + 0x10dcf0 = 0x009b6cf0
RTTIBaseClassArray UR_ChangeScaleXYZ                                                                               // [0x10dd08] 0x008a9000 + 0x10dd08 = 0x009b6d08
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10dd1c] 0x008a9000 + 0x10dd1c = 0x009b6d1c
RTTIClassHierarchyDescriptor UR_ChangeScaleXYZ 4                                                                   // [0x10dd20] 0x008a9000 + 0x10dd20 = 0x009b6d20
RTTICompleteObjectLocator UR_ChangeScaleXYZ                                                                        // [0x10dd30] 0x008a9000 + 0x10dd30 = 0x009b6d30
.long 0x00000000                                                                                                   // [0x10dd44] 0x008a9000 + 0x10dd44 = 0x009b6d44
RTTIBaseClassDescriptor UR_ChangeStretchHeight 3                                                                   // [0x10dd48] 0x008a9000 + 0x10dd48 = 0x009b6d48
RTTIBaseClassArray UR_ChangeStretchHeight                                                                          // [0x10dd60] 0x008a9000 + 0x10dd60 = 0x009b6d60
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10dd74] 0x008a9000 + 0x10dd74 = 0x009b6d74
RTTIClassHierarchyDescriptor UR_ChangeStretchHeight 4                                                              // [0x10dd78] 0x008a9000 + 0x10dd78 = 0x009b6d78
RTTICompleteObjectLocator UR_ChangeStretchHeight                                                                   // [0x10dd88] 0x008a9000 + 0x10dd88 = 0x009b6d88
.long 0x00000000                                                                                                   // [0x10dd9c] 0x008a9000 + 0x10dd9c = 0x009b6d9c
RTTIBaseClassDescriptor UR_MoveAtom 3                                                                              // [0x10dda0] 0x008a9000 + 0x10dda0 = 0x009b6da0
RTTIBaseClassArray UR_MoveAtom                                                                                     // [0x10ddb8] 0x008a9000 + 0x10ddb8 = 0x009b6db8
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10ddcc] 0x008a9000 + 0x10ddcc = 0x009b6dcc
RTTIClassHierarchyDescriptor UR_MoveAtom 4                                                                         // [0x10ddd0] 0x008a9000 + 0x10ddd0 = 0x009b6dd0
RTTICompleteObjectLocator UR_MoveAtom                                                                              // [0x10dde0] 0x008a9000 + 0x10dde0 = 0x009b6de0
.long 0x00000000                                                                                                   // [0x10ddf4] 0x008a9000 + 0x10ddf4 = 0x009b6df4
RTTIBaseClassDescriptor UR_AddDefensiveSphere 3                                                                    // [0x10ddf8] 0x008a9000 + 0x10ddf8 = 0x009b6df8
RTTIBaseClassArray UR_AddDefensiveSphere                                                                           // [0x10de10] 0x008a9000 + 0x10de10 = 0x009b6e10
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10de24] 0x008a9000 + 0x10de24 = 0x009b6e24
RTTIClassHierarchyDescriptor UR_AddDefensiveSphere 4                                                               // [0x10de28] 0x008a9000 + 0x10de28 = 0x009b6e28
RTTICompleteObjectLocator UR_AddDefensiveSphere                                                                    // [0x10de38] 0x008a9000 + 0x10de38 = 0x009b6e38
.long 0x00000000                                                                                                   // [0x10de4c] 0x008a9000 + 0x10de4c = 0x009b6e4c
RTTIBaseClassDescriptor UR_HealInHand 3                                                                            // [0x10de50] 0x008a9000 + 0x10de50 = 0x009b6e50
RTTIBaseClassArray UR_HealInHand                                                                                   // [0x10de68] 0x008a9000 + 0x10de68 = 0x009b6e68
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10de7c] 0x008a9000 + 0x10de7c = 0x009b6e7c
RTTIClassHierarchyDescriptor UR_HealInHand 4                                                                       // [0x10de80] 0x008a9000 + 0x10de80 = 0x009b6e80
RTTICompleteObjectLocator UR_HealInHand                                                                            // [0x10de90] 0x008a9000 + 0x10de90 = 0x009b6e90
.long 0x00000000                                                                                                   // [0x10dea4] 0x008a9000 + 0x10dea4 = 0x009b6ea4
RTTIBaseClassDescriptor UR_SphereSurfaceTracer 3                                                                   // [0x10dea8] 0x008a9000 + 0x10dea8 = 0x009b6ea8
RTTIBaseClassArray UR_SphereSurfaceTracer                                                                          // [0x10dec0] 0x008a9000 + 0x10dec0 = 0x009b6ec0
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10ded4] 0x008a9000 + 0x10ded4 = 0x009b6ed4
RTTIClassHierarchyDescriptor UR_SphereSurfaceTracer 4                                                              // [0x10ded8] 0x008a9000 + 0x10ded8 = 0x009b6ed8
RTTICompleteObjectLocator UR_SphereSurfaceTracer                                                                   // [0x10dee8] 0x008a9000 + 0x10dee8 = 0x009b6ee8
.long 0x00000000                                                                                                   // [0x10defc] 0x008a9000 + 0x10defc = 0x009b6efc
RTTIBaseClassDescriptor UR_VapourEndEffect 3                                                                       // [0x10df00] 0x008a9000 + 0x10df00 = 0x009b6f00
RTTIBaseClassArray UR_VapourEndEffect                                                                              // [0x10df18] 0x008a9000 + 0x10df18 = 0x009b6f18
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10df2c] 0x008a9000 + 0x10df2c = 0x009b6f2c
RTTIClassHierarchyDescriptor UR_VapourEndEffect 4                                                                  // [0x10df30] 0x008a9000 + 0x10df30 = 0x009b6f30
RTTICompleteObjectLocator UR_VapourEndEffect                                                                       // [0x10df40] 0x008a9000 + 0x10df40 = 0x009b6f40
.long 0x00000000                                                                                                   // [0x10df54] 0x008a9000 + 0x10df54 = 0x009b6f54
RTTIBaseClassDescriptor CheckShieldDeflections 3                                                                   // [0x10df58] 0x008a9000 + 0x10df58 = 0x009b6f58
RTTIBaseClassArray CheckShieldDeflections                                                                          // [0x10df70] 0x008a9000 + 0x10df70 = 0x009b6f70
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10df84] 0x008a9000 + 0x10df84 = 0x009b6f84
RTTIClassHierarchyDescriptor CheckShieldDeflections 4                                                              // [0x10df88] 0x008a9000 + 0x10df88 = 0x009b6f88
RTTICompleteObjectLocator CheckShieldDeflections                                                                   // [0x10df98] 0x008a9000 + 0x10df98 = 0x009b6f98
.long 0x00000000                                                                                                   // [0x10dfac] 0x008a9000 + 0x10dfac = 0x009b6fac
RTTIBaseClassDescriptor AddSubCollectionsToAtom 2                                                                  // [0x10dfb0] 0x008a9000 + 0x10dfb0 = 0x009b6fb0
RTTIBaseClassArray AddSubCollectionsToAtom                                                                         // [0x10dfc8] 0x008a9000 + 0x10dfc8 = 0x009b6fc8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AddSubCollectionsToAtom 3                                                             // [0x10dfd8] 0x008a9000 + 0x10dfd8 = 0x009b6fd8
RTTICompleteObjectLocator AddSubCollectionsToAtom                                                                  // [0x10dfe8] 0x008a9000 + 0x10dfe8 = 0x009b6fe8
.long 0x00000000                                                                                                   // [0x10dffc] 0x008a9000 + 0x10dffc = 0x009b6ffc
RTTIBaseClassDescriptor EmitterRule 3                                                                              // [0x10e000] 0x008a9000 + 0x10e000 = 0x009b7000
RTTIBaseClassDescriptor EmitterRuleSimple 4                                                                        // [0x10e018] 0x008a9000 + 0x10e018 = 0x009b7018
RTTIBaseClassArray EmitterRuleSimple                                                                               // [0x10e030] 0x008a9000 + 0x10e030 = 0x009b7030
.long ??_R1A@?0A@A@EmitterRule@@8
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor EmitterRuleSimple 5                                                                   // [0x10e048] 0x008a9000 + 0x10e048 = 0x009b7048
RTTICompleteObjectLocator EmitterRuleSimple                                                                        // [0x10e058] 0x008a9000 + 0x10e058 = 0x009b7058
.long 0x00000000                                                                                                   // [0x10e06c] 0x008a9000 + 0x10e06c = 0x009b706c
RTTIBaseClassDescriptor EmitterRuleLightningSprite 3                                                               // [0x10e070] 0x008a9000 + 0x10e070 = 0x009b7070
RTTIBaseClassArray EmitterRuleLightningSprite                                                                      // [0x10e088] 0x008a9000 + 0x10e088 = 0x009b7088
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10e09c] 0x008a9000 + 0x10e09c = 0x009b709c
RTTIClassHierarchyDescriptor EmitterRuleLightningSprite 4                                                          // [0x10e0a0] 0x008a9000 + 0x10e0a0 = 0x009b70a0
RTTICompleteObjectLocator EmitterRuleLightningSprite                                                               // [0x10e0b0] 0x008a9000 + 0x10e0b0 = 0x009b70b0
.long 0x00000000                                                                                                   // [0x10e0c4] 0x008a9000 + 0x10e0c4 = 0x009b70c4
RTTIBaseClassDescriptor DiskEmitter 4                                                                              // [0x10e0c8] 0x008a9000 + 0x10e0c8 = 0x009b70c8
RTTIBaseClassArray DiskEmitter                                                                                     // [0x10e0e0] 0x008a9000 + 0x10e0e0 = 0x009b70e0
.long ??_R1A@?0A@A@EmitterRule@@8
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor DiskEmitter 5                                                                         // [0x10e0f8] 0x008a9000 + 0x10e0f8 = 0x009b70f8
RTTICompleteObjectLocator DiskEmitter                                                                              // [0x10e108] 0x008a9000 + 0x10e108 = 0x009b7108
.long 0x00000000                                                                                                   // [0x10e11c] 0x008a9000 + 0x10e11c = 0x009b711c
RTTIBaseClassDescriptor SpreadingDiskEmitter 4                                                                     // [0x10e120] 0x008a9000 + 0x10e120 = 0x009b7120
RTTIBaseClassArray SpreadingDiskEmitter                                                                            // [0x10e138] 0x008a9000 + 0x10e138 = 0x009b7138
.long ??_R1A@?0A@A@EmitterRule@@8
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SpreadingDiskEmitter 5                                                                // [0x10e150] 0x008a9000 + 0x10e150 = 0x009b7150
RTTICompleteObjectLocator SpreadingDiskEmitter                                                                     // [0x10e160] 0x008a9000 + 0x10e160 = 0x009b7160
.long 0x00000000                                                                                                   // [0x10e174] 0x008a9000 + 0x10e174 = 0x009b7174
RTTIBaseClassDescriptor EmitterRuleConical 4                                                                       // [0x10e178] 0x008a9000 + 0x10e178 = 0x009b7178
RTTIBaseClassArray EmitterRuleConical                                                                              // [0x10e190] 0x008a9000 + 0x10e190 = 0x009b7190
.long ??_R1A@?0A@A@EmitterRule@@8
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor EmitterRuleConical 5                                                                  // [0x10e1a8] 0x008a9000 + 0x10e1a8 = 0x009b71a8
RTTICompleteObjectLocator EmitterRuleConical                                                                       // [0x10e1b8] 0x008a9000 + 0x10e1b8 = 0x009b71b8
.long 0x00000000                                                                                                   // [0x10e1cc] 0x008a9000 + 0x10e1cc = 0x009b71cc
RTTIBaseClassDescriptor UR_AtomsAtEPTarget 3                                                                       // [0x10e1d0] 0x008a9000 + 0x10e1d0 = 0x009b71d0
RTTIBaseClassArray UR_AtomsAtEPTarget                                                                              // [0x10e1e8] 0x008a9000 + 0x10e1e8 = 0x009b71e8
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10e1fc] 0x008a9000 + 0x10e1fc = 0x009b71fc
RTTIClassHierarchyDescriptor UR_AtomsAtEPTarget 4                                                                  // [0x10e200] 0x008a9000 + 0x10e200 = 0x009b7200
RTTICompleteObjectLocator UR_AtomsAtEPTarget                                                                       // [0x10e210] 0x008a9000 + 0x10e210 = 0x009b7210
.long 0x00000000                                                                                                   // [0x10e224] 0x008a9000 + 0x10e224 = 0x009b7224
RTTIBaseClassDescriptor UR_FollowCastPosn 3                                                                        // [0x10e228] 0x008a9000 + 0x10e228 = 0x009b7228
RTTIBaseClassArray UR_FollowCastPosn                                                                               // [0x10e240] 0x008a9000 + 0x10e240 = 0x009b7240
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10e254] 0x008a9000 + 0x10e254 = 0x009b7254
RTTIClassHierarchyDescriptor UR_FollowCastPosn 4                                                                   // [0x10e258] 0x008a9000 + 0x10e258 = 0x009b7258
RTTICompleteObjectLocator UR_FollowCastPosn                                                                        // [0x10e268] 0x008a9000 + 0x10e268 = 0x009b7268
.long 0x00000000                                                                                                   // [0x10e27c] 0x008a9000 + 0x10e27c = 0x009b727c
RTTIBaseClassDescriptor UR_FollowLocalHand 3                                                                       // [0x10e280] 0x008a9000 + 0x10e280 = 0x009b7280
RTTIBaseClassArray UR_FollowLocalHand                                                                              // [0x10e298] 0x008a9000 + 0x10e298 = 0x009b7298
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10e2ac] 0x008a9000 + 0x10e2ac = 0x009b72ac
RTTIClassHierarchyDescriptor UR_FollowLocalHand 4                                                                  // [0x10e2b0] 0x008a9000 + 0x10e2b0 = 0x009b72b0
RTTICompleteObjectLocator UR_FollowLocalHand                                                                       // [0x10e2c0] 0x008a9000 + 0x10e2c0 = 0x009b72c0
.long 0x00000000                                                                                                   // [0x10e2d4] 0x008a9000 + 0x10e2d4 = 0x009b72d4
RTTIBaseClassDescriptor CreateRuleMakeChain 4                                                                      // [0x10e2d8] 0x008a9000 + 0x10e2d8 = 0x009b72d8
RTTIBaseClassArray CreateRuleMakeChain                                                                             // [0x10e2f0] 0x008a9000 + 0x10e2f0 = 0x009b72f0
.long ??_R1A@?0A@A@OnceOnlyCreateRule@@8
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreateRuleMakeChain 5                                                                 // [0x10e308] 0x008a9000 + 0x10e308 = 0x009b7308
RTTICompleteObjectLocator CreateRuleMakeChain                                                                      // [0x10e318] 0x008a9000 + 0x10e318 = 0x009b7318
.long 0x00000000                                                                                                   // [0x10e32c] 0x008a9000 + 0x10e32c = 0x009b732c
RTTIBaseClassDescriptor UR_ExplodeObject 3                                                                         // [0x10e330] 0x008a9000 + 0x10e330 = 0x009b7330
RTTIBaseClassArray UR_ExplodeObject                                                                                // [0x10e348] 0x008a9000 + 0x10e348 = 0x009b7348
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10e35c] 0x008a9000 + 0x10e35c = 0x009b735c
RTTIClassHierarchyDescriptor UR_ExplodeObject 4                                                                    // [0x10e360] 0x008a9000 + 0x10e360 = 0x009b7360
RTTICompleteObjectLocator UR_ExplodeObject                                                                         // [0x10e370] 0x008a9000 + 0x10e370 = 0x009b7370
.long 0x00000000                                                                                                   // [0x10e384] 0x008a9000 + 0x10e384 = 0x009b7384
RTTIBaseClassDescriptor UR_ExplodeObject2 3                                                                        // [0x10e388] 0x008a9000 + 0x10e388 = 0x009b7388
RTTIBaseClassArray UR_ExplodeObject2                                                                               // [0x10e3a0] 0x008a9000 + 0x10e3a0 = 0x009b73a0
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10e3b4] 0x008a9000 + 0x10e3b4 = 0x009b73b4
RTTIClassHierarchyDescriptor UR_ExplodeObject2 4                                                                   // [0x10e3b8] 0x008a9000 + 0x10e3b8 = 0x009b73b8
RTTICompleteObjectLocator UR_ExplodeObject2                                                                        // [0x10e3c8] 0x008a9000 + 0x10e3c8 = 0x009b73c8
.long 0x00000000                                                                                                   // [0x10e3dc] 0x008a9000 + 0x10e3dc = 0x009b73dc
RTTIBaseClassDescriptor UR_MoveAtomToBaseGroup 3                                                                   // [0x10e3e0] 0x008a9000 + 0x10e3e0 = 0x009b73e0
RTTIBaseClassArray UR_MoveAtomToBaseGroup                                                                          // [0x10e3f8] 0x008a9000 + 0x10e3f8 = 0x009b73f8
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10e40c] 0x008a9000 + 0x10e40c = 0x009b740c
RTTIClassHierarchyDescriptor UR_MoveAtomToBaseGroup 4                                                              // [0x10e410] 0x008a9000 + 0x10e410 = 0x009b7410
RTTICompleteObjectLocator UR_MoveAtomToBaseGroup                                                                   // [0x10e420] 0x008a9000 + 0x10e420 = 0x009b7420
.long 0x00000000                                                                                                   // [0x10e434] 0x008a9000 + 0x10e434 = 0x009b7434
RTTIBaseClassDescriptor AttatchFireBallToAtom 3                                                                    // [0x10e438] 0x008a9000 + 0x10e438 = 0x009b7438
RTTIBaseClassArray AttatchFireBallToAtom                                                                           // [0x10e450] 0x008a9000 + 0x10e450 = 0x009b7450
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10e464] 0x008a9000 + 0x10e464 = 0x009b7464
RTTIClassHierarchyDescriptor AttatchFireBallToAtom 4                                                               // [0x10e468] 0x008a9000 + 0x10e468 = 0x009b7468
RTTICompleteObjectLocator AttatchFireBallToAtom                                                                    // [0x10e478] 0x008a9000 + 0x10e478 = 0x009b7478
.long 0x00000000                                                                                                   // [0x10e48c] 0x008a9000 + 0x10e48c = 0x009b748c
RTTIBaseClassDescriptor CreateNewBaseAtom 3                                                                        // [0x10e490] 0x008a9000 + 0x10e490 = 0x009b7490
RTTIBaseClassArray CreateNewBaseAtom                                                                               // [0x10e4a8] 0x008a9000 + 0x10e4a8 = 0x009b74a8
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10e4bc] 0x008a9000 + 0x10e4bc = 0x009b74bc
RTTIClassHierarchyDescriptor CreateNewBaseAtom 4                                                                   // [0x10e4c0] 0x008a9000 + 0x10e4c0 = 0x009b74c0
RTTICompleteObjectLocator CreateNewBaseAtom                                                                        // [0x10e4d0] 0x008a9000 + 0x10e4d0 = 0x009b74d0
.long 0x00000000                                                                                                   // [0x10e4e4] 0x008a9000 + 0x10e4e4 = 0x009b74e4
RTTIBaseClassDescriptor CreateRuleSphere 4                                                                         // [0x10e4e8] 0x008a9000 + 0x10e4e8 = 0x009b74e8
RTTIBaseClassArray CreateRuleSphere                                                                                // [0x10e500] 0x008a9000 + 0x10e500 = 0x009b7500
.long ??_R1A@?0A@A@OnceOnlyCreateRule@@8
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreateRuleSphere 5                                                                    // [0x10e518] 0x008a9000 + 0x10e518 = 0x009b7518
RTTICompleteObjectLocator CreateRuleSphere                                                                         // [0x10e528] 0x008a9000 + 0x10e528 = 0x009b7528
.long 0x00000000                                                                                                   // [0x10e53c] 0x008a9000 + 0x10e53c = 0x009b753c
RTTIBaseClassDescriptor UR_SideSpin 3                                                                              // [0x10e540] 0x008a9000 + 0x10e540 = 0x009b7540
RTTIBaseClassArray UR_SideSpin                                                                                     // [0x10e558] 0x008a9000 + 0x10e558 = 0x009b7558
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10e56c] 0x008a9000 + 0x10e56c = 0x009b756c
RTTIClassHierarchyDescriptor UR_SideSpin 4                                                                         // [0x10e570] 0x008a9000 + 0x10e570 = 0x009b7570
RTTICompleteObjectLocator UR_SideSpin                                                                              // [0x10e580] 0x008a9000 + 0x10e580 = 0x009b7580
.long 0x00000000                                                                                                   // [0x10e594] 0x008a9000 + 0x10e594 = 0x009b7594
RTTIBaseClassDescriptor UR_InitialSpin 3                                                                           // [0x10e598] 0x008a9000 + 0x10e598 = 0x009b7598
RTTIBaseClassArray UR_InitialSpin                                                                                  // [0x10e5b0] 0x008a9000 + 0x10e5b0 = 0x009b75b0
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10e5c4] 0x008a9000 + 0x10e5c4 = 0x009b75c4
RTTIClassHierarchyDescriptor UR_InitialSpin 4                                                                      // [0x10e5c8] 0x008a9000 + 0x10e5c8 = 0x009b75c8
RTTICompleteObjectLocator UR_InitialSpin                                                                           // [0x10e5d8] 0x008a9000 + 0x10e5d8 = 0x009b75d8
.long 0x00000000                                                                                                   // [0x10e5ec] 0x008a9000 + 0x10e5ec = 0x009b75ec
RTTIBaseClassDescriptor CreateRuleFusedSphericalExplode 4                                                          // [0x10e5f0] 0x008a9000 + 0x10e5f0 = 0x009b75f0
RTTIBaseClassArray CreateRuleFusedSphericalExplode                                                                 // [0x10e608] 0x008a9000 + 0x10e608 = 0x009b7608
.long ??_R1A@?0A@A@OnceOnlyCreateRule@@8
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreateRuleFusedSphericalExplode 5                                                     // [0x10e620] 0x008a9000 + 0x10e620 = 0x009b7620
RTTICompleteObjectLocator CreateRuleFusedSphericalExplode                                                          // [0x10e630] 0x008a9000 + 0x10e630 = 0x009b7630
.long 0x00000000                                                                                                   // [0x10e644] 0x008a9000 + 0x10e644 = 0x009b7644
RTTIBaseClassDescriptor CreateRule_GameObjectRef 3                                                                 // [0x10e648] 0x008a9000 + 0x10e648 = 0x009b7648
RTTIBaseClassArray CreateRule_GameObjectRef                                                                        // [0x10e660] 0x008a9000 + 0x10e660 = 0x009b7660
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10e674] 0x008a9000 + 0x10e674 = 0x009b7674
RTTIClassHierarchyDescriptor CreateRule_GameObjectRef 4                                                            // [0x10e678] 0x008a9000 + 0x10e678 = 0x009b7678
RTTICompleteObjectLocator CreateRule_GameObjectRef                                                                 // [0x10e688] 0x008a9000 + 0x10e688 = 0x009b7688
.long 0x00000000                                                                                                   // [0x10e69c] 0x008a9000 + 0x10e69c = 0x009b769c
RTTIBaseClassDescriptor LightningForkFlicker 2                                                                     // [0x10e6a0] 0x008a9000 + 0x10e6a0 = 0x009b76a0
RTTIBaseClassArray LightningForkFlicker                                                                            // [0x10e6b8] 0x008a9000 + 0x10e6b8 = 0x009b76b8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor LightningForkFlicker 3                                                                // [0x10e6c8] 0x008a9000 + 0x10e6c8 = 0x009b76c8
RTTICompleteObjectLocator LightningForkFlicker                                                                     // [0x10e6d8] 0x008a9000 + 0x10e6d8 = 0x009b76d8
.long 0x00000000                                                                                                   // [0x10e6ec] 0x008a9000 + 0x10e6ec = 0x009b76ec
RTTIBaseClassDescriptor UR_FollowParent 3                                                                          // [0x10e6f0] 0x008a9000 + 0x10e6f0 = 0x009b76f0
RTTIBaseClassArray UR_FollowParent                                                                                 // [0x10e708] 0x008a9000 + 0x10e708 = 0x009b7708
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10e71c] 0x008a9000 + 0x10e71c = 0x009b771c
RTTIClassHierarchyDescriptor UR_FollowParent 4                                                                     // [0x10e720] 0x008a9000 + 0x10e720 = 0x009b7720
RTTICompleteObjectLocator UR_FollowParent                                                                          // [0x10e730] 0x008a9000 + 0x10e730 = 0x009b7730
.long 0x00000000                                                                                                   // [0x10e744] 0x008a9000 + 0x10e744 = 0x009b7744
RTTIBaseClassDescriptor UR_FollowTargets 3                                                                         // [0x10e748] 0x008a9000 + 0x10e748 = 0x009b7748
RTTIBaseClassArray UR_FollowTargets                                                                                // [0x10e760] 0x008a9000 + 0x10e760 = 0x009b7760
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10e774] 0x008a9000 + 0x10e774 = 0x009b7774
RTTIClassHierarchyDescriptor UR_FollowTargets 4                                                                    // [0x10e778] 0x008a9000 + 0x10e778 = 0x009b7778
RTTICompleteObjectLocator UR_FollowTargets                                                                         // [0x10e788] 0x008a9000 + 0x10e788 = 0x009b7788
.long 0x00000000                                                                                                   // [0x10e79c] 0x008a9000 + 0x10e79c = 0x009b779c
RTTIBaseClassDescriptor UR_CreatureSpellItch 3                                                                     // [0x10e7a0] 0x008a9000 + 0x10e7a0 = 0x009b77a0
RTTIBaseClassArray UR_CreatureSpellItch                                                                            // [0x10e7b8] 0x008a9000 + 0x10e7b8 = 0x009b77b8
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10e7cc] 0x008a9000 + 0x10e7cc = 0x009b77cc
RTTIClassHierarchyDescriptor UR_CreatureSpellItch 4                                                                // [0x10e7d0] 0x008a9000 + 0x10e7d0 = 0x009b77d0
RTTICompleteObjectLocator UR_CreatureSpellItch                                                                     // [0x10e7e0] 0x008a9000 + 0x10e7e0 = 0x009b77e0
.long 0x00000000                                                                                                   // [0x10e7f4] 0x008a9000 + 0x10e7f4 = 0x009b77f4
RTTIBaseClassDescriptor UR_CreatureSpellFreeze 3                                                                   // [0x10e7f8] 0x008a9000 + 0x10e7f8 = 0x009b77f8
RTTIBaseClassArray UR_CreatureSpellFreeze                                                                          // [0x10e810] 0x008a9000 + 0x10e810 = 0x009b7810
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10e824] 0x008a9000 + 0x10e824 = 0x009b7824
RTTIClassHierarchyDescriptor UR_CreatureSpellFreeze 4                                                              // [0x10e828] 0x008a9000 + 0x10e828 = 0x009b7828
RTTICompleteObjectLocator UR_CreatureSpellFreeze                                                                   // [0x10e838] 0x008a9000 + 0x10e838 = 0x009b7838
.long 0x00000000                                                                                                   // [0x10e84c] 0x008a9000 + 0x10e84c = 0x009b784c
RTTIBaseClassDescriptor UR_CreatureSpellGeneric 3                                                                  // [0x10e850] 0x008a9000 + 0x10e850 = 0x009b7850
RTTIBaseClassArray UR_CreatureSpellGeneric                                                                         // [0x10e868] 0x008a9000 + 0x10e868 = 0x009b7868
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10e87c] 0x008a9000 + 0x10e87c = 0x009b787c
RTTIClassHierarchyDescriptor UR_CreatureSpellGeneric 4                                                             // [0x10e880] 0x008a9000 + 0x10e880 = 0x009b7880
RTTICompleteObjectLocator UR_CreatureSpellGeneric                                                                  // [0x10e890] 0x008a9000 + 0x10e890 = 0x009b7890
.long 0x00000000                                                                                                   // [0x10e8a4] 0x008a9000 + 0x10e8a4 = 0x009b78a4
RTTIBaseClassDescriptor UR_CreatureSpellCompassion 3                                                               // [0x10e8a8] 0x008a9000 + 0x10e8a8 = 0x009b78a8
RTTIBaseClassArray UR_CreatureSpellCompassion                                                                      // [0x10e8c0] 0x008a9000 + 0x10e8c0 = 0x009b78c0
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10e8d4] 0x008a9000 + 0x10e8d4 = 0x009b78d4
RTTIClassHierarchyDescriptor UR_CreatureSpellCompassion 4                                                          // [0x10e8d8] 0x008a9000 + 0x10e8d8 = 0x009b78d8
RTTICompleteObjectLocator UR_CreatureSpellCompassion                                                               // [0x10e8e8] 0x008a9000 + 0x10e8e8 = 0x009b78e8
.long 0x00000000                                                                                                   // [0x10e8fc] 0x008a9000 + 0x10e8fc = 0x009b78fc
RTTIBaseClassDescriptor UR_ManaPathNew 3                                                                           // [0x10e900] 0x008a9000 + 0x10e900 = 0x009b7900
RTTIBaseClassArray UR_ManaPathNew                                                                                  // [0x10e918] 0x008a9000 + 0x10e918 = 0x009b7918
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10e92c] 0x008a9000 + 0x10e92c = 0x009b792c
RTTIClassHierarchyDescriptor UR_ManaPathNew 4                                                                      // [0x10e930] 0x008a9000 + 0x10e930 = 0x009b7930
RTTICompleteObjectLocator UR_ManaPathNew                                                                           // [0x10e940] 0x008a9000 + 0x10e940 = 0x009b7940
.long 0x00000000                                                                                                   // [0x10e954] 0x008a9000 + 0x10e954 = 0x009b7954
RTTIBaseClassDescriptor UR_BeliefSprite 3                                                                          // [0x10e958] 0x008a9000 + 0x10e958 = 0x009b7958
RTTIBaseClassArray UR_BeliefSprite                                                                                 // [0x10e970] 0x008a9000 + 0x10e970 = 0x009b7970
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10e984] 0x008a9000 + 0x10e984 = 0x009b7984
RTTIClassHierarchyDescriptor UR_BeliefSprite 4                                                                     // [0x10e988] 0x008a9000 + 0x10e988 = 0x009b7988
RTTICompleteObjectLocator UR_BeliefSprite                                                                          // [0x10e998] 0x008a9000 + 0x10e998 = 0x009b7998
.long 0x00000000                                                                                                   // [0x10e9ac] 0x008a9000 + 0x10e9ac = 0x009b79ac
RTTIBaseClassDescriptor UR_TownCentreBelief 3                                                                      // [0x10e9b0] 0x008a9000 + 0x10e9b0 = 0x009b79b0
RTTIBaseClassArray UR_TownCentreBelief                                                                             // [0x10e9c8] 0x008a9000 + 0x10e9c8 = 0x009b79c8
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10e9dc] 0x008a9000 + 0x10e9dc = 0x009b79dc
RTTIClassHierarchyDescriptor UR_TownCentreBelief 4                                                                 // [0x10e9e0] 0x008a9000 + 0x10e9e0 = 0x009b79e0
RTTICompleteObjectLocator UR_TownCentreBelief                                                                      // [0x10e9f0] 0x008a9000 + 0x10e9f0 = 0x009b79f0
.long 0x00000000                                                                                                   // [0x10ea04] 0x008a9000 + 0x10ea04 = 0x009b7a04
RTTIBaseClassDescriptor UR_Rope 3                                                                                  // [0x10ea08] 0x008a9000 + 0x10ea08 = 0x009b7a08
RTTIBaseClassArray UR_Rope                                                                                         // [0x10ea20] 0x008a9000 + 0x10ea20 = 0x009b7a20
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10ea34] 0x008a9000 + 0x10ea34 = 0x009b7a34
RTTIClassHierarchyDescriptor UR_Rope 4                                                                             // [0x10ea38] 0x008a9000 + 0x10ea38 = 0x009b7a38
RTTICompleteObjectLocator UR_Rope                                                                                  // [0x10ea48] 0x008a9000 + 0x10ea48 = 0x009b7a48
.long 0x00000000                                                                                                   // [0x10ea5c] 0x008a9000 + 0x10ea5c = 0x009b7a5c
RTTIBaseClassDescriptor UR_ObjectArcer 3                                                                           // [0x10ea60] 0x008a9000 + 0x10ea60 = 0x009b7a60
RTTIBaseClassArray UR_ObjectArcer                                                                                  // [0x10ea78] 0x008a9000 + 0x10ea78 = 0x009b7a78
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10ea8c] 0x008a9000 + 0x10ea8c = 0x009b7a8c
RTTIClassHierarchyDescriptor UR_ObjectArcer 4                                                                      // [0x10ea90] 0x008a9000 + 0x10ea90 = 0x009b7a90
RTTICompleteObjectLocator UR_ObjectArcer                                                                           // [0x10eaa0] 0x008a9000 + 0x10eaa0 = 0x009b7aa0
.long 0x00000000                                                                                                   // [0x10eab4] 0x008a9000 + 0x10eab4 = 0x009b7ab4
RTTIBaseClassDescriptor UR_ScaleByCameraDist 3                                                                     // [0x10eab8] 0x008a9000 + 0x10eab8 = 0x009b7ab8
RTTIBaseClassArray UR_ScaleByCameraDist                                                                            // [0x10ead0] 0x008a9000 + 0x10ead0 = 0x009b7ad0
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10eae4] 0x008a9000 + 0x10eae4 = 0x009b7ae4
RTTIClassHierarchyDescriptor UR_ScaleByCameraDist 4                                                                // [0x10eae8] 0x008a9000 + 0x10eae8 = 0x009b7ae8
RTTICompleteObjectLocator UR_ScaleByCameraDist                                                                     // [0x10eaf8] 0x008a9000 + 0x10eaf8 = 0x009b7af8
.long 0x00000000                                                                                                   // [0x10eb0c] 0x008a9000 + 0x10eb0c = 0x009b7b0c
RTTIBaseClassDescriptor RemoveRule 2                                                                               // [0x10eb10] 0x008a9000 + 0x10eb10 = 0x009b7b10
RTTIBaseClassDescriptor RemoveRuleOldAgeOnly 3                                                                     // [0x10eb28] 0x008a9000 + 0x10eb28 = 0x009b7b28
RTTIBaseClassArray RemoveRuleOldAgeOnly                                                                            // [0x10eb40] 0x008a9000 + 0x10eb40 = 0x009b7b40
.long ??_R1A@?0A@A@RemoveRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10eb54] 0x008a9000 + 0x10eb54 = 0x009b7b54
RTTIClassHierarchyDescriptor RemoveRuleOldAgeOnly 4                                                                // [0x10eb58] 0x008a9000 + 0x10eb58 = 0x009b7b58
RTTICompleteObjectLocator RemoveRuleOldAgeOnly                                                                     // [0x10eb68] 0x008a9000 + 0x10eb68 = 0x009b7b68
.long 0x00000000                                                                                                   // [0x10eb7c] 0x008a9000 + 0x10eb7c = 0x009b7b7c
RTTIBaseClassDescriptor RemoveRuleProb 3                                                                           // [0x10eb80] 0x008a9000 + 0x10eb80 = 0x009b7b80
RTTIBaseClassArray RemoveRuleProb                                                                                  // [0x10eb98] 0x008a9000 + 0x10eb98 = 0x009b7b98
.long ??_R1A@?0A@A@RemoveRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10ebac] 0x008a9000 + 0x10ebac = 0x009b7bac
RTTIClassHierarchyDescriptor RemoveRuleProb 4                                                                      // [0x10ebb0] 0x008a9000 + 0x10ebb0 = 0x009b7bb0
RTTICompleteObjectLocator RemoveRuleProb                                                                           // [0x10ebc0] 0x008a9000 + 0x10ebc0 = 0x009b7bc0
.long 0x00000000                                                                                                   // [0x10ebd4] 0x008a9000 + 0x10ebd4 = 0x009b7bd4
RTTIBaseClassDescriptor RemoveRuleAfterCloseDown 3                                                                 // [0x10ebd8] 0x008a9000 + 0x10ebd8 = 0x009b7bd8
RTTIBaseClassArray RemoveRuleAfterCloseDown                                                                        // [0x10ebf0] 0x008a9000 + 0x10ebf0 = 0x009b7bf0
.long ??_R1A@?0A@A@RemoveRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10ec04] 0x008a9000 + 0x10ec04 = 0x009b7c04
RTTIClassHierarchyDescriptor RemoveRuleAfterCloseDown 4                                                            // [0x10ec08] 0x008a9000 + 0x10ec08 = 0x009b7c08
RTTICompleteObjectLocator RemoveRuleAfterCloseDown                                                                 // [0x10ec18] 0x008a9000 + 0x10ec18 = 0x009b7c18
.long 0x00000000                                                                                                   // [0x10ec2c] 0x008a9000 + 0x10ec2c = 0x009b7c2c
RTTIBaseClassDescriptor RemoveRuleAfterConditionTrue 3                                                             // [0x10ec30] 0x008a9000 + 0x10ec30 = 0x009b7c30
RTTIBaseClassArray RemoveRuleAfterConditionTrue                                                                    // [0x10ec48] 0x008a9000 + 0x10ec48 = 0x009b7c48
.long ??_R1A@?0A@A@RemoveRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10ec5c] 0x008a9000 + 0x10ec5c = 0x009b7c5c
RTTIClassHierarchyDescriptor RemoveRuleAfterConditionTrue 4                                                        // [0x10ec60] 0x008a9000 + 0x10ec60 = 0x009b7c60
RTTICompleteObjectLocator RemoveRuleAfterConditionTrue                                                             // [0x10ec70] 0x008a9000 + 0x10ec70 = 0x009b7c70
.long 0x00000000                                                                                                   // [0x10ec84] 0x008a9000 + 0x10ec84 = 0x009b7c84
RTTIBaseClassDescriptor LandscapeCollide 2                                                                         // [0x10ec88] 0x008a9000 + 0x10ec88 = 0x009b7c88
RTTIBaseClassArray LandscapeCollide                                                                                // [0x10eca0] 0x008a9000 + 0x10eca0 = 0x009b7ca0
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

RTTIClassHierarchyDescriptor LandscapeCollide 3                                                                    // [0x10ecb0] 0x008a9000 + 0x10ecb0 = 0x009b7cb0
RTTICompleteObjectLocator LandscapeCollide                                                                         // [0x10ecc0] 0x008a9000 + 0x10ecc0 = 0x009b7cc0
.long 0x00000000                                                                                                   // [0x10ecd4] 0x008a9000 + 0x10ecd4 = 0x009b7cd4
RTTIBaseClassDescriptor SetInitialRandomOrientations 3                                                             // [0x10ecd8] 0x008a9000 + 0x10ecd8 = 0x009b7cd8
RTTIBaseClassArray SetInitialRandomOrientations                                                                    // [0x10ecf0] 0x008a9000 + 0x10ecf0 = 0x009b7cf0
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10ed04] 0x008a9000 + 0x10ed04 = 0x009b7d04
RTTIClassHierarchyDescriptor SetInitialRandomOrientations 4                                                        // [0x10ed08] 0x008a9000 + 0x10ed08 = 0x009b7d08
RTTICompleteObjectLocator SetInitialRandomOrientations                                                             // [0x10ed18] 0x008a9000 + 0x10ed18 = 0x009b7d18
.long 0x00000000                                                                                                   // [0x10ed2c] 0x008a9000 + 0x10ed2c = 0x009b7d2c
RTTIBaseClassDescriptor DrawOffset 3                                                                               // [0x10ed30] 0x008a9000 + 0x10ed30 = 0x009b7d30
RTTIBaseClassArray DrawOffset                                                                                      // [0x10ed48] 0x008a9000 + 0x10ed48 = 0x009b7d48
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10ed5c] 0x008a9000 + 0x10ed5c = 0x009b7d5c
RTTIClassHierarchyDescriptor DrawOffset 4                                                                          // [0x10ed60] 0x008a9000 + 0x10ed60 = 0x009b7d60
RTTICompleteObjectLocator DrawOffset                                                                               // [0x10ed70] 0x008a9000 + 0x10ed70 = 0x009b7d70
.long 0x00000000                                                                                                   // [0x10ed84] 0x008a9000 + 0x10ed84 = 0x009b7d84
RTTIBaseClassDescriptor DrawOffsetLT 4                                                                             // [0x10ed88] 0x008a9000 + 0x10ed88 = 0x009b7d88
RTTIBaseClassArray DrawOffsetLT                                                                                    // [0x10eda0] 0x008a9000 + 0x10eda0 = 0x009b7da0
.long ??_R1A@?0A@A@DrawOffset@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor DrawOffsetLT 5                                                                        // [0x10edb8] 0x008a9000 + 0x10edb8 = 0x009b7db8
RTTICompleteObjectLocator DrawOffsetLT                                                                             // [0x10edc8] 0x008a9000 + 0x10edc8 = 0x009b7dc8
.long 0x00000000                                                                                                   // [0x10eddc] 0x008a9000 + 0x10eddc = 0x009b7ddc
RTTIBaseClassDescriptor DrawOffsetDecay 4                                                                          // [0x10ede0] 0x008a9000 + 0x10ede0 = 0x009b7de0
RTTIBaseClassArray DrawOffsetDecay                                                                                 // [0x10edf8] 0x008a9000 + 0x10edf8 = 0x009b7df8
.long ??_R1A@?0A@A@DrawOffset@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor DrawOffsetDecay 5                                                                     // [0x10ee10] 0x008a9000 + 0x10ee10 = 0x009b7e10
RTTICompleteObjectLocator DrawOffsetDecay                                                                          // [0x10ee20] 0x008a9000 + 0x10ee20 = 0x009b7e20
.long 0x00000000                                                                                                   // [0x10ee34] 0x008a9000 + 0x10ee34 = 0x009b7e34
.byte 0x40, 0xd2, 0x9c, 0x00, 0x00, 0x00, 0x00, 0x00                                                               // [0x10ee38] 0x008a9000 + 0x10ee38 = 0x009b7e38
.byte 0x18, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff                                                               // [0x10ee40] 0x008a9000 + 0x10ee40 = 0x009b7e40
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00                                                               // [0x10ee48] 0x008a9000 + 0x10ee48 = 0x009b7e48
RTTIBaseClassDescriptor Particle3DObj 5                                                                            // [0x10ee50] 0x008a9000 + 0x10ee50 = 0x009b7e50
RTTIBaseClassArray Particle3DObj                                                                                   // [0x10ee68] 0x008a9000 + 0x10ee68 = 0x009b7e68
.long ??_R1A@?0A@A@RenderParticle@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x009b7e38
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10ee84] 0x008a9000 + 0x10ee84 = 0x009b7e84
RTTIClassHierarchyDescriptorMultiInheritance Particle3DObj 6                                                       // [0x10ee88] 0x008a9000 + 0x10ee88 = 0x009b7e88
RTTICompleteObjectLocator Particle3DObj                                                                            // [0x10ee98] 0x008a9000 + 0x10ee98 = 0x009b7e98
.long 0x00000000                                                                                                   // [0x10eeac] 0x008a9000 + 0x10eeac = 0x009b7eac
RTTIBaseClassDescriptor Particle3DObjAnimTextured 6                                                                // [0x10eeb0] 0x008a9000 + 0x10eeb0 = 0x009b7eb0
RTTIBaseClassArray Particle3DObjAnimTextured                                                                       // [0x10eec8] 0x008a9000 + 0x10eec8 = 0x009b7ec8
.long ??_R1A@?0A@A@Particle3DObj@@8
.long ??_R1A@?0A@A@RenderParticle@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x009b7e38
.long 0x00000000

RTTIClassHierarchyDescriptorMultiInheritance Particle3DObjAnimTextured 7                                           // [0x10eee8] 0x008a9000 + 0x10eee8 = 0x009b7ee8
RTTICompleteObjectLocator Particle3DObjAnimTextured                                                                // [0x10eef8] 0x008a9000 + 0x10eef8 = 0x009b7ef8
.long 0x00000000                                                                                                   // [0x10ef0c] 0x008a9000 + 0x10ef0c = 0x009b7f0c
RTTIBaseClassDescriptor RenderParticleCreatureRef 4                                                                // [0x10ef10] 0x008a9000 + 0x10ef10 = 0x009b7f10
RTTIBaseClassArray RenderParticleCreatureRef                                                                       // [0x10ef28] 0x008a9000 + 0x10ef28 = 0x009b7f28
.long ??_R1A@?0A@A@RenderParticle@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor RenderParticleCreatureRef 5                                                           // [0x10ef40] 0x008a9000 + 0x10ef40 = 0x009b7f40
RTTICompleteObjectLocator RenderParticleCreatureRef                                                                // [0x10ef50] 0x008a9000 + 0x10ef50 = 0x009b7f50
.long 0x00000000                                                                                                   // [0x10ef64] 0x008a9000 + 0x10ef64 = 0x009b7f64
RTTIBaseClassArray RenderParticleGameObjectRef                                                                     // [0x10ef68] 0x008a9000 + 0x10ef68 = 0x009b7f68
.long ??_R1A@?0A@A@RenderParticle@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor RenderParticleGameObjectRef 5                                                         // [0x10ef80] 0x008a9000 + 0x10ef80 = 0x009b7f80
RTTICompleteObjectLocator RenderParticleGameObjectRef                                                              // [0x10ef90] 0x008a9000 + 0x10ef90 = 0x009b7f90
.long 0x00000000                                                                                                   // [0x10efa4] 0x008a9000 + 0x10efa4 = 0x009b7fa4
RTTIBaseClassDescriptor Particle3DAnim 4                                                                           // [0x10efa8] 0x008a9000 + 0x10efa8 = 0x009b7fa8
RTTIBaseClassArray Particle3DAnim                                                                                  // [0x10efc0] 0x008a9000 + 0x10efc0 = 0x009b7fc0
.long ??_R1A@?0A@A@RenderParticle@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Particle3DAnim 5                                                                      // [0x10efd8] 0x008a9000 + 0x10efd8 = 0x009b7fd8
RTTICompleteObjectLocator Particle3DAnim                                                                           // [0x10efe8] 0x008a9000 + 0x10efe8 = 0x009b7fe8
.long 0x00000000                                                                                                   // [0x10effc] 0x008a9000 + 0x10effc = 0x009b7ffc
RTTIBaseClassDescriptor Particle3DAnimWithCamera 5                                                                 // [0x10f000] 0x008a9000 + 0x10f000 = 0x009b8000
RTTIBaseClassArray Particle3DAnimWithCamera                                                                        // [0x10f018] 0x008a9000 + 0x10f018 = 0x009b8018
.long ??_R1A@?0A@A@Particle3DAnim@@8
.long ??_R1A@?0A@A@RenderParticle@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10f034] 0x008a9000 + 0x10f034 = 0x009b8034
RTTIClassHierarchyDescriptor Particle3DAnimWithCamera 6                                                            // [0x10f038] 0x008a9000 + 0x10f038 = 0x009b8038
RTTICompleteObjectLocator Particle3DAnimWithCamera                                                                 // [0x10f048] 0x008a9000 + 0x10f048 = 0x009b8048
.long 0x00000000                                                                                                   // [0x10f05c] 0x008a9000 + 0x10f05c = 0x009b805c
.byte 0x40, 0xd2, 0x9c, 0x00, 0x00, 0x00, 0x00, 0x00                                                               // [0x10f060] 0x008a9000 + 0x10f060 = 0x009b8060
.byte 0x14, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff                                                               // [0x10f068] 0x008a9000 + 0x10f068 = 0x009b8068
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00                                                               // [0x10f070] 0x008a9000 + 0x10f070 = 0x009b8070
RTTIBaseClassDescriptor Chain 4                                                                                    // [0x10f078] 0x008a9000 + 0x10f078 = 0x009b8078
RTTIBaseClassArray Chain                                                                                           // [0x10f090] 0x008a9000 + 0x10f090 = 0x009b8090
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x009b8060
.long 0x00000000

RTTIClassHierarchyDescriptorMultiInheritance Chain 5                                                               // [0x10f0a8] 0x008a9000 + 0x10f0a8 = 0x009b80a8
RTTICompleteObjectLocator Chain                                                                                    // [0x10f0b8] 0x008a9000 + 0x10f0b8 = 0x009b80b8
.long 0x00000000                                                                                                   // [0x10f0cc] 0x008a9000 + 0x10f0cc = 0x009b80cc
RTTIBaseClassDescriptor RenderParticleGJMesh 4                                                                     // [0x10f0d0] 0x008a9000 + 0x10f0d0 = 0x009b80d0
RTTIBaseClassArray RenderParticleGJMesh                                                                            // [0x10f0e8] 0x008a9000 + 0x10f0e8 = 0x009b80e8
.long ??_R1A@?0A@A@RenderParticle@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor RenderParticleGJMesh 5                                                                // [0x10f100] 0x008a9000 + 0x10f100 = 0x009b8100
RTTICompleteObjectLocator RenderParticleGJMesh                                                                     // [0x10f110] 0x008a9000 + 0x10f110 = 0x009b8110
.long 0x00000000                                                                                                   // [0x10f124] 0x008a9000 + 0x10f124 = 0x009b8124
RTTIBaseClassDescriptor RenderParticleGJMeshRotatingUV 5                                                           // [0x10f128] 0x008a9000 + 0x10f128 = 0x009b8128
RTTIBaseClassArray RenderParticleGJMeshRotatingUV                                                                  // [0x10f140] 0x008a9000 + 0x10f140 = 0x009b8140
.long ??_R1A@?0A@A@RenderParticleGJMesh@@8
.long ??_R1A@?0A@A@RenderParticle@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10f15c] 0x008a9000 + 0x10f15c = 0x009b815c
RTTIClassHierarchyDescriptor RenderParticleGJMeshRotatingUV 6                                                      // [0x10f160] 0x008a9000 + 0x10f160 = 0x009b8160
RTTICompleteObjectLocator RenderParticleGJMeshRotatingUV                                                           // [0x10f170] 0x008a9000 + 0x10f170 = 0x009b8170
.long 0x00000000                                                                                                   // [0x10f184] 0x008a9000 + 0x10f184 = 0x009b8184
RTTIBaseClassDescriptor RenderParticleMist 4                                                                       // [0x10f188] 0x008a9000 + 0x10f188 = 0x009b8188
RTTIBaseClassArray RenderParticleMist                                                                              // [0x10f1a0] 0x008a9000 + 0x10f1a0 = 0x009b81a0
.long ??_R1A@?0A@A@RenderParticle@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor RenderParticleMist 5                                                                  // [0x10f1b8] 0x008a9000 + 0x10f1b8 = 0x009b81b8
RTTICompleteObjectLocator RenderParticleMist                                                                       // [0x10f1c8] 0x008a9000 + 0x10f1c8 = 0x009b81c8
.long 0x00000000                                                                                                   // [0x10f1dc] 0x008a9000 + 0x10f1dc = 0x009b81dc
RTTIBaseClassDescriptor ParticlePlayerSymbol 4                                                                     // [0x10f1e0] 0x008a9000 + 0x10f1e0 = 0x009b81e0
RTTIBaseClassArray ParticlePlayerSymbol                                                                            // [0x10f1f8] 0x008a9000 + 0x10f1f8 = 0x009b81f8
.long ??_R1A@?0A@A@RenderParticle@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ParticlePlayerSymbol 5                                                                // [0x10f210] 0x008a9000 + 0x10f210 = 0x009b8210
RTTICompleteObjectLocator ParticlePlayerSymbol                                                                     // [0x10f220] 0x008a9000 + 0x10f220 = 0x009b8220
.long 0x00000000                                                                                                   // [0x10f234] 0x008a9000 + 0x10f234 = 0x009b8234
RTTIBaseClassDescriptor RenderParticleGameObject 4                                                                 // [0x10f238] 0x008a9000 + 0x10f238 = 0x009b8238
RTTIBaseClassArray RenderParticleGameObject                                                                        // [0x10f250] 0x008a9000 + 0x10f250 = 0x009b8250
.long ??_R1A@?0A@A@RenderParticle@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor RenderParticleGameObject 5                                                            // [0x10f268] 0x008a9000 + 0x10f268 = 0x009b8268
RTTICompleteObjectLocator RenderParticleGameObject                                                                 // [0x10f278] 0x008a9000 + 0x10f278 = 0x009b8278
.long 0x00000000                                                                                                   // [0x10f28c] 0x008a9000 + 0x10f28c = 0x009b828c
RTTIBaseClassDescriptor ParticleLightMap 4                                                                         // [0x10f290] 0x008a9000 + 0x10f290 = 0x009b8290
RTTIBaseClassArray ParticleLightMap                                                                                // [0x10f2a8] 0x008a9000 + 0x10f2a8 = 0x009b82a8
.long ??_R1A@?0A@A@RenderParticle@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ParticleLightMap 5                                                                    // [0x10f2c0] 0x008a9000 + 0x10f2c0 = 0x009b82c0
RTTICompleteObjectLocator ParticleLightMap                                                                         // [0x10f2d0] 0x008a9000 + 0x10f2d0 = 0x009b82d0
.long 0x00000000                                                                                                   // [0x10f2e4] 0x008a9000 + 0x10f2e4 = 0x009b82e4
RTTIBaseClassDescriptor RenderParticleVolBlendMesh 4                                                               // [0x10f2e8] 0x008a9000 + 0x10f2e8 = 0x009b82e8
RTTIBaseClassArray RenderParticleVolBlendMesh                                                                      // [0x10f300] 0x008a9000 + 0x10f300 = 0x009b8300
.long ??_R1A@?0A@A@RenderParticle@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor RenderParticleVolBlendMesh 5                                                          // [0x10f318] 0x008a9000 + 0x10f318 = 0x009b8318
RTTICompleteObjectLocator RenderParticleVolBlendMesh                                                               // [0x10f328] 0x008a9000 + 0x10f328 = 0x009b8328
.long 0x00000000                                                                                                   // [0x10f33c] 0x008a9000 + 0x10f33c = 0x009b833c
RTTIBaseClassDescriptor DefensiveShield 3                                                                          // [0x10f340] 0x008a9000 + 0x10f340 = 0x009b8340
RTTIBaseClassArray DefensiveShield                                                                                 // [0x10f358] 0x008a9000 + 0x10f358 = 0x009b8358
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10f36c] 0x008a9000 + 0x10f36c = 0x009b836c
RTTIClassHierarchyDescriptor DefensiveShield 4                                                                     // [0x10f370] 0x008a9000 + 0x10f370 = 0x009b8370
RTTICompleteObjectLocator DefensiveShield                                                                          // [0x10f380] 0x008a9000 + 0x10f380 = 0x009b8380
.long 0x00000000                                                                                                   // [0x10f394] 0x008a9000 + 0x10f394 = 0x009b8394
RTTIBaseClassDescriptor DefensiveSphere 4                                                                          // [0x10f398] 0x008a9000 + 0x10f398 = 0x009b8398
RTTIBaseClassArray DefensiveSphere                                                                                 // [0x10f3b0] 0x008a9000 + 0x10f3b0 = 0x009b83b0
.long ??_R1A@?0A@A@DefensiveShield@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor DefensiveSphere 5                                                                     // [0x10f3c8] 0x008a9000 + 0x10f3c8 = 0x009b83c8
RTTICompleteObjectLocator DefensiveSphere                                                                          // [0x10f3d8] 0x008a9000 + 0x10f3d8 = 0x009b83d8
.long 0x00000000                                                                                                   // [0x10f3ec] 0x008a9000 + 0x10f3ec = 0x009b83ec
RTTIBaseClassDescriptor PSysSound 3                                                                                // [0x10f3f0] 0x008a9000 + 0x10f3f0 = 0x009b83f0
RTTIBaseClassArray PSysSound                                                                                       // [0x10f408] 0x008a9000 + 0x10f408 = 0x009b8408
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10f41c] 0x008a9000 + 0x10f41c = 0x009b841c
RTTIClassHierarchyDescriptor PSysSound 4                                                                           // [0x10f420] 0x008a9000 + 0x10f420 = 0x009b8420
RTTICompleteObjectLocator PSysSound                                                                                // [0x10f430] 0x008a9000 + 0x10f430 = 0x009b8430
.long 0x00000000                                                                                                   // [0x10f444] 0x008a9000 + 0x10f444 = 0x009b8444
RTTIBaseClassDescriptor UR_Tornado 3                                                                               // [0x10f448] 0x008a9000 + 0x10f448 = 0x009b8448
RTTIBaseClassArray UR_Tornado                                                                                      // [0x10f460] 0x008a9000 + 0x10f460 = 0x009b8460
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10f474] 0x008a9000 + 0x10f474 = 0x009b8474
RTTIClassHierarchyDescriptor UR_Tornado 4                                                                          // [0x10f478] 0x008a9000 + 0x10f478 = 0x009b8478
RTTICompleteObjectLocator UR_Tornado                                                                               // [0x10f488] 0x008a9000 + 0x10f488 = 0x009b8488
.long 0x00000000                                                                                                   // [0x10f49c] 0x008a9000 + 0x10f49c = 0x009b849c
RTTIBaseClassDescriptor UR_VortexAttract 3                                                                         // [0x10f4a0] 0x008a9000 + 0x10f4a0 = 0x009b84a0
RTTIBaseClassArray UR_VortexAttract                                                                                // [0x10f4b8] 0x008a9000 + 0x10f4b8 = 0x009b84b8
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10f4cc] 0x008a9000 + 0x10f4cc = 0x009b84cc
RTTIClassHierarchyDescriptor UR_VortexAttract 4                                                                    // [0x10f4d0] 0x008a9000 + 0x10f4d0 = 0x009b84d0
RTTICompleteObjectLocator UR_VortexAttract                                                                         // [0x10f4e0] 0x008a9000 + 0x10f4e0 = 0x009b84e0
.long 0x00000000                                                                                                   // [0x10f4f4] 0x008a9000 + 0x10f4f4 = 0x009b84f4
RTTIBaseClassDescriptor UR_CloudMoverNew 3                                                                         // [0x10f4f8] 0x008a9000 + 0x10f4f8 = 0x009b84f8
RTTIBaseClassArray UR_CloudMoverNew                                                                                // [0x10f510] 0x008a9000 + 0x10f510 = 0x009b8510
.long ??_R1A@?0A@A@UpdateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10f524] 0x008a9000 + 0x10f524 = 0x009b8524
RTTIClassHierarchyDescriptor UR_CloudMoverNew 4                                                                    // [0x10f528] 0x008a9000 + 0x10f528 = 0x009b8528
RTTICompleteObjectLocator UR_CloudMoverNew                                                                         // [0x10f538] 0x008a9000 + 0x10f538 = 0x009b8538
.long 0x00000000                                                                                                   // [0x10f54c] 0x008a9000 + 0x10f54c = 0x009b854c
RTTIBaseClassDescriptor UR_CloudGather 3                                                                           // [0x10f550] 0x008a9000 + 0x10f550 = 0x009b8550
RTTIBaseClassArray UR_CloudGather                                                                                  // [0x10f568] 0x008a9000 + 0x10f568 = 0x009b8568
.long ??_R1A@?0A@A@AtomCreateRule@@8
.long ??_R1A@?0A@A@AtomCollectionModifier@@8
.long ??_R1A@?0A@A@Persistent@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10f57c] 0x008a9000 + 0x10f57c = 0x009b857c
RTTIClassHierarchyDescriptor UR_CloudGather 4                                                                      // [0x10f580] 0x008a9000 + 0x10f580 = 0x009b8580
RTTICompleteObjectLocator UR_CloudGather                                                                           // [0x10f590] 0x008a9000 + 0x10f590 = 0x009b8590
.long 0x00000000                                                                                                   // [0x10f5a4] 0x008a9000 + 0x10f5a4 = 0x009b85a4
RTTIBaseClassDescriptor CollectionData@UR_StormCast 4                                                              // [0x10f5a8] 0x008a9000 + 0x10f5a8 = 0x009b85a8
RTTIBaseClassArray CollectionData@UR_StormCast                                                                     // [0x10f5c0] 0x008a9000 + 0x10f5c0 = 0x009b85c0
.long ??_R1A@?0A@A@BaseCollectionModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CollectionData@UR_StormCast 5                                                         // [0x10f5d8] 0x008a9000 + 0x10f5d8 = 0x009b85d8
RTTICompleteObjectLocator CollectionData@UR_StormCast                                                              // [0x10f5e8] 0x008a9000 + 0x10f5e8 = 0x009b85e8
.long 0x00000000                                                                                                   // [0x10f5fc] 0x008a9000 + 0x10f5fc = 0x009b85fc
RTTIBaseClassDescriptor AtomData@UR_StormCast 4                                                                    // [0x10f600] 0x008a9000 + 0x10f600 = 0x009b8600
RTTIBaseClassArray AtomData@UR_StormCast                                                                           // [0x10f618] 0x008a9000 + 0x10f618 = 0x009b8618
.long ??_R1A@?0A@A@BaseAtomModifierData@@8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AtomData@UR_StormCast 5                                                               // [0x10f630] 0x008a9000 + 0x10f630 = 0x009b8630
RTTICompleteObjectLocator AtomData@UR_StormCast                                                                    // [0x10f640] 0x008a9000 + 0x10f640 = 0x009b8640
.long 0x00000000                                                                                                   // [0x10f654] 0x008a9000 + 0x10f654 = 0x009b8654
RTTIBaseClassDescriptor PuzzlePig 11                                                                               // [0x10f658] 0x008a9000 + 0x10f658 = 0x009b8658
RTTIBaseClassArray PuzzlePig                                                                                       // [0x10f670] 0x008a9000 + 0x10f670 = 0x009b8670
.long ??_R1A@?0A@A@PiecePig@@8
.long ??_R1A@?0A@A@Pig@@8
.long ??_R1A@?0A@A@Cow@@8
.long ??_R1A@?0A@A@Animal@@8
.long ??_R1A@?0A@A@Living@@8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10f6a4] 0x008a9000 + 0x10f6a4 = 0x009b86a4
RTTIClassHierarchyDescriptor PuzzlePig 12                                                                          // [0x10f6a8] 0x008a9000 + 0x10f6a8 = 0x009b86a8
RTTICompleteObjectLocator PuzzlePig                                                                                // [0x10f6b8] 0x008a9000 + 0x10f6b8 = 0x009b86b8
.long 0x00000000                                                                                                   // [0x10f6cc] 0x008a9000 + 0x10f6cc = 0x009b86cc
RTTIBaseClassDescriptor PuzzleTortoise 11                                                                          // [0x10f6d0] 0x008a9000 + 0x10f6d0 = 0x009b86d0
RTTIBaseClassArray PuzzleTortoise                                                                                  // [0x10f6e8] 0x008a9000 + 0x10f6e8 = 0x009b86e8
.long ??_R1A@?0A@A@PieceTortoise@@8
.long ??_R1A@?0A@A@Tortoise@@8
.long ??_R1A@?0A@A@Cow@@8
.long ??_R1A@?0A@A@Animal@@8
.long ??_R1A@?0A@A@Living@@8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10f71c] 0x008a9000 + 0x10f71c = 0x009b871c
RTTIClassHierarchyDescriptor PuzzleTortoise 12                                                                     // [0x10f720] 0x008a9000 + 0x10f720 = 0x009b8720
RTTICompleteObjectLocator PuzzleTortoise                                                                           // [0x10f730] 0x008a9000 + 0x10f730 = 0x009b8730
.long 0x00000000                                                                                                   // [0x10f744] 0x008a9000 + 0x10f744 = 0x009b8744
RTTIBaseClassDescriptor PieceCow 9                                                                                 // [0x10f748] 0x008a9000 + 0x10f748 = 0x009b8748
RTTIBaseClassDescriptor PuzzleCow 10                                                                               // [0x10f760] 0x008a9000 + 0x10f760 = 0x009b8760
RTTIBaseClassArray PuzzleCow                                                                                       // [0x10f778] 0x008a9000 + 0x10f778 = 0x009b8778
.long ??_R1A@?0A@A@PieceCow@@8
.long ??_R1A@?0A@A@Cow@@8
.long ??_R1A@?0A@A@Animal@@8
.long ??_R1A@?0A@A@Living@@8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor PuzzleCow 11                                                                          // [0x10f7a8] 0x008a9000 + 0x10f7a8 = 0x009b87a8
RTTICompleteObjectLocator PuzzleCow                                                                                // [0x10f7b8] 0x008a9000 + 0x10f7b8 = 0x009b87b8
.long 0x00000000                                                                                                   // [0x10f7cc] 0x008a9000 + 0x10f7cc = 0x009b87cc
RTTIBaseClassDescriptor PuzzleHorse 11                                                                             // [0x10f7d0] 0x008a9000 + 0x10f7d0 = 0x009b87d0
RTTIBaseClassArray PuzzleHorse                                                                                     // [0x10f7e8] 0x008a9000 + 0x10f7e8 = 0x009b87e8
.long ??_R1A@?0A@A@PieceHorse@@8
.long ??_R1A@?0A@A@Horse@@8
.long ??_R1A@?0A@A@Cow@@8
.long ??_R1A@?0A@A@Animal@@8
.long ??_R1A@?0A@A@Living@@8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10f81c] 0x008a9000 + 0x10f81c = 0x009b881c
RTTIClassHierarchyDescriptor PuzzleHorse 12                                                                        // [0x10f820] 0x008a9000 + 0x10f820 = 0x009b8820
RTTICompleteObjectLocator PuzzleHorse                                                                              // [0x10f830] 0x008a9000 + 0x10f830 = 0x009b8830
.long 0x00000000                                                                                                   // [0x10f844] 0x008a9000 + 0x10f844 = 0x009b8844
RTTIBaseClassDescriptor ChessGamePuzzle 3                                                                          // [0x10f848] 0x008a9000 + 0x10f848 = 0x009b8848
RTTIBaseClassArray ChessGamePuzzle                                                                                 // [0x10f860] 0x008a9000 + 0x10f860 = 0x009b8860
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10f874] 0x008a9000 + 0x10f874 = 0x009b8874
RTTIClassHierarchyDescriptor ChessGamePuzzle 4                                                                     // [0x10f878] 0x008a9000 + 0x10f878 = 0x009b8878
RTTICompleteObjectLocator ChessGamePuzzle                                                                          // [0x10f888] 0x008a9000 + 0x10f888 = 0x009b8888
.long 0x00000000                                                                                                   // [0x10f89c] 0x008a9000 + 0x10f89c = 0x009b889c
RTTIBaseClassDescriptor ChessPion 9                                                                                // [0x10f8a0] 0x008a9000 + 0x10f8a0 = 0x009b88a0
RTTIBaseClassArray ChessPion                                                                                       // [0x10f8b8] 0x008a9000 + 0x10f8b8 = 0x009b88b8
.long ??_R1A@?0A@A@ChessPiece@@8
.long ??_R1A@?0A@A@AnimatedStatic@@8
.long ??_R1A@?0A@A@Feature@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10f8e4] 0x008a9000 + 0x10f8e4 = 0x009b88e4
RTTIClassHierarchyDescriptor ChessPion 10                                                                          // [0x10f8e8] 0x008a9000 + 0x10f8e8 = 0x009b88e8
RTTICompleteObjectLocator ChessPion                                                                                // [0x10f8f8] 0x008a9000 + 0x10f8f8 = 0x009b88f8
.long 0x00000000                                                                                                   // [0x10f90c] 0x008a9000 + 0x10f90c = 0x009b890c
RTTIBaseClassDescriptor ChessMad 9                                                                                 // [0x10f910] 0x008a9000 + 0x10f910 = 0x009b8910
RTTIBaseClassArray ChessMad                                                                                        // [0x10f928] 0x008a9000 + 0x10f928 = 0x009b8928
.long ??_R1A@?0A@A@ChessPiece@@8
.long ??_R1A@?0A@A@AnimatedStatic@@8
.long ??_R1A@?0A@A@Feature@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10f954] 0x008a9000 + 0x10f954 = 0x009b8954
RTTIClassHierarchyDescriptor ChessMad 10                                                                           // [0x10f958] 0x008a9000 + 0x10f958 = 0x009b8958
RTTICompleteObjectLocator ChessMad                                                                                 // [0x10f968] 0x008a9000 + 0x10f968 = 0x009b8968
.long 0x00000000                                                                                                   // [0x10f97c] 0x008a9000 + 0x10f97c = 0x009b897c
RTTIBaseClassDescriptor ChessTower 9                                                                               // [0x10f980] 0x008a9000 + 0x10f980 = 0x009b8980
RTTIBaseClassArray ChessTower                                                                                      // [0x10f998] 0x008a9000 + 0x10f998 = 0x009b8998
.long ??_R1A@?0A@A@ChessPiece@@8
.long ??_R1A@?0A@A@AnimatedStatic@@8
.long ??_R1A@?0A@A@Feature@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10f9c4] 0x008a9000 + 0x10f9c4 = 0x009b89c4
RTTIClassHierarchyDescriptor ChessTower 10                                                                         // [0x10f9c8] 0x008a9000 + 0x10f9c8 = 0x009b89c8
RTTICompleteObjectLocator ChessTower                                                                               // [0x10f9d8] 0x008a9000 + 0x10f9d8 = 0x009b89d8
.long 0x00000000                                                                                                   // [0x10f9ec] 0x008a9000 + 0x10f9ec = 0x009b89ec
RTTIBaseClassDescriptor ChessQueen 9                                                                               // [0x10f9f0] 0x008a9000 + 0x10f9f0 = 0x009b89f0
RTTIBaseClassArray ChessQueen                                                                                      // [0x10fa08] 0x008a9000 + 0x10fa08 = 0x009b8a08
.long ??_R1A@?0A@A@ChessPiece@@8
.long ??_R1A@?0A@A@AnimatedStatic@@8
.long ??_R1A@?0A@A@Feature@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10fa34] 0x008a9000 + 0x10fa34 = 0x009b8a34
RTTIClassHierarchyDescriptor ChessQueen 10                                                                         // [0x10fa38] 0x008a9000 + 0x10fa38 = 0x009b8a38
RTTICompleteObjectLocator ChessQueen                                                                               // [0x10fa48] 0x008a9000 + 0x10fa48 = 0x009b8a48
.long 0x00000000                                                                                                   // [0x10fa5c] 0x008a9000 + 0x10fa5c = 0x009b8a5c
RTTIBaseClassDescriptor ChessKnight 9                                                                              // [0x10fa60] 0x008a9000 + 0x10fa60 = 0x009b8a60
RTTIBaseClassArray ChessKnight                                                                                     // [0x10fa78] 0x008a9000 + 0x10fa78 = 0x009b8a78
.long ??_R1A@?0A@A@ChessPiece@@8
.long ??_R1A@?0A@A@AnimatedStatic@@8
.long ??_R1A@?0A@A@Feature@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10faa4] 0x008a9000 + 0x10faa4 = 0x009b8aa4
RTTIClassHierarchyDescriptor ChessKnight 10                                                                        // [0x10faa8] 0x008a9000 + 0x10faa8 = 0x009b8aa8
RTTICompleteObjectLocator ChessKnight                                                                              // [0x10fab8] 0x008a9000 + 0x10fab8 = 0x009b8ab8
.long 0x00000000                                                                                                   // [0x10facc] 0x008a9000 + 0x10facc = 0x009b8acc
RTTIBaseClassDescriptor ChessPiece 8                                                                               // [0x10fad0] 0x008a9000 + 0x10fad0 = 0x009b8ad0
RTTIBaseClassDescriptor ChessKing 9                                                                                // [0x10fae8] 0x008a9000 + 0x10fae8 = 0x009b8ae8
RTTIBaseClassArray ChessKing                                                                                       // [0x10fb00] 0x008a9000 + 0x10fb00 = 0x009b8b00
.long ??_R1A@?0A@A@ChessPiece@@8
.long ??_R1A@?0A@A@AnimatedStatic@@8
.long ??_R1A@?0A@A@Feature@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10fb2c] 0x008a9000 + 0x10fb2c = 0x009b8b2c
RTTIClassHierarchyDescriptor ChessKing 10                                                                          // [0x10fb30] 0x008a9000 + 0x10fb30 = 0x009b8b30
RTTICompleteObjectLocator ChessKing                                                                                // [0x10fb40] 0x008a9000 + 0x10fb40 = 0x009b8b40
.long 0x00000000                                                                                                   // [0x10fb54] 0x008a9000 + 0x10fb54 = 0x009b8b54
RTTIBaseClassDescriptor GSquadInfo 2                                                                               // [0x10fb58] 0x008a9000 + 0x10fb58 = 0x009b8b58
RTTIBaseClassArray GSquadInfo                                                                                      // [0x10fb70] 0x008a9000 + 0x10fb70 = 0x009b8b70
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GSquadInfo 3                                                                          // [0x10fb80] 0x008a9000 + 0x10fb80 = 0x009b8b80
RTTICompleteObjectLocator GSquadInfo                                                                               // [0x10fb90] 0x008a9000 + 0x10fb90 = 0x009b8b90
.long 0x00000000                                                                                                   // [0x10fba4] 0x008a9000 + 0x10fba4 = 0x009b8ba4
RTTIBaseClassDescriptor GRankInfo 2                                                                                // [0x10fba8] 0x008a9000 + 0x10fba8 = 0x009b8ba8
RTTIBaseClassArray GRankInfo                                                                                       // [0x10fbc0] 0x008a9000 + 0x10fbc0 = 0x009b8bc0
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GRankInfo 3                                                                           // [0x10fbd0] 0x008a9000 + 0x10fbd0 = 0x009b8bd0
RTTICompleteObjectLocator GRankInfo                                                                                // [0x10fbe0] 0x008a9000 + 0x10fbe0 = 0x009b8be0
.long 0x00000000                                                                                                   // [0x10fbf4] 0x008a9000 + 0x10fbf4 = 0x009b8bf4
RTTIBaseClassDescriptor Rank 1                                                                                     // [0x10fbf8] 0x008a9000 + 0x10fbf8 = 0x009b8bf8
RTTIBaseClassArray Rank                                                                                            // [0x10fc10] 0x008a9000 + 0x10fc10 = 0x009b8c10
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10fc1c] 0x008a9000 + 0x10fc1c = 0x009b8c1c
RTTIClassHierarchyDescriptor Rank 2                                                                                // [0x10fc20] 0x008a9000 + 0x10fc20 = 0x009b8c20
RTTICompleteObjectLocator Rank                                                                                     // [0x10fc30] 0x008a9000 + 0x10fc30 = 0x009b8c30
.long 0x00000000                                                                                                   // [0x10fc44] 0x008a9000 + 0x10fc44 = 0x009b8c44
RTTIBaseClassDescriptor ReactionInfo 2                                                                             // [0x10fc48] 0x008a9000 + 0x10fc48 = 0x009b8c48
RTTIBaseClassArray ReactionInfo                                                                                    // [0x10fc60] 0x008a9000 + 0x10fc60 = 0x009b8c60
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ReactionInfo 3                                                                        // [0x10fc70] 0x008a9000 + 0x10fc70 = 0x009b8c70
RTTICompleteObjectLocator ReactionInfo                                                                             // [0x10fc80] 0x008a9000 + 0x10fc80 = 0x009b8c80
.long 0x00000000                                                                                                   // [0x10fc94] 0x008a9000 + 0x10fc94 = 0x009b8c94
RTTIBaseClassDescriptor GRewardInfo 5                                                                              // [0x10fc98] 0x008a9000 + 0x10fc98 = 0x009b8c98
RTTIBaseClassArray GRewardInfo                                                                                     // [0x10fcb0] 0x008a9000 + 0x10fcb0 = 0x009b8cb0
.long ??_R1A@?0A@A@GMobileObjectInfo@@8
.long ??_R1A@?0A@A@GMobileInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10fccc] 0x008a9000 + 0x10fccc = 0x009b8ccc
RTTIClassHierarchyDescriptor GRewardInfo 6                                                                         // [0x10fcd0] 0x008a9000 + 0x10fcd0 = 0x009b8cd0
RTTICompleteObjectLocator GRewardInfo                                                                              // [0x10fce0] 0x008a9000 + 0x10fce0 = 0x009b8ce0
.long 0x00000000                                                                                                   // [0x10fcf4] 0x008a9000 + 0x10fcf4 = 0x009b8cf4
RTTIBaseClassDescriptor GRewardProgress 2                                                                          // [0x10fcf8] 0x008a9000 + 0x10fcf8 = 0x009b8cf8
RTTIBaseClassArray GRewardProgress                                                                                 // [0x10fd10] 0x008a9000 + 0x10fd10 = 0x009b8d10
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GRewardProgress 3                                                                     // [0x10fd20] 0x008a9000 + 0x10fd20 = 0x009b8d20
RTTICompleteObjectLocator GRewardProgress                                                                          // [0x10fd30] 0x008a9000 + 0x10fd30 = 0x009b8d30
.long 0x00000000                                                                                                   // [0x10fd44] 0x008a9000 + 0x10fd44 = 0x009b8d44
RTTIBaseClassDescriptor Reward 6                                                                                   // [0x10fd48] 0x008a9000 + 0x10fd48 = 0x009b8d48
RTTIBaseClassArray Reward                                                                                          // [0x10fd60] 0x008a9000 + 0x10fd60 = 0x009b8d60
.long ??_R1A@?0A@A@MobileObject@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Reward 7                                                                              // [0x10fd80] 0x008a9000 + 0x10fd80 = 0x009b8d80
RTTICompleteObjectLocator Reward                                                                                   // [0x10fd90] 0x008a9000 + 0x10fd90 = 0x009b8d90
.long 0x00000000                                                                                                   // [0x10fda4] 0x008a9000 + 0x10fda4 = 0x009b8da4
RTTIBaseClassDescriptor GScaffoldInfo 5                                                                            // [0x10fda8] 0x008a9000 + 0x10fda8 = 0x009b8da8
RTTIBaseClassArray GScaffoldInfo                                                                                   // [0x10fdc0] 0x008a9000 + 0x10fdc0 = 0x009b8dc0
.long ??_R1A@?0A@A@GMobileObjectInfo@@8
.long ??_R1A@?0A@A@GMobileInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10fddc] 0x008a9000 + 0x10fddc = 0x009b8ddc
RTTIClassHierarchyDescriptor GScaffoldInfo 6                                                                       // [0x10fde0] 0x008a9000 + 0x10fde0 = 0x009b8de0
RTTICompleteObjectLocator GScaffoldInfo                                                                            // [0x10fdf0] 0x008a9000 + 0x10fdf0 = 0x009b8df0
.long 0x00000000                                                                                                   // [0x10fe04] 0x008a9000 + 0x10fe04 = 0x009b8e04
RTTIBaseClassDescriptor GScript 1                                                                                  // [0x10fe08] 0x008a9000 + 0x10fe08 = 0x009b8e08
RTTIBaseClassArray GScript                                                                                         // [0x10fe20] 0x008a9000 + 0x10fe20 = 0x009b8e20
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10fe2c] 0x008a9000 + 0x10fe2c = 0x009b8e2c
RTTIClassHierarchyDescriptor GScript 2                                                                             // [0x10fe30] 0x008a9000 + 0x10fe30 = 0x009b8e30
RTTICompleteObjectLocator GScript                                                                                  // [0x10fe40] 0x008a9000 + 0x10fe40 = 0x009b8e40
.long 0x00000000                                                                                                   // [0x10fe54] 0x008a9000 + 0x10fe54 = 0x009b8e54
RTTIBaseClassDescriptor GScriptOpposingCreature 2                                                                  // [0x10fe58] 0x008a9000 + 0x10fe58 = 0x009b8e58
RTTIBaseClassArray GScriptOpposingCreature                                                                         // [0x10fe70] 0x008a9000 + 0x10fe70 = 0x009b8e70
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GScriptOpposingCreature 3                                                             // [0x10fe80] 0x008a9000 + 0x10fe80 = 0x009b8e80
RTTICompleteObjectLocator GScriptOpposingCreature                                                                  // [0x10fe90] 0x008a9000 + 0x10fe90 = 0x009b8e90
.long 0x00000000                                                                                                   // [0x10fea4] 0x008a9000 + 0x10fea4 = 0x009b8ea4
RTTIBaseClassDescriptor LHDLL 0                                                                                    // [0x10fea8] 0x008a9000 + 0x10fea8 = 0x009b8ea8
RTTIBaseClassDescriptor ScriptDLL 1                                                                                // [0x10fec0] 0x008a9000 + 0x10fec0 = 0x009b8ec0
RTTIBaseClassArray ScriptDLL                                                                                       // [0x10fed8] 0x008a9000 + 0x10fed8 = 0x009b8ed8
.long ??_R1A@?0A@A@LHDLL@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10fee4] 0x008a9000 + 0x10fee4 = 0x009b8ee4
RTTIClassHierarchyDescriptor ScriptDLL 2                                                                           // [0x10fee8] 0x008a9000 + 0x10fee8 = 0x009b8ee8
RTTICompleteObjectLocator ScriptDLL                                                                                // [0x10fef8] 0x008a9000 + 0x10fef8 = 0x009b8ef8
.long 0x00000000                                                                                                   // [0x10ff0c] 0x008a9000 + 0x10ff0c = 0x009b8f0c
RTTIBaseClassDescriptor GScriptHighlightInfo 4                                                                     // [0x10ff10] 0x008a9000 + 0x10ff10 = 0x009b8f10
RTTIBaseClassArray GScriptHighlightInfo                                                                            // [0x10ff28] 0x008a9000 + 0x10ff28 = 0x009b8f28
.long ??_R1A@?0A@A@GSingleMapFixedInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GScriptHighlightInfo 5                                                                // [0x10ff40] 0x008a9000 + 0x10ff40 = 0x009b8f40
RTTICompleteObjectLocator GScriptHighlightInfo                                                                     // [0x10ff50] 0x008a9000 + 0x10ff50 = 0x009b8f50
.long 0x00000000                                                                                                   // [0x10ff64] 0x008a9000 + 0x10ff64 = 0x009b8f64
RTTIBaseClassDescriptor ScriptHighlight 6                                                                          // [0x10ff68] 0x008a9000 + 0x10ff68 = 0x009b8f68
RTTIBaseClassArray ScriptHighlight                                                                                 // [0x10ff80] 0x008a9000 + 0x10ff80 = 0x009b8f80
.long ??_R1A@?0A@A@SingleMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ScriptHighlight 7                                                                     // [0x10ffa0] 0x008a9000 + 0x10ffa0 = 0x009b8fa0
RTTICompleteObjectLocator ScriptHighlight                                                                          // [0x10ffb0] 0x008a9000 + 0x10ffb0 = 0x009b8fb0
.long 0x00000000                                                                                                   // [0x10ffc4] 0x008a9000 + 0x10ffc4 = 0x009b8fc4
RTTIBaseClassDescriptor ScriptManage 1                                                                             // [0x10ffc8] 0x008a9000 + 0x10ffc8 = 0x009b8fc8
RTTIBaseClassArray ScriptManage                                                                                    // [0x10ffe0] 0x008a9000 + 0x10ffe0 = 0x009b8fe0
.long ??_R1A@?0A@A@BaseInfo@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10ffec] 0x008a9000 + 0x10ffec = 0x009b8fec
RTTIClassHierarchyDescriptor ScriptManage 2                                                                        // [0x10fff0] 0x008a9000 + 0x10fff0 = 0x009b8ff0
RTTICompleteObjectLocator ScriptManage                                                                             // [0x110000] 0x008a9000 + 0x110000 = 0x009b9000
.long 0x00000000                                                                                                   // [0x110014] 0x008a9000 + 0x110014 = 0x009b9014
RTTIBaseClassDescriptor SecretCreature 0                                                                           // [0x110018] 0x008a9000 + 0x110018 = 0x009b9018
RTTIBaseClassArray SecretCreature                                                                                  // [0x110030] 0x008a9000 + 0x110030 = 0x009b9030
.long 0x00000000

RTTIClassHierarchyDescriptor SecretCreature 1                                                                      // [0x110038] 0x008a9000 + 0x110038 = 0x009b9038
RTTICompleteObjectLocator SecretCreature                                                                           // [0x110048] 0x008a9000 + 0x110048 = 0x009b9048
.long 0x00000000                                                                                                   // [0x11005c] 0x008a9000 + 0x11005c = 0x009b905c
RTTIBaseClassDescriptor GShowNeedsInfo 3                                                                           // [0x110060] 0x008a9000 + 0x110060 = 0x009b9060
RTTIBaseClassArray GShowNeedsInfo                                                                                  // [0x110078] 0x008a9000 + 0x110078 = 0x009b9078
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x11008c] 0x008a9000 + 0x11008c = 0x009b908c
RTTIClassHierarchyDescriptor GShowNeedsInfo 4                                                                      // [0x110090] 0x008a9000 + 0x110090 = 0x009b9090
RTTICompleteObjectLocator GShowNeedsInfo                                                                           // [0x1100a0] 0x008a9000 + 0x1100a0 = 0x009b90a0
.long 0x00000000                                                                                                   // [0x1100b4] 0x008a9000 + 0x1100b4 = 0x009b90b4
RTTIBaseClassDescriptor GConfirmation 1                                                                            // [0x1100b8] 0x008a9000 + 0x1100b8 = 0x009b90b8
RTTIBaseClassArray GConfirmation                                                                                   // [0x1100d0] 0x008a9000 + 0x1100d0 = 0x009b90d0
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1100dc] 0x008a9000 + 0x1100dc = 0x009b90dc
RTTIClassHierarchyDescriptor GConfirmation 2                                                                       // [0x1100e0] 0x008a9000 + 0x1100e0 = 0x009b90e0
RTTICompleteObjectLocator GConfirmation                                                                            // [0x1100f0] 0x008a9000 + 0x1100f0 = 0x009b90f0
.long 0x00000000                                                                                                   // [0x110104] 0x008a9000 + 0x110104 = 0x009b9104
RTTIBaseClassDescriptor GHelpSpritesGuidance 2                                                                     // [0x110108] 0x008a9000 + 0x110108 = 0x009b9108
RTTIBaseClassArray GHelpSpritesGuidance                                                                            // [0x110120] 0x008a9000 + 0x110120 = 0x009b9120
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GHelpSpritesGuidance 3                                                                // [0x110130] 0x008a9000 + 0x110130 = 0x009b9130
RTTICompleteObjectLocator GHelpSpritesGuidance                                                                     // [0x110140] 0x008a9000 + 0x110140 = 0x009b9140
.long 0x00000000                                                                                                   // [0x110154] 0x008a9000 + 0x110154 = 0x009b9154
RTTIBaseClassDescriptor GGuidance 1                                                                                // [0x110158] 0x008a9000 + 0x110158 = 0x009b9158
RTTIBaseClassArray GGuidance                                                                                       // [0x110170] 0x008a9000 + 0x110170 = 0x009b9170
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x11017c] 0x008a9000 + 0x11017c = 0x009b917c
RTTIClassHierarchyDescriptor GGuidance 2                                                                           // [0x110180] 0x008a9000 + 0x110180 = 0x009b9180
RTTICompleteObjectLocator GGuidance                                                                                // [0x110190] 0x008a9000 + 0x110190 = 0x009b9190
.long 0x00000000                                                                                                   // [0x1101a4] 0x008a9000 + 0x1101a4 = 0x009b91a4
RTTIBaseClassDescriptor GSoundInfo 2                                                                               // [0x1101a8] 0x008a9000 + 0x1101a8 = 0x009b91a8
RTTIBaseClassArray GSoundInfo                                                                                      // [0x1101c0] 0x008a9000 + 0x1101c0 = 0x009b91c0
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GSoundInfo 3                                                                          // [0x1101d0] 0x008a9000 + 0x1101d0 = 0x009b91d0
RTTICompleteObjectLocator GSoundInfo                                                                               // [0x1101e0] 0x008a9000 + 0x1101e0 = 0x009b91e0
.long 0x00000000                                                                                                   // [0x1101f4] 0x008a9000 + 0x1101f4 = 0x009b91f4
RTTIBaseClassDescriptor SoundTag 2                                                                                 // [0x1101f8] 0x008a9000 + 0x1101f8 = 0x009b91f8
RTTIBaseClassArray SoundTag                                                                                        // [0x110210] 0x008a9000 + 0x110210 = 0x009b9210
.long ??_R1A@?0A@A@LocalBase@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SoundTag 3                                                                            // [0x110220] 0x008a9000 + 0x110220 = 0x009b9220
RTTICompleteObjectLocator SoundTag                                                                                 // [0x110230] 0x008a9000 + 0x110230 = 0x009b9230
.long 0x00000000                                                                                                   // [0x110244] 0x008a9000 + 0x110244 = 0x009b9244
RTTIBaseClassDescriptor GSpecialVillagerInfo 2                                                                     // [0x110248] 0x008a9000 + 0x110248 = 0x009b9248
RTTIBaseClassArray GSpecialVillagerInfo                                                                            // [0x110260] 0x008a9000 + 0x110260 = 0x009b9260
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GSpecialVillagerInfo 3                                                                // [0x110270] 0x008a9000 + 0x110270 = 0x009b9270
RTTICompleteObjectLocator GSpecialVillagerInfo                                                                     // [0x110280] 0x008a9000 + 0x110280 = 0x009b9280
.long 0x00000000                                                                                                   // [0x110294] 0x008a9000 + 0x110294 = 0x009b9294
RTTIBaseClassArray Spell                                                                                           // [0x110298] 0x008a9000 + 0x110298 = 0x009b9298
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1102ac] 0x008a9000 + 0x1102ac = 0x009b92ac
RTTIClassHierarchyDescriptor Spell 4                                                                               // [0x1102b0] 0x008a9000 + 0x1102b0 = 0x009b92b0
RTTICompleteObjectLocator Spell                                                                                    // [0x1102c0] 0x008a9000 + 0x1102c0 = 0x009b92c0
.long 0x00000000                                                                                                   // [0x1102d4] 0x008a9000 + 0x1102d4 = 0x009b92d4
RTTIBaseClassDescriptor SpellCreature 4                                                                            // [0x1102d8] 0x008a9000 + 0x1102d8 = 0x009b92d8
RTTIBaseClassArray SpellCreature                                                                                   // [0x1102f0] 0x008a9000 + 0x1102f0 = 0x009b92f0
.long ??_R1A@?0A@A@Spell@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SpellCreature 5                                                                       // [0x110308] 0x008a9000 + 0x110308 = 0x009b9308
RTTICompleteObjectLocator SpellCreature                                                                            // [0x110318] 0x008a9000 + 0x110318 = 0x009b9318
.long 0x00000000                                                                                                   // [0x11032c] 0x008a9000 + 0x11032c = 0x009b932c
RTTIBaseClassDescriptor SpellDispenser 7                                                                           // [0x110330] 0x008a9000 + 0x110330 = 0x009b9330
RTTIBaseClassArray SpellDispenser                                                                                  // [0x110348] 0x008a9000 + 0x110348 = 0x009b9348
.long ??_R1A@?0A@A@Abode@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x11036c] 0x008a9000 + 0x11036c = 0x009b936c
RTTIClassHierarchyDescriptor SpellDispenser 8                                                                      // [0x110370] 0x008a9000 + 0x110370 = 0x009b9370
RTTICompleteObjectLocator SpellDispenser                                                                           // [0x110380] 0x008a9000 + 0x110380 = 0x009b9380
.long 0x00000000                                                                                                   // [0x110394] 0x008a9000 + 0x110394 = 0x009b9394
RTTIBaseClassDescriptor GSpellIconInfo 4                                                                           // [0x110398] 0x008a9000 + 0x110398 = 0x009b9398
RTTIBaseClassArray GSpellIconInfo                                                                                  // [0x1103b0] 0x008a9000 + 0x1103b0 = 0x009b93b0
.long ??_R1A@?0A@A@GMultiMapFixedInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GSpellIconInfo 5                                                                      // [0x1103c8] 0x008a9000 + 0x1103c8 = 0x009b93c8
RTTICompleteObjectLocator GSpellIconInfo                                                                           // [0x1103d8] 0x008a9000 + 0x1103d8 = 0x009b93d8
.long 0x00000000                                                                                                   // [0x1103ec] 0x008a9000 + 0x1103ec = 0x009b93ec
RTTIBaseClassDescriptor SpellSeedGraphic 3                                                                         // [0x1103f0] 0x008a9000 + 0x1103f0 = 0x009b93f0
RTTIBaseClassArray SpellSeedGraphic                                                                                // [0x110408] 0x008a9000 + 0x110408 = 0x009b9408
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x11041c] 0x008a9000 + 0x11041c = 0x009b941c
RTTIClassHierarchyDescriptor SpellSeedGraphic 4                                                                    // [0x110420] 0x008a9000 + 0x110420 = 0x009b9420
RTTICompleteObjectLocator SpellSeedGraphic                                                                         // [0x110430] 0x008a9000 + 0x110430 = 0x009b9430
.long 0x00000000                                                                                                   // [0x110444] 0x008a9000 + 0x110444 = 0x009b9444
RTTIBaseClassDescriptor SpellSeed 4                                                                                // [0x110448] 0x008a9000 + 0x110448 = 0x009b9448
RTTIBaseClassArray SpellSeed                                                                                       // [0x110460] 0x008a9000 + 0x110460 = 0x009b9460
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SpellSeed 5                                                                           // [0x110478] 0x008a9000 + 0x110478 = 0x009b9478
RTTICompleteObjectLocator SpellSeed                                                                                // [0x110488] 0x008a9000 + 0x110488 = 0x009b9488
.long 0x00000000                                                                                                   // [0x11049c] 0x008a9000 + 0x11049c = 0x009b949c
RTTIBaseClassDescriptor GSpellSystemInfo 2                                                                         // [0x1104a0] 0x008a9000 + 0x1104a0 = 0x009b94a0
RTTIBaseClassArray GSpellSystemInfo                                                                                // [0x1104b8] 0x008a9000 + 0x1104b8 = 0x009b94b8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GSpellSystemInfo 3                                                                    // [0x1104c8] 0x008a9000 + 0x1104c8 = 0x009b94c8
RTTICompleteObjectLocator GSpellSystemInfo                                                                         // [0x1104d8] 0x008a9000 + 0x1104d8 = 0x009b94d8
.long 0x00000000                                                                                                   // [0x1104ec] 0x008a9000 + 0x1104ec = 0x009b94ec
RTTIBaseClassDescriptor GSpellSeedInfo 3                                                                           // [0x1104f0] 0x008a9000 + 0x1104f0 = 0x009b94f0
RTTIBaseClassArray GSpellSeedInfo                                                                                  // [0x110508] 0x008a9000 + 0x110508 = 0x009b9508
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x11051c] 0x008a9000 + 0x11051c = 0x009b951c
RTTIClassHierarchyDescriptor GSpellSeedInfo 4                                                                      // [0x110520] 0x008a9000 + 0x110520 = 0x009b9520
RTTICompleteObjectLocator GSpellSeedInfo                                                                           // [0x110530] 0x008a9000 + 0x110530 = 0x009b9530
.long 0x00000000                                                                                                   // [0x110544] 0x008a9000 + 0x110544 = 0x009b9544
RTTIBaseClassDescriptor SpellShield 5                                                                              // [0x110548] 0x008a9000 + 0x110548 = 0x009b9548
RTTIBaseClassArray SpellShield                                                                                     // [0x110560] 0x008a9000 + 0x110560 = 0x009b9560
.long ??_R1A@?0A@A@SpellWithObjects@@8
.long ??_R1A@?0A@A@Spell@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x11057c] 0x008a9000 + 0x11057c = 0x009b957c
RTTIClassHierarchyDescriptor SpellShield 6                                                                         // [0x110580] 0x008a9000 + 0x110580 = 0x009b9580
RTTICompleteObjectLocator SpellShield                                                                              // [0x110590] 0x008a9000 + 0x110590 = 0x009b9590
.long 0x00000000                                                                                                   // [0x1105a4] 0x008a9000 + 0x1105a4 = 0x009b95a4
RTTIBaseClassDescriptor GMapShieldInfo 4                                                                           // [0x1105a8] 0x008a9000 + 0x1105a8 = 0x009b95a8
RTTIBaseClassArray GMapShieldInfo                                                                                  // [0x1105c0] 0x008a9000 + 0x1105c0 = 0x009b95c0
.long ??_R1A@?0A@A@GSingleMapFixedInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GMapShieldInfo 5                                                                      // [0x1105d8] 0x008a9000 + 0x1105d8 = 0x009b95d8
RTTICompleteObjectLocator GMapShieldInfo                                                                           // [0x1105e8] 0x008a9000 + 0x1105e8 = 0x009b95e8
.long 0x00000000                                                                                                   // [0x1105fc] 0x008a9000 + 0x1105fc = 0x009b95fc
RTTIBaseClassDescriptor MapShield 6                                                                                // [0x110600] 0x008a9000 + 0x110600 = 0x009b9600
RTTIBaseClassArray MapShield                                                                                       // [0x110618] 0x008a9000 + 0x110618 = 0x009b9618
.long ??_R1A@?0A@A@SingleMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor MapShield 7                                                                           // [0x110638] 0x008a9000 + 0x110638 = 0x009b9638
RTTICompleteObjectLocator MapShield                                                                                // [0x110648] 0x008a9000 + 0x110648 = 0x009b9648
.long 0x00000000                                                                                                   // [0x11065c] 0x008a9000 + 0x11065c = 0x009b965c
RTTIBaseClassDescriptor MagicShield 7                                                                              // [0x110660] 0x008a9000 + 0x110660 = 0x009b9660
RTTIBaseClassArray MagicShield                                                                                     // [0x110678] 0x008a9000 + 0x110678 = 0x009b9678
.long ??_R1A@?0A@A@MapShield@@8
.long ??_R1A@?0A@A@SingleMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x11069c] 0x008a9000 + 0x11069c = 0x009b969c
RTTIClassHierarchyDescriptor MagicShield 8                                                                         // [0x1106a0] 0x008a9000 + 0x1106a0 = 0x009b96a0
RTTICompleteObjectLocator MagicShield                                                                              // [0x1106b0] 0x008a9000 + 0x1106b0 = 0x009b96b0
.long 0x00000000                                                                                                   // [0x1106c4] 0x008a9000 + 0x1106c4 = 0x009b96c4
RTTIBaseClassDescriptor PhysicalShield 7                                                                           // [0x1106c8] 0x008a9000 + 0x1106c8 = 0x009b96c8
RTTIBaseClassArray PhysicalShield                                                                                  // [0x1106e0] 0x008a9000 + 0x1106e0 = 0x009b96e0
.long ??_R1A@?0A@A@MapShield@@8
.long ??_R1A@?0A@A@SingleMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x110704] 0x008a9000 + 0x110704 = 0x009b9704
RTTIClassHierarchyDescriptor PhysicalShield 8                                                                      // [0x110708] 0x008a9000 + 0x110708 = 0x009b9708
RTTICompleteObjectLocator PhysicalShield                                                                           // [0x110718] 0x008a9000 + 0x110718 = 0x009b9718
.long 0x00000000                                                                                                   // [0x11072c] 0x008a9000 + 0x11072c = 0x009b972c
RTTIBaseClassDescriptor SpellStormAndTornado 4                                                                     // [0x110730] 0x008a9000 + 0x110730 = 0x009b9730
RTTIBaseClassArray SpellStormAndTornado                                                                            // [0x110748] 0x008a9000 + 0x110748 = 0x009b9748
.long ??_R1A@?0A@A@Spell@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SpellStormAndTornado 5                                                                // [0x110760] 0x008a9000 + 0x110760 = 0x009b9760
RTTICompleteObjectLocator SpellStormAndTornado                                                                     // [0x110770] 0x008a9000 + 0x110770 = 0x009b9770
.long 0x00000000                                                                                                   // [0x110784] 0x008a9000 + 0x110784 = 0x009b9784
RTTIBaseClassDescriptor GSpookyVoiceInfo 2                                                                         // [0x110788] 0x008a9000 + 0x110788 = 0x009b9788
RTTIBaseClassArray GSpookyVoiceInfo                                                                                // [0x1107a0] 0x008a9000 + 0x1107a0 = 0x009b97a0
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GSpookyVoiceInfo 3                                                                    // [0x1107b0] 0x008a9000 + 0x1107b0 = 0x009b97b0
RTTICompleteObjectLocator GSpookyVoiceInfo                                                                         // [0x1107c0] 0x008a9000 + 0x1107c0 = 0x009b97c0
.long 0x00000000                                                                                                   // [0x1107d4] 0x008a9000 + 0x1107d4 = 0x009b97d4
RTTIBaseClassDescriptor GSpookyVoices 1                                                                            // [0x1107d8] 0x008a9000 + 0x1107d8 = 0x009b97d8
RTTIBaseClassArray GSpookyVoices                                                                                   // [0x1107f0] 0x008a9000 + 0x1107f0 = 0x009b97f0
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1107fc] 0x008a9000 + 0x1107fc = 0x009b97fc
RTTIClassHierarchyDescriptor GSpookyVoices 2                                                                       // [0x110800] 0x008a9000 + 0x110800 = 0x009b9800
RTTICompleteObjectLocator GSpookyVoices                                                                            // [0x110810] 0x008a9000 + 0x110810 = 0x009b9810
.long 0x00000000                                                                                                   // [0x110824] 0x008a9000 + 0x110824 = 0x009b9824
RTTIBaseClassDescriptor FireEffect 2                                                                               // [0x110828] 0x008a9000 + 0x110828 = 0x009b9828
RTTIBaseClassArray FireEffect                                                                                      // [0x110840] 0x008a9000 + 0x110840 = 0x009b9840
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor FireEffect 3                                                                          // [0x110850] 0x008a9000 + 0x110850 = 0x009b9850
RTTICompleteObjectLocator FireEffect                                                                               // [0x110860] 0x008a9000 + 0x110860 = 0x009b9860
.long 0x00000000                                                                                                   // [0x110874] 0x008a9000 + 0x110874 = 0x009b9874
.byte 0x40, 0xd2, 0x9c, 0x00, 0x00, 0x00, 0x00, 0x00                                                               // [0x110878] 0x008a9000 + 0x110878 = 0x009b9878
.byte 0x14, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff                                                               // [0x110880] 0x008a9000 + 0x110880 = 0x009b9880
.byte 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00                                                               // [0x110888] 0x008a9000 + 0x110888 = 0x009b9888
RTTIBaseClassDescriptor FireGraphic 4                                                                              // [0x110890] 0x008a9000 + 0x110890 = 0x009b9890
RTTIBaseClassArray FireGraphic                                                                                     // [0x1108a8] 0x008a9000 + 0x1108a8 = 0x009b98a8
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x009b9878
.long 0x00000000

RTTIClassHierarchyDescriptorMultiInheritance FireGraphic 5                                                         // [0x1108c0] 0x008a9000 + 0x1108c0 = 0x009b98c0
RTTICompleteObjectLocator FireGraphic                                                                              // [0x1108d0] 0x008a9000 + 0x1108d0 = 0x009b98d0
.long 0x00000000                                                                                                   // [0x1108e4] 0x008a9000 + 0x1108e4 = 0x009b98e4
RTTIBaseClassDescriptor SpritePos@FireGraphic 3                                                                    // [0x1108e8] 0x008a9000 + 0x1108e8 = 0x009b98e8
RTTIBaseClassArray SpritePos@FireGraphic                                                                           // [0x110900] 0x008a9000 + 0x110900 = 0x009b9900
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x110914] 0x008a9000 + 0x110914 = 0x009b9914
RTTIClassHierarchyDescriptor SpritePos@FireGraphic 4                                                               // [0x110918] 0x008a9000 + 0x110918 = 0x009b9918
RTTICompleteObjectLocator SpritePos@FireGraphic                                                                    // [0x110928] 0x008a9000 + 0x110928 = 0x009b9928
.long 0x00000000                                                                                                   // [0x11093c] 0x008a9000 + 0x11093c = 0x009b993c
RTTIBaseClassDescriptor GTerrainMaterialInfo 2                                                                     // [0x110940] 0x008a9000 + 0x110940 = 0x009b9940
RTTIBaseClassArray GTerrainMaterialInfo                                                                            // [0x110958] 0x008a9000 + 0x110958 = 0x009b9958
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GTerrainMaterialInfo 3                                                                // [0x110968] 0x008a9000 + 0x110968 = 0x009b9968
RTTICompleteObjectLocator GTerrainMaterialInfo                                                                     // [0x110978] 0x008a9000 + 0x110978 = 0x009b9978
.long 0x00000000                                                                                                   // [0x11098c] 0x008a9000 + 0x11098c = 0x009b998c
RTTIBaseClassDescriptor GTotemStatueInfo 4                                                                         // [0x110990] 0x008a9000 + 0x110990 = 0x009b9990
RTTIBaseClassArray GTotemStatueInfo                                                                                // [0x1109a8] 0x008a9000 + 0x1109a8 = 0x009b99a8
.long ??_R1A@?0A@A@GMultiMapFixedInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GTotemStatueInfo 5                                                                    // [0x1109c0] 0x008a9000 + 0x1109c0 = 0x009b99c0
RTTICompleteObjectLocator GTotemStatueInfo                                                                         // [0x1109d0] 0x008a9000 + 0x1109d0 = 0x009b99d0
.long 0x00000000                                                                                                   // [0x1109e4] 0x008a9000 + 0x1109e4 = 0x009b99e4
RTTIBaseClassDescriptor GTownInfo 3                                                                                // [0x1109e8] 0x008a9000 + 0x1109e8 = 0x009b99e8
RTTIBaseClassArray GTownInfo                                                                                       // [0x110a00] 0x008a9000 + 0x110a00 = 0x009b9a00
.long ??_R1A@?0A@A@GContainerInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x110a14] 0x008a9000 + 0x110a14 = 0x009b9a14
RTTIClassHierarchyDescriptor GTownInfo 4                                                                           // [0x110a18] 0x008a9000 + 0x110a18 = 0x009b9a18
RTTICompleteObjectLocator GTownInfo                                                                                // [0x110a28] 0x008a9000 + 0x110a28 = 0x009b9a28
.long 0x00000000                                                                                                   // [0x110a3c] 0x008a9000 + 0x110a3c = 0x009b9a3c
RTTIBaseClassDescriptor TownStats 1                                                                                // [0x110a40] 0x008a9000 + 0x110a40 = 0x009b9a40
RTTIBaseClassArray TownStats                                                                                       // [0x110a58] 0x008a9000 + 0x110a58 = 0x009b9a58
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x110a64] 0x008a9000 + 0x110a64 = 0x009b9a64
RTTIClassHierarchyDescriptor TownStats 2                                                                           // [0x110a68] 0x008a9000 + 0x110a68 = 0x009b9a68
RTTICompleteObjectLocator TownStats                                                                                // [0x110a78] 0x008a9000 + 0x110a78 = 0x009b9a78
.long 0x00000000                                                                                                   // [0x110a8c] 0x008a9000 + 0x110a8c = 0x009b9a8c
RTTIBaseClassDescriptor Town 4                                                                                     // [0x110a90] 0x008a9000 + 0x110a90 = 0x009b9a90
RTTIBaseClassArray Town                                                                                            // [0x110aa8] 0x008a9000 + 0x110aa8 = 0x009b9aa8
.long ??_R1A@?0A@A@Container@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Town 5                                                                                // [0x110ac0] 0x008a9000 + 0x110ac0 = 0x009b9ac0
RTTICompleteObjectLocator Town                                                                                     // [0x110ad0] 0x008a9000 + 0x110ad0 = 0x009b9ad0
.long 0x00000000                                                                                                   // [0x110ae4] 0x008a9000 + 0x110ae4 = 0x009b9ae4
RTTIBaseClassDescriptor GBelief 1                                                                                  // [0x110ae8] 0x008a9000 + 0x110ae8 = 0x009b9ae8
RTTIBaseClassArray GBelief                                                                                         // [0x110b00] 0x008a9000 + 0x110b00 = 0x009b9b00
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x110b0c] 0x008a9000 + 0x110b0c = 0x009b9b0c
RTTIClassHierarchyDescriptor GBelief 2                                                                             // [0x110b10] 0x008a9000 + 0x110b10 = 0x009b9b10
RTTICompleteObjectLocator GBelief                                                                                  // [0x110b20] 0x008a9000 + 0x110b20 = 0x009b9b20
.long 0x00000000                                                                                                   // [0x110b34] 0x008a9000 + 0x110b34 = 0x009b9b34
RTTIBaseClassDescriptor TownCreatureInfo 2                                                                         // [0x110b38] 0x008a9000 + 0x110b38 = 0x009b9b38
RTTIBaseClassArray TownCreatureInfo                                                                                // [0x110b50] 0x008a9000 + 0x110b50 = 0x009b9b50
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor TownCreatureInfo 3                                                                    // [0x110b60] 0x008a9000 + 0x110b60 = 0x009b9b60
RTTICompleteObjectLocator TownCreatureInfo                                                                         // [0x110b70] 0x008a9000 + 0x110b70 = 0x009b9b70
.long 0x00000000                                                                                                   // [0x110b84] 0x008a9000 + 0x110b84 = 0x009b9b84
RTTIBaseClassDescriptor VarSpeedValueSpinner 2                                                                     // [0x110b88] 0x008a9000 + 0x110b88 = 0x009b9b88
RTTIBaseClassArray VarSpeedValueSpinner                                                                            // [0x110ba0] 0x008a9000 + 0x110ba0 = 0x009b9ba0
.long ??_R1A@?0A@A@ValueSpinner@@8
.long 0x009a83d8
.long 0x00000000

RTTIClassHierarchyDescriptor VarSpeedValueSpinner 3                                                                // [0x110bb0] 0x008a9000 + 0x110bb0 = 0x009b9bb0
RTTICompleteObjectLocator VarSpeedValueSpinner                                                                     // [0x110bc0] 0x008a9000 + 0x110bc0 = 0x009b9bc0
.long 0x00000000                                                                                                   // [0x110bd4] 0x008a9000 + 0x110bd4 = 0x009b9bd4
RTTIBaseClassDescriptor GTownDesireInfo 2                                                                          // [0x110bd8] 0x008a9000 + 0x110bd8 = 0x009b9bd8
RTTIBaseClassArray GTownDesireInfo                                                                                 // [0x110bf0] 0x008a9000 + 0x110bf0 = 0x009b9bf0
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GTownDesireInfo 3                                                                     // [0x110c00] 0x008a9000 + 0x110c00 = 0x009b9c00
RTTICompleteObjectLocator GTownDesireInfo                                                                          // [0x110c10] 0x008a9000 + 0x110c10 = 0x009b9c10
.long 0x00000000                                                                                                   // [0x110c24] 0x008a9000 + 0x110c24 = 0x009b9c24
RTTIBaseClassDescriptor TownDesire 1                                                                               // [0x110c28] 0x008a9000 + 0x110c28 = 0x009b9c28
RTTIBaseClassArray TownDesire                                                                                      // [0x110c40] 0x008a9000 + 0x110c40 = 0x009b9c40
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x110c4c] 0x008a9000 + 0x110c4c = 0x009b9c4c
RTTIClassHierarchyDescriptor TownDesire 2                                                                          // [0x110c50] 0x008a9000 + 0x110c50 = 0x009b9c50
RTTICompleteObjectLocator TownDesire                                                                               // [0x110c60] 0x008a9000 + 0x110c60 = 0x009b9c60
.long 0x00000000                                                                                                   // [0x110c74] 0x008a9000 + 0x110c74 = 0x009b9c74
RTTIBaseClassDescriptor GTreeInfo 4                                                                                // [0x110c78] 0x008a9000 + 0x110c78 = 0x009b9c78
RTTIBaseClassArray GTreeInfo                                                                                       // [0x110c90] 0x008a9000 + 0x110c90 = 0x009b9c90
.long ??_R1A@?0A@A@GSingleMapFixedInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GTreeInfo 5                                                                           // [0x110ca8] 0x008a9000 + 0x110ca8 = 0x009b9ca8
RTTICompleteObjectLocator GTreeInfo                                                                                // [0x110cb8] 0x008a9000 + 0x110cb8 = 0x009b9cb8
.long 0x00000000                                                                                                   // [0x110ccc] 0x008a9000 + 0x110ccc = 0x009b9ccc
RTTIBaseClassDescriptor GTribeInfo 2                                                                               // [0x110cd0] 0x008a9000 + 0x110cd0 = 0x009b9cd0
RTTIBaseClassArray GTribeInfo                                                                                      // [0x110ce8] 0x008a9000 + 0x110ce8 = 0x009b9ce8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GTribeInfo 3                                                                          // [0x110cf8] 0x008a9000 + 0x110cf8 = 0x009b9cf8
RTTICompleteObjectLocator GTribeInfo                                                                               // [0x110d08] 0x008a9000 + 0x110d08 = 0x009b9d08
.long 0x00000000                                                                                                   // [0x110d1c] 0x008a9000 + 0x110d1c = 0x009b9d1c