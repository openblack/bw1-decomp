.intel_syntax noprefix
.section .rdata$r,"dr"

.macro _RTTIBaseClassDescriptor name num_base_classes type mdisp
    .global ??_R1A@?0A@A@\name@@8
_RTTIBaseClassDescriptor__\name:
??_R1A@?0A@A@\name@@8:
    .long ??_R0?A\type\name@@@8
    .long \num_base_classes
    .long \mdisp
    .long 0xFFFFFFFF
    .long 0x00000000
    .long 0x00000000
.endm

.macro RTTIBaseClassDescriptor name num_base_classes
    _RTTIBaseClassDescriptor \name \num_base_classes V 0x00000000
.endm

.macro RTTIBaseClassDescriptorStruct name num_base_classes
    _RTTIBaseClassDescriptor \name \num_base_classes U 0x00000000
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

RTTIBaseClassDescriptorStruct SetupControl 0                                                                       // [0xfd570] 0x008a9000 + 0xfd570 = 0x009a6570

RTTIBaseClassArray SetupControl                                                                                    // [0xfd588] 0x008a9000 + 0xfd588 = 0x009a6588
.long 0x00000000

RTTIClassHierarchyDescriptor SetupControl 1                                                                        // [0xfd590] 0x008a9000 + 0xfd590 = 0x009a6590
RTTICompleteObjectLocatorStruct SetupControl                                                                       // [0xfd5a0] 0x008a9000 + 0xfd5a0 = 0x009a65a0
.long 0x00000000

RTTIBaseClassDescriptorStruct SetupButton 1                                                                        // [0xfd5b8] 0x008a9000 + 0xfd5b8 = 0x009a65b8

RTTIBaseClassArray SetupButton                                                                                     // [0xfd5d0] 0x008a9000 + 0xfd5d0 = 0x009a65d0
.long ??_R1A@?0A@A@SetupControl@@8
.long 0x00000000
.long 0x00000000

RTTIClassHierarchyDescriptor SetupButton 2                                                                         // [0xfd5e0] 0x008a9000 + 0xfd5e0 = 0x009a65e0
RTTICompleteObjectLocatorStruct SetupButton                                                                        // [0xfd5f0] 0x008a9000 + 0xfd5f0 = 0x009a65f0
.long 0x00000000

RTTIBaseClassDescriptorStruct SetupSlider 1                                                                        // [0xfd608] 0x008a9000 + 0xfd608 = 0x009a6608

RTTIBaseClassArray SetupSlider                                                                                     // [0xfd620] 0x008a9000 + 0xfd620 = 0x009a6620
.long ??_R1A@?0A@A@SetupControl@@8
.long 0x00000000
.long 0x00000000

RTTIClassHierarchyDescriptor SetupSlider 2                                                                         // [0xfd630] 0x008a9000 + 0xfd630 = 0x009a6630
RTTICompleteObjectLocatorStruct SetupSlider                                                                        // [0xfd640] 0x008a9000 + 0xfd640 = 0x009a6640
.long 0x00000000

RTTIBaseClassDescriptorStruct SetupList 1                                                                          // [0xfd658] 0x008a9000 + 0xfd658 = 0x009a6658
RTTIBaseClassArray SetupList                                                                                       // [0xfd660] 0x008a9000 + 0xfd660 = 0x009a6660
.long ??_R1A@?0A@A@SetupControl@@8
.long 0x00000000
.long 0x00000000

RTTIClassHierarchyDescriptor SetupList 2                                                                           // [0xfd680] 0x008a9000 + 0xfd680 = 0x009a6680
RTTICompleteObjectLocatorStruct SetupList                                                                          // [0xfd690] 0x008a9000 + 0xfd690 = 0x009a6690
.long 0x00000000

RTTIBaseClassDescriptorStruct SetupMultiList 2                                                                     // [0xfd6a8] 0x008a9000 + 0xfd6a8 = 0x009a66a8
RTTIBaseClassArray SetupMultiList                                                                                  // [0xfd6c0] 0x008a9000 + 0xfd6c0 = 0x009a66c0
.long ??_R1A@?0A@A@SetupList@@8
.long ??_R1A@?0A@A@SetupControl@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SetupMultiList 3                                                                      // [0xfd6d0] 0x008a9000 + 0xfd6d0 = 0x009a66d0
RTTICompleteObjectLocatorStruct SetupMultiList                                                                     // [0xfd6e0] 0x008a9000 + 0xfd6e0 = 0x009a66e0
.long 0x00000000

RTTIBaseClassDescriptorStruct SetupEdit 1                                                                          // [0xfd6f8] 0x008a9000 + 0xfd6f8 = 0x009a66f8
RTTIBaseClassArray SetupEdit                                                                                       // [0xfd710] 0x008a9000 + 0xfd710 = 0x009a6710
.long ??_R1A@?0A@A@SetupControl@@8
.long 0x00000000
.long 0x00000000

RTTIClassHierarchyDescriptor SetupEdit 2                                                                           // [0xfd720] 0x008a9000 + 0xfd720 = 0x009a6720
RTTICompleteObjectLocatorStruct SetupEdit                                                                          // [0xfd730] 0x008a9000 + 0xfd730 = 0x009a6730
.long 0x00000000

RTTIBaseClassDescriptorStruct SetupBigButton 2                                                                     // [0xfd748] 0x008a9000 + 0xfd748 = 0x009a6748
RTTIBaseClassArray SetupBigButton                                                                                  // [0xfd760] 0x008a9000 + 0xfd760 = 0x009a6760
.long ??_R1A@?0A@A@SetupButton@@8
.long ??_R1A@?0A@A@SetupControl@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SetupBigButton 3                                                                      // [0xfd770] 0x008a9000 + 0xfd770 = 0x009a6770
RTTICompleteObjectLocatorStruct SetupBigButton                                                                     // [0xfd780] 0x008a9000 + 0xfd780 = 0x009a6780
.long 0x00000000

RTTIBaseClassDescriptorStruct SetupHLineGraph 2                                                                    // [0xfd798] 0x008a9000 + 0xfd798 = 0x009a6798
RTTIBaseClassArray SetupHLineGraph                                                                                 // [0xfd7b0] 0x008a9000 + 0xfd7b0 = 0x009a67b0
.long ??_R1A@?0A@A@SetupButton@@8
.long ??_R1A@?0A@A@SetupControl@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SetupHLineGraph 3                                                                     // [0xfd7c0] 0x008a9000 + 0xfd7c0 = 0x009a67c0
RTTICompleteObjectLocatorStruct SetupHLineGraph                                                                    // [0xfd7d0] 0x008a9000 + 0xfd7d0 = 0x009a67d0
.long 0x00000000

RTTIBaseClassDescriptorStruct SetupVBarGraph 2                                                                     // [0xfd7e8] 0x008a9000 + 0xfd7e8 = 0x009a67e8
RTTIBaseClassArray SetupVBarGraph                                                                                  // [0xfd800] 0x008a9000 + 0xfd800 = 0x009a6800
.long ??_R1A@?0A@A@SetupButton@@8
.long ??_R1A@?0A@A@SetupControl@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SetupVBarGraph 3                                                                      // [0xfd810] 0x008a9000 + 0xfd810 = 0x009a6810
RTTICompleteObjectLocatorStruct SetupVBarGraph                                                                     // [0xfd820] 0x008a9000 + 0xfd820 = 0x009a6820
.long 0x00000000

RTTIBaseClassDescriptorStruct SetupTabButton 2                                                                     // [0xfd838] 0x008a9000 + 0xfd838 = 0x009a6838
RTTIBaseClassArray SetupTabButton                                                                                  // [0xfd850] 0x008a9000 + 0xfd850 = 0x009a6850
.long ??_R1A@?0A@A@SetupButton@@8
.long ??_R1A@?0A@A@SetupControl@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SetupTabButton 3                                                                      // [0xfd860] 0x008a9000 + 0xfd860 = 0x009a6860
RTTICompleteObjectLocatorStruct SetupTabButton                                                                     // [0xfd870] 0x008a9000 + 0xfd870 = 0x009a6870
.long 0x00000000

RTTIBaseClassDescriptorStruct SetupPicture 2                                                                       // [0xfd888] 0x008a9000 + 0xfd888 = 0x009a6888
RTTIBaseClassArray SetupPicture                                                                                    // [0xfd8a0] 0x008a9000 + 0xfd8a0 = 0x009a68a0
.long ??_R1A@?0A@A@SetupButton@@8
.long ??_R1A@?0A@A@SetupControl@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SetupPicture 3                                                                        // [0xfd8b0] 0x008a9000 + 0xfd8b0 = 0x009a68b0
RTTICompleteObjectLocatorStruct SetupPicture                                                                       // [0xfd8c0] 0x008a9000 + 0xfd8c0 = 0x009a68c0
.long 0x00000000

RTTIBaseClassDescriptorStruct SetupColourPicker 2                                                                  // [0xfd8d8] 0x008a9000 + 0xfd8d8 = 0x009a68d8
RTTIBaseClassArray SetupColourPicker                                                                               // [0xfd8f0] 0x008a9000 + 0xfd8f0 = 0x009a68f0
.long ??_R1A@?0A@A@SetupButton@@8
.long ??_R1A@?0A@A@SetupControl@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SetupColourPicker 3                                                                   // [0xfd900] 0x008a9000 + 0xfd900 = 0x009a6900
RTTICompleteObjectLocatorStruct SetupColourPicker                                                                  // [0xfd910] 0x008a9000 + 0xfd910 = 0x009a6910
.long 0x00000000

RTTIBaseClassDescriptorStruct SetupCheckBox 2                                                                      // [0xfd928] 0x008a9000 + 0xfd928 = 0x009a6928
RTTIBaseClassArray SetupCheckBox                                                                                   // [0xfd940] 0x008a9000 + 0xfd940 = 0x009a6940
.long ??_R1A@?0A@A@SetupButton@@8
.long ??_R1A@?0A@A@SetupControl@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SetupCheckBox 3                                                                       // [0xfd950] 0x008a9000 + 0xfd950 = 0x009a6950
RTTICompleteObjectLocatorStruct SetupCheckBox                                                                      // [0xfd960] 0x008a9000 + 0xfd960 = 0x009a6960
.long 0x00000000

RTTIBaseClassDescriptorStruct SetupStaticText 1                                                                    // [0xfd978] 0x008a9000 + 0xfd978 = 0x009a6978
RTTIBaseClassArray SetupStaticText                                                                                 // [0xfd990] 0x008a9000 + 0xfd990 = 0x009a6990
.long ??_R1A@?0A@A@SetupControl@@8
.long 0x00000000
.long 0x00000000

RTTIClassHierarchyDescriptor SetupStaticText 2                                                                     // [0xfd9a0] 0x008a9000 + 0xfd9a0 = 0x009a69a0
RTTICompleteObjectLocatorStruct SetupStaticText                                                                    // [0xfd9b0] 0x008a9000 + 0xfd9b0 = 0x009a69b0
.long 0x00000000

RTTIBaseClassDescriptor GAlignmentInfo 2                                                                           // [0xfd9c8] 0x008a9000 + 0xfd9c8 = 0x009a69c8
RTTIBaseClassArray GAlignmentInfo                                                                                  // [0xfd9e0] 0x008a9000 + 0xfd9e0 = 0x009a69e0
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GAlignmentInfo 3                                                                      // [0xfd9f0] 0x008a9000 + 0xfd9f0 = 0x009a69f0
RTTICompleteObjectLocator GAlignmentInfo                                                                           // [0xfda00] 0x008a9000 + 0xfda00 = 0x009a6a00
.long 0x00000000

RTTIBaseClassDescriptor EditorIconBase 0                                                                           // [0xfda18] 0x008a9000 + 0xfda18 = 0x009a6a18
RTTIBaseClassDescriptor EditorIconShow 1                                                                           // [0xfda30] 0x008a9000 + 0xfda30 = 0x009a6a30
RTTIBaseClassDescriptor ?$EditorIconNumber@MM 2                                                                    // [0xfda48] 0x008a9000 + 0xfda48 = 0x009a6a48

RTTIBaseClassDescriptor ?$EditorIconSlider@M 3                                                                     // [0xfda60] 0x008a9000 + 0xfda60 = 0x009a6a60
RTTIBaseClassArray ?$EditorIconSlider@M                                                                            // [0xfda78] 0x008a9000 + 0xfda78 = 0x009a6a78
.long ??_R1A@?0A@A@?$EditorIconNumber@MM@@8
.long ??_R1A@?0A@A@EditorIconShow@@8
.long ??_R1A@?0A@A@EditorIconBase@@8
.long 0x00000000
.long 0x00000000

RTTIClassHierarchyDescriptor ?$EditorIconSlider@M 4                                                                // [0xfda90] 0x008a9000 + 0xfda90 = 0x009a6a90
RTTICompleteObjectLocator ?$EditorIconSlider@M                                                                     // [0xfdaa0] 0x008a9000 + 0xfdaa0 = 0x009a6aa0
.long 0x00000000

RTTIBaseClassArray ?$EditorIconNumber@MM                                                                           // [0xfdab8] 0x008a9000 + 0xfdab8 = 0x009a6ab8
.long ??_R1A@?0A@A@EditorIconShow@@8
.long ??_R1A@?0A@A@EditorIconBase@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$EditorIconNumber@MM 3                                                               // [0xfdac8] 0x008a9000 + 0xfdac8 = 0x009a6ac8
RTTICompleteObjectLocator ?$EditorIconNumber@MM                                                                    // [0xfdad8] 0x008a9000 + 0xfdad8 = 0x009a6ad8
.long 0x00000000

RTTIBaseClassDescriptor GMobileInfo 3                                                                              // [0xfdaf0] 0x008a9000 + 0xfdaf0 = 0x009a6af0
RTTIBaseClassDescriptor GMobileWallHugInfo 4                                                                       // [0xfdb08] 0x008a9000 + 0xfdb08 = 0x009a6b08
RTTIBaseClassDescriptor GLivingInfo 5                                                                              // [0xfdb20] 0x008a9000 + 0xfdb20 = 0x009a6b20

RTTIBaseClassDescriptor GAnimalInfo 6                                                                              // [0xfdb38] 0x008a9000 + 0xfdb38 = 0x009a6b38
RTTIBaseClassArray GAnimalInfo                                                                                     // [0xfdb50] 0x008a9000 + 0xfdb50 = 0x009a6b50
.long ??_R1A@?0A@A@GLivingInfo@@8
.long ??_R1A@?0A@A@GMobileWallHugInfo@@8
.long ??_R1A@?0A@A@GMobileInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GAnimalInfo 7                                                                         // [0xfdb70] 0x008a9000 + 0xfdb70 = 0x009a6b70
RTTICompleteObjectLocator GAnimalInfo                                                                              // [0xfdb80] 0x008a9000 + 0xfdb80 = 0x009a6b80
.long 0x00000000

RTTIBaseClassDescriptor GAnimalStateTableInfo 2                                                                    // [0xfdb98] 0x008a9000 + 0xfdb98 = 0x009a6b98
RTTIBaseClassArray GAnimalStateTableInfo                                                                           // [0xfdbb0] 0x008a9000 + 0xfdbb0 = 0x009a6bb0
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GAnimalStateTableInfo 3                                                               // [0xfdbc0] 0x008a9000 + 0xfdbc0 = 0x009a6bc0
RTTICompleteObjectLocator GAnimalStateTableInfo                                                                    // [0xfdbd0] 0x008a9000 + 0xfdbd0 = 0x009a6bd0
.long 0x00000000

RTTIBaseClassDescriptor Mobile 4                                                                                   // [0xfdbe8] 0x008a9000 + 0xfdbe8 = 0x009a6be8
RTTIBaseClassDescriptor MobileWallHug 5                                                                            // [0xfdc18] 0x008a9000 + 0xfdc18 = 0x009a6c18
RTTIBaseClassDescriptor Living 6                                                                                   // [0xfdc18] 0x008a9000 + 0xfdc18 = 0x009a6c18
RTTIBaseClassDescriptor Animal 7                                                                                   // [0xfdc30] 0x008a9000 + 0xfdc30 = 0x009a6c30
RTTIBaseClassArray Animal                                                                                          // [0xfdc48] 0x008a9000 + 0xfdc48 = 0x009a6c48
.long ??_R1A@?0A@A@Living@@8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xfdc6c] 0x008a9000 + 0xfdc6c = 0x009a6c6c
RTTIClassHierarchyDescriptor Animal 8                                                                              // [0xfdc70] 0x008a9000 + 0xfdc70 = 0x009a6c70
RTTICompleteObjectLocator Animal                                                                                   // [0xfdc80] 0x008a9000 + 0xfdc80 = 0x009a6c80
.long 0x00000000                                                                                                   // [0xfdc94] 0x008a9000 + 0xfdc94 = 0x009a6c94
RTTIBaseClassDescriptor PieceVillager 8                                                                            // [0xfdc98] 0x008a9000 + 0xfdc98 = 0x009a6c98
RTTIBaseClassArray PieceVillager                                                                                   // [0xfdcb0] 0x008a9000 + 0xfdcb0 = 0x009a6cb0
.long ??_R1A@?0A@A@Animal@@8
.long ??_R1A@?0A@A@Living@@8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor PieceVillager 9                                                                       // [0xfdcd8] 0x008a9000 + 0xfdcd8 = 0x009a6cd8
RTTICompleteObjectLocator PieceVillager                                                                            // [0xfdce8] 0x008a9000 + 0xfdce8 = 0x009a6ce8
.long 0x00000000                                                                                                   // [0xfdcfc] 0x008a9000 + 0xfdcfc = 0x009a6cfc
RTTIBaseClassDescriptor Cow 8                                                                                      // [0xfdd00] 0x008a9000 + 0xfdd00 = 0x009a6d00
RTTIBaseClassArray Cow                                                                                             // [0xfdd18] 0x008a9000 + 0xfdd18 = 0x009a6d18
.long ??_R1A@?0A@A@Animal@@8
.long ??_R1A@?0A@A@Living@@8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Cow 9                                                                                 // [0xfdd40] 0x008a9000 + 0xfdd40 = 0x009a6d40
RTTICompleteObjectLocator Cow                                                                                      // [0xfdd50] 0x008a9000 + 0xfdd50 = 0x009a6d50
.long 0x00000000                                                                                                   // [0xfdd64] 0x008a9000 + 0xfdd64 = 0x009a6d64
RTTIBaseClassDescriptor Sheep 9                                                                                    // [0xfdd68] 0x008a9000 + 0xfdd68 = 0x009a6d68
RTTIBaseClassArray Sheep                                                                                           // [0xfdd80] 0x008a9000 + 0xfdd80 = 0x009a6d80
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

.long 0x00000000                                                                                                   // [0xfddac] 0x008a9000 + 0xfddac = 0x009a6dac
RTTIClassHierarchyDescriptor Sheep 10                                                                              // [0xfddb0] 0x008a9000 + 0xfddb0 = 0x009a6db0
RTTICompleteObjectLocator Sheep                                                                                    // [0xfddc0] 0x008a9000 + 0xfddc0 = 0x009a6dc0
.long 0x00000000                                                                                                   // [0xfddd4] 0x008a9000 + 0xfddd4 = 0x009a6dd4
RTTIBaseClassDescriptor PieceSheep 10                                                                              // [0xfddd8] 0x008a9000 + 0xfddd8 = 0x009a6dd8
RTTIBaseClassArray PieceSheep                                                                                      // [0xfddf0] 0x008a9000 + 0xfddf0 = 0x009a6df0
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

RTTIClassHierarchyDescriptor PieceSheep 11                                                                         // [0xfde20] 0x008a9000 + 0xfde20 = 0x009a6e20
RTTICompleteObjectLocator PieceSheep                                                                               // [0xfde30] 0x008a9000 + 0xfde30 = 0x009a6e30
.long 0x00000000                                                                                                   // [0xfde44] 0x008a9000 + 0xfde44 = 0x009a6e44
RTTIBaseClassDescriptor Goat 9                                                                                     // [0xfde48] 0x008a9000 + 0xfde48 = 0x009a6e48
RTTIBaseClassArray Goat                                                                                            // [0xfde60] 0x008a9000 + 0xfde60 = 0x009a6e60
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

.long 0x00000000                                                                                                   // [0xfde8c] 0x008a9000 + 0xfde8c = 0x009a6e8c
RTTIClassHierarchyDescriptor Goat 10                                                                               // [0xfde90] 0x008a9000 + 0xfde90 = 0x009a6e90
RTTICompleteObjectLocator Goat                                                                                     // [0xfdea0] 0x008a9000 + 0xfdea0 = 0x009a6ea0
.long 0x00000000                                                                                                   // [0xfdeb4] 0x008a9000 + 0xfdeb4 = 0x009a6eb4
RTTIBaseClassDescriptor Horse 9                                                                                    // [0xfdeb8] 0x008a9000 + 0xfdeb8 = 0x009a6eb8
RTTIBaseClassArray Horse                                                                                           // [0xfded0] 0x008a9000 + 0xfded0 = 0x009a6ed0
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

.long 0x00000000                                                                                                   // [0xfdefc] 0x008a9000 + 0xfdefc = 0x009a6efc
RTTIClassHierarchyDescriptor Horse 10                                                                              // [0xfdf00] 0x008a9000 + 0xfdf00 = 0x009a6f00
RTTICompleteObjectLocator Horse                                                                                    // [0xfdf10] 0x008a9000 + 0xfdf10 = 0x009a6f10
.long 0x00000000                                                                                                   // [0xfdf24] 0x008a9000 + 0xfdf24 = 0x009a6f24
RTTIBaseClassDescriptor PieceHorse 10                                                                              // [0xfdf28] 0x008a9000 + 0xfdf28 = 0x009a6f28
RTTIBaseClassArray PieceHorse                                                                                      // [0xfdf40] 0x008a9000 + 0xfdf40 = 0x009a6f40
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

RTTIClassHierarchyDescriptor PieceHorse 11                                                                         // [0xfdf70] 0x008a9000 + 0xfdf70 = 0x009a6f70
RTTICompleteObjectLocator PieceHorse                                                                               // [0xfdf80] 0x008a9000 + 0xfdf80 = 0x009a6f80
.long 0x00000000                                                                                                   // [0xfdf94] 0x008a9000 + 0xfdf94 = 0x009a6f94
RTTIBaseClassDescriptor Zebra 9                                                                                    // [0xfdf98] 0x008a9000 + 0xfdf98 = 0x009a6f98
RTTIBaseClassArray Zebra                                                                                           // [0xfdfb0] 0x008a9000 + 0xfdfb0 = 0x009a6fb0
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

.long 0x00000000                                                                                                   // [0xfdfdc] 0x008a9000 + 0xfdfdc = 0x009a6fdc
RTTIClassHierarchyDescriptor Zebra 10                                                                              // [0xfdfe0] 0x008a9000 + 0xfdfe0 = 0x009a6fe0
RTTICompleteObjectLocator Zebra                                                                                    // [0xfdff0] 0x008a9000 + 0xfdff0 = 0x009a6ff0
.long 0x00000000                                                                                                   // [0xfe004] 0x008a9000 + 0xfe004 = 0x009a7004
RTTIBaseClassDescriptor Pig 9                                                                                      // [0xfe008] 0x008a9000 + 0xfe008 = 0x009a7008
RTTIBaseClassArray Pig                                                                                             // [0xfe020] 0x008a9000 + 0xfe020 = 0x009a7020
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

.long 0x00000000                                                                                                   // [0xfe04c] 0x008a9000 + 0xfe04c = 0x009a704c
RTTIClassHierarchyDescriptor Pig 10                                                                                // [0xfe050] 0x008a9000 + 0xfe050 = 0x009a7050
RTTICompleteObjectLocator Pig                                                                                      // [0xfe060] 0x008a9000 + 0xfe060 = 0x009a7060
.long 0x00000000                                                                                                   // [0xfe074] 0x008a9000 + 0xfe074 = 0x009a7074
RTTIBaseClassDescriptor PiecePig 10                                                                                // [0xfe078] 0x008a9000 + 0xfe078 = 0x009a7078
RTTIBaseClassArray PiecePig                                                                                        // [0xfe090] 0x008a9000 + 0xfe090 = 0x009a7090
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

RTTIClassHierarchyDescriptor PiecePig 11                                                                           // [0xfe0c0] 0x008a9000 + 0xfe0c0 = 0x009a70c0
RTTICompleteObjectLocator PiecePig                                                                                 // [0xfe0d0] 0x008a9000 + 0xfe0d0 = 0x009a70d0
.long 0x00000000                                                                                                   // [0xfe0e4] 0x008a9000 + 0xfe0e4 = 0x009a70e4
RTTIBaseClassDescriptor Tortoise 9                                                                                 // [0xfe0e8] 0x008a9000 + 0xfe0e8 = 0x009a70e8
RTTIBaseClassArray Tortoise                                                                                        // [0xfe100] 0x008a9000 + 0xfe100 = 0x009a7100
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

.long 0x00000000                                                                                                   // [0xfe12c] 0x008a9000 + 0xfe12c = 0x009a712c
RTTIClassHierarchyDescriptor Tortoise 10                                                                           // [0xfe130] 0x008a9000 + 0xfe130 = 0x009a7130
RTTICompleteObjectLocator Tortoise                                                                                 // [0xfe140] 0x008a9000 + 0xfe140 = 0x009a7140
.long 0x00000000                                                                                                   // [0xfe154] 0x008a9000 + 0xfe154 = 0x009a7154
RTTIBaseClassDescriptor PieceTortoise 10                                                                           // [0xfe158] 0x008a9000 + 0xfe158 = 0x009a7158
RTTIBaseClassArray PieceTortoise                                                                                   // [0xfe170] 0x008a9000 + 0xfe170 = 0x009a7170
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

RTTIClassHierarchyDescriptor PieceTortoise 11                                                                      // [0xfe1a0] 0x008a9000 + 0xfe1a0 = 0x009a71a0
RTTICompleteObjectLocator PieceTortoise                                                                            // [0xfe1b0] 0x008a9000 + 0xfe1b0 = 0x009a71b0
.long 0x00000000                                                                                                   // [0xfe1c4] 0x008a9000 + 0xfe1c4 = 0x009a71c4
RTTIBaseClassDescriptor Dove 8                                                                                     // [0xfe1c8] 0x008a9000 + 0xfe1c8 = 0x009a71c8
RTTIBaseClassArray Dove                                                                                            // [0xfe1e0] 0x008a9000 + 0xfe1e0 = 0x009a71e0
.long ??_R1A@?0A@A@Animal@@8
.long ??_R1A@?0A@A@Living@@8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Dove 9                                                                                // [0xfe208] 0x008a9000 + 0xfe208 = 0x009a7208
RTTICompleteObjectLocator Dove                                                                                     // [0xfe218] 0x008a9000 + 0xfe218 = 0x009a7218
.long 0x00000000                                                                                                   // [0xfe22c] 0x008a9000 + 0xfe22c = 0x009a722c
RTTIBaseClassDescriptor SpellDove 9                                                                                // [0xfe230] 0x008a9000 + 0xfe230 = 0x009a7230
RTTIBaseClassArray SpellDove                                                                                       // [0xfe248] 0x008a9000 + 0xfe248 = 0x009a7248
.long ??_R1A@?0A@A@Dove@@8
.long ??_R1A@?0A@A@Animal@@8
.long ??_R1A@?0A@A@Living@@8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xfe274] 0x008a9000 + 0xfe274 = 0x009a7274
RTTIClassHierarchyDescriptor SpellDove 10                                                                          // [0xfe278] 0x008a9000 + 0xfe278 = 0x009a7278
RTTICompleteObjectLocator SpellDove                                                                                // [0xfe288] 0x008a9000 + 0xfe288 = 0x009a7288
.long 0x00000000                                                                                                   // [0xfe29c] 0x008a9000 + 0xfe29c = 0x009a729c
RTTIBaseClassDescriptor Crow 9                                                                                     // [0xfe2a0] 0x008a9000 + 0xfe2a0 = 0x009a72a0
RTTIBaseClassArray Crow                                                                                            // [0xfe2b8] 0x008a9000 + 0xfe2b8 = 0x009a72b8
.long ??_R1A@?0A@A@Dove@@8
.long ??_R1A@?0A@A@Animal@@8
.long ??_R1A@?0A@A@Living@@8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xfe2e4] 0x008a9000 + 0xfe2e4 = 0x009a72e4
RTTIClassHierarchyDescriptor Crow 10                                                                               // [0xfe2e8] 0x008a9000 + 0xfe2e8 = 0x009a72e8
RTTICompleteObjectLocator Crow                                                                                     // [0xfe2f8] 0x008a9000 + 0xfe2f8 = 0x009a72f8
.long 0x00000000                                                                                                   // [0xfe30c] 0x008a9000 + 0xfe30c = 0x009a730c
RTTIBaseClassDescriptor Swallow 9                                                                                  // [0xfe310] 0x008a9000 + 0xfe310 = 0x009a7310
RTTIBaseClassArray Swallow                                                                                         // [0xfe328] 0x008a9000 + 0xfe328 = 0x009a7328
.long ??_R1A@?0A@A@Dove@@8
.long ??_R1A@?0A@A@Animal@@8
.long ??_R1A@?0A@A@Living@@8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xfe354] 0x008a9000 + 0xfe354 = 0x009a7354
RTTIClassHierarchyDescriptor Swallow 10                                                                            // [0xfe358] 0x008a9000 + 0xfe358 = 0x009a7358
RTTICompleteObjectLocator Swallow                                                                                  // [0xfe368] 0x008a9000 + 0xfe368 = 0x009a7368
.long 0x00000000                                                                                                   // [0xfe37c] 0x008a9000 + 0xfe37c = 0x009a737c
RTTIBaseClassDescriptor Pigeon 9                                                                                   // [0xfe380] 0x008a9000 + 0xfe380 = 0x009a7380
RTTIBaseClassArray Pigeon                                                                                          // [0xfe398] 0x008a9000 + 0xfe398 = 0x009a7398
.long ??_R1A@?0A@A@Dove@@8
.long ??_R1A@?0A@A@Animal@@8
.long ??_R1A@?0A@A@Living@@8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xfe3c4] 0x008a9000 + 0xfe3c4 = 0x009a73c4
RTTIClassHierarchyDescriptor Pigeon 10                                                                             // [0xfe3c8] 0x008a9000 + 0xfe3c8 = 0x009a73c8
RTTICompleteObjectLocator Pigeon                                                                                   // [0xfe3d8] 0x008a9000 + 0xfe3d8 = 0x009a73d8
.long 0x00000000                                                                                                   // [0xfe3ec] 0x008a9000 + 0xfe3ec = 0x009a73ec
RTTIBaseClassDescriptor Seagull 9                                                                                  // [0xfe3f0] 0x008a9000 + 0xfe3f0 = 0x009a73f0
RTTIBaseClassArray Seagull                                                                                         // [0xfe408] 0x008a9000 + 0xfe408 = 0x009a7408
.long ??_R1A@?0A@A@Dove@@8
.long ??_R1A@?0A@A@Animal@@8
.long ??_R1A@?0A@A@Living@@8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xfe434] 0x008a9000 + 0xfe434 = 0x009a7434
RTTIClassHierarchyDescriptor Seagull 10                                                                            // [0xfe438] 0x008a9000 + 0xfe438 = 0x009a7438
RTTICompleteObjectLocator Seagull                                                                                  // [0xfe448] 0x008a9000 + 0xfe448 = 0x009a7448
.long 0x00000000                                                                                                   // [0xfe45c] 0x008a9000 + 0xfe45c = 0x009a745c
RTTIBaseClassDescriptor Bat 9                                                                                      // [0xfe460] 0x008a9000 + 0xfe460 = 0x009a7460
RTTIBaseClassArray Bat                                                                                             // [0xfe478] 0x008a9000 + 0xfe478 = 0x009a7478
.long ??_R1A@?0A@A@Dove@@8
.long ??_R1A@?0A@A@Animal@@8
.long ??_R1A@?0A@A@Living@@8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xfe4a4] 0x008a9000 + 0xfe4a4 = 0x009a74a4
RTTIClassHierarchyDescriptor Bat 10                                                                                // [0xfe4a8] 0x008a9000 + 0xfe4a8 = 0x009a74a8
RTTICompleteObjectLocator Bat                                                                                      // [0xfe4b8] 0x008a9000 + 0xfe4b8 = 0x009a74b8
.long 0x00000000                                                                                                   // [0xfe4cc] 0x008a9000 + 0xfe4cc = 0x009a74cc
RTTIBaseClassDescriptor SpellBat 10                                                                                // [0xfe4d0] 0x008a9000 + 0xfe4d0 = 0x009a74d0
RTTIBaseClassArray SpellBat                                                                                        // [0xfe4e8] 0x008a9000 + 0xfe4e8 = 0x009a74e8
.long ??_R1A@?0A@A@SpellDove@@8
.long ??_R1A@?0A@A@Dove@@8
.long ??_R1A@?0A@A@Animal@@8
.long ??_R1A@?0A@A@Living@@8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SpellBat 11                                                                           // [0xfe518] 0x008a9000 + 0xfe518 = 0x009a7518
RTTICompleteObjectLocator SpellBat                                                                                 // [0xfe528] 0x008a9000 + 0xfe528 = 0x009a7528
.long 0x00000000                                                                                                   // [0xfe53c] 0x008a9000 + 0xfe53c = 0x009a753c
RTTIBaseClassDescriptor Vulture 9                                                                                  // [0xfe540] 0x008a9000 + 0xfe540 = 0x009a7540
RTTIBaseClassArray Vulture                                                                                         // [0xfe558] 0x008a9000 + 0xfe558 = 0x009a7558
.long ??_R1A@?0A@A@Dove@@8
.long ??_R1A@?0A@A@Animal@@8
.long ??_R1A@?0A@A@Living@@8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xfe584] 0x008a9000 + 0xfe584 = 0x009a7584
RTTIClassHierarchyDescriptor Vulture 10                                                                            // [0xfe588] 0x008a9000 + 0xfe588 = 0x009a7588
RTTICompleteObjectLocator Vulture                                                                                  // [0xfe598] 0x008a9000 + 0xfe598 = 0x009a7598
.long 0x00000000                                                                                                   // [0xfe5ac] 0x008a9000 + 0xfe5ac = 0x009a75ac
RTTIBaseClassDescriptor Lion 8                                                                                     // [0xfe5b0] 0x008a9000 + 0xfe5b0 = 0x009a75b0
RTTIBaseClassDescriptor Leopard 9                                                                                  // [0xfe5c8] 0x008a9000 + 0xfe5c8 = 0x009a75c8
RTTIBaseClassArray Leopard                                                                                         // [0xfe5e0] 0x008a9000 + 0xfe5e0 = 0x009a75e0
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

.long 0x00000000                                                                                                   // [0xfe60c] 0x008a9000 + 0xfe60c = 0x009a760c
RTTIClassHierarchyDescriptor Leopard 10                                                                            // [0xfe610] 0x008a9000 + 0xfe610 = 0x009a7610
RTTICompleteObjectLocator Leopard                                                                                  // [0xfe620] 0x008a9000 + 0xfe620 = 0x009a7620
.long 0x00000000                                                                                                   // [0xfe634] 0x008a9000 + 0xfe634 = 0x009a7634
RTTIBaseClassArray Lion                                                                                            // [0xfe638] 0x008a9000 + 0xfe638 = 0x009a7638
.long ??_R1A@?0A@A@Animal@@8
.long ??_R1A@?0A@A@Living@@8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Lion 9                                                                                // [0xfe660] 0x008a9000 + 0xfe660 = 0x009a7660
RTTICompleteObjectLocator Lion                                                                                     // [0xfe670] 0x008a9000 + 0xfe670 = 0x009a7670
.long 0x00000000                                                                                                   // [0xfe684] 0x008a9000 + 0xfe684 = 0x009a7684
RTTIBaseClassDescriptor PieceLion 9                                                                                // [0xfe688] 0x008a9000 + 0xfe688 = 0x009a7688
RTTIBaseClassArray PieceLion                                                                                       // [0xfe6a0] 0x008a9000 + 0xfe6a0 = 0x009a76a0
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

.long 0x00000000                                                                                                   // [0xfe6cc] 0x008a9000 + 0xfe6cc = 0x009a76cc
RTTIClassHierarchyDescriptor PieceLion 10                                                                          // [0xfe6d0] 0x008a9000 + 0xfe6d0 = 0x009a76d0
RTTICompleteObjectLocator PieceLion                                                                                // [0xfe6e0] 0x008a9000 + 0xfe6e0 = 0x009a76e0
.long 0x00000000                                                                                                   // [0xfe6f4] 0x008a9000 + 0xfe6f4 = 0x009a76f4
RTTIBaseClassDescriptor SpellWolf 9                                                                                // [0xfe6f8] 0x008a9000 + 0xfe6f8 = 0x009a76f8
RTTIBaseClassArray SpellWolf                                                                                       // [0xfe710] 0x008a9000 + 0xfe710 = 0x009a7710
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

.long 0x00000000                                                                                                   // [0xfe73c] 0x008a9000 + 0xfe73c = 0x009a773c
RTTIClassHierarchyDescriptor SpellWolf 10                                                                          // [0xfe740] 0x008a9000 + 0xfe740 = 0x009a7740
RTTICompleteObjectLocator SpellWolf                                                                                // [0xfe750] 0x008a9000 + 0xfe750 = 0x009a7750
.long 0x00000000                                                                                                   // [0xfe764] 0x008a9000 + 0xfe764 = 0x009a7764
RTTIBaseClassDescriptor Tiger 9                                                                                    // [0xfe768] 0x008a9000 + 0xfe768 = 0x009a7768
RTTIBaseClassArray Tiger                                                                                           // [0xfe780] 0x008a9000 + 0xfe780 = 0x009a7780
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

.long 0x00000000                                                                                                   // [0xfe7ac] 0x008a9000 + 0xfe7ac = 0x009a77ac
RTTIClassHierarchyDescriptor Tiger 10                                                                              // [0xfe7b0] 0x008a9000 + 0xfe7b0 = 0x009a77b0
RTTICompleteObjectLocator Tiger                                                                                    // [0xfe7c0] 0x008a9000 + 0xfe7c0 = 0x009a77c0
.long 0x00000000                                                                                                   // [0xfe7d4] 0x008a9000 + 0xfe7d4 = 0x009a77d4
RTTIBaseClassDescriptor Wolf 9                                                                                     // [0xfe7d8] 0x008a9000 + 0xfe7d8 = 0x009a77d8
RTTIBaseClassArray Wolf                                                                                            // [0xfe7f0] 0x008a9000 + 0xfe7f0 = 0x009a77f0
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

.long 0x00000000                                                                                                   // [0xfe81c] 0x008a9000 + 0xfe81c = 0x009a781c
RTTIClassHierarchyDescriptor Wolf 10                                                                               // [0xfe820] 0x008a9000 + 0xfe820 = 0x009a7820
RTTICompleteObjectLocator Wolf                                                                                     // [0xfe830] 0x008a9000 + 0xfe830 = 0x009a7830
.long 0x00000000                                                                                                   // [0xfe844] 0x008a9000 + 0xfe844 = 0x009a7844
RTTIBaseClassDescriptor PieceWolf 10                                                                               // [0xfe848] 0x008a9000 + 0xfe848 = 0x009a7848
RTTIBaseClassArray PieceWolf                                                                                       // [0xfe860] 0x008a9000 + 0xfe860 = 0x009a7860
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

RTTIClassHierarchyDescriptor PieceWolf 11                                                                          // [0xfe890] 0x008a9000 + 0xfe890 = 0x009a7890
RTTICompleteObjectLocator PieceWolf                                                                                // [0xfe8a0] 0x008a9000 + 0xfe8a0 = 0x009a78a0
.long 0x00000000                                                                                                   // [0xfe8b4] 0x008a9000 + 0xfe8b4 = 0x009a78b4
RTTIBaseClassDescriptor GFeatureInfo 4                                                                             // [0xfe8b8] 0x008a9000 + 0xfe8b8 = 0x009a78b8
RTTIBaseClassDescriptor GAnimatedStaticInfo 5                                                                      // [0xfe8d0] 0x008a9000 + 0xfe8d0 = 0x009a78d0
RTTIBaseClassArray GAnimatedStaticInfo                                                                             // [0xfe8e8] 0x008a9000 + 0xfe8e8 = 0x009a78e8
.long ??_R1A@?0A@A@GFeatureInfo@@8
.long ??_R1A@?0A@A@GMultiMapFixedInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xfe904] 0x008a9000 + 0xfe904 = 0x009a7904
RTTIClassHierarchyDescriptor GAnimatedStaticInfo 6                                                                 // [0xfe908] 0x008a9000 + 0xfe908 = 0x009a7908
RTTICompleteObjectLocator GAnimatedStaticInfo                                                                      // [0xfe918] 0x008a9000 + 0xfe918 = 0x009a7918
.long 0x00000000                                                                                                   // [0xfe92c] 0x008a9000 + 0xfe92c = 0x009a792c
RTTIBaseClassDescriptor Feature 6                                                                                  // [0xfe930] 0x008a9000 + 0xfe930 = 0x009a7930
RTTIBaseClassDescriptor AnimatedStatic 7                                                                           // [0xfe948] 0x008a9000 + 0xfe948 = 0x009a7948
RTTIBaseClassArray AnimatedStatic                                                                                  // [0xfe960] 0x008a9000 + 0xfe960 = 0x009a7960
.long ??_R1A@?0A@A@Feature@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xfe984] 0x008a9000 + 0xfe984 = 0x009a7984
RTTIClassHierarchyDescriptor AnimatedStatic 8                                                                      // [0xfe988] 0x008a9000 + 0xfe988 = 0x009a7988
RTTICompleteObjectLocator AnimatedStatic                                                                           // [0xfe998] 0x008a9000 + 0xfe998 = 0x009a7998
.long 0x00000000                                                                                                   // [0xfe9ac] 0x008a9000 + 0xfe9ac = 0x009a79ac
RTTIBaseClassArray Feature                                                                                         // [0xfe9b0] 0x008a9000 + 0xfe9b0 = 0x009a79b0
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Feature 7                                                                             // [0xfe9d0] 0x008a9000 + 0xfe9d0 = 0x009a79d0
RTTICompleteObjectLocator Feature                                                                                  // [0xfe9e0] 0x008a9000 + 0xfe9e0 = 0x009a79e0
.long 0x00000000                                                                                                   // [0xfe9f4] 0x008a9000 + 0xfe9f4 = 0x009a79f4
RTTIBaseClassDescriptor GArena 3                                                                                   // [0xfe9f8] 0x008a9000 + 0xfe9f8 = 0x009a79f8
RTTIBaseClassArray GArena                                                                                          // [0xfea10] 0x008a9000 + 0xfea10 = 0x009a7a10
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xfea24] 0x008a9000 + 0xfea24 = 0x009a7a24
RTTIClassHierarchyDescriptor GArena 4                                                                              // [0xfea28] 0x008a9000 + 0xfea28 = 0x009a7a28
RTTICompleteObjectLocator GArena                                                                                   // [0xfea38] 0x008a9000 + 0xfea38 = 0x009a7a38
.long 0x00000000                                                                                                   // [0xfea4c] 0x008a9000 + 0xfea4c = 0x009a7a4c
RTTIBaseClassArray GameThingWithPos                                                                                // [0xfea50] 0x008a9000 + 0xfea50 = 0x009a7a50
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GameThingWithPos 3                                                                    // [0xfea60] 0x008a9000 + 0xfea60 = 0x009a7a60
RTTICompleteObjectLocator GameThingWithPos                                                                         // [0xfea70] 0x008a9000 + 0xfea70 = 0x009a7a70
.long 0x00000000                                                                                                   // [0xfea84] 0x008a9000 + 0xfea84 = 0x009a7a84
RTTIBaseClassDescriptor ArenaSpellIcon 5                                                                           // [0xfea88] 0x008a9000 + 0xfea88 = 0x009a7a88
RTTIBaseClassArray ArenaSpellIcon                                                                                  // [0xfeaa0] 0x008a9000 + 0xfeaa0 = 0x009a7aa0
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xfeabc] 0x008a9000 + 0xfeabc = 0x009a7abc
RTTIClassHierarchyDescriptor ArenaSpellIcon 6                                                                      // [0xfeac0] 0x008a9000 + 0xfeac0 = 0x009a7ac0
RTTICompleteObjectLocator ArenaSpellIcon                                                                           // [0xfead0] 0x008a9000 + 0xfead0 = 0x009a7ad0
.long 0x00000000                                                                                                   // [0xfeae4] 0x008a9000 + 0xfeae4 = 0x009a7ae4
RTTIBaseClassDescriptor GMobileObjectInfo 4                                                                        // [0xfeae8] 0x008a9000 + 0xfeae8 = 0x009a7ae8
RTTIBaseClassDescriptor GArrowInfo 5                                                                               // [0xfeb00] 0x008a9000 + 0xfeb00 = 0x009a7b00
RTTIBaseClassArray GArrowInfo                                                                                      // [0xfeb18] 0x008a9000 + 0xfeb18 = 0x009a7b18
.long ??_R1A@?0A@A@GMobileObjectInfo@@8
.long ??_R1A@?0A@A@GMobileInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xfeb34] 0x008a9000 + 0xfeb34 = 0x009a7b34
RTTIClassHierarchyDescriptor GArrowInfo 6                                                                          // [0xfeb38] 0x008a9000 + 0xfeb38 = 0x009a7b38
RTTICompleteObjectLocator GArrowInfo                                                                               // [0xfeb48] 0x008a9000 + 0xfeb48 = 0x009a7b48
.long 0x00000000                                                                                                   // [0xfeb5c] 0x008a9000 + 0xfeb5c = 0x009a7b5c
RTTIBaseClassDescriptor MobileObject 5                                                                             // [0xfeb60] 0x008a9000 + 0xfeb60 = 0x009a7b60
RTTIBaseClassDescriptor Arrow 6                                                                                    // [0xfeb78] 0x008a9000 + 0xfeb78 = 0x009a7b78
RTTIBaseClassArray Arrow                                                                                           // [0xfeb90] 0x008a9000 + 0xfeb90 = 0x009a7b90
.long ??_R1A@?0A@A@MobileObject@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Arrow 7                                                                               // [0xfebb0] 0x008a9000 + 0xfebb0 = 0x009a7bb0
RTTICompleteObjectLocator Arrow                                                                                    // [0xfebc0] 0x008a9000 + 0xfebc0 = 0x009a7bc0
.long 0x00000000                                                                                                   // [0xfebd4] 0x008a9000 + 0xfebd4 = 0x009a7bd4
RTTIBaseClassDescriptor TownArtifact 2                                                                             // [0xfebd8] 0x008a9000 + 0xfebd8 = 0x009a7bd8
RTTIBaseClassArray TownArtifact                                                                                    // [0xfebf0] 0x008a9000 + 0xfebf0 = 0x009a7bf0
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor TownArtifact 3                                                                        // [0xfec00] 0x008a9000 + 0xfec00 = 0x009a7c00
RTTICompleteObjectLocator TownArtifact                                                                             // [0xfec10] 0x008a9000 + 0xfec10 = 0x009a7c10
.long 0x00000000                                                                                                   // [0xfec24] 0x008a9000 + 0xfec24 = 0x009a7c24
RTTIBaseClassDescriptor GAudio 2                                                                                   // [0xfec28] 0x008a9000 + 0xfec28 = 0x009a7c28
RTTIBaseClassArray GAudio                                                                                          // [0xfec40] 0x008a9000 + 0xfec40 = 0x009a7c40
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GAudio 3                                                                              // [0xfec50] 0x008a9000 + 0xfec50 = 0x009a7c50
RTTICompleteObjectLocator GAudio                                                                                   // [0xfec60] 0x008a9000 + 0xfec60 = 0x009a7c60
.long 0x00000000                                                                                                   // [0xfec74] 0x008a9000 + 0xfec74 = 0x009a7c74
RTTIBaseClassDescriptor ThingMusicInfo 2                                                                           // [0xfec78] 0x008a9000 + 0xfec78 = 0x009a7c78
RTTIBaseClassArray ThingMusicInfo                                                                                  // [0xfec90] 0x008a9000 + 0xfec90 = 0x009a7c90
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ThingMusicInfo 3                                                                      // [0xfeca0] 0x008a9000 + 0xfeca0 = 0x009a7ca0
RTTICompleteObjectLocator ThingMusicInfo                                                                           // [0xfecb0] 0x008a9000 + 0xfecb0 = 0x009a7cb0
.long 0x00000000                                                                                                   // [0xfecc4] 0x008a9000 + 0xfecc4 = 0x009a7cc4
RTTIBaseClassDescriptor GLeashSelectorInfo 3                                                                       // [0xfecc8] 0x008a9000 + 0xfecc8 = 0x009a7cc8
RTTIBaseClassArray GLeashSelectorInfo                                                                              // [0xfece0] 0x008a9000 + 0xfece0 = 0x009a7ce0
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xfecf4] 0x008a9000 + 0xfecf4 = 0x009a7cf4
RTTIClassHierarchyDescriptor GLeashSelectorInfo 4                                                                  // [0xfecf8] 0x008a9000 + 0xfecf8 = 0x009a7cf8
RTTICompleteObjectLocator GLeashSelectorInfo                                                                       // [0xfed08] 0x008a9000 + 0xfed08 = 0x009a7d08
.long 0x00000000                                                                                                   // [0xfed1c] 0x008a9000 + 0xfed1c = 0x009a7d1c
RTTIBaseClassArray GMagicInfo                                                                                      // [0xfed20] 0x008a9000 + 0xfed20 = 0x009a7d20
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GMagicInfo 3                                                                          // [0xfed30] 0x008a9000 + 0xfed30 = 0x009a7d30
RTTICompleteObjectLocator GMagicInfo                                                                               // [0xfed40] 0x008a9000 + 0xfed40 = 0x009a7d40
.long 0x00000000                                                                                                   // [0xfed54] 0x008a9000 + 0xfed54 = 0x009a7d54
RTTIBaseClassDescriptor LHFile 0                                                                                   // [0xfed58] 0x008a9000 + 0xfed58 = 0x009a7d58
RTTIBaseClassDescriptor LHReleasedFile 1                                                                           // [0xfed70] 0x008a9000 + 0xfed70 = 0x009a7d70
RTTIBaseClassArray LHReleasedFile                                                                                  // [0xfed88] 0x008a9000 + 0xfed88 = 0x009a7d88
.long ??_R1A@?0A@A@LHFile@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xfed94] 0x008a9000 + 0xfed94 = 0x009a7d94
RTTIClassHierarchyDescriptor LHReleasedFile 2                                                                      // [0xfed98] 0x008a9000 + 0xfed98 = 0x009a7d98
RTTICompleteObjectLocator LHReleasedFile                                                                           // [0xfeda8] 0x008a9000 + 0xfeda8 = 0x009a7da8
.long 0x00000000                                                                                                   // [0xfedbc] 0x008a9000 + 0xfedbc = 0x009a7dbc
RTTIBaseClassDescriptor GMagicTeleportInfo 3                                                                       // [0xfedc0] 0x008a9000 + 0xfedc0 = 0x009a7dc0
RTTIBaseClassArray GMagicTeleportInfo                                                                              // [0xfedd8] 0x008a9000 + 0xfedd8 = 0x009a7dd8
.long ??_R1A@?0A@A@GMagicInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xfedec] 0x008a9000 + 0xfedec = 0x009a7dec
RTTIClassHierarchyDescriptor GMagicTeleportInfo 4                                                                  // [0xfedf0] 0x008a9000 + 0xfedf0 = 0x009a7df0
RTTICompleteObjectLocator GMagicTeleportInfo                                                                       // [0xfee00] 0x008a9000 + 0xfee00 = 0x009a7e00
.long 0x00000000                                                                                                   // [0xfee14] 0x008a9000 + 0xfee14 = 0x009a7e14
RTTIBaseClassDescriptor GMagicForestInfo 3                                                                         // [0xfee18] 0x008a9000 + 0xfee18 = 0x009a7e18
RTTIBaseClassArray GMagicForestInfo                                                                                // [0xfee30] 0x008a9000 + 0xfee30 = 0x009a7e30
.long ??_R1A@?0A@A@GMagicInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xfee44] 0x008a9000 + 0xfee44 = 0x009a7e44
RTTIClassHierarchyDescriptor GMagicForestInfo 4                                                                    // [0xfee48] 0x008a9000 + 0xfee48 = 0x009a7e48
RTTICompleteObjectLocator GMagicForestInfo                                                                         // [0xfee58] 0x008a9000 + 0xfee58 = 0x009a7e58
.long 0x00000000                                                                                                   // [0xfee6c] 0x008a9000 + 0xfee6c = 0x009a7e6c
RTTIBaseClassDescriptor GMagicObjectInfo 3                                                                         // [0xfee70] 0x008a9000 + 0xfee70 = 0x009a7e70
RTTIBaseClassDescriptor GMagicResourceInfo 4                                                                       // [0xfee88] 0x008a9000 + 0xfee88 = 0x009a7e88
RTTIBaseClassArray GMagicResourceInfo                                                                              // [0xfeea0] 0x008a9000 + 0xfeea0 = 0x009a7ea0
.long ??_R1A@?0A@A@GMagicObjectInfo@@8
.long ??_R1A@?0A@A@GMagicInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GMagicResourceInfo 5                                                                  // [0xfeeb8] 0x008a9000 + 0xfeeb8 = 0x009a7eb8
RTTICompleteObjectLocator GMagicResourceInfo                                                                       // [0xfeec8] 0x008a9000 + 0xfeec8 = 0x009a7ec8
.long 0x00000000                                                                                                   // [0xfeedc] 0x008a9000 + 0xfeedc = 0x009a7edc
RTTIBaseClassDescriptor GMagicHealInfo 3                                                                           // [0xfeee0] 0x008a9000 + 0xfeee0 = 0x009a7ee0
RTTIBaseClassArray GMagicHealInfo                                                                                  // [0xfeef8] 0x008a9000 + 0xfeef8 = 0x009a7ef8
.long ??_R1A@?0A@A@GMagicInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xfef0c] 0x008a9000 + 0xfef0c = 0x009a7f0c
RTTIClassHierarchyDescriptor GMagicHealInfo 4                                                                      // [0xfef10] 0x008a9000 + 0xfef10 = 0x009a7f10
RTTICompleteObjectLocator GMagicHealInfo                                                                           // [0xfef20] 0x008a9000 + 0xfef20 = 0x009a7f20
.long 0x00000000                                                                                                   // [0xfef34] 0x008a9000 + 0xfef34 = 0x009a7f34
RTTIBaseClassDescriptor LHOSFile 0                                                                                 // [0xfef38] 0x008a9000 + 0xfef38 = 0x009a7f38
RTTIBaseClassDescriptor LHReleasedOSFile 1                                                                         // [0xfef50] 0x008a9000 + 0xfef50 = 0x009a7f50
RTTIBaseClassArray LHReleasedOSFile                                                                                // [0xfef68] 0x008a9000 + 0xfef68 = 0x009a7f68
.long ??_R1A@?0A@A@LHOSFile@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xfef74] 0x008a9000 + 0xfef74 = 0x009a7f74
RTTIClassHierarchyDescriptor LHReleasedOSFile 2                                                                    // [0xfef78] 0x008a9000 + 0xfef78 = 0x009a7f78
RTTICompleteObjectLocator LHReleasedOSFile                                                                         // [0xfef88] 0x008a9000 + 0xfef88 = 0x009a7f88
.long 0x00000000                                                                                                   // [0xfef9c] 0x008a9000 + 0xfef9c = 0x009a7f9c
RTTIBaseClassDescriptor GMagicInfo 2                                                                               // [0xfefa0] 0x008a9000 + 0xfefa0 = 0x009a7fa0
RTTIBaseClassDescriptor GMagicRadiusSpellInfo 3                                                                    // [0xfefb8] 0x008a9000 + 0xfefb8 = 0x009a7fb8
RTTIBaseClassDescriptor GMagicStormAndTornadoInfo 4                                                                // [0xfefd0] 0x008a9000 + 0xfefd0 = 0x009a7fd0
RTTIBaseClassArray GMagicStormAndTornadoInfo                                                                       // [0xfefe8] 0x008a9000 + 0xfefe8 = 0x009a7fe8
.long ??_R1A@?0A@A@GMagicRadiusSpellInfo@@8
.long ??_R1A@?0A@A@GMagicInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GMagicStormAndTornadoInfo 5                                                           // [0xff000] 0x008a9000 + 0xff000 = 0x009a8000
RTTICompleteObjectLocator GMagicStormAndTornadoInfo                                                                // [0xff010] 0x008a9000 + 0xff010 = 0x009a8010
RTTIBaseClassArray LHFile                                                                                          // [0xff024] 0x008a9000 + 0xff024 = 0x009a8024
.long 0x00000000
.long 0x00000000

RTTIClassHierarchyDescriptor LHFile 1                                                                              // [0xff030] 0x008a9000 + 0xff030 = 0x009a8030
RTTICompleteObjectLocator LHFile                                                                                   // [0xff040] 0x008a9000 + 0xff040 = 0x009a8040
.long 0x00000000                                                                                                   // [0xff054] 0x008a9000 + 0xff054 = 0x009a8054
RTTIBaseClassArray GBaseInfo                                                                                       // [0xff058] 0x008a9000 + 0xff058 = 0x009a8058
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xff064] 0x008a9000 + 0xff064 = 0x009a8064
RTTIClassHierarchyDescriptor GBaseInfo 2                                                                           // [0xff068] 0x008a9000 + 0xff068 = 0x009a8068
RTTICompleteObjectLocator GBaseInfo                                                                                // [0xff078] 0x008a9000 + 0xff078 = 0x009a8078
.long 0x00000000                                                                                                   // [0xff08c] 0x008a9000 + 0xff08c = 0x009a808c
RTTIBaseClassDescriptor GMagicShieldInfo 4                                                                         // [0xff090] 0x008a9000 + 0xff090 = 0x009a8090
RTTIBaseClassArray GMagicShieldInfo                                                                                // [0xff0a8] 0x008a9000 + 0xff0a8 = 0x009a80a8
.long ??_R1A@?0A@A@GMagicRadiusSpellInfo@@8
.long ??_R1A@?0A@A@GMagicInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GMagicShieldInfo 5                                                                    // [0xff0c0] 0x008a9000 + 0xff0c0 = 0x009a80c0
RTTICompleteObjectLocator GMagicShieldInfo                                                                         // [0xff0d0] 0x008a9000 + 0xff0d0 = 0x009a80d0
.long 0x00000000                                                                                                   // [0xff0e4] 0x008a9000 + 0xff0e4 = 0x009a80e4
RTTIBaseClassDescriptor GMagicWaterInfo 3                                                                          // [0xff0e8] 0x008a9000 + 0xff0e8 = 0x009a80e8
RTTIBaseClassArray GMagicWaterInfo                                                                                 // [0xff100] 0x008a9000 + 0xff100 = 0x009a8100
.long ??_R1A@?0A@A@GMagicInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xff114] 0x008a9000 + 0xff114 = 0x009a8114
RTTIClassHierarchyDescriptor GMagicWaterInfo 4                                                                     // [0xff118] 0x008a9000 + 0xff118 = 0x009a8118
RTTICompleteObjectLocator GMagicWaterInfo                                                                          // [0xff128] 0x008a9000 + 0xff128 = 0x009a8128
.long 0x00000000                                                                                                   // [0xff13c] 0x008a9000 + 0xff13c = 0x009a813c
RTTIBaseClassDescriptor GMagicFlockFlyingInfo 3                                                                    // [0xff140] 0x008a9000 + 0xff140 = 0x009a8140
RTTIBaseClassArray GMagicFlockFlyingInfo                                                                           // [0xff158] 0x008a9000 + 0xff158 = 0x009a8158
.long ??_R1A@?0A@A@GMagicInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xff16c] 0x008a9000 + 0xff16c = 0x009a816c
RTTIClassHierarchyDescriptor GMagicFlockFlyingInfo 4                                                               // [0xff170] 0x008a9000 + 0xff170 = 0x009a8170
RTTICompleteObjectLocator GMagicFlockFlyingInfo                                                                    // [0xff180] 0x008a9000 + 0xff180 = 0x009a8180
.long 0x00000000                                                                                                   // [0xff194] 0x008a9000 + 0xff194 = 0x009a8194
RTTIBaseClassDescriptor GMagicFlockGroundInfo 3                                                                    // [0xff198] 0x008a9000 + 0xff198 = 0x009a8198
RTTIBaseClassArray GMagicFlockGroundInfo                                                                           // [0xff1b0] 0x008a9000 + 0xff1b0 = 0x009a81b0
.long ??_R1A@?0A@A@GMagicInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xff1c4] 0x008a9000 + 0xff1c4 = 0x009a81c4
RTTIClassHierarchyDescriptor GMagicFlockGroundInfo 4                                                               // [0xff1c8] 0x008a9000 + 0xff1c8 = 0x009a81c8
RTTICompleteObjectLocator GMagicFlockGroundInfo                                                                    // [0xff1d8] 0x008a9000 + 0xff1d8 = 0x009a81d8
.long 0x00000000                                                                                                   // [0xff1ec] 0x008a9000 + 0xff1ec = 0x009a81ec
RTTIBaseClassDescriptor GMagicCreatureSpellInfo 3                                                                  // [0xff1f0] 0x008a9000 + 0xff1f0 = 0x009a81f0
RTTIBaseClassArray GMagicCreatureSpellInfo                                                                         // [0xff208] 0x008a9000 + 0xff208 = 0x009a8208
.long ??_R1A@?0A@A@GMagicInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xff21c] 0x008a9000 + 0xff21c = 0x009a821c
RTTIClassHierarchyDescriptor GMagicCreatureSpellInfo 4                                                             // [0xff220] 0x008a9000 + 0xff220 = 0x009a8220
RTTICompleteObjectLocator GMagicCreatureSpellInfo                                                                  // [0xff230] 0x008a9000 + 0xff230 = 0x009a8230
.long 0x00000000                                                                                                   // [0xff244] 0x008a9000 + 0xff244 = 0x009a8244
RTTIBaseClassArray GMagicObjectInfo                                                                                // [0xff248] 0x008a9000 + 0xff248 = 0x009a8248
.long ??_R1A@?0A@A@GMagicInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xff25c] 0x008a9000 + 0xff25c = 0x009a825c
RTTIClassHierarchyDescriptor GMagicObjectInfo 4                                                                    // [0xff260] 0x008a9000 + 0xff260 = 0x009a8260
RTTICompleteObjectLocator GMagicObjectInfo                                                                         // [0xff270] 0x008a9000 + 0xff270 = 0x009a8270
.long 0x00000000                                                                                                   // [0xff284] 0x008a9000 + 0xff284 = 0x009a8284
RTTIBaseClassArray GMagicRadiusSpellInfo                                                                           // [0xff288] 0x008a9000 + 0xff288 = 0x009a8288
.long ??_R1A@?0A@A@GMagicInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xff29c] 0x008a9000 + 0xff29c = 0x009a829c
RTTIClassHierarchyDescriptor GMagicRadiusSpellInfo 4                                                               // [0xff2a0] 0x008a9000 + 0xff2a0 = 0x009a82a0
RTTICompleteObjectLocator GMagicRadiusSpellInfo                                                                    // [0xff2b0] 0x008a9000 + 0xff2b0 = 0x009a82b0
.long 0x00000000                                                                                                   // [0xff2c4] 0x008a9000 + 0xff2c4 = 0x009a82c4
RTTIBaseClassDescriptor GBallInfo 5                                                                                // [0xff2c8] 0x008a9000 + 0xff2c8 = 0x009a82c8
RTTIBaseClassArray GBallInfo                                                                                       // [0xff2e0] 0x008a9000 + 0xff2e0 = 0x009a82e0
.long ??_R1A@?0A@A@GMobileObjectInfo@@8
.long ??_R1A@?0A@A@GMobileInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xff2fc] 0x008a9000 + 0xff2fc = 0x009a82fc
RTTIClassHierarchyDescriptor GBallInfo 6                                                                           // [0xff300] 0x008a9000 + 0xff300 = 0x009a8300
RTTICompleteObjectLocator GBallInfo                                                                                // [0xff310] 0x008a9000 + 0xff310 = 0x009a8310
.long 0x00000000                                                                                                   // [0xff324] 0x008a9000 + 0xff324 = 0x009a8324
RTTIBaseClassDescriptor Ball 6                                                                                     // [0xff328] 0x008a9000 + 0xff328 = 0x009a8328
RTTIBaseClassArray Ball                                                                                            // [0xff340] 0x008a9000 + 0xff340 = 0x009a8340
.long ??_R1A@?0A@A@MobileObject@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Ball 7                                                                                // [0xff360] 0x008a9000 + 0xff360 = 0x009a8360
RTTICompleteObjectLocator Ball                                                                                     // [0xff370] 0x008a9000 + 0xff370 = 0x009a8370
.long 0x00000000                                                                                                   // [0xff384] 0x008a9000 + 0xff384 = 0x009a8384
RTTIBaseClassDescriptor GBeliefInfo 2                                                                              // [0xff388] 0x008a9000 + 0xff388 = 0x009a8388
RTTIBaseClassArray GBeliefInfo                                                                                     // [0xff3a0] 0x008a9000 + 0xff3a0 = 0x009a83a0
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GBeliefInfo 3                                                                         // [0xff3b0] 0x008a9000 + 0xff3b0 = 0x009a83b0
RTTICompleteObjectLocator GBeliefInfo                                                                              // [0xff3c0] 0x008a9000 + 0xff3c0 = 0x009a83c0
.long 0x00000000                                                                                                   // [0xff3d4] 0x008a9000 + 0xff3d4 = 0x009a83d4
_RTTIBaseClassDescriptor DrawingObject 0 V 4                                                                       // [0xff3d8] 0x008a9000 + 0xff3d8 = 0x009a83d8
RTTIBaseClassDescriptorStruct ValueSpinner 1                                                                       // [0xff3f0] 0x008a9000 + 0xff3f0 = 0x009a83f0
RTTIBaseClassArray ValueSpinner                                                                                    // [0xff408] 0x008a9000 + 0xff408 = 0x009a8408
.long 0x009a83d8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xff414] 0x008a9000 + 0xff414 = 0x009a8414
RTTIClassHierarchyDescriptor ValueSpinner 2                                                                        // [0xff418] 0x008a9000 + 0xff418 = 0x009a8418
RTTICompleteObjectLocatorStruct ValueSpinner                                                                       // [0xff428] 0x008a9000 + 0xff428 = 0x009a8428
.long 0x00000000                                                                                                   // [0xff43c] 0x008a9000 + 0xff43c = 0x009a843c
RTTIBaseClassDescriptor GBigForestInfo 4                                                                           // [0xff440] 0x008a9000 + 0xff440 = 0x009a8440
RTTIBaseClassArray GBigForestInfo                                                                                  // [0xff458] 0x008a9000 + 0xff458 = 0x009a8458
.long ??_R1A@?0A@A@GMultiMapFixedInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GBigForestInfo 5                                                                      // [0xff470] 0x008a9000 + 0xff470 = 0x009a8470
RTTICompleteObjectLocator GBigForestInfo                                                                           // [0xff480] 0x008a9000 + 0xff480 = 0x009a8480
.long 0x00000000                                                                                                   // [0xff494] 0x008a9000 + 0xff494 = 0x009a8494
RTTIBaseClassDescriptor BigForest 6                                                                                // [0xff498] 0x008a9000 + 0xff498 = 0x009a8498
RTTIBaseClassArray BigForest                                                                                       // [0xff4b0] 0x008a9000 + 0xff4b0 = 0x009a84b0
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor BigForest 7                                                                           // [0xff4d0] 0x008a9000 + 0xff4d0 = 0x009a84d0
RTTICompleteObjectLocator BigForest                                                                                // [0xff4e0] 0x008a9000 + 0xff4e0 = 0x009a84e0
.long 0x00000000                                                                                                   // [0xff4f4] 0x008a9000 + 0xff4f4 = 0x009a84f4
RTTIBaseClassDescriptor MobileStatic 6                                                                             // [0xff4f8] 0x008a9000 + 0xff4f8 = 0x009a84f8
RTTIBaseClassDescriptor Rock 7                                                                                     // [0xff510] 0x008a9000 + 0xff510 = 0x009a8510
RTTIBaseClassDescriptor Bonfire 8                                                                                  // [0xff528] 0x008a9000 + 0xff528 = 0x009a8528
RTTIBaseClassArray Bonfire                                                                                         // [0xff540] 0x008a9000 + 0xff540 = 0x009a8540
.long ??_R1A@?0A@A@Rock@@8
.long ??_R1A@?0A@A@MobileStatic@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Bonfire 9                                                                             // [0xff568] 0x008a9000 + 0xff568 = 0x009a8568
RTTICompleteObjectLocator Bonfire                                                                                  // [0xff578] 0x008a9000 + 0xff578 = 0x009a8578
.long 0x00000000                                                                                                   // [0xff58c] 0x008a9000 + 0xff58c = 0x009a858c
RTTIBaseClassDescriptor BuildingSite 2                                                                             // [0xff590] 0x008a9000 + 0xff590 = 0x009a8590
RTTIBaseClassArray BuildingSite                                                                                    // [0xff5a8] 0x008a9000 + 0xff5a8 = 0x009a85a8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor BuildingSite 3                                                                        // [0xff5b8] 0x008a9000 + 0xff5b8 = 0x009a85b8
RTTICompleteObjectLocator BuildingSite                                                                             // [0xff5c8] 0x008a9000 + 0xff5c8 = 0x009a85c8
.long 0x00000000                                                                                                   // [0xff5dc] 0x008a9000 + 0xff5dc = 0x009a85dc
RTTIBaseClassDescriptor CitadelBuildingSite 3                                                                      // [0xff5e0] 0x008a9000 + 0xff5e0 = 0x009a85e0
RTTIBaseClassArray CitadelBuildingSite                                                                             // [0xff5f8] 0x008a9000 + 0xff5f8 = 0x009a85f8
.long ??_R1A@?0A@A@BuildingSite@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xff60c] 0x008a9000 + 0xff60c = 0x009a860c
RTTIClassHierarchyDescriptor CitadelBuildingSite 4                                                                 // [0xff610] 0x008a9000 + 0xff610 = 0x009a8610
RTTICompleteObjectLocator CitadelBuildingSite                                                                      // [0xff620] 0x008a9000 + 0xff620 = 0x009a8620
.long 0x00000000                                                                                                   // [0xff634] 0x008a9000 + 0xff634 = 0x009a8634
RTTIBaseClassDescriptor StandardBuildingSite 3                                                                     // [0xff638] 0x008a9000 + 0xff638 = 0x009a8638
RTTIBaseClassArray StandardBuildingSite                                                                            // [0xff650] 0x008a9000 + 0xff650 = 0x009a8650
.long ??_R1A@?0A@A@BuildingSite@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xff664] 0x008a9000 + 0xff664 = 0x009a8664
RTTIClassHierarchyDescriptor StandardBuildingSite 4                                                                // [0xff668] 0x008a9000 + 0xff668 = 0x009a8668
RTTICompleteObjectLocator StandardBuildingSite                                                                     // [0xff678] 0x008a9000 + 0xff678 = 0x009a8678
.long 0x00000000                                                                                                   // [0xff68c] 0x008a9000 + 0xff68c = 0x009a868c
RTTIBaseClassDescriptor WorkshopBuildingSite 3                                                                     // [0xff690] 0x008a9000 + 0xff690 = 0x009a8690
RTTIBaseClassArray WorkshopBuildingSite                                                                            // [0xff6a8] 0x008a9000 + 0xff6a8 = 0x009a86a8
.long ??_R1A@?0A@A@BuildingSite@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xff6bc] 0x008a9000 + 0xff6bc = 0x009a86bc
RTTIClassHierarchyDescriptor WorkshopBuildingSite 4                                                                // [0xff6c0] 0x008a9000 + 0xff6c0 = 0x009a86c0
RTTICompleteObjectLocator WorkshopBuildingSite                                                                     // [0xff6d0] 0x008a9000 + 0xff6d0 = 0x009a86d0
.long 0x00000000                                                                                                   // [0xff6e4] 0x008a9000 + 0xff6e4 = 0x009a86e4
RTTIBaseClassDescriptor LayerCommunication 0                                                                       // [0xff6e8] 0x008a9000 + 0xff6e8 = 0x009a86e8
RTTIBaseClassDescriptor BWGameSpy 1                                                                                // [0xff700] 0x008a9000 + 0xff700 = 0x009a8700
RTTIBaseClassArray BWGameSpy                                                                                       // [0xff718] 0x008a9000 + 0xff718 = 0x009a8718
.long ??_R1A@?0A@A@LayerCommunication@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xff724] 0x008a9000 + 0xff724 = 0x009a8724
RTTIClassHierarchyDescriptor BWGameSpy 2                                                                           // [0xff728] 0x008a9000 + 0xff728 = 0x009a8728
RTTICompleteObjectLocator BWGameSpy                                                                                // [0xff738] 0x008a9000 + 0xff738 = 0x009a8738
.long 0x00000000                                                                                                   // [0xff74c] 0x008a9000 + 0xff74c = 0x009a874c
RTTIBaseClassDescriptor MPFEMessageObject 0                                                                        // [0xff750] 0x008a9000 + 0xff750 = 0x009a8750
RTTIBaseClassArray MPFEMessageObject                                                                               // [0xff768] 0x008a9000 + 0xff768 = 0x009a8768
.long 0x00000000

RTTIClassHierarchyDescriptor MPFEMessageObject 1                                                                   // [0xff770] 0x008a9000 + 0xff770 = 0x009a8770
RTTICompleteObjectLocator MPFEMessageObject                                                                        // [0xff780] 0x008a9000 + 0xff780 = 0x009a8780
.long 0x00000000                                                                                                   // [0xff794] 0x008a9000 + 0xff794 = 0x009a8794
RTTIBaseClassDescriptor BWLan 1                                                                                    // [0xff798] 0x008a9000 + 0xff798 = 0x009a8798
RTTIBaseClassArray BWLan                                                                                           // [0xff7b0] 0x008a9000 + 0xff7b0 = 0x009a87b0
.long ??_R1A@?0A@A@LayerCommunication@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xff7bc] 0x008a9000 + 0xff7bc = 0x009a87bc
RTTIClassHierarchyDescriptor BWLan 2                                                                               // [0xff7c0] 0x008a9000 + 0xff7c0 = 0x009a87c0
RTTICompleteObjectLocator BWLan                                                                                    // [0xff7d0] 0x008a9000 + 0xff7d0 = 0x009a87d0
.long 0x00000000                                                                                                   // [0xff7e4] 0x008a9000 + 0xff7e4 = 0x009a87e4
RTTIBaseClassDescriptor GCamera 3                                                                                  // [0xff7e8] 0x008a9000 + 0xff7e8 = 0x009a87e8
RTTIBaseClassArray GCamera                                                                                         // [0xff800] 0x008a9000 + 0xff800 = 0x009a8800
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xff814] 0x008a9000 + 0xff814 = 0x009a8814
RTTIClassHierarchyDescriptor GCamera 4                                                                             // [0xff818] 0x008a9000 + 0xff818 = 0x009a8818
RTTICompleteObjectLocator GCamera                                                                                  // [0xff828] 0x008a9000 + 0xff828 = 0x009a8828
.long 0x00000000                                                                                                   // [0xff83c] 0x008a9000 + 0xff83c = 0x009a883c
RTTIBaseClassDescriptor Prss 0                                                                                     // [0xff840] 0x008a9000 + 0xff840 = 0x009a8840
RTTIBaseClassDescriptor GCameraEditor 1                                                                            // [0xff858] 0x008a9000 + 0xff858 = 0x009a8858
RTTIBaseClassArray GCameraEditor                                                                                   // [0xff870] 0x008a9000 + 0xff870 = 0x009a8870
.long ??_R1A@?0A@A@Prss@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xff87c] 0x008a9000 + 0xff87c = 0x009a887c
RTTIClassHierarchyDescriptor GCameraEditor 2                                                                       // [0xff880] 0x008a9000 + 0xff880 = 0x009a8880
RTTICompleteObjectLocator GCameraEditor                                                                            // [0xff890] 0x008a9000 + 0xff890 = 0x009a8890
.long 0x00000000                                                                                                   // [0xff8a4] 0x008a9000 + 0xff8a4 = 0x009a88a4
RTTIBaseClassDescriptor CameraMode 0                                                                               // [0xff8a8] 0x008a9000 + 0xff8a8 = 0x009a88a8
RTTIBaseClassDescriptor CameraModeCitadel 1                                                                        // [0xff8c0] 0x008a9000 + 0xff8c0 = 0x009a88c0
RTTIBaseClassArray CameraModeCitadel                                                                               // [0xff8d8] 0x008a9000 + 0xff8d8 = 0x009a88d8
.long ??_R1A@?0A@A@CameraMode@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xff8e4] 0x008a9000 + 0xff8e4 = 0x009a88e4
RTTIClassHierarchyDescriptor CameraModeCitadel 2                                                                   // [0xff8e8] 0x008a9000 + 0xff8e8 = 0x009a88e8
RTTICompleteObjectLocator CameraModeCitadel                                                                        // [0xff8f8] 0x008a9000 + 0xff8f8 = 0x009a88f8
RTTIBaseClassArray CameraMode                                                                                      // [0xff90c] 0x008a9000 + 0xff90c = 0x009a890c
.long 0x00000000

.long 0x00000000                                                                                                   // [0xff914] 0x008a9000 + 0xff914 = 0x009a8914
RTTIClassHierarchyDescriptor CameraMode 1                                                                          // [0xff918] 0x008a9000 + 0xff918 = 0x009a8918
RTTICompleteObjectLocator CameraMode                                                                               // [0xff928] 0x008a9000 + 0xff928 = 0x009a8928
.long 0x00000000                                                                                                   // [0xff93c] 0x008a9000 + 0xff93c = 0x009a893c
RTTIBaseClassDescriptor CameraModeCtrInteract 1                                                                    // [0xff940] 0x008a9000 + 0xff940 = 0x009a8940
RTTIBaseClassArray CameraModeCtrInteract                                                                           // [0xff958] 0x008a9000 + 0xff958 = 0x009a8958
.long ??_R1A@?0A@A@CameraMode@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xff964] 0x008a9000 + 0xff964 = 0x009a8964
RTTIClassHierarchyDescriptor CameraModeCtrInteract 2                                                               // [0xff968] 0x008a9000 + 0xff968 = 0x009a8968
RTTICompleteObjectLocator CameraModeCtrInteract                                                                    // [0xff978] 0x008a9000 + 0xff978 = 0x009a8978
.long 0x00000000                                                                                                   // [0xff98c] 0x008a9000 + 0xff98c = 0x009a898c
RTTIBaseClassDescriptor CameraModeDance 1                                                                          // [0xff990] 0x008a9000 + 0xff990 = 0x009a8990
RTTIBaseClassArray CameraModeDance                                                                                 // [0xff9a8] 0x008a9000 + 0xff9a8 = 0x009a89a8
.long ??_R1A@?0A@A@CameraMode@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xff9b4] 0x008a9000 + 0xff9b4 = 0x009a89b4
RTTIClassHierarchyDescriptor CameraModeDance 2                                                                     // [0xff9b8] 0x008a9000 + 0xff9b8 = 0x009a89b8
RTTICompleteObjectLocator CameraModeDance                                                                          // [0xff9c8] 0x008a9000 + 0xff9c8 = 0x009a89c8
.long 0x00000000                                                                                                   // [0xff9dc] 0x008a9000 + 0xff9dc = 0x009a89dc
RTTIBaseClassDescriptor CameraModeFlyAndClick 1                                                                    // [0xff9e0] 0x008a9000 + 0xff9e0 = 0x009a89e0
RTTIBaseClassArray CameraModeFlyAndClick                                                                           // [0xff9f8] 0x008a9000 + 0xff9f8 = 0x009a89f8
.long ??_R1A@?0A@A@CameraMode@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xffa04] 0x008a9000 + 0xffa04 = 0x009a8a04
RTTIClassHierarchyDescriptor CameraModeFlyAndClick 2                                                               // [0xffa08] 0x008a9000 + 0xffa08 = 0x009a8a08
RTTICompleteObjectLocator CameraModeFlyAndClick                                                                    // [0xffa18] 0x008a9000 + 0xffa18 = 0x009a8a18
.long 0x00000000                                                                                                   // [0xffa2c] 0x008a9000 + 0xffa2c = 0x009a8a2c
RTTIBaseClassDescriptor CameraModeFollow 1                                                                         // [0xffa30] 0x008a9000 + 0xffa30 = 0x009a8a30
RTTIBaseClassArray CameraModeFollow                                                                                // [0xffa48] 0x008a9000 + 0xffa48 = 0x009a8a48
.long ??_R1A@?0A@A@CameraMode@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xffa54] 0x008a9000 + 0xffa54 = 0x009a8a54
RTTIClassHierarchyDescriptor CameraModeFollow 2                                                                    // [0xffa58] 0x008a9000 + 0xffa58 = 0x009a8a58
RTTICompleteObjectLocator CameraModeFollow                                                                         // [0xffa68] 0x008a9000 + 0xffa68 = 0x009a8a68
.long 0x00000000                                                                                                   // [0xffa7c] 0x008a9000 + 0xffa7c = 0x009a8a7c
RTTIBaseClassDescriptor CameraModeFollowHeading 1                                                                  // [0xffa80] 0x008a9000 + 0xffa80 = 0x009a8a80
RTTIBaseClassArray CameraModeFollowHeading                                                                         // [0xffa98] 0x008a9000 + 0xffa98 = 0x009a8a98
.long ??_R1A@?0A@A@CameraMode@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xffaa4] 0x008a9000 + 0xffaa4 = 0x009a8aa4
RTTIClassHierarchyDescriptor CameraModeFollowHeading 2                                                             // [0xffaa8] 0x008a9000 + 0xffaa8 = 0x009a8aa8
RTTICompleteObjectLocator CameraModeFollowHeading                                                                  // [0xffab8] 0x008a9000 + 0xffab8 = 0x009a8ab8
.long 0x00000000                                                                                                   // [0xffacc] 0x008a9000 + 0xffacc = 0x009a8acc
RTTIBaseClassDescriptor CameraModeFree 1                                                                           // [0xffad0] 0x008a9000 + 0xffad0 = 0x009a8ad0
RTTIBaseClassArray CameraModeFree                                                                                  // [0xffae8] 0x008a9000 + 0xffae8 = 0x009a8ae8
.long ??_R1A@?0A@A@CameraMode@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xffaf4] 0x008a9000 + 0xffaf4 = 0x009a8af4
RTTIClassHierarchyDescriptor CameraModeFree 2                                                                      // [0xffaf8] 0x008a9000 + 0xffaf8 = 0x009a8af8
RTTICompleteObjectLocator CameraModeFree                                                                           // [0xffb08] 0x008a9000 + 0xffb08 = 0x009a8b08
.long 0x00000000                                                                                                   // [0xffb1c] 0x008a9000 + 0xffb1c = 0x009a8b1c
RTTIBaseClassDescriptor CameraModeNew1 2                                                                           // [0xffb20] 0x008a9000 + 0xffb20 = 0x009a8b20
RTTIBaseClassArray CameraModeNew1                                                                                  // [0xffb38] 0x008a9000 + 0xffb38 = 0x009a8b38
.long ??_R1A@?0A@A@CameraModeNew@@8
.long ??_R1A@?0A@A@CameraMode@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CameraModeNew1 3                                                                      // [0xffb48] 0x008a9000 + 0xffb48 = 0x009a8b48
RTTICompleteObjectLocator CameraModeNew1                                                                           // [0xffb58] 0x008a9000 + 0xffb58 = 0x009a8b58
.long 0x00000000                                                                                                   // [0xffb6c] 0x008a9000 + 0xffb6c = 0x009a8b6c
RTTIBaseClassDescriptor CameraModeNew 1                                                                            // [0xffb70] 0x008a9000 + 0xffb70 = 0x009a8b70
RTTIBaseClassArray CameraModeNew                                                                                   // [0xffb88] 0x008a9000 + 0xffb88 = 0x009a8b88
.long ??_R1A@?0A@A@CameraMode@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xffb94] 0x008a9000 + 0xffb94 = 0x009a8b94
RTTIClassHierarchyDescriptor CameraModeNew 2                                                                       // [0xffb98] 0x008a9000 + 0xffb98 = 0x009a8b98
RTTICompleteObjectLocator CameraModeNew                                                                            // [0xffba8] 0x008a9000 + 0xffba8 = 0x009a8ba8
.long 0x00000000                                                                                                   // [0xffbbc] 0x008a9000 + 0xffbbc = 0x009a8bbc
RTTIBaseClassDescriptor CameraModeNew2 2                                                                           // [0xffbc0] 0x008a9000 + 0xffbc0 = 0x009a8bc0
RTTIBaseClassArray CameraModeNew2                                                                                  // [0xffbd8] 0x008a9000 + 0xffbd8 = 0x009a8bd8
.long ??_R1A@?0A@A@CameraModeNew@@8
.long ??_R1A@?0A@A@CameraMode@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CameraModeNew2 3                                                                      // [0xffbe8] 0x008a9000 + 0xffbe8 = 0x009a8be8
RTTICompleteObjectLocator CameraModeNew2                                                                           // [0xffbf8] 0x008a9000 + 0xffbf8 = 0x009a8bf8
.long 0x00000000                                                                                                   // [0xffc0c] 0x008a9000 + 0xffc0c = 0x009a8c0c
RTTIBaseClassDescriptor CameraModeNew3 1                                                                           // [0xffc10] 0x008a9000 + 0xffc10 = 0x009a8c10
RTTIBaseClassArray CameraModeNew3                                                                                  // [0xffc28] 0x008a9000 + 0xffc28 = 0x009a8c28
.long ??_R1A@?0A@A@CameraMode@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xffc34] 0x008a9000 + 0xffc34 = 0x009a8c34
RTTIClassHierarchyDescriptor CameraModeNew3 2                                                                      // [0xffc38] 0x008a9000 + 0xffc38 = 0x009a8c38
RTTICompleteObjectLocator CameraModeNew3                                                                           // [0xffc48] 0x008a9000 + 0xffc48 = 0x009a8c48
.long 0x00000000                                                                                                   // [0xffc5c] 0x008a9000 + 0xffc5c = 0x009a8c5c
RTTIBaseClassDescriptor CameraModePath 1                                                                           // [0xffc60] 0x008a9000 + 0xffc60 = 0x009a8c60
RTTIBaseClassArray CameraModePath                                                                                  // [0xffc78] 0x008a9000 + 0xffc78 = 0x009a8c78
.long ??_R1A@?0A@A@CameraMode@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xffc84] 0x008a9000 + 0xffc84 = 0x009a8c84
RTTIClassHierarchyDescriptor CameraModePath 2                                                                      // [0xffc88] 0x008a9000 + 0xffc88 = 0x009a8c88
RTTICompleteObjectLocator CameraModePath                                                                           // [0xffc98] 0x008a9000 + 0xffc98 = 0x009a8c98
.long 0x00000000                                                                                                   // [0xffcac] 0x008a9000 + 0xffcac = 0x009a8cac
RTTIBaseClassDescriptor CameraModeScript 2                                                                         // [0xffcb0] 0x008a9000 + 0xffcb0 = 0x009a8cb0
RTTIBaseClassArray CameraModeScript                                                                                // [0xffcc8] 0x008a9000 + 0xffcc8 = 0x009a8cc8
.long ??_R1A@?0A@A@CameraModeFollow@@8
.long ??_R1A@?0A@A@CameraMode@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CameraModeScript 3                                                                    // [0xffcd8] 0x008a9000 + 0xffcd8 = 0x009a8cd8
RTTICompleteObjectLocator CameraModeScript                                                                         // [0xffce8] 0x008a9000 + 0xffce8 = 0x009a8ce8
.long 0x00000000                                                                                                   // [0xffcfc] 0x008a9000 + 0xffcfc = 0x009a8cfc
RTTIBaseClassDescriptor CameraModeTwoObjects 1                                                                     // [0xffd00] 0x008a9000 + 0xffd00 = 0x009a8d00
RTTIBaseClassArray CameraModeTwoObjects                                                                            // [0xffd18] 0x008a9000 + 0xffd18 = 0x009a8d18
.long ??_R1A@?0A@A@CameraMode@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xffd24] 0x008a9000 + 0xffd24 = 0x009a8d24
RTTIClassHierarchyDescriptor CameraModeTwoObjects 2                                                                // [0xffd28] 0x008a9000 + 0xffd28 = 0x009a8d28
RTTICompleteObjectLocator CameraModeTwoObjects                                                                     // [0xffd38] 0x008a9000 + 0xffd38 = 0x009a8d38
.long 0x00000000                                                                                                   // [0xffd4c] 0x008a9000 + 0xffd4c = 0x009a8d4c
RTTIBaseClassDescriptor GContainerInfo 2                                                                           // [0xffd50] 0x008a9000 + 0xffd50 = 0x009a8d50
RTTIBaseClassDescriptor GCitadelInfo 3                                                                             // [0xffd68] 0x008a9000 + 0xffd68 = 0x009a8d68
RTTIBaseClassArray GCitadelInfo                                                                                    // [0xffd80] 0x008a9000 + 0xffd80 = 0x009a8d80
.long ??_R1A@?0A@A@GContainerInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xffd94] 0x008a9000 + 0xffd94 = 0x009a8d94
RTTIClassHierarchyDescriptor GCitadelInfo 4                                                                        // [0xffd98] 0x008a9000 + 0xffd98 = 0x009a8d98
RTTICompleteObjectLocator GCitadelInfo                                                                             // [0xffda8] 0x008a9000 + 0xffda8 = 0x009a8da8
.long 0x00000000                                                                                                   // [0xffdbc] 0x008a9000 + 0xffdbc = 0x009a8dbc
RTTIBaseClassDescriptor Container 3                                                                                // [0xffdc0] 0x008a9000 + 0xffdc0 = 0x009a8dc0
RTTIBaseClassDescriptor Citadel 4                                                                                  // [0xffdd8] 0x008a9000 + 0xffdd8 = 0x009a8dd8
RTTIBaseClassArray Citadel                                                                                         // [0xffdf0] 0x008a9000 + 0xffdf0 = 0x009a8df0
.long ??_R1A@?0A@A@Container@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Citadel 5                                                                             // [0xffe08] 0x008a9000 + 0xffe08 = 0x009a8e08
RTTICompleteObjectLocator Citadel                                                                                  // [0xffe18] 0x008a9000 + 0xffe18 = 0x009a8e18
.long 0x00000000                                                                                                   // [0xffe2c] 0x008a9000 + 0xffe2c = 0x009a8e2c
RTTIBaseClassDescriptor GCitadelPartInfo 4                                                                         // [0xffe30] 0x008a9000 + 0xffe30 = 0x009a8e30
RTTIBaseClassDescriptor GCitadelHeartInfo 5                                                                        // [0xffe48] 0x008a9000 + 0xffe48 = 0x009a8e48
RTTIBaseClassArray GCitadelHeartInfo                                                                               // [0xffe60] 0x008a9000 + 0xffe60 = 0x009a8e60
.long ??_R1A@?0A@A@GCitadelPartInfo@@8
.long ??_R1A@?0A@A@GMultiMapFixedInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xffe7c] 0x008a9000 + 0xffe7c = 0x009a8e7c
RTTIClassHierarchyDescriptor GCitadelHeartInfo 6                                                                   // [0xffe80] 0x008a9000 + 0xffe80 = 0x009a8e80
RTTICompleteObjectLocator GCitadelHeartInfo                                                                        // [0xffe90] 0x008a9000 + 0xffe90 = 0x009a8e90
.long 0x00000000                                                                                                   // [0xffea4] 0x008a9000 + 0xffea4 = 0x009a8ea4
RTTIBaseClassDescriptor LeashObj 4                                                                                 // [0xffea8] 0x008a9000 + 0xffea8 = 0x009a8ea8
RTTIBaseClassArray LeashObj                                                                                        // [0xffec0] 0x008a9000 + 0xffec0 = 0x009a8ec0
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor LeashObj 5                                                                            // [0xffed8] 0x008a9000 + 0xffed8 = 0x009a8ed8
RTTICompleteObjectLocator LeashObj                                                                                 // [0xffee8] 0x008a9000 + 0xffee8 = 0x009a8ee8
.long 0x00000000                                                                                                   // [0xffefc] 0x008a9000 + 0xffefc = 0x009a8efc
RTTIBaseClassDescriptor CitadelPart 6                                                                              // [0xfff00] 0x008a9000 + 0xfff00 = 0x009a8f00
RTTIBaseClassDescriptor CitadelHeart 7                                                                             // [0xfff18] 0x008a9000 + 0xfff18 = 0x009a8f18
RTTIBaseClassArray CitadelHeart                                                                                    // [0xfff30] 0x008a9000 + 0xfff30 = 0x009a8f30
.long ??_R1A@?0A@A@CitadelPart@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xfff54] 0x008a9000 + 0xfff54 = 0x009a8f54
RTTIClassHierarchyDescriptor CitadelHeart 8                                                                        // [0xfff58] 0x008a9000 + 0xfff58 = 0x009a8f58
RTTICompleteObjectLocator CitadelHeart                                                                             // [0xfff68] 0x008a9000 + 0xfff68 = 0x009a8f68
.long 0x00000000                                                                                                   // [0xfff7c] 0x008a9000 + 0xfff7c = 0x009a8f7c
RTTIBaseClassDescriptor PlannedCitadelPart 4                                                                       // [0xfff80] 0x008a9000 + 0xfff80 = 0x009a8f80
RTTIBaseClassDescriptor PlannedCitadelHeart 5                                                                      // [0xfff98] 0x008a9000 + 0xfff98 = 0x009a8f98
RTTIBaseClassArray PlannedCitadelHeart                                                                             // [0xfffb0] 0x008a9000 + 0xfffb0 = 0x009a8fb0
.long ??_R1A@?0A@A@PlannedCitadelPart@@8
.long ??_R1A@?0A@A@PlannedMultiMapFixed@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0xfffcc] 0x008a9000 + 0xfffcc = 0x009a8fcc
RTTIClassHierarchyDescriptor PlannedCitadelHeart 6                                                                 // [0xfffd0] 0x008a9000 + 0xfffd0 = 0x009a8fd0
RTTICompleteObjectLocator PlannedCitadelHeart                                                                      // [0xfffe0] 0x008a9000 + 0xfffe0 = 0x009a8fe0
.long 0x00000000                                                                                                   // [0xffff4] 0x008a9000 + 0xffff4 = 0x009a8ff4
RTTIBaseClassDescriptor UR_PlasmaInf 3                                                                             // [0xffff8] 0x008a9000 + 0xffff8 = 0x009a8ff8
RTTIBaseClassArray UR_PlasmaInf                                                                                    // [0x100010] 0x008a9000 + 0x100010 = 0x009a9010
.long ??_R1A@?0A@A@PSysBase@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x100024] 0x008a9000 + 0x100024 = 0x009a9024
RTTIClassHierarchyDescriptor UR_PlasmaInf 4                                                                        // [0x100028] 0x008a9000 + 0x100028 = 0x009a9028
RTTICompleteObjectLocator UR_PlasmaInf                                                                             // [0x100038] 0x008a9000 + 0x100038 = 0x009a9038
.long 0x00000000                                                                                                   // [0x10004c] 0x008a9000 + 0x10004c = 0x009a904c
RTTIBaseClassDescriptor PSysBase 2                                                                                 // [0x100050] 0x008a9000 + 0x100050 = 0x009a9050
RTTIBaseClassArray PSysBase                                                                                        // [0x100068] 0x008a9000 + 0x100068 = 0x009a9068
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor PSysBase 3                                                                            // [0x100078] 0x008a9000 + 0x100078 = 0x009a9078
RTTICompleteObjectLocator PSysBase                                                                                 // [0x100088] 0x008a9000 + 0x100088 = 0x009a9088
.long 0x00000000                                                                                                   // [0x10009c] 0x008a9000 + 0x10009c = 0x009a909c
RTTIBaseClassDescriptor PlannedTownCitadelHeart 4                                                                  // [0x1000a0] 0x008a9000 + 0x1000a0 = 0x009a90a0
RTTIBaseClassArray PlannedTownCitadelHeart                                                                         // [0x1000b8] 0x008a9000 + 0x1000b8 = 0x009a90b8
.long ??_R1A@?0A@A@PlannedMultiMapFixed@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor PlannedTownCitadelHeart 5                                                             // [0x1000d0] 0x008a9000 + 0x1000d0 = 0x009a90d0
RTTICompleteObjectLocator PlannedTownCitadelHeart                                                                  // [0x1000e0] 0x008a9000 + 0x1000e0 = 0x009a90e0
.long 0x00000000                                                                                                   // [0x1000f4] 0x008a9000 + 0x1000f4 = 0x009a90f4
RTTIBaseClassDescriptor CitadelEntrance 4                                                                          // [0x1000f8] 0x008a9000 + 0x1000f8 = 0x009a90f8
RTTIBaseClassArray CitadelEntrance                                                                                 // [0x100110] 0x008a9000 + 0x100110 = 0x009a9110
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CitadelEntrance 5                                                                     // [0x100128] 0x008a9000 + 0x100128 = 0x009a9128
RTTICompleteObjectLocator CitadelEntrance                                                                          // [0x100138] 0x008a9000 + 0x100138 = 0x009a9138
.long 0x00000000                                                                                                   // [0x10014c] 0x008a9000 + 0x10014c = 0x009a914c
RTTIBaseClassArray CitadelPart                                                                                     // [0x100150] 0x008a9000 + 0x100150 = 0x009a9150
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CitadelPart 7                                                                         // [0x100170] 0x008a9000 + 0x100170 = 0x009a9170
RTTICompleteObjectLocator CitadelPart                                                                              // [0x100180] 0x008a9000 + 0x100180 = 0x009a9180
.long 0x00000000                                                                                                   // [0x100194] 0x008a9000 + 0x100194 = 0x009a9194
RTTIBaseClassArray PlannedCitadelPart                                                                              // [0x100198] 0x008a9000 + 0x100198 = 0x009a9198
.long ??_R1A@?0A@A@PlannedMultiMapFixed@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor PlannedCitadelPart 5                                                                  // [0x1001b0] 0x008a9000 + 0x1001b0 = 0x009a91b0
RTTICompleteObjectLocator PlannedCitadelPart                                                                       // [0x1001c0] 0x008a9000 + 0x1001c0 = 0x009a91c0
.long 0x00000000                                                                                                   // [0x1001d4] 0x008a9000 + 0x1001d4 = 0x009a91d4
RTTIBaseClassArray GContainerInfo                                                                                  // [0x1001d8] 0x008a9000 + 0x1001d8 = 0x009a91d8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GContainerInfo 3                                                                      // [0x1001e8] 0x008a9000 + 0x1001e8 = 0x009a91e8
RTTICompleteObjectLocator GContainerInfo                                                                           // [0x1001f8] 0x008a9000 + 0x1001f8 = 0x009a91f8
.long 0x00000000                                                                                                   // [0x10020c] 0x008a9000 + 0x10020c = 0x009a920c
RTTIBaseClassArray Container                                                                                       // [0x100210] 0x008a9000 + 0x100210 = 0x009a9210
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x100224] 0x008a9000 + 0x100224 = 0x009a9224
RTTIClassHierarchyDescriptor Container 4                                                                           // [0x100228] 0x008a9000 + 0x100228 = 0x009a9228
RTTICompleteObjectLocator Container                                                                                // [0x100238] 0x008a9000 + 0x100238 = 0x009a9238
.long 0x00000000                                                                                                   // [0x10024c] 0x008a9000 + 0x10024c = 0x009a924c
RTTIBaseClassArray Morphable                                                                                       // [0x100250] 0x008a9000 + 0x100250 = 0x009a9250
.long 0x009a83d8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10025c] 0x008a9000 + 0x10025c = 0x009a925c
RTTIClassHierarchyDescriptor Morphable 2                                                                           // [0x100260] 0x008a9000 + 0x100260 = 0x009a9260
RTTICompleteObjectLocator Morphable                                                                                // [0x100270] 0x008a9000 + 0x100270 = 0x009a9270
.long 0x00000000                                                                                                   // [0x100284] 0x008a9000 + 0x100284 = 0x009a9284
RTTIBaseClassDescriptor Morphable 1                                                                                // [0x100288] 0x008a9000 + 0x100288 = 0x009a9288
RTTIBaseClassDescriptor CHand 2                                                                                    // [0x1002a0] 0x008a9000 + 0x1002a0 = 0x009a92a0
RTTIBaseClassArray CHand                                                                                           // [0x1002b8] 0x008a9000 + 0x1002b8 = 0x009a92b8
.long ??_R1A@?0A@A@Morphable@@8
.long 0x009a83d8
.long 0x00000000

RTTIClassHierarchyDescriptor CHand 3                                                                               // [0x1002c8] 0x008a9000 + 0x1002c8 = 0x009a92c8
RTTICompleteObjectLocator CHand                                                                                    // [0x1002d8] 0x008a9000 + 0x1002d8 = 0x009a92d8
.long 0x00000000                                                                                                   // [0x1002ec] 0x008a9000 + 0x1002ec = 0x009a92ec
RTTIBaseClassDescriptor HandState 0                                                                                // [0x1002f0] 0x008a9000 + 0x1002f0 = 0x009a92f0
RTTIBaseClassDescriptor HandStateInvisible 1                                                                       // [0x100308] 0x008a9000 + 0x100308 = 0x009a9308
RTTIBaseClassArray HandStateInvisible                                                                              // [0x100320] 0x008a9000 + 0x100320 = 0x009a9320
.long ??_R1A@?0A@A@HandState@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10032c] 0x008a9000 + 0x10032c = 0x009a932c
RTTIClassHierarchyDescriptor HandStateInvisible 2                                                                  // [0x100330] 0x008a9000 + 0x100330 = 0x009a9330
RTTICompleteObjectLocator HandStateInvisible                                                                       // [0x100340] 0x008a9000 + 0x100340 = 0x009a9340
.long 0x00000000                                                                                                   // [0x100354] 0x008a9000 + 0x100354 = 0x009a9354
RTTIBaseClassDescriptor CPUCheck 0                                                                                 // [0x100358] 0x008a9000 + 0x100358 = 0x009a9358
RTTIBaseClassArray CPUCheck                                                                                        // [0x100370] 0x008a9000 + 0x100370 = 0x009a9370
.long 0x00000000

RTTIClassHierarchyDescriptor CPUCheck 1                                                                            // [0x100378] 0x008a9000 + 0x100378 = 0x009a9378
RTTICompleteObjectLocator CPUCheck                                                                                 // [0x100388] 0x008a9000 + 0x100388 = 0x009a9388
.long 0x00000000                                                                                                   // [0x10039c] 0x008a9000 + 0x10039c = 0x009a939c
RTTIBaseClassDescriptor CreatureInfo 6                                                                             // [0x1003a0] 0x008a9000 + 0x1003a0 = 0x009a93a0
RTTIBaseClassArray CreatureInfo                                                                                    // [0x1003b8] 0x008a9000 + 0x1003b8 = 0x009a93b8
.long ??_R1A@?0A@A@GLivingInfo@@8
.long ??_R1A@?0A@A@GMobileWallHugInfo@@8
.long ??_R1A@?0A@A@GMobileInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureInfo 7                                                                        // [0x1003d8] 0x008a9000 + 0x1003d8 = 0x009a93d8
RTTICompleteObjectLocator CreatureInfo                                                                             // [0x1003e8] 0x008a9000 + 0x1003e8 = 0x009a93e8
.long 0x00000000                                                                                                   // [0x1003fc] 0x008a9000 + 0x1003fc = 0x009a93fc
RTTIBaseClassDescriptor DifferentCreatureInfo 2                                                                    // [0x100400] 0x008a9000 + 0x100400 = 0x009a9400
RTTIBaseClassArray DifferentCreatureInfo                                                                           // [0x100418] 0x008a9000 + 0x100418 = 0x009a9418
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor DifferentCreatureInfo 3                                                               // [0x100428] 0x008a9000 + 0x100428 = 0x009a9428
RTTICompleteObjectLocator DifferentCreatureInfo                                                                    // [0x100438] 0x008a9000 + 0x100438 = 0x009a9438
.long 0x00000000                                                                                                   // [0x10044c] 0x008a9000 + 0x10044c = 0x009a944c
RTTIBaseClassDescriptor CreaturePlan 1                                                                             // [0x100450] 0x008a9000 + 0x100450 = 0x009a9450
RTTIBaseClassArray CreaturePlan                                                                                    // [0x100468] 0x008a9000 + 0x100468 = 0x009a9468
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x100474] 0x008a9000 + 0x100474 = 0x009a9474
RTTIClassHierarchyDescriptor CreaturePlan 2                                                                        // [0x100478] 0x008a9000 + 0x100478 = 0x009a9478
RTTICompleteObjectLocator CreaturePlan                                                                             // [0x100488] 0x008a9000 + 0x100488 = 0x009a9488
.long 0x00000000                                                                                                   // [0x10049c] 0x008a9000 + 0x10049c = 0x009a949c
RTTIBaseClassDescriptor GAlignment 1                                                                               // [0x1004a0] 0x008a9000 + 0x1004a0 = 0x009a94a0
RTTIBaseClassArray GAlignment                                                                                      // [0x1004b8] 0x008a9000 + 0x1004b8 = 0x009a94b8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1004c4] 0x008a9000 + 0x1004c4 = 0x009a94c4
RTTIClassHierarchyDescriptor GAlignment 2                                                                          // [0x1004c8] 0x008a9000 + 0x1004c8 = 0x009a94c8
RTTICompleteObjectLocator GAlignment                                                                               // [0x1004d8] 0x008a9000 + 0x1004d8 = 0x009a94d8
.long 0x00000000                                                                                                   // [0x1004ec] 0x008a9000 + 0x1004ec = 0x009a94ec
RTTIBaseClassDescriptor Creature 7                                                                                 // [0x1004f0] 0x008a9000 + 0x1004f0 = 0x009a94f0
RTTIBaseClassArray Creature                                                                                        // [0x100508] 0x008a9000 + 0x100508 = 0x009a9508
.long ??_R1A@?0A@A@Living@@8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10052c] 0x008a9000 + 0x10052c = 0x009a952c
RTTIClassHierarchyDescriptor Creature 8                                                                            // [0x100530] 0x008a9000 + 0x100530 = 0x009a9530
RTTICompleteObjectLocator Creature                                                                                 // [0x100540] 0x008a9000 + 0x100540 = 0x009a9540
.long 0x00000000                                                                                                   // [0x100554] 0x008a9000 + 0x100554 = 0x009a9554
RTTIBaseClassDescriptor CreatureSubActionAgenda 1                                                                  // [0x100558] 0x008a9000 + 0x100558 = 0x009a9558
RTTIBaseClassArray CreatureSubActionAgenda                                                                         // [0x100570] 0x008a9000 + 0x100570 = 0x009a9570
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10057c] 0x008a9000 + 0x10057c = 0x009a957c
RTTIClassHierarchyDescriptor CreatureSubActionAgenda 2                                                             // [0x100580] 0x008a9000 + 0x100580 = 0x009a9580
RTTICompleteObjectLocator CreatureSubActionAgenda                                                                  // [0x100590] 0x008a9000 + 0x100590 = 0x009a9590
.long 0x00000000                                                                                                   // [0x1005a4] 0x008a9000 + 0x1005a4 = 0x009a95a4
RTTIBaseClassDescriptor CreatureSubAction 1                                                                        // [0x1005a8] 0x008a9000 + 0x1005a8 = 0x009a95a8
RTTIBaseClassArray CreatureSubAction                                                                               // [0x1005c0] 0x008a9000 + 0x1005c0 = 0x009a95c0
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1005cc] 0x008a9000 + 0x1005cc = 0x009a95cc
RTTIClassHierarchyDescriptor CreatureSubAction 2                                                                   // [0x1005d0] 0x008a9000 + 0x1005d0 = 0x009a95d0
RTTICompleteObjectLocator CreatureSubAction                                                                        // [0x1005e0] 0x008a9000 + 0x1005e0 = 0x009a95e0
.long 0x00000000                                                                                                   // [0x1005f4] 0x008a9000 + 0x1005f4 = 0x009a95f4
RTTIBaseClassArray Living                                                                                          // [0x1005f8] 0x008a9000 + 0x1005f8 = 0x009a95f8
.long ??_R1A@?0A@A@MobileWallHug@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Living 7                                                                              // [0x100618] 0x008a9000 + 0x100618 = 0x009a9618
RTTICompleteObjectLocator Living                                                                                   // [0x100628] 0x008a9000 + 0x100628 = 0x009a9628
.long 0x00000000                                                                                                   // [0x10063c] 0x008a9000 + 0x10063c = 0x009a963c
RTTIBaseClassArray MobileWallHug                                                                                   // [0x100640] 0x008a9000 + 0x100640 = 0x009a9640
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10065c] 0x008a9000 + 0x10065c = 0x009a965c
RTTIClassHierarchyDescriptor MobileWallHug 6                                                                       // [0x100660] 0x008a9000 + 0x100660 = 0x009a9660
RTTICompleteObjectLocator MobileWallHug                                                                            // [0x100670] 0x008a9000 + 0x100670 = 0x009a9670
.long 0x00000000                                                                                                   // [0x100684] 0x008a9000 + 0x100684 = 0x009a9684
RTTIBaseClassArray Mobile                                                                                          // [0x100688] 0x008a9000 + 0x100688 = 0x009a9688
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Mobile 5                                                                              // [0x1006a0] 0x008a9000 + 0x1006a0 = 0x009a96a0
RTTICompleteObjectLocator Mobile                                                                                   // [0x1006b0] 0x008a9000 + 0x1006b0 = 0x009a96b0
.long 0x00000000                                                                                                   // [0x1006c4] 0x008a9000 + 0x1006c4 = 0x009a96c4
RTTIBaseClassDescriptorStruct CreatureValueSpinner 2                                                               // [0x1006c8] 0x008a9000 + 0x1006c8 = 0x009a96c8
RTTIBaseClassArray CreatureValueSpinner                                                                            // [0x1006e0] 0x008a9000 + 0x1006e0 = 0x009a96e0
.long ??_R1A@?0A@A@ValueSpinner@@8
.long 0x009a83d8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureValueSpinner 3                                                                // [0x1006f0] 0x008a9000 + 0x1006f0 = 0x009a96f0
RTTICompleteObjectLocatorStruct CreatureValueSpinner                                                               // [0x100700] 0x008a9000 + 0x100700 = 0x009a9700
.long 0x00000000                                                                                                   // [0x100714] 0x008a9000 + 0x100714 = 0x009a9714
RTTIBaseClassDescriptor SubArgument 0                                                                              // [0x100718] 0x008a9000 + 0x100718 = 0x009a9718
RTTIBaseClassDescriptor SubArgumentPoint 1                                                                         // [0x100730] 0x008a9000 + 0x100730 = 0x009a9730
RTTIBaseClassArray SubArgumentPoint                                                                                // [0x100748] 0x008a9000 + 0x100748 = 0x009a9748
.long ??_R1A@?0A@A@SubArgument@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x100754] 0x008a9000 + 0x100754 = 0x009a9754
RTTIClassHierarchyDescriptor SubArgumentPoint 2                                                                    // [0x100758] 0x008a9000 + 0x100758 = 0x009a9758
RTTICompleteObjectLocator SubArgumentPoint                                                                         // [0x100768] 0x008a9000 + 0x100768 = 0x009a9768
.long 0x00000000                                                                                                   // [0x10077c] 0x008a9000 + 0x10077c = 0x009a977c
RTTIBaseClassDescriptor SubArgumentPointAndFloat 1                                                                 // [0x100780] 0x008a9000 + 0x100780 = 0x009a9780
RTTIBaseClassArray SubArgumentPointAndFloat                                                                        // [0x100798] 0x008a9000 + 0x100798 = 0x009a9798
.long ??_R1A@?0A@A@SubArgument@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1007a4] 0x008a9000 + 0x1007a4 = 0x009a97a4
RTTIClassHierarchyDescriptor SubArgumentPointAndFloat 2                                                            // [0x1007a8] 0x008a9000 + 0x1007a8 = 0x009a97a8
RTTICompleteObjectLocator SubArgumentPointAndFloat                                                                 // [0x1007b8] 0x008a9000 + 0x1007b8 = 0x009a97b8
.long 0x00000000                                                                                                   // [0x1007cc] 0x008a9000 + 0x1007cc = 0x009a97cc
RTTIBaseClassDescriptor SubArgumentObject 1                                                                        // [0x1007d0] 0x008a9000 + 0x1007d0 = 0x009a97d0
RTTIBaseClassArray SubArgumentObject                                                                               // [0x1007e8] 0x008a9000 + 0x1007e8 = 0x009a97e8
.long ??_R1A@?0A@A@SubArgument@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1007f4] 0x008a9000 + 0x1007f4 = 0x009a97f4
RTTIClassHierarchyDescriptor SubArgumentObject 2                                                                   // [0x1007f8] 0x008a9000 + 0x1007f8 = 0x009a97f8
RTTICompleteObjectLocator SubArgumentObject                                                                        // [0x100808] 0x008a9000 + 0x100808 = 0x009a9808
.long 0x00000000                                                                                                   // [0x10081c] 0x008a9000 + 0x10081c = 0x009a981c
RTTIBaseClassDescriptor SubArgumentIntegerAndFloat 1                                                               // [0x100820] 0x008a9000 + 0x100820 = 0x009a9820
RTTIBaseClassArray SubArgumentIntegerAndFloat                                                                      // [0x100838] 0x008a9000 + 0x100838 = 0x009a9838
.long ??_R1A@?0A@A@SubArgument@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x100844] 0x008a9000 + 0x100844 = 0x009a9844
RTTIClassHierarchyDescriptor SubArgumentIntegerAndFloat 2                                                          // [0x100848] 0x008a9000 + 0x100848 = 0x009a9848
RTTICompleteObjectLocator SubArgumentIntegerAndFloat                                                               // [0x100858] 0x008a9000 + 0x100858 = 0x009a9858
.long 0x00000000                                                                                                   // [0x10086c] 0x008a9000 + 0x10086c = 0x009a986c
RTTIBaseClassDescriptor SubArgumentFloat 1                                                                         // [0x100870] 0x008a9000 + 0x100870 = 0x009a9870
RTTIBaseClassArray SubArgumentFloat                                                                                // [0x100888] 0x008a9000 + 0x100888 = 0x009a9888
.long ??_R1A@?0A@A@SubArgument@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x100894] 0x008a9000 + 0x100894 = 0x009a9894
RTTIClassHierarchyDescriptor SubArgumentFloat 2                                                                    // [0x100898] 0x008a9000 + 0x100898 = 0x009a9898
RTTICompleteObjectLocator SubArgumentFloat                                                                         // [0x1008a8] 0x008a9000 + 0x1008a8 = 0x009a98a8
.long 0x00000000                                                                                                   // [0x1008bc] 0x008a9000 + 0x1008bc = 0x009a98bc
RTTIBaseClassDescriptor SubArgumentInteger 1                                                                       // [0x1008c0] 0x008a9000 + 0x1008c0 = 0x009a98c0
RTTIBaseClassArray SubArgumentInteger                                                                              // [0x1008d8] 0x008a9000 + 0x1008d8 = 0x009a98d8
.long ??_R1A@?0A@A@SubArgument@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1008e4] 0x008a9000 + 0x1008e4 = 0x009a98e4
RTTIClassHierarchyDescriptor SubArgumentInteger 2                                                                  // [0x1008e8] 0x008a9000 + 0x1008e8 = 0x009a98e8
RTTICompleteObjectLocator SubArgumentInteger                                                                       // [0x1008f8] 0x008a9000 + 0x1008f8 = 0x009a98f8
.long 0x00000000                                                                                                   // [0x10090c] 0x008a9000 + 0x10090c = 0x009a990c
RTTIBaseClassDescriptor LH3DCreature 2                                                                             // [0x100910] 0x008a9000 + 0x100910 = 0x009a9910
RTTIBaseClassArray LH3DCreature                                                                                    // [0x100928] 0x008a9000 + 0x100928 = 0x009a9928
.long ??_R1A@?0A@A@Morphable@@8
.long 0x009a83d8
.long 0x00000000

RTTIClassHierarchyDescriptor LH3DCreature 3                                                                        // [0x100938] 0x008a9000 + 0x100938 = 0x009a9938
RTTICompleteObjectLocator LH3DCreature                                                                             // [0x100948] 0x008a9000 + 0x100948 = 0x009a9948
.long 0x00000000                                                                                                   // [0x10095c] 0x008a9000 + 0x10095c = 0x009a995c
RTTIBaseClassDescriptor CreatureActionInfo 2                                                                       // [0x100960] 0x008a9000 + 0x100960 = 0x009a9960
RTTIBaseClassArray CreatureActionInfo                                                                              // [0x100978] 0x008a9000 + 0x100978 = 0x009a9978
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureActionInfo 3                                                                  // [0x100988] 0x008a9000 + 0x100988 = 0x009a9988
RTTICompleteObjectLocator CreatureActionInfo                                                                       // [0x100998] 0x008a9000 + 0x100998 = 0x009a9998
.long 0x00000000                                                                                                   // [0x1009ac] 0x008a9000 + 0x1009ac = 0x009a99ac
RTTIBaseClassDescriptor CreatureInitialDesireInfo 2                                                                // [0x1009b0] 0x008a9000 + 0x1009b0 = 0x009a99b0
RTTIBaseClassArray CreatureInitialDesireInfo                                                                       // [0x1009c8] 0x008a9000 + 0x1009c8 = 0x009a99c8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureInitialDesireInfo 3                                                           // [0x1009d8] 0x008a9000 + 0x1009d8 = 0x009a99d8
RTTICompleteObjectLocator CreatureInitialDesireInfo                                                                // [0x1009e8] 0x008a9000 + 0x1009e8 = 0x009a99e8
.long 0x00000000                                                                                                   // [0x1009fc] 0x008a9000 + 0x1009fc = 0x009a99fc
RTTIBaseClassDescriptor CreatureDesireActionEntry 2                                                                // [0x100a00] 0x008a9000 + 0x100a00 = 0x009a9a00
RTTIBaseClassArray CreatureDesireActionEntry                                                                       // [0x100a18] 0x008a9000 + 0x100a18 = 0x009a9a18
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureDesireActionEntry 3                                                           // [0x100a28] 0x008a9000 + 0x100a28 = 0x009a9a28
RTTICompleteObjectLocator CreatureDesireActionEntry                                                                // [0x100a38] 0x008a9000 + 0x100a38 = 0x009a9a38
.long 0x00000000                                                                                                   // [0x100a4c] 0x008a9000 + 0x100a4c = 0x009a9a4c
RTTIBaseClassDescriptor CreatureDesireAttributeEntry 2                                                             // [0x100a50] 0x008a9000 + 0x100a50 = 0x009a9a50
RTTIBaseClassArray CreatureDesireAttributeEntry                                                                    // [0x100a68] 0x008a9000 + 0x100a68 = 0x009a9a68
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureDesireAttributeEntry 3                                                        // [0x100a78] 0x008a9000 + 0x100a78 = 0x009a9a78
RTTICompleteObjectLocator CreatureDesireAttributeEntry                                                             // [0x100a88] 0x008a9000 + 0x100a88 = 0x009a9a88
.long 0x00000000                                                                                                   // [0x100a9c] 0x008a9000 + 0x100a9c = 0x009a9a9c
RTTIBaseClassDescriptor SubArgumentObjectAndFloat 1                                                                // [0x100aa0] 0x008a9000 + 0x100aa0 = 0x009a9aa0
RTTIBaseClassArray SubArgumentObjectAndFloat                                                                       // [0x100ab8] 0x008a9000 + 0x100ab8 = 0x009a9ab8
.long ??_R1A@?0A@A@SubArgument@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x100ac4] 0x008a9000 + 0x100ac4 = 0x009a9ac4
RTTIClassHierarchyDescriptor SubArgumentObjectAndFloat 2                                                           // [0x100ac8] 0x008a9000 + 0x100ac8 = 0x009a9ac8
RTTICompleteObjectLocator SubArgumentObjectAndFloat                                                                // [0x100ad8] 0x008a9000 + 0x100ad8 = 0x009a9ad8
.long 0x00000000                                                                                                   // [0x100aec] 0x008a9000 + 0x100aec = 0x009a9aec
RTTIBaseClassDescriptor SubArgumentObjectAndInteger 1                                                              // [0x100af0] 0x008a9000 + 0x100af0 = 0x009a9af0
RTTIBaseClassArray SubArgumentObjectAndInteger                                                                     // [0x100b08] 0x008a9000 + 0x100b08 = 0x009a9b08
.long ??_R1A@?0A@A@SubArgument@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x100b14] 0x008a9000 + 0x100b14 = 0x009a9b14
RTTIClassHierarchyDescriptor SubArgumentObjectAndInteger 2                                                         // [0x100b18] 0x008a9000 + 0x100b18 = 0x009a9b18
RTTICompleteObjectLocator SubArgumentObjectAndInteger                                                              // [0x100b28] 0x008a9000 + 0x100b28 = 0x009a9b28
.long 0x00000000                                                                                                   // [0x100b3c] 0x008a9000 + 0x100b3c = 0x009a9b3c
RTTIBaseClassDescriptor SubArgumentPointIntegerFloatAndSpell 1                                                     // [0x100b40] 0x008a9000 + 0x100b40 = 0x009a9b40
RTTIBaseClassArray SubArgumentPointIntegerFloatAndSpell                                                            // [0x100b58] 0x008a9000 + 0x100b58 = 0x009a9b58
.long ??_R1A@?0A@A@SubArgument@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x100b64] 0x008a9000 + 0x100b64 = 0x009a9b64
RTTIClassHierarchyDescriptor SubArgumentPointIntegerFloatAndSpell 2                                                // [0x100b68] 0x008a9000 + 0x100b68 = 0x009a9b68
RTTICompleteObjectLocator SubArgumentPointIntegerFloatAndSpell                                                     // [0x100b78] 0x008a9000 + 0x100b78 = 0x009a9b78
.long 0x00000000                                                                                                   // [0x100b8c] 0x008a9000 + 0x100b8c = 0x009a9b8c
RTTIBaseClassDescriptor SubArgumentObjectIntegerFloatAndSpell 1                                                    // [0x100b90] 0x008a9000 + 0x100b90 = 0x009a9b90
RTTIBaseClassArray SubArgumentObjectIntegerFloatAndSpell                                                           // [0x100ba8] 0x008a9000 + 0x100ba8 = 0x009a9ba8
.long ??_R1A@?0A@A@SubArgument@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x100bb4] 0x008a9000 + 0x100bb4 = 0x009a9bb4
RTTIClassHierarchyDescriptor SubArgumentObjectIntegerFloatAndSpell 2                                               // [0x100bb8] 0x008a9000 + 0x100bb8 = 0x009a9bb8
RTTICompleteObjectLocator SubArgumentObjectIntegerFloatAndSpell                                                    // [0x100bc8] 0x008a9000 + 0x100bc8 = 0x009a9bc8
.long 0x00000000                                                                                                   // [0x100bdc] 0x008a9000 + 0x100bdc = 0x009a9bdc
RTTIBaseClassDescriptor CreatureCommand 1                                                                          // [0x100be0] 0x008a9000 + 0x100be0 = 0x009a9be0
RTTIBaseClassArray CreatureCommand                                                                                 // [0x100bf8] 0x008a9000 + 0x100bf8 = 0x009a9bf8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x100c04] 0x008a9000 + 0x100c04 = 0x009a9c04
RTTIClassHierarchyDescriptor CreatureCommand 2                                                                     // [0x100c08] 0x008a9000 + 0x100c08 = 0x009a9c08
RTTICompleteObjectLocator CreatureCommand                                                                          // [0x100c18] 0x008a9000 + 0x100c18 = 0x009a9c18
.long 0x00000000                                                                                                   // [0x100c2c] 0x008a9000 + 0x100c2c = 0x009a9c2c
RTTIBaseClassDescriptor CreatureAttitudeToPlayer 1                                                                 // [0x100c30] 0x008a9000 + 0x100c30 = 0x009a9c30
RTTIBaseClassArray CreatureAttitudeToPlayer                                                                        // [0x100c48] 0x008a9000 + 0x100c48 = 0x009a9c48
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x100c54] 0x008a9000 + 0x100c54 = 0x009a9c54
RTTIClassHierarchyDescriptor CreatureAttitudeToPlayer 2                                                            // [0x100c58] 0x008a9000 + 0x100c58 = 0x009a9c58
RTTICompleteObjectLocator CreatureAttitudeToPlayer                                                                 // [0x100c68] 0x008a9000 + 0x100c68 = 0x009a9c68
.long 0x00000000                                                                                                   // [0x100c7c] 0x008a9000 + 0x100c7c = 0x009a9c7c
RTTIBaseClassDescriptor AttributeType 2                                                                            // [0x100c80] 0x008a9000 + 0x100c80 = 0x009a9c80
RTTIBaseClassArray AttributeType                                                                                   // [0x100c98] 0x008a9000 + 0x100c98 = 0x009a9c98
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributeType 3                                                                       // [0x100ca8] 0x008a9000 + 0x100ca8 = 0x009a9ca8
RTTICompleteObjectLocator AttributeType                                                                            // [0x100cb8] 0x008a9000 + 0x100cb8 = 0x009a9cb8
.long 0x00000000                                                                                                   // [0x100ccc] 0x008a9000 + 0x100ccc = 0x009a9ccc
RTTIBaseClassDescriptor AttributeCreatureType 2                                                                    // [0x100cd0] 0x008a9000 + 0x100cd0 = 0x009a9cd0
RTTIBaseClassArray AttributeCreatureType                                                                           // [0x100ce8] 0x008a9000 + 0x100ce8 = 0x009a9ce8
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributeCreatureType 3                                                               // [0x100cf8] 0x008a9000 + 0x100cf8 = 0x009a9cf8
RTTICompleteObjectLocator AttributeCreatureType                                                                    // [0x100d08] 0x008a9000 + 0x100d08 = 0x009a9d08
.long 0x00000000                                                                                                   // [0x100d1c] 0x008a9000 + 0x100d1c = 0x009a9d1c
RTTIBaseClassDescriptor AttributeAnimate 2                                                                         // [0x100d20] 0x008a9000 + 0x100d20 = 0x009a9d20
RTTIBaseClassArray AttributeAnimate                                                                                // [0x100d38] 0x008a9000 + 0x100d38 = 0x009a9d38
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributeAnimate 3                                                                    // [0x100d48] 0x008a9000 + 0x100d48 = 0x009a9d48
RTTICompleteObjectLocator AttributeAnimate                                                                         // [0x100d58] 0x008a9000 + 0x100d58 = 0x009a9d58
.long 0x00000000                                                                                                   // [0x100d6c] 0x008a9000 + 0x100d6c = 0x009a9d6c
RTTIBaseClassDescriptor AttributeIsHarderThanMe 2                                                                  // [0x100d70] 0x008a9000 + 0x100d70 = 0x009a9d70
RTTIBaseClassArray AttributeIsHarderThanMe                                                                         // [0x100d88] 0x008a9000 + 0x100d88 = 0x009a9d88
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributeIsHarderThanMe 3                                                             // [0x100d98] 0x008a9000 + 0x100d98 = 0x009a9d98
RTTICompleteObjectLocator AttributeIsHarderThanMe                                                                  // [0x100da8] 0x008a9000 + 0x100da8 = 0x009a9da8
.long 0x00000000                                                                                                   // [0x100dbc] 0x008a9000 + 0x100dbc = 0x009a9dbc
RTTIBaseClassDescriptor AttributeOrigin 2                                                                          // [0x100dc0] 0x008a9000 + 0x100dc0 = 0x009a9dc0
RTTIBaseClassArray AttributeOrigin                                                                                 // [0x100dd8] 0x008a9000 + 0x100dd8 = 0x009a9dd8
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributeOrigin 3                                                                     // [0x100de8] 0x008a9000 + 0x100de8 = 0x009a9de8
RTTICompleteObjectLocator AttributeOrigin                                                                          // [0x100df8] 0x008a9000 + 0x100df8 = 0x009a9df8
.long 0x00000000                                                                                                   // [0x100e0c] 0x008a9000 + 0x100e0c = 0x009a9e0c
RTTIBaseClassDescriptor AttributePlayerNumber 2                                                                    // [0x100e10] 0x008a9000 + 0x100e10 = 0x009a9e10
RTTIBaseClassArray AttributePlayerNumber                                                                           // [0x100e28] 0x008a9000 + 0x100e28 = 0x009a9e28
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributePlayerNumber 3                                                               // [0x100e38] 0x008a9000 + 0x100e38 = 0x009a9e38
RTTICompleteObjectLocator AttributePlayerNumber                                                                    // [0x100e48] 0x008a9000 + 0x100e48 = 0x009a9e48
.long 0x00000000                                                                                                   // [0x100e5c] 0x008a9000 + 0x100e5c = 0x009a9e5c
RTTIBaseClassDescriptor AttributeAllegiance 2                                                                      // [0x100e60] 0x008a9000 + 0x100e60 = 0x009a9e60
RTTIBaseClassArray AttributeAllegiance                                                                             // [0x100e78] 0x008a9000 + 0x100e78 = 0x009a9e78
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributeAllegiance 3                                                                 // [0x100e88] 0x008a9000 + 0x100e88 = 0x009a9e88
RTTICompleteObjectLocator AttributeAllegiance                                                                      // [0x100e98] 0x008a9000 + 0x100e98 = 0x009a9e98
.long 0x00000000                                                                                                   // [0x100eac] 0x008a9000 + 0x100eac = 0x009a9eac
RTTIBaseClassDescriptor AttributeSex 2                                                                             // [0x100eb0] 0x008a9000 + 0x100eb0 = 0x009a9eb0
RTTIBaseClassArray AttributeSex                                                                                    // [0x100ec8] 0x008a9000 + 0x100ec8 = 0x009a9ec8
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributeSex 3                                                                        // [0x100ed8] 0x008a9000 + 0x100ed8 = 0x009a9ed8
RTTICompleteObjectLocator AttributeSex                                                                             // [0x100ee8] 0x008a9000 + 0x100ee8 = 0x009a9ee8
.long 0x00000000                                                                                                   // [0x100efc] 0x008a9000 + 0x100efc = 0x009a9efc
RTTIBaseClassDescriptor AttributeOnFire 2                                                                          // [0x100f00] 0x008a9000 + 0x100f00 = 0x009a9f00
RTTIBaseClassArray AttributeOnFire                                                                                 // [0x100f18] 0x008a9000 + 0x100f18 = 0x009a9f18
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributeOnFire 3                                                                     // [0x100f28] 0x008a9000 + 0x100f28 = 0x009a9f28
RTTICompleteObjectLocator AttributeOnFire                                                                          // [0x100f38] 0x008a9000 + 0x100f38 = 0x009a9f38
.long 0x00000000                                                                                                   // [0x100f4c] 0x008a9000 + 0x100f4c = 0x009a9f4c
RTTIBaseClassDescriptor CreatureLearningEpisode 1                                                                  // [0x100f50] 0x008a9000 + 0x100f50 = 0x009a9f50
RTTIBaseClassArray CreatureLearningEpisode                                                                         // [0x100f68] 0x008a9000 + 0x100f68 = 0x009a9f68
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x100f74] 0x008a9000 + 0x100f74 = 0x009a9f74
RTTIClassHierarchyDescriptor CreatureLearningEpisode 2                                                             // [0x100f78] 0x008a9000 + 0x100f78 = 0x009a9f78
RTTICompleteObjectLocator CreatureLearningEpisode                                                                  // [0x100f88] 0x008a9000 + 0x100f88 = 0x009a9f88
.long 0x00000000                                                                                                   // [0x100f9c] 0x008a9000 + 0x100f9c = 0x009a9f9c
RTTIBaseClassDescriptor AttributeVillagerJob 2                                                                     // [0x100fa0] 0x008a9000 + 0x100fa0 = 0x009a9fa0
RTTIBaseClassArray AttributeVillagerJob                                                                            // [0x100fb8] 0x008a9000 + 0x100fb8 = 0x009a9fb8
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributeVillagerJob 3                                                                // [0x100fc8] 0x008a9000 + 0x100fc8 = 0x009a9fc8
RTTICompleteObjectLocator AttributeVillagerJob                                                                     // [0x100fd8] 0x008a9000 + 0x100fd8 = 0x009a9fd8
.long 0x00000000                                                                                                   // [0x100fec] 0x008a9000 + 0x100fec = 0x009a9fec
RTTIBaseClassDescriptor Attribute 1                                                                                // [0x100ff0] 0x008a9000 + 0x100ff0 = 0x009a9ff0
RTTIBaseClassDescriptor AttributeLife 2                                                                            // [0x101008] 0x008a9000 + 0x101008 = 0x009aa008
RTTIBaseClassArray AttributeLife                                                                                   // [0x101020] 0x008a9000 + 0x101020 = 0x009aa020
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributeLife 3                                                                       // [0x101030] 0x008a9000 + 0x101030 = 0x009aa030
RTTICompleteObjectLocator AttributeLife                                                                            // [0x101040] 0x008a9000 + 0x101040 = 0x009aa040
.long 0x00000000                                                                                                   // [0x101054] 0x008a9000 + 0x101054 = 0x009aa054
RTTIBaseClassArray Attribute                                                                                       // [0x101058] 0x008a9000 + 0x101058 = 0x009aa058
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x101064] 0x008a9000 + 0x101064 = 0x009aa064
RTTIClassHierarchyDescriptor Attribute 2                                                                           // [0x101068] 0x008a9000 + 0x101068 = 0x009aa068
RTTICompleteObjectLocator Attribute                                                                                // [0x101078] 0x008a9000 + 0x101078 = 0x009aa078
.long 0x00000000                                                                                                   // [0x10108c] 0x008a9000 + 0x10108c = 0x009aa08c
RTTIBaseClassDescriptor AttributeWhatTownNeedsMost 2                                                               // [0x101090] 0x008a9000 + 0x101090 = 0x009aa090
RTTIBaseClassArray AttributeWhatTownNeedsMost                                                                      // [0x1010a8] 0x008a9000 + 0x1010a8 = 0x009aa0a8
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributeWhatTownNeedsMost 3                                                          // [0x1010b8] 0x008a9000 + 0x1010b8 = 0x009aa0b8
RTTICompleteObjectLocator AttributeWhatTownNeedsMost                                                               // [0x1010c8] 0x008a9000 + 0x1010c8 = 0x009aa0c8
.long 0x00000000                                                                                                   // [0x1010dc] 0x008a9000 + 0x1010dc = 0x009aa0dc
RTTIBaseClassDescriptor AttributeTownReligiousBeliefInYou 2                                                        // [0x1010e0] 0x008a9000 + 0x1010e0 = 0x009aa0e0
RTTIBaseClassArray AttributeTownReligiousBeliefInYou                                                               // [0x1010f8] 0x008a9000 + 0x1010f8 = 0x009aa0f8
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributeTownReligiousBeliefInYou 3                                                   // [0x101108] 0x008a9000 + 0x101108 = 0x009aa108
RTTICompleteObjectLocator AttributeTownReligiousBeliefInYou                                                        // [0x101118] 0x008a9000 + 0x101118 = 0x009aa118
.long 0x00000000                                                                                                   // [0x10112c] 0x008a9000 + 0x10112c = 0x009aa12c
RTTIBaseClassDescriptor AttributeTribe 2                                                                           // [0x101130] 0x008a9000 + 0x101130 = 0x009aa130
RTTIBaseClassArray AttributeTribe                                                                                  // [0x101148] 0x008a9000 + 0x101148 = 0x009aa148
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributeTribe 3                                                                      // [0x101158] 0x008a9000 + 0x101158 = 0x009aa158
RTTICompleteObjectLocator AttributeTribe                                                                           // [0x101168] 0x008a9000 + 0x101168 = 0x009aa168
.long 0x00000000                                                                                                   // [0x10117c] 0x008a9000 + 0x10117c = 0x009aa17c
RTTIBaseClassDescriptor AttributeTownSize 2                                                                        // [0x101180] 0x008a9000 + 0x101180 = 0x009aa180
RTTIBaseClassArray AttributeTownSize                                                                               // [0x101198] 0x008a9000 + 0x101198 = 0x009aa198
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributeTownSize 3                                                                   // [0x1011a8] 0x008a9000 + 0x1011a8 = 0x009aa1a8
RTTICompleteObjectLocator AttributeTownSize                                                                        // [0x1011b8] 0x008a9000 + 0x1011b8 = 0x009aa1b8
.long 0x00000000                                                                                                   // [0x1011cc] 0x008a9000 + 0x1011cc = 0x009aa1cc
RTTIBaseClassDescriptor ?$EditorIconButton@VCreatureLessonChooser@@ 2                                              // [0x1011d0] 0x008a9000 + 0x1011d0 = 0x009aa1d0
RTTIBaseClassArray ?$EditorIconButton@VCreatureLessonChooser@@                                                     // [0x1011e8] 0x008a9000 + 0x1011e8 = 0x009aa1e8
.long ??_R1A@?0A@A@EditorIconShow@@8
.long ??_R1A@?0A@A@EditorIconBase@@8
.long 0x00000000

RTTIClassHierarchyDescriptor ?$EditorIconButton@VCreatureLessonChooser@@ 3                                         // [0x1011f8] 0x008a9000 + 0x1011f8 = 0x009aa1f8
RTTICompleteObjectLocator ?$EditorIconButton@VCreatureLessonChooser@@                                              // [0x101208] 0x008a9000 + 0x101208 = 0x009aa208
.long 0x00000000                                                                                                   // [0x10121c] 0x008a9000 + 0x10121c = 0x009aa21c
RTTIBaseClassDescriptor CreatureContext 1                                                                          // [0x101220] 0x008a9000 + 0x101220 = 0x009aa220
RTTIBaseClassArray CreatureContext                                                                                 // [0x101238] 0x008a9000 + 0x101238 = 0x009aa238
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x101244] 0x008a9000 + 0x101244 = 0x009aa244
RTTIClassHierarchyDescriptor CreatureContext 2                                                                     // [0x101248] 0x008a9000 + 0x101248 = 0x009aa248
RTTICompleteObjectLocator CreatureContext                                                                          // [0x101258] 0x008a9000 + 0x101258 = 0x009aa258
.long 0x00000000                                                                                                   // [0x10126c] 0x008a9000 + 0x10126c = 0x009aa26c
RTTIBaseClassDescriptor CreatureVisionState 1                                                                      // [0x101270] 0x008a9000 + 0x101270 = 0x009aa270
RTTIBaseClassArray CreatureVisionState                                                                             // [0x101288] 0x008a9000 + 0x101288 = 0x009aa288
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x101294] 0x008a9000 + 0x101294 = 0x009aa294
RTTIClassHierarchyDescriptor CreatureVisionState 2                                                                 // [0x101298] 0x008a9000 + 0x101298 = 0x009aa298
RTTICompleteObjectLocator CreatureVisionState                                                                      // [0x1012a8] 0x008a9000 + 0x1012a8 = 0x009aa2a8
.long 0x00000000                                                                                                   // [0x1012bc] 0x008a9000 + 0x1012bc = 0x009aa2bc
RTTIBaseClassDescriptor CreatureMentalDebug 1                                                                      // [0x1012c0] 0x008a9000 + 0x1012c0 = 0x009aa2c0
RTTIBaseClassArray CreatureMentalDebug                                                                             // [0x1012d8] 0x008a9000 + 0x1012d8 = 0x009aa2d8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1012e4] 0x008a9000 + 0x1012e4 = 0x009aa2e4
RTTIClassHierarchyDescriptor CreatureMentalDebug 2                                                                 // [0x1012e8] 0x008a9000 + 0x1012e8 = 0x009aa2e8
RTTICompleteObjectLocator CreatureMentalDebug                                                                      // [0x1012f8] 0x008a9000 + 0x1012f8 = 0x009aa2f8
.long 0x00000000                                                                                                   // [0x10130c] 0x008a9000 + 0x10130c = 0x009aa30c
RTTIBaseClassDescriptor CreatureMental 1                                                                           // [0x101310] 0x008a9000 + 0x101310 = 0x009aa310
RTTIBaseClassArray CreatureMental                                                                                  // [0x101328] 0x008a9000 + 0x101328 = 0x009aa328
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x101334] 0x008a9000 + 0x101334 = 0x009aa334
RTTIClassHierarchyDescriptor CreatureMental 2                                                                      // [0x101338] 0x008a9000 + 0x101338 = 0x009aa338
RTTICompleteObjectLocator CreatureMental                                                                           // [0x101348] 0x008a9000 + 0x101348 = 0x009aa348
.long 0x00000000                                                                                                   // [0x10135c] 0x008a9000 + 0x10135c = 0x009aa35c
RTTIBaseClassDescriptor CreatureBeliefs 1                                                                          // [0x101360] 0x008a9000 + 0x101360 = 0x009aa360
RTTIBaseClassArray CreatureBeliefs                                                                                 // [0x101378] 0x008a9000 + 0x101378 = 0x009aa378
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x101384] 0x008a9000 + 0x101384 = 0x009aa384
RTTIClassHierarchyDescriptor CreatureBeliefs 2                                                                     // [0x101388] 0x008a9000 + 0x101388 = 0x009aa388
RTTICompleteObjectLocator CreatureBeliefs                                                                          // [0x101398] 0x008a9000 + 0x101398 = 0x009aa398
.long 0x00000000                                                                                                   // [0x1013ac] 0x008a9000 + 0x1013ac = 0x009aa3ac
RTTIBaseClassDescriptor CreatureBeliefList 1                                                                       // [0x1013b0] 0x008a9000 + 0x1013b0 = 0x009aa3b0
RTTIBaseClassArray CreatureBeliefList                                                                              // [0x1013c8] 0x008a9000 + 0x1013c8 = 0x009aa3c8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1013d4] 0x008a9000 + 0x1013d4 = 0x009aa3d4
RTTIClassHierarchyDescriptor CreatureBeliefList 2                                                                  // [0x1013d8] 0x008a9000 + 0x1013d8 = 0x009aa3d8
RTTICompleteObjectLocator CreatureBeliefList                                                                       // [0x1013e8] 0x008a9000 + 0x1013e8 = 0x009aa3e8
.long 0x00000000                                                                                                   // [0x1013fc] 0x008a9000 + 0x1013fc = 0x009aa3fc
RTTIBaseClassDescriptor CreatureAgenda 1                                                                           // [0x101400] 0x008a9000 + 0x101400 = 0x009aa400
RTTIBaseClassArray CreatureAgenda                                                                                  // [0x101418] 0x008a9000 + 0x101418 = 0x009aa418
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x101424] 0x008a9000 + 0x101424 = 0x009aa424
RTTIClassHierarchyDescriptor CreatureAgenda 2                                                                      // [0x101428] 0x008a9000 + 0x101428 = 0x009aa428
RTTICompleteObjectLocator CreatureAgenda                                                                           // [0x101438] 0x008a9000 + 0x101438 = 0x009aa438
.long 0x00000000                                                                                                   // [0x10144c] 0x008a9000 + 0x10144c = 0x009aa44c
RTTIBaseClassDescriptor CreatureCommandState 1                                                                     // [0x101450] 0x008a9000 + 0x101450 = 0x009aa450
RTTIBaseClassArray CreatureCommandState                                                                            // [0x101468] 0x008a9000 + 0x101468 = 0x009aa468
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x101474] 0x008a9000 + 0x101474 = 0x009aa474
RTTIClassHierarchyDescriptor CreatureCommandState 2                                                                // [0x101478] 0x008a9000 + 0x101478 = 0x009aa478
RTTICompleteObjectLocator CreatureCommandState                                                                     // [0x101488] 0x008a9000 + 0x101488 = 0x009aa488
.long 0x00000000                                                                                                   // [0x10149c] 0x008a9000 + 0x10149c = 0x009aa49c
RTTIBaseClassDescriptor AttributeForestSize 2                                                                      // [0x1014a0] 0x008a9000 + 0x1014a0 = 0x009aa4a0
RTTIBaseClassArray AttributeForestSize                                                                             // [0x1014b8] 0x008a9000 + 0x1014b8 = 0x009aa4b8
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributeForestSize 3                                                                 // [0x1014c8] 0x008a9000 + 0x1014c8 = 0x009aa4c8
RTTICompleteObjectLocator AttributeForestSize                                                                      // [0x1014d8] 0x008a9000 + 0x1014d8 = 0x009aa4d8
.long 0x00000000                                                                                                   // [0x1014ec] 0x008a9000 + 0x1014ec = 0x009aa4ec
RTTIBaseClassDescriptor AttributeCreatureWhatHeIsCarrying 2                                                        // [0x1014f0] 0x008a9000 + 0x1014f0 = 0x009aa4f0
RTTIBaseClassArray AttributeCreatureWhatHeIsCarrying                                                               // [0x101508] 0x008a9000 + 0x101508 = 0x009aa508
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributeCreatureWhatHeIsCarrying 3                                                   // [0x101518] 0x008a9000 + 0x101518 = 0x009aa518
RTTICompleteObjectLocator AttributeCreatureWhatHeIsCarrying                                                        // [0x101528] 0x008a9000 + 0x101528 = 0x009aa528
.long 0x00000000                                                                                                   // [0x10153c] 0x008a9000 + 0x10153c = 0x009aa53c
RTTIBaseClassDescriptor AttributeCreatureSpellKnowledge 2                                                          // [0x101540] 0x008a9000 + 0x101540 = 0x009aa540
RTTIBaseClassArray AttributeCreatureSpellKnowledge                                                                 // [0x101558] 0x008a9000 + 0x101558 = 0x009aa558
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributeCreatureSpellKnowledge 3                                                     // [0x101568] 0x008a9000 + 0x101568 = 0x009aa568
RTTICompleteObjectLocator AttributeCreatureSpellKnowledge                                                          // [0x101578] 0x008a9000 + 0x101578 = 0x009aa578
.long 0x00000000                                                                                                   // [0x10158c] 0x008a9000 + 0x10158c = 0x009aa58c
RTTIBaseClassDescriptor AttributeCreatureHeight 2                                                                  // [0x101590] 0x008a9000 + 0x101590 = 0x009aa590
RTTIBaseClassArray AttributeCreatureHeight                                                                         // [0x1015a8] 0x008a9000 + 0x1015a8 = 0x009aa5a8
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributeCreatureHeight 3                                                             // [0x1015b8] 0x008a9000 + 0x1015b8 = 0x009aa5b8
RTTICompleteObjectLocator AttributeCreatureHeight                                                                  // [0x1015c8] 0x008a9000 + 0x1015c8 = 0x009aa5c8
.long 0x00000000                                                                                                   // [0x1015dc] 0x008a9000 + 0x1015dc = 0x009aa5dc
RTTIBaseClassDescriptor AttributeAbodeBeingBuilt 2                                                                 // [0x1015e0] 0x008a9000 + 0x1015e0 = 0x009aa5e0
RTTIBaseClassArray AttributeAbodeBeingBuilt                                                                        // [0x1015f8] 0x008a9000 + 0x1015f8 = 0x009aa5f8
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributeAbodeBeingBuilt 3                                                            // [0x101608] 0x008a9000 + 0x101608 = 0x009aa608
RTTICompleteObjectLocator AttributeAbodeBeingBuilt                                                                 // [0x101618] 0x008a9000 + 0x101618 = 0x009aa618
.long 0x00000000                                                                                                   // [0x10162c] 0x008a9000 + 0x10162c = 0x009aa62c
RTTIBaseClassDescriptor AttributeCreatureDominantDesire 2                                                          // [0x101630] 0x008a9000 + 0x101630 = 0x009aa630
RTTIBaseClassArray AttributeCreatureDominantDesire                                                                 // [0x101648] 0x008a9000 + 0x101648 = 0x009aa648
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributeCreatureDominantDesire 3                                                     // [0x101658] 0x008a9000 + 0x101658 = 0x009aa658
RTTICompleteObjectLocator AttributeCreatureDominantDesire                                                          // [0x101668] 0x008a9000 + 0x101668 = 0x009aa668
.long 0x00000000                                                                                                   // [0x10167c] 0x008a9000 + 0x10167c = 0x009aa67c
RTTIBaseClassDescriptor AttributeAbodeType 2                                                                       // [0x101680] 0x008a9000 + 0x101680 = 0x009aa680
RTTIBaseClassArray AttributeAbodeType                                                                              // [0x101698] 0x008a9000 + 0x101698 = 0x009aa698
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributeAbodeType 3                                                                  // [0x1016a8] 0x008a9000 + 0x1016a8 = 0x009aa6a8
RTTICompleteObjectLocator AttributeAbodeType                                                                       // [0x1016b8] 0x008a9000 + 0x1016b8 = 0x009aa6b8
.long 0x00000000                                                                                                   // [0x1016cc] 0x008a9000 + 0x1016cc = 0x009aa6cc
RTTIBaseClassDescriptor AttributeMobileObjectType 2                                                                // [0x1016d0] 0x008a9000 + 0x1016d0 = 0x009aa6d0
RTTIBaseClassArray AttributeMobileObjectType                                                                       // [0x1016e8] 0x008a9000 + 0x1016e8 = 0x009aa6e8
.long ??_R1A@?0A@A@Attribute@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor AttributeMobileObjectType 3                                                           // [0x1016f8] 0x008a9000 + 0x1016f8 = 0x009aa6f8
RTTICompleteObjectLocator AttributeMobileObjectType                                                                // [0x101708] 0x008a9000 + 0x101708 = 0x009aa708
.long 0x00000000                                                                                                   // [0x10171c] 0x008a9000 + 0x10171c = 0x009aa71c
RTTIBaseClassDescriptor CreatureBeliefAboutTown 2                                                                  // [0x101720] 0x008a9000 + 0x101720 = 0x009aa720
RTTIBaseClassArray CreatureBeliefAboutTown                                                                         // [0x101738] 0x008a9000 + 0x101738 = 0x009aa738
.long ??_R1A@?0A@A@CreatureBelief@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureBeliefAboutTown 3                                                             // [0x101748] 0x008a9000 + 0x101748 = 0x009aa748
RTTICompleteObjectLocator CreatureBeliefAboutTown                                                                  // [0x101758] 0x008a9000 + 0x101758 = 0x009aa758
.long 0x00000000                                                                                                   // [0x10176c] 0x008a9000 + 0x10176c = 0x009aa76c
RTTIBaseClassDescriptor CreatureBeliefAboutContext 2                                                               // [0x101770] 0x008a9000 + 0x101770 = 0x009aa770
RTTIBaseClassArray CreatureBeliefAboutContext                                                                      // [0x101788] 0x008a9000 + 0x101788 = 0x009aa788
.long ??_R1A@?0A@A@CreatureBelief@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureBeliefAboutContext 3                                                          // [0x101798] 0x008a9000 + 0x101798 = 0x009aa798
RTTICompleteObjectLocator CreatureBeliefAboutContext                                                               // [0x1017a8] 0x008a9000 + 0x1017a8 = 0x009aa7a8
.long 0x00000000                                                                                                   // [0x1017bc] 0x008a9000 + 0x1017bc = 0x009aa7bc
RTTIBaseClassDescriptor CreatureBeliefAboutVillager 2                                                              // [0x1017c0] 0x008a9000 + 0x1017c0 = 0x009aa7c0
RTTIBaseClassArray CreatureBeliefAboutVillager                                                                     // [0x1017d8] 0x008a9000 + 0x1017d8 = 0x009aa7d8
.long ??_R1A@?0A@A@CreatureBelief@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureBeliefAboutVillager 3                                                         // [0x1017e8] 0x008a9000 + 0x1017e8 = 0x009aa7e8
RTTICompleteObjectLocator CreatureBeliefAboutVillager                                                              // [0x1017f8] 0x008a9000 + 0x1017f8 = 0x009aa7f8
.long 0x00000000                                                                                                   // [0x10180c] 0x008a9000 + 0x10180c = 0x009aa80c
RTTIBaseClassDescriptor CreatureBeliefAboutAbode 2                                                                 // [0x101810] 0x008a9000 + 0x101810 = 0x009aa810
RTTIBaseClassArray CreatureBeliefAboutAbode                                                                        // [0x101828] 0x008a9000 + 0x101828 = 0x009aa828
.long ??_R1A@?0A@A@CreatureBelief@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureBeliefAboutAbode 3                                                            // [0x101838] 0x008a9000 + 0x101838 = 0x009aa838
RTTICompleteObjectLocator CreatureBeliefAboutAbode                                                                 // [0x101848] 0x008a9000 + 0x101848 = 0x009aa848
.long 0x00000000                                                                                                   // [0x10185c] 0x008a9000 + 0x10185c = 0x009aa85c
RTTIBaseClassDescriptor CreatureBeliefAboutForest 2                                                                // [0x101860] 0x008a9000 + 0x101860 = 0x009aa860
RTTIBaseClassArray CreatureBeliefAboutForest                                                                       // [0x101878] 0x008a9000 + 0x101878 = 0x009aa878
.long ??_R1A@?0A@A@CreatureBelief@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureBeliefAboutForest 3                                                           // [0x101888] 0x008a9000 + 0x101888 = 0x009aa888
RTTICompleteObjectLocator CreatureBeliefAboutForest                                                                // [0x101898] 0x008a9000 + 0x101898 = 0x009aa898
.long 0x00000000                                                                                                   // [0x1018ac] 0x008a9000 + 0x1018ac = 0x009aa8ac
RTTIBaseClassDescriptor CreatureBeliefAboutCreature 2                                                              // [0x1018b0] 0x008a9000 + 0x1018b0 = 0x009aa8b0
RTTIBaseClassArray CreatureBeliefAboutCreature                                                                     // [0x1018c8] 0x008a9000 + 0x1018c8 = 0x009aa8c8
.long ??_R1A@?0A@A@CreatureBelief@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureBeliefAboutCreature 3                                                         // [0x1018d8] 0x008a9000 + 0x1018d8 = 0x009aa8d8
RTTICompleteObjectLocator CreatureBeliefAboutCreature                                                              // [0x1018e8] 0x008a9000 + 0x1018e8 = 0x009aa8e8
.long 0x00000000                                                                                                   // [0x1018fc] 0x008a9000 + 0x1018fc = 0x009aa8fc
RTTIBaseClassDescriptor CreatureBeliefSmall 2                                                                      // [0x101900] 0x008a9000 + 0x101900 = 0x009aa900
RTTIBaseClassArray CreatureBeliefSmall                                                                             // [0x101918] 0x008a9000 + 0x101918 = 0x009aa918
.long ??_R1A@?0A@A@CreatureBelief@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureBeliefSmall 3                                                                 // [0x101928] 0x008a9000 + 0x101928 = 0x009aa928
RTTICompleteObjectLocator CreatureBeliefSmall                                                                      // [0x101938] 0x008a9000 + 0x101938 = 0x009aa938
.long 0x00000000                                                                                                   // [0x10194c] 0x008a9000 + 0x10194c = 0x009aa94c
RTTIBaseClassDescriptor CreatureBeliefAboutCitadel 2                                                               // [0x101950] 0x008a9000 + 0x101950 = 0x009aa950
RTTIBaseClassArray CreatureBeliefAboutCitadel                                                                      // [0x101968] 0x008a9000 + 0x101968 = 0x009aa968
.long ??_R1A@?0A@A@CreatureBelief@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureBeliefAboutCitadel 3                                                          // [0x101978] 0x008a9000 + 0x101978 = 0x009aa978
RTTICompleteObjectLocator CreatureBeliefAboutCitadel                                                               // [0x101988] 0x008a9000 + 0x101988 = 0x009aa988
.long 0x00000000                                                                                                   // [0x10199c] 0x008a9000 + 0x10199c = 0x009aa99c
RTTIBaseClassDescriptor CreatureBelief 1                                                                           // [0x1019a0] 0x008a9000 + 0x1019a0 = 0x009aa9a0
RTTIBaseClassDescriptor CreatureBeliefAboutFlock 2                                                                 // [0x1019b8] 0x008a9000 + 0x1019b8 = 0x009aa9b8
RTTIBaseClassArray CreatureBeliefAboutFlock                                                                        // [0x1019d0] 0x008a9000 + 0x1019d0 = 0x009aa9d0
.long ??_R1A@?0A@A@CreatureBelief@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureBeliefAboutFlock 3                                                            // [0x1019e0] 0x008a9000 + 0x1019e0 = 0x009aa9e0
RTTICompleteObjectLocator CreatureBeliefAboutFlock                                                                 // [0x1019f0] 0x008a9000 + 0x1019f0 = 0x009aa9f0
.long 0x00000000                                                                                                   // [0x101a04] 0x008a9000 + 0x101a04 = 0x009aaa04
RTTIBaseClassArray CreatureBelief                                                                                  // [0x101a08] 0x008a9000 + 0x101a08 = 0x009aaa08
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x101a14] 0x008a9000 + 0x101a14 = 0x009aaa14
RTTIClassHierarchyDescriptor CreatureBelief 2                                                                      // [0x101a18] 0x008a9000 + 0x101a18 = 0x009aaa18
RTTICompleteObjectLocator CreatureBelief                                                                           // [0x101a28] 0x008a9000 + 0x101a28 = 0x009aaa28
.long 0x00000000                                                                                                   // [0x101a3c] 0x008a9000 + 0x101a3c = 0x009aaa3c
RTTIBaseClassDescriptor AllocatedBeliefList 1                                                                      // [0x101a40] 0x008a9000 + 0x101a40 = 0x009aaa40
RTTIBaseClassArray AllocatedBeliefList                                                                             // [0x101a58] 0x008a9000 + 0x101a58 = 0x009aaa58
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x101a64] 0x008a9000 + 0x101a64 = 0x009aaa64
RTTIClassHierarchyDescriptor AllocatedBeliefList 2                                                                 // [0x101a68] 0x008a9000 + 0x101a68 = 0x009aaa68
RTTICompleteObjectLocator AllocatedBeliefList                                                                      // [0x101a78] 0x008a9000 + 0x101a78 = 0x009aaa78
.long 0x00000000                                                                                                   // [0x101a8c] 0x008a9000 + 0x101a8c = 0x009aaa8c
RTTIBaseClassDescriptor CreatureBeliefAboutMobileObject 2                                                          // [0x101a90] 0x008a9000 + 0x101a90 = 0x009aaa90
RTTIBaseClassArray CreatureBeliefAboutMobileObject                                                                 // [0x101aa8] 0x008a9000 + 0x101aa8 = 0x009aaaa8
.long ??_R1A@?0A@A@CreatureBelief@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureBeliefAboutMobileObject 3                                                     // [0x101ab8] 0x008a9000 + 0x101ab8 = 0x009aaab8
RTTICompleteObjectLocator CreatureBeliefAboutMobileObject                                                          // [0x101ac8] 0x008a9000 + 0x101ac8 = 0x009aaac8
.long 0x00000000                                                                                                   // [0x101adc] 0x008a9000 + 0x101adc = 0x009aaadc
RTTIBaseClassDescriptor CreatureDesireDependency 2                                                                 // [0x101ae0] 0x008a9000 + 0x101ae0 = 0x009aaae0
RTTIBaseClassArray CreatureDesireDependency                                                                        // [0x101af8] 0x008a9000 + 0x101af8 = 0x009aaaf8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureDesireDependency 3                                                            // [0x101b08] 0x008a9000 + 0x101b08 = 0x009aab08
RTTICompleteObjectLocator CreatureDesireDependency                                                                 // [0x101b18] 0x008a9000 + 0x101b18 = 0x009aab18
.long 0x00000000                                                                                                   // [0x101b2c] 0x008a9000 + 0x101b2c = 0x009aab2c
RTTIBaseClassDescriptor CreatureDesireForType 2                                                                    // [0x101b30] 0x008a9000 + 0x101b30 = 0x009aab30
RTTIBaseClassArray CreatureDesireForType                                                                           // [0x101b48] 0x008a9000 + 0x101b48 = 0x009aab48
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureDesireForType 3                                                               // [0x101b58] 0x008a9000 + 0x101b58 = 0x009aab58
RTTICompleteObjectLocator CreatureDesireForType                                                                    // [0x101b68] 0x008a9000 + 0x101b68 = 0x009aab68
.long 0x00000000                                                                                                   // [0x101b7c] 0x008a9000 + 0x101b7c = 0x009aab7c
RTTIBaseClassDescriptor CreatureDevelopmentPhaseEntry 2                                                            // [0x101b80] 0x008a9000 + 0x101b80 = 0x009aab80
RTTIBaseClassArray CreatureDevelopmentPhaseEntry                                                                   // [0x101b98] 0x008a9000 + 0x101b98 = 0x009aab98
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureDevelopmentPhaseEntry 3                                                       // [0x101ba8] 0x008a9000 + 0x101ba8 = 0x009aaba8
RTTICompleteObjectLocator CreatureDevelopmentPhaseEntry                                                            // [0x101bb8] 0x008a9000 + 0x101bb8 = 0x009aabb8
.long 0x00000000                                                                                                   // [0x101bcc] 0x008a9000 + 0x101bcc = 0x009aabcc
RTTIBaseClassDescriptor CreatureDevelopmentDurationEntry 2                                                         // [0x101bd0] 0x008a9000 + 0x101bd0 = 0x009aabd0
RTTIBaseClassArray CreatureDevelopmentDurationEntry                                                                // [0x101be8] 0x008a9000 + 0x101be8 = 0x009aabe8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureDevelopmentDurationEntry 3                                                    // [0x101bf8] 0x008a9000 + 0x101bf8 = 0x009aabf8
RTTICompleteObjectLocator CreatureDevelopmentDurationEntry                                                         // [0x101c08] 0x008a9000 + 0x101c08 = 0x009aac08
.long 0x00000000                                                                                                   // [0x101c1c] 0x008a9000 + 0x101c1c = 0x009aac1c
RTTIBaseClassDescriptor CreatureDesires 1                                                                          // [0x101c20] 0x008a9000 + 0x101c20 = 0x009aac20
RTTIBaseClassArray CreatureDesires                                                                                 // [0x101c38] 0x008a9000 + 0x101c38 = 0x009aac38
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x101c44] 0x008a9000 + 0x101c44 = 0x009aac44
RTTIClassHierarchyDescriptor CreatureDesires 2                                                                     // [0x101c48] 0x008a9000 + 0x101c48 = 0x009aac48
RTTICompleteObjectLocator CreatureDesires                                                                          // [0x101c58] 0x008a9000 + 0x101c58 = 0x009aac58
.long 0x00000000                                                                                                   // [0x101c6c] 0x008a9000 + 0x101c6c = 0x009aac6c
RTTIBaseClassDescriptor CreatureDesireSourceTable 2                                                                // [0x101c70] 0x008a9000 + 0x101c70 = 0x009aac70
RTTIBaseClassArray CreatureDesireSourceTable                                                                       // [0x101c88] 0x008a9000 + 0x101c88 = 0x009aac88
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureDesireSourceTable 3                                                           // [0x101c98] 0x008a9000 + 0x101c98 = 0x009aac98
RTTICompleteObjectLocator CreatureDesireSourceTable                                                                // [0x101ca8] 0x008a9000 + 0x101ca8 = 0x009aaca8
.long 0x00000000                                                                                                   // [0x101cbc] 0x008a9000 + 0x101cbc = 0x009aacbc
RTTIBaseClassDescriptor CreatureInitialSourceInfo 2                                                                // [0x101cc0] 0x008a9000 + 0x101cc0 = 0x009aacc0
RTTIBaseClassArray CreatureInitialSourceInfo                                                                       // [0x101cd8] 0x008a9000 + 0x101cd8 = 0x009aacd8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureInitialSourceInfo 3                                                           // [0x101ce8] 0x008a9000 + 0x101ce8 = 0x009aace8
RTTICompleteObjectLocator CreatureInitialSourceInfo                                                                // [0x101cf8] 0x008a9000 + 0x101cf8 = 0x009aacf8
.long 0x00000000                                                                                                   // [0x101d0c] 0x008a9000 + 0x101d0c = 0x009aad0c
RTTIBaseClassDescriptor CreatureSourceBoundsInfo 2                                                                 // [0x101d10] 0x008a9000 + 0x101d10 = 0x009aad10
RTTIBaseClassArray CreatureSourceBoundsInfo                                                                        // [0x101d28] 0x008a9000 + 0x101d28 = 0x009aad28
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureSourceBoundsInfo 3                                                            // [0x101d38] 0x008a9000 + 0x101d38 = 0x009aad38
RTTICompleteObjectLocator CreatureSourceBoundsInfo                                                                 // [0x101d48] 0x008a9000 + 0x101d48 = 0x009aad48
.long 0x00000000                                                                                                   // [0x101d5c] 0x008a9000 + 0x101d5c = 0x009aad5c
RTTIBaseClassDescriptor CreatureExplorationRegionEntry 1                                                           // [0x101d60] 0x008a9000 + 0x101d60 = 0x009aad60
RTTIBaseClassArray CreatureExplorationRegionEntry                                                                  // [0x101d78] 0x008a9000 + 0x101d78 = 0x009aad78
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x101d84] 0x008a9000 + 0x101d84 = 0x009aad84
RTTIClassHierarchyDescriptor CreatureExplorationRegionEntry 2                                                      // [0x101d88] 0x008a9000 + 0x101d88 = 0x009aad88
RTTICompleteObjectLocator CreatureExplorationRegionEntry                                                           // [0x101d98] 0x008a9000 + 0x101d98 = 0x009aad98
.long 0x00000000                                                                                                   // [0x101dac] 0x008a9000 + 0x101dac = 0x009aadac
RTTIBaseClassDescriptor CreatureGlobalExplorationMap 1                                                             // [0x101db0] 0x008a9000 + 0x101db0 = 0x009aadb0
RTTIBaseClassArray CreatureGlobalExplorationMap                                                                    // [0x101dc8] 0x008a9000 + 0x101dc8 = 0x009aadc8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x101dd4] 0x008a9000 + 0x101dd4 = 0x009aadd4
RTTIClassHierarchyDescriptor CreatureGlobalExplorationMap 2                                                        // [0x101dd8] 0x008a9000 + 0x101dd8 = 0x009aadd8
RTTICompleteObjectLocator CreatureGlobalExplorationMap                                                             // [0x101de8] 0x008a9000 + 0x101de8 = 0x009aade8
.long 0x00000000                                                                                                   // [0x101dfc] 0x008a9000 + 0x101dfc = 0x009aadfc
RTTIBaseClassDescriptor CreatureExplorationMap 1                                                                   // [0x101e00] 0x008a9000 + 0x101e00 = 0x009aae00
RTTIBaseClassArray CreatureExplorationMap                                                                          // [0x101e18] 0x008a9000 + 0x101e18 = 0x009aae18
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x101e24] 0x008a9000 + 0x101e24 = 0x009aae24
RTTIClassHierarchyDescriptor CreatureExplorationMap 2                                                              // [0x101e28] 0x008a9000 + 0x101e28 = 0x009aae28
RTTICompleteObjectLocator CreatureExplorationMap                                                                   // [0x101e38] 0x008a9000 + 0x101e38 = 0x009aae38
.long 0x00000000                                                                                                   // [0x101e4c] 0x008a9000 + 0x101e4c = 0x009aae4c
RTTIBaseClassDescriptor CreatureLearning 1                                                                         // [0x101e50] 0x008a9000 + 0x101e50 = 0x009aae50
RTTIBaseClassArray CreatureLearning                                                                                // [0x101e68] 0x008a9000 + 0x101e68 = 0x009aae68
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x101e74] 0x008a9000 + 0x101e74 = 0x009aae74
RTTIClassHierarchyDescriptor CreatureLearning 2                                                                    // [0x101e78] 0x008a9000 + 0x101e78 = 0x009aae78
RTTICompleteObjectLocator CreatureLearning                                                                         // [0x101e88] 0x008a9000 + 0x101e88 = 0x009aae88
.long 0x00000000                                                                                                   // [0x101e9c] 0x008a9000 + 0x101e9c = 0x009aae9c
RTTIBaseClassDescriptor CreaturePreviousLesson 1                                                                   // [0x101ea0] 0x008a9000 + 0x101ea0 = 0x009aaea0
RTTIBaseClassArray CreaturePreviousLesson                                                                          // [0x101eb8] 0x008a9000 + 0x101eb8 = 0x009aaeb8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x101ec4] 0x008a9000 + 0x101ec4 = 0x009aaec4
RTTIClassHierarchyDescriptor CreaturePreviousLesson 2                                                              // [0x101ec8] 0x008a9000 + 0x101ec8 = 0x009aaec8
RTTICompleteObjectLocator CreaturePreviousLesson                                                                   // [0x101ed8] 0x008a9000 + 0x101ed8 = 0x009aaed8
.long 0x00000000                                                                                                   // [0x101eec] 0x008a9000 + 0x101eec = 0x009aaeec
RTTIBaseClassDescriptor CreatureLearningContext 1                                                                  // [0x101ef0] 0x008a9000 + 0x101ef0 = 0x009aaef0
RTTIBaseClassArray CreatureLearningContext                                                                         // [0x101f08] 0x008a9000 + 0x101f08 = 0x009aaf08
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x101f14] 0x008a9000 + 0x101f14 = 0x009aaf14
RTTIClassHierarchyDescriptor CreatureLearningContext 2                                                             // [0x101f18] 0x008a9000 + 0x101f18 = 0x009aaf18
RTTICompleteObjectLocator CreatureLearningContext                                                                  // [0x101f28] 0x008a9000 + 0x101f28 = 0x009aaf28
.long 0x00000000                                                                                                   // [0x101f3c] 0x008a9000 + 0x101f3c = 0x009aaf3c
RTTIBaseClassDescriptor CreatureActionsKnownAbout 1                                                                // [0x101f40] 0x008a9000 + 0x101f40 = 0x009aaf40
RTTIBaseClassArray CreatureActionsKnownAbout                                                                       // [0x101f58] 0x008a9000 + 0x101f58 = 0x009aaf58
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x101f64] 0x008a9000 + 0x101f64 = 0x009aaf64
RTTIClassHierarchyDescriptor CreatureActionsKnownAbout 2                                                           // [0x101f68] 0x008a9000 + 0x101f68 = 0x009aaf68
RTTICompleteObjectLocator CreatureActionsKnownAbout                                                                // [0x101f78] 0x008a9000 + 0x101f78 = 0x009aaf78
.long 0x00000000                                                                                                   // [0x101f8c] 0x008a9000 + 0x101f8c = 0x009aaf8c
RTTIBaseClassDescriptor CreatureActionKnownAbout 1                                                                 // [0x101f90] 0x008a9000 + 0x101f90 = 0x009aaf90
RTTIBaseClassArray CreatureActionKnownAbout                                                                        // [0x101fa8] 0x008a9000 + 0x101fa8 = 0x009aafa8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x101fb4] 0x008a9000 + 0x101fb4 = 0x009aafb4
RTTIClassHierarchyDescriptor CreatureActionKnownAbout 2                                                            // [0x101fb8] 0x008a9000 + 0x101fb8 = 0x009aafb8
RTTICompleteObjectLocator CreatureActionKnownAbout                                                                 // [0x101fc8] 0x008a9000 + 0x101fc8 = 0x009aafc8
.long 0x00000000                                                                                                   // [0x101fdc] 0x008a9000 + 0x101fdc = 0x009aafdc
RTTIBaseClassDescriptor CreatureActionKnownAboutEntry 2                                                            // [0x101fe0] 0x008a9000 + 0x101fe0 = 0x009aafe0
RTTIBaseClassArray CreatureActionKnownAboutEntry                                                                   // [0x101ff8] 0x008a9000 + 0x101ff8 = 0x009aaff8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureActionKnownAboutEntry 3                                                       // [0x102008] 0x008a9000 + 0x102008 = 0x009ab008
RTTICompleteObjectLocator CreatureActionKnownAboutEntry                                                            // [0x102018] 0x008a9000 + 0x102018 = 0x009ab018
.long 0x00000000                                                                                                   // [0x10202c] 0x008a9000 + 0x10202c = 0x009ab02c
RTTIBaseClassDescriptor CreatureMagicActionKnownAboutEntry 3                                                       // [0x102030] 0x008a9000 + 0x102030 = 0x009ab030
RTTIBaseClassArray CreatureMagicActionKnownAboutEntry                                                              // [0x102048] 0x008a9000 + 0x102048 = 0x009ab048
.long ??_R1A@?0A@A@CreatureActionKnownAboutEntry@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10205c] 0x008a9000 + 0x10205c = 0x009ab05c
RTTIClassHierarchyDescriptor CreatureMagicActionKnownAboutEntry 4                                                  // [0x102060] 0x008a9000 + 0x102060 = 0x009ab060
RTTICompleteObjectLocator CreatureMagicActionKnownAboutEntry                                                       // [0x102070] 0x008a9000 + 0x102070 = 0x009ab070
.long 0x00000000                                                                                                   // [0x102084] 0x008a9000 + 0x102084 = 0x009ab084
RTTIBaseClassDescriptor CreatureTimeToWait 1                                                                       // [0x102088] 0x008a9000 + 0x102088 = 0x009ab088
RTTIBaseClassArray CreatureTimeToWait                                                                              // [0x1020a0] 0x008a9000 + 0x1020a0 = 0x009ab0a0
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1020ac] 0x008a9000 + 0x1020ac = 0x009ab0ac
RTTIClassHierarchyDescriptor CreatureTimeToWait 2                                                                  // [0x1020b0] 0x008a9000 + 0x1020b0 = 0x009ab0b0
RTTICompleteObjectLocator CreatureTimeToWait                                                                       // [0x1020c0] 0x008a9000 + 0x1020c0 = 0x009ab0c0
.long 0x00000000                                                                                                   // [0x1020d4] 0x008a9000 + 0x1020d4 = 0x009ab0d4
RTTIBaseClassDescriptor CreatureObjectsInspected 1                                                                 // [0x1020d8] 0x008a9000 + 0x1020d8 = 0x009ab0d8
RTTIBaseClassArray CreatureObjectsInspected                                                                        // [0x1020f0] 0x008a9000 + 0x1020f0 = 0x009ab0f0
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1020fc] 0x008a9000 + 0x1020fc = 0x009ab0fc
RTTIClassHierarchyDescriptor CreatureObjectsInspected 2                                                            // [0x102100] 0x008a9000 + 0x102100 = 0x009ab100
RTTICompleteObjectLocator CreatureObjectsInspected                                                                 // [0x102110] 0x008a9000 + 0x102110 = 0x009ab110
.long 0x00000000                                                                                                   // [0x102124] 0x008a9000 + 0x102124 = 0x009ab124
RTTIBaseClassDescriptor CreatureMimicInfo 2                                                                        // [0x102128] 0x008a9000 + 0x102128 = 0x009ab128
RTTIBaseClassArray CreatureMimicInfo                                                                               // [0x102140] 0x008a9000 + 0x102140 = 0x009ab140
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor CreatureMimicInfo 3                                                                   // [0x102150] 0x008a9000 + 0x102150 = 0x009ab150
RTTICompleteObjectLocator CreatureMimicInfo                                                                        // [0x102160] 0x008a9000 + 0x102160 = 0x009ab160
.long 0x00000000                                                                                                   // [0x102174] 0x008a9000 + 0x102174 = 0x009ab174
RTTIBaseClassDescriptor CreatureMimicState 1                                                                       // [0x102178] 0x008a9000 + 0x102178 = 0x009ab178
RTTIBaseClassArray CreatureMimicState                                                                              // [0x102190] 0x008a9000 + 0x102190 = 0x009ab190
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10219c] 0x008a9000 + 0x10219c = 0x009ab19c
RTTIClassHierarchyDescriptor CreatureMimicState 2                                                                  // [0x1021a0] 0x008a9000 + 0x1021a0 = 0x009ab1a0
RTTICompleteObjectLocator CreatureMimicState                                                                       // [0x1021b0] 0x008a9000 + 0x1021b0 = 0x009ab1b0
.long 0x00000000                                                                                                   // [0x1021c4] 0x008a9000 + 0x1021c4 = 0x009ab1c4
RTTIBaseClassDescriptor GCreaturePenInfo 5                                                                         // [0x1021c8] 0x008a9000 + 0x1021c8 = 0x009ab1c8
RTTIBaseClassArray GCreaturePenInfo                                                                                // [0x1021e0] 0x008a9000 + 0x1021e0 = 0x009ab1e0
.long ??_R1A@?0A@A@GCitadelPartInfo@@8
.long ??_R1A@?0A@A@GMultiMapFixedInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1021fc] 0x008a9000 + 0x1021fc = 0x009ab1fc
RTTIClassHierarchyDescriptor GCreaturePenInfo 6                                                                    // [0x102200] 0x008a9000 + 0x102200 = 0x009ab200
RTTICompleteObjectLocator GCreaturePenInfo                                                                         // [0x102210] 0x008a9000 + 0x102210 = 0x009ab210
.long 0x00000000                                                                                                   // [0x102224] 0x008a9000 + 0x102224 = 0x009ab224
RTTIBaseClassDescriptor CreaturePen 7                                                                              // [0x102228] 0x008a9000 + 0x102228 = 0x009ab228
RTTIBaseClassArray CreaturePen                                                                                     // [0x102240] 0x008a9000 + 0x102240 = 0x009ab240
.long ??_R1A@?0A@A@CitadelPart@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x102264] 0x008a9000 + 0x102264 = 0x009ab264
RTTIClassHierarchyDescriptor CreaturePen 8                                                                         // [0x102268] 0x008a9000 + 0x102268 = 0x009ab268
RTTICompleteObjectLocator CreaturePen                                                                              // [0x102278] 0x008a9000 + 0x102278 = 0x009ab278
.long 0x00000000                                                                                                   // [0x10228c] 0x008a9000 + 0x10228c = 0x009ab28c
RTTIBaseClassDescriptor PlannedCreaturePen 5                                                                       // [0x102290] 0x008a9000 + 0x102290 = 0x009ab290
RTTIBaseClassArray PlannedCreaturePen                                                                              // [0x1022a8] 0x008a9000 + 0x1022a8 = 0x009ab2a8
.long ??_R1A@?0A@A@PlannedCitadelPart@@8
.long ??_R1A@?0A@A@PlannedMultiMapFixed@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1022c4] 0x008a9000 + 0x1022c4 = 0x009ab2c4
RTTIClassHierarchyDescriptor PlannedCreaturePen 6                                                                  // [0x1022c8] 0x008a9000 + 0x1022c8 = 0x009ab2c8
RTTICompleteObjectLocator PlannedCreaturePen                                                                       // [0x1022d8] 0x008a9000 + 0x1022d8 = 0x009ab2d8
.long 0x00000000                                                                                                   // [0x1022ec] 0x008a9000 + 0x1022ec = 0x009ab2ec
RTTIBaseClassDescriptor CreaturePhysical 1                                                                         // [0x1022f0] 0x008a9000 + 0x1022f0 = 0x009ab2f0
RTTIBaseClassArray CreaturePhysical                                                                                // [0x102308] 0x008a9000 + 0x102308 = 0x009ab308
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x102314] 0x008a9000 + 0x102314 = 0x009ab314
RTTIClassHierarchyDescriptor CreaturePhysical 2                                                                    // [0x102318] 0x008a9000 + 0x102318 = 0x009ab318
RTTICompleteObjectLocator CreaturePhysical                                                                         // [0x102328] 0x008a9000 + 0x102328 = 0x009ab328
.long 0x00000000                                                                                                   // [0x10233c] 0x008a9000 + 0x10233c = 0x009ab33c
RTTIBaseClassDescriptor CreatureDamageMap 1                                                                        // [0x102340] 0x008a9000 + 0x102340 = 0x009ab340
RTTIBaseClassArray CreatureDamageMap                                                                               // [0x102358] 0x008a9000 + 0x102358 = 0x009ab358
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x102364] 0x008a9000 + 0x102364 = 0x009ab364
RTTIClassHierarchyDescriptor CreatureDamageMap 2                                                                   // [0x102368] 0x008a9000 + 0x102368 = 0x009ab368
RTTICompleteObjectLocator CreatureDamageMap                                                                        // [0x102378] 0x008a9000 + 0x102378 = 0x009ab378
.long 0x00000000                                                                                                   // [0x10238c] 0x008a9000 + 0x10238c = 0x009ab38c
RTTIBaseClassDescriptor CreaturePreviousActions 1                                                                  // [0x102390] 0x008a9000 + 0x102390 = 0x009ab390
RTTIBaseClassArray CreaturePreviousActions                                                                         // [0x1023a8] 0x008a9000 + 0x1023a8 = 0x009ab3a8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1023b4] 0x008a9000 + 0x1023b4 = 0x009ab3b4
RTTIClassHierarchyDescriptor CreaturePreviousActions 2                                                             // [0x1023b8] 0x008a9000 + 0x1023b8 = 0x009ab3b8
RTTICompleteObjectLocator CreaturePreviousActions                                                                  // [0x1023c8] 0x008a9000 + 0x1023c8 = 0x009ab3c8
.long 0x00000000                                                                                                   // [0x1023dc] 0x008a9000 + 0x1023dc = 0x009ab3dc
RTTIBaseClassDescriptor CreatureSelect 1                                                                           // [0x1023e0] 0x008a9000 + 0x1023e0 = 0x009ab3e0
RTTIBaseClassArray CreatureSelect                                                                                  // [0x1023f8] 0x008a9000 + 0x1023f8 = 0x009ab3f8
.long ??_R1A@?0A@A@Prss@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x102404] 0x008a9000 + 0x102404 = 0x009ab404
RTTIClassHierarchyDescriptor CreatureSelect 2                                                                      // [0x102408] 0x008a9000 + 0x102408 = 0x009ab408
RTTICompleteObjectLocator CreatureSelect                                                                           // [0x102418] 0x008a9000 + 0x102418 = 0x009ab418
.long 0x00000000                                                                                                   // [0x10242c] 0x008a9000 + 0x10242c = 0x009ab42c
RTTIBaseClassDescriptor SubArgumentObjectIntegerPosFloatAndSpell 1                                                 // [0x102430] 0x008a9000 + 0x102430 = 0x009ab430
RTTIBaseClassArray SubArgumentObjectIntegerPosFloatAndSpell                                                        // [0x102448] 0x008a9000 + 0x102448 = 0x009ab448
.long ??_R1A@?0A@A@SubArgument@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x102454] 0x008a9000 + 0x102454 = 0x009ab454
RTTIClassHierarchyDescriptor SubArgumentObjectIntegerPosFloatAndSpell 2                                            // [0x102458] 0x008a9000 + 0x102458 = 0x009ab458
RTTICompleteObjectLocator SubArgumentObjectIntegerPosFloatAndSpell                                                 // [0x102468] 0x008a9000 + 0x102468 = 0x009ab468
.long 0x00000000                                                                                                   // [0x10247c] 0x008a9000 + 0x10247c = 0x009ab47c
RTTIBaseClassDescriptor Creche 7                                                                                   // [0x102480] 0x008a9000 + 0x102480 = 0x009ab480
RTTIBaseClassArray Creche                                                                                          // [0x102498] 0x008a9000 + 0x102498 = 0x009ab498
.long ??_R1A@?0A@A@Abode@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1024bc] 0x008a9000 + 0x1024bc = 0x009ab4bc
RTTIClassHierarchyDescriptor Creche 8                                                                              // [0x1024c0] 0x008a9000 + 0x1024c0 = 0x009ab4c0
RTTICompleteObjectLocator Creche                                                                                   // [0x1024d0] 0x008a9000 + 0x1024d0 = 0x009ab4d0
.long 0x00000000                                                                                                   // [0x1024e4] 0x008a9000 + 0x1024e4 = 0x009ab4e4
RTTIBaseClassDescriptor Creed 6                                                                                    // [0x1024e8] 0x008a9000 + 0x1024e8 = 0x009ab4e8
RTTIBaseClassArray Creed                                                                                           // [0x102500] 0x008a9000 + 0x102500 = 0x009ab500
.long ??_R1A@?0A@A@MobileObject@@8
.long ??_R1A@?0A@A@Mobile@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Creed 7                                                                               // [0x102520] 0x008a9000 + 0x102520 = 0x009ab520
RTTICompleteObjectLocator Creed                                                                                    // [0x102530] 0x008a9000 + 0x102530 = 0x009ab530
.long 0x00000000                                                                                                   // [0x102544] 0x008a9000 + 0x102544 = 0x009ab544
RTTIBaseClassDescriptor GDanceInfo 2                                                                               // [0x102548] 0x008a9000 + 0x102548 = 0x009ab548
RTTIBaseClassArray GDanceInfo                                                                                      // [0x102560] 0x008a9000 + 0x102560 = 0x009ab560
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GDanceInfo 3                                                                          // [0x102570] 0x008a9000 + 0x102570 = 0x009ab570
RTTICompleteObjectLocator GDanceInfo                                                                               // [0x102580] 0x008a9000 + 0x102580 = 0x009ab580
.long 0x00000000                                                                                                   // [0x102594] 0x008a9000 + 0x102594 = 0x009ab594
RTTIBaseClassDescriptor GroupBehaviour 3                                                                           // [0x102598] 0x008a9000 + 0x102598 = 0x009ab598
RTTIBaseClassDescriptor Dance 4                                                                                    // [0x1025b0] 0x008a9000 + 0x1025b0 = 0x009ab5b0
RTTIBaseClassArray Dance                                                                                           // [0x1025c8] 0x008a9000 + 0x1025c8 = 0x009ab5c8
.long ??_R1A@?0A@A@GroupBehaviour@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Dance 5                                                                               // [0x1025e0] 0x008a9000 + 0x1025e0 = 0x009ab5e0
RTTICompleteObjectLocator Dance                                                                                    // [0x1025f0] 0x008a9000 + 0x1025f0 = 0x009ab5f0
.long 0x00000000                                                                                                   // [0x102604] 0x008a9000 + 0x102604 = 0x009ab604
RTTIBaseClassDescriptor GFootpathLink 2                                                                            // [0x102608] 0x008a9000 + 0x102608 = 0x009ab608
RTTIBaseClassArray GFootpathLink                                                                                   // [0x102620] 0x008a9000 + 0x102620 = 0x009ab620
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GFootpathLink 3                                                                       // [0x102630] 0x008a9000 + 0x102630 = 0x009ab630
RTTICompleteObjectLocator GFootpathLink                                                                            // [0x102640] 0x008a9000 + 0x102640 = 0x009ab640
.long 0x00000000                                                                                                   // [0x102654] 0x008a9000 + 0x102654 = 0x009ab654
RTTIBaseClassDescriptor DanceEditState 4                                                                           // [0x102658] 0x008a9000 + 0x102658 = 0x009ab658
RTTIBaseClassArray DanceEditState                                                                                  // [0x102670] 0x008a9000 + 0x102670 = 0x009ab670
.long ??_R1A@?0A@A@GroupBehaviour@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor DanceEditState 5                                                                      // [0x102688] 0x008a9000 + 0x102688 = 0x009ab688
RTTICompleteObjectLocator DanceEditState                                                                           // [0x102698] 0x008a9000 + 0x102698 = 0x009ab698
.long 0x00000000                                                                                                   // [0x1026ac] 0x008a9000 + 0x1026ac = 0x009ab6ac
RTTIBaseClassDescriptor DanceGroup 2                                                                               // [0x1026b0] 0x008a9000 + 0x1026b0 = 0x009ab6b0
RTTIBaseClassArray DanceGroup                                                                                      // [0x1026c8] 0x008a9000 + 0x1026c8 = 0x009ab6c8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor DanceGroup 3                                                                          // [0x1026d8] 0x008a9000 + 0x1026d8 = 0x009ab6d8
RTTICompleteObjectLocator DanceGroup                                                                               // [0x1026e8] 0x008a9000 + 0x1026e8 = 0x009ab6e8
.long 0x00000000                                                                                                   // [0x1026fc] 0x008a9000 + 0x1026fc = 0x009ab6fc
RTTIBaseClassDescriptor DanceKeyAction 2                                                                           // [0x102700] 0x008a9000 + 0x102700 = 0x009ab700
RTTIBaseClassArray DanceKeyAction                                                                                  // [0x102718] 0x008a9000 + 0x102718 = 0x009ab718
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor DanceKeyAction 3                                                                      // [0x102728] 0x008a9000 + 0x102728 = 0x009ab728
RTTICompleteObjectLocator DanceKeyAction                                                                           // [0x102738] 0x008a9000 + 0x102738 = 0x009ab738
.long 0x00000000                                                                                                   // [0x10274c] 0x008a9000 + 0x10274c = 0x009ab74c
RTTIBaseClassDescriptor DanceKeyFrame 2                                                                            // [0x102750] 0x008a9000 + 0x102750 = 0x009ab750
RTTIBaseClassArray DanceKeyFrame                                                                                   // [0x102768] 0x008a9000 + 0x102768 = 0x009ab768
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor DanceKeyFrame 3                                                                       // [0x102778] 0x008a9000 + 0x102778 = 0x009ab778
RTTICompleteObjectLocator DanceKeyFrame                                                                            // [0x102788] 0x008a9000 + 0x102788 = 0x009ab788
.long 0x00000000                                                                                                   // [0x10279c] 0x008a9000 + 0x10279c = 0x009ab79c
RTTIBaseClassDescriptor GData 1                                                                                    // [0x1027a0] 0x008a9000 + 0x1027a0 = 0x009ab7a0
RTTIBaseClassArray GData                                                                                           // [0x1027b8] 0x008a9000 + 0x1027b8 = 0x009ab7b8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1027c4] 0x008a9000 + 0x1027c4 = 0x009ab7c4
RTTIClassHierarchyDescriptor GData 2                                                                               // [0x1027c8] 0x008a9000 + 0x1027c8 = 0x009ab7c8
RTTICompleteObjectLocator GData                                                                                    // [0x1027d8] 0x008a9000 + 0x1027d8 = 0x009ab7d8
.long 0x00000000                                                                                                   // [0x1027ec] 0x008a9000 + 0x1027ec = 0x009ab7ec
RTTIBaseClassDescriptor DeadTree 8                                                                                 // [0x1027f0] 0x008a9000 + 0x1027f0 = 0x009ab7f0
RTTIBaseClassArray DeadTree                                                                                        // [0x102808] 0x008a9000 + 0x102808 = 0x009ab808
.long ??_R1A@?0A@A@Rock@@8
.long ??_R1A@?0A@A@MobileStatic@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor DeadTree 9                                                                            // [0x102830] 0x008a9000 + 0x102830 = 0x009ab830
RTTICompleteObjectLocator DeadTree                                                                                 // [0x102840] 0x008a9000 + 0x102840 = 0x009ab840
.long 0x00000000                                                                                                   // [0x102854] 0x008a9000 + 0x102854 = 0x009ab854
RTTIBaseClassDescriptor FelledTree 9                                                                               // [0x102858] 0x008a9000 + 0x102858 = 0x009ab858
RTTIBaseClassArray FelledTree                                                                                      // [0x102870] 0x008a9000 + 0x102870 = 0x009ab870
.long ??_R1A@?0A@A@DeadTree@@8
.long ??_R1A@?0A@A@Rock@@8
.long ??_R1A@?0A@A@MobileStatic@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10289c] 0x008a9000 + 0x10289c = 0x009ab89c
RTTIClassHierarchyDescriptor FelledTree 10                                                                         // [0x1028a0] 0x008a9000 + 0x1028a0 = 0x009ab8a0
RTTICompleteObjectLocator FelledTree                                                                               // [0x1028b0] 0x008a9000 + 0x1028b0 = 0x009ab8b0
.long 0x00000000                                                                                                   // [0x1028c4] 0x008a9000 + 0x1028c4 = 0x009ab8c4
RTTIBaseClassDescriptor DialogBoxBase 0                                                                            // [0x1028c8] 0x008a9000 + 0x1028c8 = 0x009ab8c8
RTTIBaseClassDescriptor DialogBoxKeyBinding 1                                                                      // [0x1028e0] 0x008a9000 + 0x1028e0 = 0x009ab8e0
RTTIBaseClassArray DialogBoxKeyBinding                                                                             // [0x1028f8] 0x008a9000 + 0x1028f8 = 0x009ab8f8
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x102904] 0x008a9000 + 0x102904 = 0x009ab904
RTTIClassHierarchyDescriptor DialogBoxKeyBinding 2                                                                 // [0x102908] 0x008a9000 + 0x102908 = 0x009ab908
RTTICompleteObjectLocator DialogBoxKeyBinding                                                                      // [0x102918] 0x008a9000 + 0x102918 = 0x009ab918
RTTIBaseClassArray DialogBoxBase                                                                                   // [0x10292c] 0x008a9000 + 0x10292c = 0x009ab92c
.long 0x00000000

.long 0x00000000                                                                                                   // [0x102934] 0x008a9000 + 0x102934 = 0x009ab934
RTTIClassHierarchyDescriptor DialogBoxBase 1                                                                       // [0x102938] 0x008a9000 + 0x102938 = 0x009ab938
RTTICompleteObjectLocator DialogBoxBase                                                                            // [0x102948] 0x008a9000 + 0x102948 = 0x009ab948
.long 0x00000000                                                                                                   // [0x10295c] 0x008a9000 + 0x10295c = 0x009ab95c
RTTIBaseClassDescriptorStruct SetupBox 0                                                                           // [0x102960] 0x008a9000 + 0x102960 = 0x009ab960
RTTIBaseClassArray SetupBox                                                                                        // [0x102978] 0x008a9000 + 0x102978 = 0x009ab978
.long 0x00000000

RTTIClassHierarchyDescriptor SetupBox 1                                                                            // [0x102980] 0x008a9000 + 0x102980 = 0x009ab980
RTTICompleteObjectLocatorStruct SetupBox                                                                           // [0x102990] 0x008a9000 + 0x102990 = 0x009ab990
.long 0x00000000                                                                                                   // [0x1029a4] 0x008a9000 + 0x1029a4 = 0x009ab9a4
RTTIBaseClassDescriptor DialogBoxOptions 1                                                                         // [0x1029a8] 0x008a9000 + 0x1029a8 = 0x009ab9a8
RTTIBaseClassArray DialogBoxOptions                                                                                // [0x1029c0] 0x008a9000 + 0x1029c0 = 0x009ab9c0
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1029cc] 0x008a9000 + 0x1029cc = 0x009ab9cc
RTTIClassHierarchyDescriptor DialogBoxOptions 2                                                                    // [0x1029d0] 0x008a9000 + 0x1029d0 = 0x009ab9d0
RTTICompleteObjectLocator DialogBoxOptions                                                                         // [0x1029e0] 0x008a9000 + 0x1029e0 = 0x009ab9e0
.long 0x00000000                                                                                                   // [0x1029f4] 0x008a9000 + 0x1029f4 = 0x009ab9f4
RTTIBaseClassDescriptor DialogBoxImmersion 1                                                                       // [0x1029f8] 0x008a9000 + 0x1029f8 = 0x009ab9f8
RTTIBaseClassArray DialogBoxImmersion                                                                              // [0x102a10] 0x008a9000 + 0x102a10 = 0x009aba10
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x102a1c] 0x008a9000 + 0x102a1c = 0x009aba1c
RTTIClassHierarchyDescriptor DialogBoxImmersion 2                                                                  // [0x102a20] 0x008a9000 + 0x102a20 = 0x009aba20
RTTICompleteObjectLocator DialogBoxImmersion                                                                       // [0x102a30] 0x008a9000 + 0x102a30 = 0x009aba30
.long 0x00000000                                                                                                   // [0x102a44] 0x008a9000 + 0x102a44 = 0x009aba44
RTTIBaseClassDescriptor MiniDialogBoxOptions 1                                                                     // [0x102a48] 0x008a9000 + 0x102a48 = 0x009aba48
RTTIBaseClassArray MiniDialogBoxOptions                                                                            // [0x102a60] 0x008a9000 + 0x102a60 = 0x009aba60
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x102a6c] 0x008a9000 + 0x102a6c = 0x009aba6c
RTTIClassHierarchyDescriptor MiniDialogBoxOptions 2                                                                // [0x102a70] 0x008a9000 + 0x102a70 = 0x009aba70
RTTICompleteObjectLocator MiniDialogBoxOptions                                                                     // [0x102a80] 0x008a9000 + 0x102a80 = 0x009aba80
.long 0x00000000                                                                                                   // [0x102a94] 0x008a9000 + 0x102a94 = 0x009aba94
RTTIBaseClassDescriptor DialogBoxSaveMessage 1                                                                     // [0x102a98] 0x008a9000 + 0x102a98 = 0x009aba98
RTTIBaseClassArray DialogBoxSaveMessage                                                                            // [0x102ab0] 0x008a9000 + 0x102ab0 = 0x009abab0
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x102abc] 0x008a9000 + 0x102abc = 0x009ababc
RTTIClassHierarchyDescriptor DialogBoxSaveMessage 2                                                                // [0x102ac0] 0x008a9000 + 0x102ac0 = 0x009abac0
RTTICompleteObjectLocator DialogBoxSaveMessage                                                                     // [0x102ad0] 0x008a9000 + 0x102ad0 = 0x009abad0
.long 0x00000000                                                                                                   // [0x102ae4] 0x008a9000 + 0x102ae4 = 0x009abae4
RTTIBaseClassDescriptor AnimEdit 1                                                                                 // [0x102ae8] 0x008a9000 + 0x102ae8 = 0x009abae8
RTTIBaseClassArray AnimEdit                                                                                        // [0x102b00] 0x008a9000 + 0x102b00 = 0x009abb00
.long ??_R1A@?0A@A@Prss@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x102b0c] 0x008a9000 + 0x102b0c = 0x009abb0c
RTTIClassHierarchyDescriptor AnimEdit 2                                                                            // [0x102b10] 0x008a9000 + 0x102b10 = 0x009abb10
RTTICompleteObjectLocator AnimEdit                                                                                 // [0x102b20] 0x008a9000 + 0x102b20 = 0x009abb20
RTTIBaseClassArray Prss                                                                                            // [0x102b34] 0x008a9000 + 0x102b34 = 0x009abb34
.long 0x00000000
.long 0x00000000

RTTIClassHierarchyDescriptor Prss 1                                                                                // [0x102b40] 0x008a9000 + 0x102b40 = 0x009abb40
RTTICompleteObjectLocator Prss                                                                                     // [0x102b50] 0x008a9000 + 0x102b50 = 0x009abb50
.long 0x00000000                                                                                                   // [0x102b64] 0x008a9000 + 0x102b64 = 0x009abb64
RTTIBaseClassDescriptor EditorHug 1                                                                                // [0x102b68] 0x008a9000 + 0x102b68 = 0x009abb68
RTTIBaseClassArray EditorHug                                                                                       // [0x102b80] 0x008a9000 + 0x102b80 = 0x009abb80
.long ??_R1A@?0A@A@Prss@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x102b8c] 0x008a9000 + 0x102b8c = 0x009abb8c
RTTIClassHierarchyDescriptor EditorHug 2                                                                           // [0x102b90] 0x008a9000 + 0x102b90 = 0x009abb90
RTTICompleteObjectLocator EditorHug                                                                                // [0x102ba0] 0x008a9000 + 0x102ba0 = 0x009abba0
.long 0x00000000                                                                                                   // [0x102bb4] 0x008a9000 + 0x102bb4 = 0x009abbb4
RTTIBaseClassArray EditorIconShow                                                                                  // [0x102bb8] 0x008a9000 + 0x102bb8 = 0x009abbb8
.long ??_R1A@?0A@A@EditorIconBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x102bc4] 0x008a9000 + 0x102bc4 = 0x009abbc4
RTTIClassHierarchyDescriptor EditorIconShow 2                                                                      // [0x102bc8] 0x008a9000 + 0x102bc8 = 0x009abbc8
RTTICompleteObjectLocator EditorIconShow                                                                           // [0x102bd8] 0x008a9000 + 0x102bd8 = 0x009abbd8
.long 0x00000000                                                                                                   // [0x102bec] 0x008a9000 + 0x102bec = 0x009abbec
RTTIBaseClassDescriptor EditorIconBool 2                                                                           // [0x102bf0] 0x008a9000 + 0x102bf0 = 0x009abbf0
RTTIBaseClassArray EditorIconBool                                                                                  // [0x102c08] 0x008a9000 + 0x102c08 = 0x009abc08
.long ??_R1A@?0A@A@EditorIconShow@@8
.long ??_R1A@?0A@A@EditorIconBase@@8
.long 0x00000000

RTTIClassHierarchyDescriptor EditorIconBool 3                                                                      // [0x102c18] 0x008a9000 + 0x102c18 = 0x009abc18
RTTICompleteObjectLocator EditorIconBool                                                                           // [0x102c28] 0x008a9000 + 0x102c28 = 0x009abc28
.long 0x00000000                                                                                                   // [0x102c3c] 0x008a9000 + 0x102c3c = 0x009abc3c
RTTIBaseClassDescriptor EditorIconTextBox 1                                                                        // [0x102c40] 0x008a9000 + 0x102c40 = 0x009abc40
RTTIBaseClassArray EditorIconTextBox                                                                               // [0x102c58] 0x008a9000 + 0x102c58 = 0x009abc58
.long ??_R1A@?0A@A@EditorIconBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x102c64] 0x008a9000 + 0x102c64 = 0x009abc64
RTTIClassHierarchyDescriptor EditorIconTextBox 2                                                                   // [0x102c68] 0x008a9000 + 0x102c68 = 0x009abc68
RTTICompleteObjectLocator EditorIconTextBox                                                                        // [0x102c78] 0x008a9000 + 0x102c78 = 0x009abc78
.long 0x00000000                                                                                                   // [0x102c8c] 0x008a9000 + 0x102c8c = 0x009abc8c
RTTIBaseClassDescriptor EditorIconRequester 1                                                                      // [0x102c90] 0x008a9000 + 0x102c90 = 0x009abc90
RTTIBaseClassArray EditorIconRequester                                                                             // [0x102ca8] 0x008a9000 + 0x102ca8 = 0x009abca8
.long ??_R1A@?0A@A@EditorIconBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x102cb4] 0x008a9000 + 0x102cb4 = 0x009abcb4
RTTIClassHierarchyDescriptor EditorIconRequester 2                                                                 // [0x102cb8] 0x008a9000 + 0x102cb8 = 0x009abcb8
RTTICompleteObjectLocator EditorIconRequester                                                                      // [0x102cc8] 0x008a9000 + 0x102cc8 = 0x009abcc8
.long 0x00000000                                                                                                   // [0x102cdc] 0x008a9000 + 0x102cdc = 0x009abcdc
RTTIBaseClassDescriptor EditorIconEditBox 2                                                                        // [0x102ce0] 0x008a9000 + 0x102ce0 = 0x009abce0
RTTIBaseClassArray EditorIconEditBox                                                                               // [0x102cf8] 0x008a9000 + 0x102cf8 = 0x009abcf8
.long ??_R1A@?0A@A@EditorIconShow@@8
.long ??_R1A@?0A@A@EditorIconBase@@8
.long 0x00000000

RTTIClassHierarchyDescriptor EditorIconEditBox 3                                                                   // [0x102d08] 0x008a9000 + 0x102d08 = 0x009abd08
RTTICompleteObjectLocator EditorIconEditBox                                                                        // [0x102d18] 0x008a9000 + 0x102d18 = 0x009abd18
RTTIBaseClassArray EditorIconBase                                                                                  // [0x102d2c] 0x008a9000 + 0x102d2c = 0x009abd2c
.long 0x00000000

.long 0x00000000                                                                                                   // [0x102d34] 0x008a9000 + 0x102d34 = 0x009abd34
RTTIClassHierarchyDescriptor EditorIconBase 1                                                                      // [0x102d38] 0x008a9000 + 0x102d38 = 0x009abd38
RTTICompleteObjectLocator EditorIconBase                                                                           // [0x102d48] 0x008a9000 + 0x102d48 = 0x009abd48
.long 0x00000000                                                                                                   // [0x102d5c] 0x008a9000 + 0x102d5c = 0x009abd5c
RTTIBaseClassDescriptor EditorIconGraph 2                                                                          // [0x102d60] 0x008a9000 + 0x102d60 = 0x009abd60
RTTIBaseClassArray EditorIconGraph                                                                                 // [0x102d78] 0x008a9000 + 0x102d78 = 0x009abd78
.long ??_R1A@?0A@A@EditorIconShow@@8
.long ??_R1A@?0A@A@EditorIconBase@@8
.long 0x00000000

RTTIClassHierarchyDescriptor EditorIconGraph 3                                                                     // [0x102d88] 0x008a9000 + 0x102d88 = 0x009abd88
RTTICompleteObjectLocator EditorIconGraph                                                                          // [0x102d98] 0x008a9000 + 0x102d98 = 0x009abd98
.long 0x00000000                                                                                                   // [0x102dac] 0x008a9000 + 0x102dac = 0x009abdac
RTTIBaseClassDescriptor EditorIconPDM 3                                                                            // [0x102db0] 0x008a9000 + 0x102db0 = 0x009abdb0
RTTIBaseClassArray EditorIconPDM                                                                                   // [0x102dc8] 0x008a9000 + 0x102dc8 = 0x009abdc8
.long ??_R1A@?0A@A@EditorIconBool@@8
.long ??_R1A@?0A@A@EditorIconShow@@8
.long ??_R1A@?0A@A@EditorIconBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x102ddc] 0x008a9000 + 0x102ddc = 0x009abddc
RTTIClassHierarchyDescriptor EditorIconPDM 4                                                                       // [0x102de0] 0x008a9000 + 0x102de0 = 0x009abde0
RTTICompleteObjectLocator EditorIconPDM                                                                            // [0x102df0] 0x008a9000 + 0x102df0 = 0x009abdf0
.long 0x00000000                                                                                                   // [0x102e04] 0x008a9000 + 0x102e04 = 0x009abe04
RTTIBaseClassDescriptor ?$EditorIconNumber@KK 2                                                                    // [0x102e08] 0x008a9000 + 0x102e08 = 0x009abe08
RTTIBaseClassDescriptor ?$EditorIconSlider@K 3                                                                     // [0x102e20] 0x008a9000 + 0x102e20 = 0x009abe20
RTTIBaseClassArray ?$EditorIconSlider@K                                                                            // [0x102e38] 0x008a9000 + 0x102e38 = 0x009abe38
.long ??_R1A@?0A@A@?$EditorIconNumber@KK@@8
.long ??_R1A@?0A@A@EditorIconShow@@8
.long ??_R1A@?0A@A@EditorIconBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x102e4c] 0x008a9000 + 0x102e4c = 0x009abe4c
RTTIClassHierarchyDescriptor ?$EditorIconSlider@K 4                                                                // [0x102e50] 0x008a9000 + 0x102e50 = 0x009abe50
RTTICompleteObjectLocator ?$EditorIconSlider@K                                                                     // [0x102e60] 0x008a9000 + 0x102e60 = 0x009abe60
.long 0x00000000                                                                                                   // [0x102e74] 0x008a9000 + 0x102e74 = 0x009abe74
RTTIBaseClassDescriptor PDMStrip 1                                                                                 // [0x102e78] 0x008a9000 + 0x102e78 = 0x009abe78
RTTIBaseClassArray PDMStrip                                                                                        // [0x102e90] 0x008a9000 + 0x102e90 = 0x009abe90
.long ??_R1A@?0A@A@EditorIconBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x102e9c] 0x008a9000 + 0x102e9c = 0x009abe9c
RTTIClassHierarchyDescriptor PDMStrip 2                                                                            // [0x102ea0] 0x008a9000 + 0x102ea0 = 0x009abea0
RTTICompleteObjectLocator PDMStrip                                                                                 // [0x102eb0] 0x008a9000 + 0x102eb0 = 0x009abeb0
.long 0x00000000                                                                                                   // [0x102ec4] 0x008a9000 + 0x102ec4 = 0x009abec4
RTTIBaseClassDescriptor GEffectInfo 2                                                                              // [0x102ec8] 0x008a9000 + 0x102ec8 = 0x009abec8
RTTIBaseClassArray GEffectInfo                                                                                     // [0x102ee0] 0x008a9000 + 0x102ee0 = 0x009abee0
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GEffectInfo 3                                                                         // [0x102ef0] 0x008a9000 + 0x102ef0 = 0x009abef0
RTTICompleteObjectLocator GEffectInfo                                                                              // [0x102f00] 0x008a9000 + 0x102f00 = 0x009abf00
.long 0x00000000                                                                                                   // [0x102f14] 0x008a9000 + 0x102f14 = 0x009abf14
RTTIBaseClassDescriptor GMagicEffectInfo 3                                                                         // [0x102f18] 0x008a9000 + 0x102f18 = 0x009abf18
RTTIBaseClassArray GMagicEffectInfo                                                                                // [0x102f30] 0x008a9000 + 0x102f30 = 0x009abf30
.long ??_R1A@?0A@A@GEffectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x102f44] 0x008a9000 + 0x102f44 = 0x009abf44
RTTIClassHierarchyDescriptor GMagicEffectInfo 4                                                                    // [0x102f48] 0x008a9000 + 0x102f48 = 0x009abf48
RTTICompleteObjectLocator GMagicEffectInfo                                                                         // [0x102f58] 0x008a9000 + 0x102f58 = 0x009abf58
.long 0x00000000                                                                                                   // [0x102f6c] 0x008a9000 + 0x102f6c = 0x009abf6c
RTTIBaseClassDescriptor EffectValues 1                                                                             // [0x102f70] 0x008a9000 + 0x102f70 = 0x009abf70
RTTIBaseClassArray EffectValues                                                                                    // [0x102f88] 0x008a9000 + 0x102f88 = 0x009abf88
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x102f94] 0x008a9000 + 0x102f94 = 0x009abf94
RTTIClassHierarchyDescriptor EffectValues 2                                                                        // [0x102f98] 0x008a9000 + 0x102f98 = 0x009abf98
RTTICompleteObjectLocator EffectValues                                                                             // [0x102fa8] 0x008a9000 + 0x102fa8 = 0x009abfa8
.long 0x00000000                                                                                                   // [0x102fbc] 0x008a9000 + 0x102fbc = 0x009abfbc
RTTIBaseClassDescriptor CreatureFalling 3                                                                          // [0x102fc0] 0x008a9000 + 0x102fc0 = 0x009abfc0
RTTIBaseClassArray CreatureFalling                                                                                 // [0x102fd8] 0x008a9000 + 0x102fd8 = 0x009abfd8
.long ??_R1A@?0A@A@LH3DCreature@@8
.long ??_R1A@?0A@A@Morphable@@8
.long 0x009a83d8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x102fec] 0x008a9000 + 0x102fec = 0x009abfec
RTTIClassHierarchyDescriptor CreatureFalling 4                                                                     // [0x102ff0] 0x008a9000 + 0x102ff0 = 0x009abff0
RTTICompleteObjectLocator CreatureFalling                                                                          // [0x103000] 0x008a9000 + 0x103000 = 0x009ac000
.long 0x00000000                                                                                                   // [0x103014] 0x008a9000 + 0x103014 = 0x009ac014
RTTIBaseClassArray GFeatureInfo                                                                                    // [0x103018] 0x008a9000 + 0x103018 = 0x009ac018
.long ??_R1A@?0A@A@GMultiMapFixedInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GFeatureInfo 5                                                                        // [0x103030] 0x008a9000 + 0x103030 = 0x009ac030
RTTICompleteObjectLocator GFeatureInfo                                                                             // [0x103040] 0x008a9000 + 0x103040 = 0x009ac040
.long 0x00000000                                                                                                   // [0x103054] 0x008a9000 + 0x103054 = 0x009ac054
RTTIBaseClassDescriptor PlannedFeature 4                                                                           // [0x103058] 0x008a9000 + 0x103058 = 0x009ac058
RTTIBaseClassArray PlannedFeature                                                                                  // [0x103070] 0x008a9000 + 0x103070 = 0x009ac070
.long ??_R1A@?0A@A@PlannedMultiMapFixed@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor PlannedFeature 5                                                                      // [0x103088] 0x008a9000 + 0x103088 = 0x009ac088
RTTICompleteObjectLocator PlannedFeature                                                                           // [0x103098] 0x008a9000 + 0x103098 = 0x009ac098
.long 0x00000000                                                                                                   // [0x1030ac] 0x008a9000 + 0x1030ac = 0x009ac0ac
RTTIBaseClassDescriptor GFlowersInfo 5                                                                             // [0x1030b0] 0x008a9000 + 0x1030b0 = 0x009ac0b0
RTTIBaseClassArray GFlowersInfo                                                                                    // [0x1030c8] 0x008a9000 + 0x1030c8 = 0x009ac0c8
.long ??_R1A@?0A@A@GFeatureInfo@@8
.long ??_R1A@?0A@A@GMultiMapFixedInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1030e4] 0x008a9000 + 0x1030e4 = 0x009ac0e4
RTTIClassHierarchyDescriptor GFlowersInfo 6                                                                        // [0x1030e8] 0x008a9000 + 0x1030e8 = 0x009ac0e8
RTTICompleteObjectLocator GFlowersInfo                                                                             // [0x1030f8] 0x008a9000 + 0x1030f8 = 0x009ac0f8
.long 0x00000000                                                                                                   // [0x10310c] 0x008a9000 + 0x10310c = 0x009ac10c
RTTIBaseClassDescriptor Flowers 7                                                                                  // [0x103110] 0x008a9000 + 0x103110 = 0x009ac110
RTTIBaseClassArray Flowers                                                                                         // [0x103128] 0x008a9000 + 0x103128 = 0x009ac128
.long ??_R1A@?0A@A@Feature@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10314c] 0x008a9000 + 0x10314c = 0x009ac14c
RTTIClassHierarchyDescriptor Flowers 8                                                                             // [0x103150] 0x008a9000 + 0x103150 = 0x009ac150
RTTICompleteObjectLocator Flowers                                                                                  // [0x103160] 0x008a9000 + 0x103160 = 0x009ac160
.long 0x00000000                                                                                                   // [0x103174] 0x008a9000 + 0x103174 = 0x009ac174
RTTIBaseClassDescriptor GFieldInfo 4                                                                               // [0x103178] 0x008a9000 + 0x103178 = 0x009ac178
RTTIBaseClassArray GFieldInfo                                                                                      // [0x103190] 0x008a9000 + 0x103190 = 0x009ac190
.long ??_R1A@?0A@A@GMultiMapFixedInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GFieldInfo 5                                                                          // [0x1031a8] 0x008a9000 + 0x1031a8 = 0x009ac1a8
RTTICompleteObjectLocator GFieldInfo                                                                               // [0x1031b8] 0x008a9000 + 0x1031b8 = 0x009ac1b8
.long 0x00000000                                                                                                   // [0x1031cc] 0x008a9000 + 0x1031cc = 0x009ac1cc
RTTIBaseClassDescriptor GFieldTypeInfo 4                                                                           // [0x1031d0] 0x008a9000 + 0x1031d0 = 0x009ac1d0
RTTIBaseClassArray GFieldTypeInfo                                                                                  // [0x1031e8] 0x008a9000 + 0x1031e8 = 0x009ac1e8
.long ??_R1A@?0A@A@GMultiMapFixedInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GFieldTypeInfo 5                                                                      // [0x103200] 0x008a9000 + 0x103200 = 0x009ac200
RTTICompleteObjectLocator GFieldTypeInfo                                                                           // [0x103210] 0x008a9000 + 0x103210 = 0x009ac210
.long 0x00000000                                                                                                   // [0x103224] 0x008a9000 + 0x103224 = 0x009ac224
RTTIBaseClassDescriptor Field 7                                                                                    // [0x103228] 0x008a9000 + 0x103228 = 0x009ac228
RTTIBaseClassArray Field                                                                                           // [0x103240] 0x008a9000 + 0x103240 = 0x009ac240
.long ??_R1A@?0A@A@Abode@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103264] 0x008a9000 + 0x103264 = 0x009ac264
RTTIClassHierarchyDescriptor Field 8                                                                               // [0x103268] 0x008a9000 + 0x103268 = 0x009ac268
RTTICompleteObjectLocator Field                                                                                    // [0x103278] 0x008a9000 + 0x103278 = 0x009ac278
.long 0x00000000                                                                                                   // [0x10328c] 0x008a9000 + 0x10328c = 0x009ac28c
RTTIBaseClassDescriptor FireFly 4                                                                                  // [0x103290] 0x008a9000 + 0x103290 = 0x009ac290
RTTIBaseClassArray FireFly                                                                                         // [0x1032a8] 0x008a9000 + 0x1032a8 = 0x009ac2a8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor FireFly 5                                                                             // [0x1032c0] 0x008a9000 + 0x1032c0 = 0x009ac2c0
RTTICompleteObjectLocator FireFly                                                                                  // [0x1032d0] 0x008a9000 + 0x1032d0 = 0x009ac2d0
.long 0x00000000                                                                                                   // [0x1032e4] 0x008a9000 + 0x1032e4 = 0x009ac2e4
RTTIBaseClassDescriptor GFishFarmInfo 4                                                                            // [0x1032e8] 0x008a9000 + 0x1032e8 = 0x009ac2e8
RTTIBaseClassArray GFishFarmInfo                                                                                   // [0x103300] 0x008a9000 + 0x103300 = 0x009ac300
.long ??_R1A@?0A@A@GMultiMapFixedInfo@@8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GFishFarmInfo 5                                                                       // [0x103318] 0x008a9000 + 0x103318 = 0x009ac318
RTTICompleteObjectLocator GFishFarmInfo                                                                            // [0x103328] 0x008a9000 + 0x103328 = 0x009ac328
.long 0x00000000                                                                                                   // [0x10333c] 0x008a9000 + 0x10333c = 0x009ac33c
RTTIBaseClassDescriptor FishFarm 6                                                                                 // [0x103340] 0x008a9000 + 0x103340 = 0x009ac340
RTTIBaseClassArray FishFarm                                                                                        // [0x103358] 0x008a9000 + 0x103358 = 0x009ac358
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor FishFarm 7                                                                            // [0x103378] 0x008a9000 + 0x103378 = 0x009ac378
RTTICompleteObjectLocator FishFarm                                                                                 // [0x103388] 0x008a9000 + 0x103388 = 0x009ac388
.long 0x00000000                                                                                                   // [0x10339c] 0x008a9000 + 0x10339c = 0x009ac39c
RTTIBaseClassDescriptor GSingleMapFixedInfo 3                                                                      // [0x1033a0] 0x008a9000 + 0x1033a0 = 0x009ac3a0
RTTIBaseClassArray GSingleMapFixedInfo                                                                             // [0x1033b8] 0x008a9000 + 0x1033b8 = 0x009ac3b8
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1033cc] 0x008a9000 + 0x1033cc = 0x009ac3cc
RTTIClassHierarchyDescriptor GSingleMapFixedInfo 4                                                                 // [0x1033d0] 0x008a9000 + 0x1033d0 = 0x009ac3d0
RTTICompleteObjectLocator GSingleMapFixedInfo                                                                      // [0x1033e0] 0x008a9000 + 0x1033e0 = 0x009ac3e0
.long 0x00000000                                                                                                   // [0x1033f4] 0x008a9000 + 0x1033f4 = 0x009ac3f4
RTTIBaseClassArray Fixed                                                                                           // [0x1033f8] 0x008a9000 + 0x1033f8 = 0x009ac3f8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Fixed 5                                                                               // [0x103410] 0x008a9000 + 0x103410 = 0x009ac410
RTTICompleteObjectLocator Fixed                                                                                    // [0x103420] 0x008a9000 + 0x103420 = 0x009ac420
.long 0x00000000                                                                                                   // [0x103434] 0x008a9000 + 0x103434 = 0x009ac434
RTTIBaseClassArray MultiMapFixed                                                                                   // [0x103438] 0x008a9000 + 0x103438 = 0x009ac438
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103454] 0x008a9000 + 0x103454 = 0x009ac454
RTTIClassHierarchyDescriptor MultiMapFixed 6                                                                       // [0x103458] 0x008a9000 + 0x103458 = 0x009ac458
RTTICompleteObjectLocator MultiMapFixed                                                                            // [0x103468] 0x008a9000 + 0x103468 = 0x009ac468
.long 0x00000000                                                                                                   // [0x10347c] 0x008a9000 + 0x10347c = 0x009ac47c
RTTIBaseClassDescriptor SingleMapFixed 5                                                                           // [0x103480] 0x008a9000 + 0x103480 = 0x009ac480
RTTIBaseClassArray SingleMapFixed                                                                                  // [0x103498] 0x008a9000 + 0x103498 = 0x009ac498
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1034b4] 0x008a9000 + 0x1034b4 = 0x009ac4b4
RTTIClassHierarchyDescriptor SingleMapFixed 6                                                                      // [0x1034b8] 0x008a9000 + 0x1034b8 = 0x009ac4b8
RTTICompleteObjectLocator SingleMapFixed                                                                           // [0x1034c8] 0x008a9000 + 0x1034c8 = 0x009ac4c8
.long 0x00000000                                                                                                   // [0x1034dc] 0x008a9000 + 0x1034dc = 0x009ac4dc
RTTIBaseClassDescriptor Flock 4                                                                                    // [0x1034e0] 0x008a9000 + 0x1034e0 = 0x009ac4e0
RTTIBaseClassArray Flock                                                                                           // [0x1034f8] 0x008a9000 + 0x1034f8 = 0x009ac4f8
.long ??_R1A@?0A@A@Container@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Flock 5                                                                               // [0x103510] 0x008a9000 + 0x103510 = 0x009ac510
RTTICompleteObjectLocator Flock                                                                                    // [0x103520] 0x008a9000 + 0x103520 = 0x009ac520
.long 0x00000000                                                                                                   // [0x103534] 0x008a9000 + 0x103534 = 0x009ac534
RTTIBaseClassDescriptor GFootballPositionInfo 2                                                                    // [0x103538] 0x008a9000 + 0x103538 = 0x009ac538
RTTIBaseClassArray GFootballPositionInfo                                                                           // [0x103550] 0x008a9000 + 0x103550 = 0x009ac550
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GFootballPositionInfo 3                                                               // [0x103560] 0x008a9000 + 0x103560 = 0x009ac560
RTTICompleteObjectLocator GFootballPositionInfo                                                                    // [0x103570] 0x008a9000 + 0x103570 = 0x009ac570
.long 0x00000000                                                                                                   // [0x103584] 0x008a9000 + 0x103584 = 0x009ac584
RTTIBaseClassDescriptor Football 7                                                                                 // [0x103588] 0x008a9000 + 0x103588 = 0x009ac588
RTTIBaseClassArray Football                                                                                        // [0x1035a0] 0x008a9000 + 0x1035a0 = 0x009ac5a0
.long ??_R1A@?0A@A@Abode@@8
.long ??_R1A@?0A@A@MultiMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1035c4] 0x008a9000 + 0x1035c4 = 0x009ac5c4
RTTIClassHierarchyDescriptor Football 8                                                                            // [0x1035c8] 0x008a9000 + 0x1035c8 = 0x009ac5c8
RTTICompleteObjectLocator Football                                                                                 // [0x1035d8] 0x008a9000 + 0x1035d8 = 0x009ac5d8
.long 0x00000000                                                                                                   // [0x1035ec] 0x008a9000 + 0x1035ec = 0x009ac5ec
RTTIBaseClassDescriptor GFootpathNode 2                                                                            // [0x1035f0] 0x008a9000 + 0x1035f0 = 0x009ac5f0
RTTIBaseClassArray GFootpathNode                                                                                   // [0x103608] 0x008a9000 + 0x103608 = 0x009ac608
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GFootpathNode 3                                                                       // [0x103618] 0x008a9000 + 0x103618 = 0x009ac618
RTTICompleteObjectLocator GFootpathNode                                                                            // [0x103628] 0x008a9000 + 0x103628 = 0x009ac628
.long 0x00000000                                                                                                   // [0x10363c] 0x008a9000 + 0x10363c = 0x009ac63c
RTTIBaseClassDescriptor GFootpath 2                                                                                // [0x103640] 0x008a9000 + 0x103640 = 0x009ac640
RTTIBaseClassArray GFootpath                                                                                       // [0x103658] 0x008a9000 + 0x103658 = 0x009ac658
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GFootpath 3                                                                           // [0x103668] 0x008a9000 + 0x103668 = 0x009ac668
RTTICompleteObjectLocator GFootpath                                                                                // [0x103678] 0x008a9000 + 0x103678 = 0x009ac678
.long 0x00000000                                                                                                   // [0x10368c] 0x008a9000 + 0x10368c = 0x009ac68c
RTTIBaseClassDescriptor GFootpathLinkSave 2                                                                        // [0x103690] 0x008a9000 + 0x103690 = 0x009ac690
RTTIBaseClassArray GFootpathLinkSave                                                                               // [0x1036a8] 0x008a9000 + 0x1036a8 = 0x009ac6a8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GFootpathLinkSave 3                                                                   // [0x1036b8] 0x008a9000 + 0x1036b8 = 0x009ac6b8
RTTICompleteObjectLocator GFootpathLinkSave                                                                        // [0x1036c8] 0x008a9000 + 0x1036c8 = 0x009ac6c8
.long 0x00000000                                                                                                   // [0x1036dc] 0x008a9000 + 0x1036dc = 0x009ac6dc
RTTIBaseClassDescriptor GFootpathFinder 2                                                                          // [0x1036e0] 0x008a9000 + 0x1036e0 = 0x009ac6e0
RTTIBaseClassArray GFootpathFinder                                                                                 // [0x1036f8] 0x008a9000 + 0x1036f8 = 0x009ac6f8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GFootpathFinder 3                                                                     // [0x103708] 0x008a9000 + 0x103708 = 0x009ac708
RTTICompleteObjectLocator GFootpathFinder                                                                          // [0x103718] 0x008a9000 + 0x103718 = 0x009ac718
.long 0x00000000                                                                                                   // [0x10372c] 0x008a9000 + 0x10372c = 0x009ac72c
RTTIBaseClassDescriptor GForestInfo 3                                                                              // [0x103730] 0x008a9000 + 0x103730 = 0x009ac730
RTTIBaseClassArray GForestInfo                                                                                     // [0x103748] 0x008a9000 + 0x103748 = 0x009ac748
.long ??_R1A@?0A@A@GContainerInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x10375c] 0x008a9000 + 0x10375c = 0x009ac75c
RTTIClassHierarchyDescriptor GForestInfo 4                                                                         // [0x103760] 0x008a9000 + 0x103760 = 0x009ac760
RTTICompleteObjectLocator GForestInfo                                                                              // [0x103770] 0x008a9000 + 0x103770 = 0x009ac770
.long 0x00000000                                                                                                   // [0x103784] 0x008a9000 + 0x103784 = 0x009ac784
RTTIBaseClassDescriptor Forest 4                                                                                   // [0x103788] 0x008a9000 + 0x103788 = 0x009ac788
RTTIBaseClassArray Forest                                                                                          // [0x1037a0] 0x008a9000 + 0x1037a0 = 0x009ac7a0
.long ??_R1A@?0A@A@Container@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Forest 5                                                                              // [0x1037b8] 0x008a9000 + 0x1037b8 = 0x009ac7b8
RTTICompleteObjectLocator Forest                                                                                   // [0x1037c8] 0x008a9000 + 0x1037c8 = 0x009ac7c8
.long 0x00000000                                                                                                   // [0x1037dc] 0x008a9000 + 0x1037dc = 0x009ac7dc
RTTIBaseClassDescriptor LoadingBox 1                                                                               // [0x1037e0] 0x008a9000 + 0x1037e0 = 0x009ac7e0
RTTIBaseClassArray LoadingBox                                                                                      // [0x1037f8] 0x008a9000 + 0x1037f8 = 0x009ac7f8
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103804] 0x008a9000 + 0x103804 = 0x009ac804
RTTIClassHierarchyDescriptor LoadingBox 2                                                                          // [0x103808] 0x008a9000 + 0x103808 = 0x009ac808
RTTICompleteObjectLocator LoadingBox                                                                               // [0x103818] 0x008a9000 + 0x103818 = 0x009ac818
.long 0x00000000                                                                                                   // [0x10382c] 0x008a9000 + 0x10382c = 0x009ac82c
RTTIBaseClassDescriptor CDBox 1                                                                                    // [0x103830] 0x008a9000 + 0x103830 = 0x009ac830
RTTIBaseClassArray CDBox                                                                                           // [0x103848] 0x008a9000 + 0x103848 = 0x009ac848
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103854] 0x008a9000 + 0x103854 = 0x009ac854
RTTIClassHierarchyDescriptor CDBox 2                                                                               // [0x103858] 0x008a9000 + 0x103858 = 0x009ac858
RTTICompleteObjectLocator CDBox                                                                                    // [0x103868] 0x008a9000 + 0x103868 = 0x009ac868
.long 0x00000000                                                                                                   // [0x10387c] 0x008a9000 + 0x10387c = 0x009ac87c
RTTIBaseClassDescriptor NewProfileBox 1                                                                            // [0x103880] 0x008a9000 + 0x103880 = 0x009ac880
RTTIBaseClassArray NewProfileBox                                                                                   // [0x103898] 0x008a9000 + 0x103898 = 0x009ac898
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1038a4] 0x008a9000 + 0x1038a4 = 0x009ac8a4
RTTIClassHierarchyDescriptor NewProfileBox 2                                                                       // [0x1038a8] 0x008a9000 + 0x1038a8 = 0x009ac8a8
RTTICompleteObjectLocator NewProfileBox                                                                            // [0x1038b8] 0x008a9000 + 0x1038b8 = 0x009ac8b8
.long 0x00000000                                                                                                   // [0x1038cc] 0x008a9000 + 0x1038cc = 0x009ac8cc
RTTIBaseClassDescriptor MainMenu 1                                                                                 // [0x1038d0] 0x008a9000 + 0x1038d0 = 0x009ac8d0
RTTIBaseClassArray MainMenu                                                                                        // [0x1038e8] 0x008a9000 + 0x1038e8 = 0x009ac8e8
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1038f4] 0x008a9000 + 0x1038f4 = 0x009ac8f4
RTTIClassHierarchyDescriptor MainMenu 2                                                                            // [0x1038f8] 0x008a9000 + 0x1038f8 = 0x009ac8f8
RTTICompleteObjectLocator MainMenu                                                                                 // [0x103908] 0x008a9000 + 0x103908 = 0x009ac908
.long 0x00000000                                                                                                   // [0x10391c] 0x008a9000 + 0x10391c = 0x009ac91c
RTTIBaseClassDescriptor MultiplayerConditionBox 1                                                                  // [0x103920] 0x008a9000 + 0x103920 = 0x009ac920
RTTIBaseClassArray MultiplayerConditionBox                                                                         // [0x103938] 0x008a9000 + 0x103938 = 0x009ac938
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103944] 0x008a9000 + 0x103944 = 0x009ac944
RTTIClassHierarchyDescriptor MultiplayerConditionBox 2                                                             // [0x103948] 0x008a9000 + 0x103948 = 0x009ac948
RTTICompleteObjectLocator MultiplayerConditionBox                                                                  // [0x103958] 0x008a9000 + 0x103958 = 0x009ac958
.long 0x00000000                                                                                                   // [0x10396c] 0x008a9000 + 0x10396c = 0x009ac96c
RTTIBaseClassDescriptor EndGameBox 1                                                                               // [0x103970] 0x008a9000 + 0x103970 = 0x009ac970
RTTIBaseClassArray EndGameBox                                                                                      // [0x103988] 0x008a9000 + 0x103988 = 0x009ac988
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103994] 0x008a9000 + 0x103994 = 0x009ac994
RTTIClassHierarchyDescriptor EndGameBox 2                                                                          // [0x103998] 0x008a9000 + 0x103998 = 0x009ac998
RTTICompleteObjectLocator EndGameBox                                                                               // [0x1039a8] 0x008a9000 + 0x1039a8 = 0x009ac9a8
.long 0x00000000                                                                                                   // [0x1039bc] 0x008a9000 + 0x1039bc = 0x009ac9bc
RTTIBaseClassDescriptor StatsBox 1                                                                                 // [0x1039c0] 0x008a9000 + 0x1039c0 = 0x009ac9c0
RTTIBaseClassArray StatsBox                                                                                        // [0x1039d8] 0x008a9000 + 0x1039d8 = 0x009ac9d8
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1039e4] 0x008a9000 + 0x1039e4 = 0x009ac9e4
RTTIClassHierarchyDescriptor StatsBox 2                                                                            // [0x1039e8] 0x008a9000 + 0x1039e8 = 0x009ac9e8
RTTICompleteObjectLocator StatsBox                                                                                 // [0x1039f8] 0x008a9000 + 0x1039f8 = 0x009ac9f8
.long 0x00000000                                                                                                   // [0x103a0c] 0x008a9000 + 0x103a0c = 0x009aca0c
RTTIBaseClassDescriptor HistoryBox 1                                                                               // [0x103a10] 0x008a9000 + 0x103a10 = 0x009aca10
RTTIBaseClassArray HistoryBox                                                                                      // [0x103a28] 0x008a9000 + 0x103a28 = 0x009aca28
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103a34] 0x008a9000 + 0x103a34 = 0x009aca34
RTTIClassHierarchyDescriptor HistoryBox 2                                                                          // [0x103a38] 0x008a9000 + 0x103a38 = 0x009aca38
RTTICompleteObjectLocator HistoryBox                                                                               // [0x103a48] 0x008a9000 + 0x103a48 = 0x009aca48
.long 0x00000000                                                                                                   // [0x103a5c] 0x008a9000 + 0x103a5c = 0x009aca5c
RTTIBaseClassDescriptor ChannelBox 1                                                                               // [0x103a60] 0x008a9000 + 0x103a60 = 0x009aca60
RTTIBaseClassArray ChannelBox                                                                                      // [0x103a78] 0x008a9000 + 0x103a78 = 0x009aca78
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103a84] 0x008a9000 + 0x103a84 = 0x009aca84
RTTIClassHierarchyDescriptor ChannelBox 2                                                                          // [0x103a88] 0x008a9000 + 0x103a88 = 0x009aca88
RTTICompleteObjectLocator ChannelBox                                                                               // [0x103a98] 0x008a9000 + 0x103a98 = 0x009aca98
.long 0x00000000                                                                                                   // [0x103aac] 0x008a9000 + 0x103aac = 0x009acaac
RTTIBaseClassDescriptor SkirmishGameBox 1                                                                          // [0x103ab0] 0x008a9000 + 0x103ab0 = 0x009acab0
RTTIBaseClassArray SkirmishGameBox                                                                                 // [0x103ac8] 0x008a9000 + 0x103ac8 = 0x009acac8
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103ad4] 0x008a9000 + 0x103ad4 = 0x009acad4
RTTIClassHierarchyDescriptor SkirmishGameBox 2                                                                     // [0x103ad8] 0x008a9000 + 0x103ad8 = 0x009acad8
RTTICompleteObjectLocator SkirmishGameBox                                                                          // [0x103ae8] 0x008a9000 + 0x103ae8 = 0x009acae8
.long 0x00000000                                                                                                   // [0x103afc] 0x008a9000 + 0x103afc = 0x009acafc
RTTIBaseClassDescriptor ProfileEditor 1                                                                            // [0x103b00] 0x008a9000 + 0x103b00 = 0x009acb00
RTTIBaseClassArray ProfileEditor                                                                                   // [0x103b18] 0x008a9000 + 0x103b18 = 0x009acb18
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103b24] 0x008a9000 + 0x103b24 = 0x009acb24
RTTIClassHierarchyDescriptor ProfileEditor 2                                                                       // [0x103b28] 0x008a9000 + 0x103b28 = 0x009acb28
RTTICompleteObjectLocator ProfileEditor                                                                            // [0x103b38] 0x008a9000 + 0x103b38 = 0x009acb38
.long 0x00000000                                                                                                   // [0x103b4c] 0x008a9000 + 0x103b4c = 0x009acb4c
RTTIBaseClassDescriptor RegisterBox 1                                                                              // [0x103b50] 0x008a9000 + 0x103b50 = 0x009acb50
RTTIBaseClassArray RegisterBox                                                                                     // [0x103b68] 0x008a9000 + 0x103b68 = 0x009acb68
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103b74] 0x008a9000 + 0x103b74 = 0x009acb74
RTTIClassHierarchyDescriptor RegisterBox 2                                                                         // [0x103b78] 0x008a9000 + 0x103b78 = 0x009acb78
RTTICompleteObjectLocator RegisterBox                                                                              // [0x103b88] 0x008a9000 + 0x103b88 = 0x009acb88
.long 0x00000000                                                                                                   // [0x103b9c] 0x008a9000 + 0x103b9c = 0x009acb9c
RTTIBaseClassDescriptor SetupMultiplayerMain 1                                                                     // [0x103ba0] 0x008a9000 + 0x103ba0 = 0x009acba0
RTTIBaseClassArray SetupMultiplayerMain                                                                            // [0x103bb8] 0x008a9000 + 0x103bb8 = 0x009acbb8
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103bc4] 0x008a9000 + 0x103bc4 = 0x009acbc4
RTTIClassHierarchyDescriptor SetupMultiplayerMain 2                                                                // [0x103bc8] 0x008a9000 + 0x103bc8 = 0x009acbc8
RTTICompleteObjectLocator SetupMultiplayerMain                                                                     // [0x103bd8] 0x008a9000 + 0x103bd8 = 0x009acbd8
.long 0x00000000                                                                                                   // [0x103bec] 0x008a9000 + 0x103bec = 0x009acbec
RTTIBaseClassDescriptor GatheringBox 1                                                                             // [0x103bf0] 0x008a9000 + 0x103bf0 = 0x009acbf0
RTTIBaseClassArray GatheringBox                                                                                    // [0x103c08] 0x008a9000 + 0x103c08 = 0x009acc08
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103c14] 0x008a9000 + 0x103c14 = 0x009acc14
RTTIClassHierarchyDescriptor GatheringBox 2                                                                        // [0x103c18] 0x008a9000 + 0x103c18 = 0x009acc18
RTTICompleteObjectLocator GatheringBox                                                                             // [0x103c28] 0x008a9000 + 0x103c28 = 0x009acc28
.long 0x00000000                                                                                                   // [0x103c3c] 0x008a9000 + 0x103c3c = 0x009acc3c
RTTIBaseClassDescriptor TattooEditor 1                                                                             // [0x103c40] 0x008a9000 + 0x103c40 = 0x009acc40
RTTIBaseClassArray TattooEditor                                                                                    // [0x103c58] 0x008a9000 + 0x103c58 = 0x009acc58
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103c64] 0x008a9000 + 0x103c64 = 0x009acc64
RTTIClassHierarchyDescriptor TattooEditor 2                                                                        // [0x103c68] 0x008a9000 + 0x103c68 = 0x009acc68
RTTICompleteObjectLocator TattooEditor                                                                             // [0x103c78] 0x008a9000 + 0x103c78 = 0x009acc78
.long 0x00000000                                                                                                   // [0x103c8c] 0x008a9000 + 0x103c8c = 0x009acc8c
RTTIBaseClassDescriptor SetupOnlineLandscapes 1                                                                    // [0x103c90] 0x008a9000 + 0x103c90 = 0x009acc90
RTTIBaseClassArray SetupOnlineLandscapes                                                                           // [0x103ca8] 0x008a9000 + 0x103ca8 = 0x009acca8
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103cb4] 0x008a9000 + 0x103cb4 = 0x009accb4
RTTIClassHierarchyDescriptor SetupOnlineLandscapes 2                                                               // [0x103cb8] 0x008a9000 + 0x103cb8 = 0x009accb8
RTTICompleteObjectLocator SetupOnlineLandscapes                                                                    // [0x103cc8] 0x008a9000 + 0x103cc8 = 0x009accc8
.long 0x00000000                                                                                                   // [0x103cdc] 0x008a9000 + 0x103cdc = 0x009accdc
RTTIBaseClassDescriptor StartGameBox 1                                                                             // [0x103ce0] 0x008a9000 + 0x103ce0 = 0x009acce0
RTTIBaseClassArray StartGameBox                                                                                    // [0x103cf8] 0x008a9000 + 0x103cf8 = 0x009accf8
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103d04] 0x008a9000 + 0x103d04 = 0x009acd04
RTTIClassHierarchyDescriptor StartGameBox 2                                                                        // [0x103d08] 0x008a9000 + 0x103d08 = 0x009acd08
RTTICompleteObjectLocator StartGameBox                                                                             // [0x103d18] 0x008a9000 + 0x103d18 = 0x009acd18
.long 0x00000000                                                                                                   // [0x103d2c] 0x008a9000 + 0x103d2c = 0x009acd2c
RTTIBaseClassDescriptor EditingDebugBox 1                                                                          // [0x103d30] 0x008a9000 + 0x103d30 = 0x009acd30
RTTIBaseClassArray EditingDebugBox                                                                                 // [0x103d48] 0x008a9000 + 0x103d48 = 0x009acd48
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103d54] 0x008a9000 + 0x103d54 = 0x009acd54
RTTIClassHierarchyDescriptor EditingDebugBox 2                                                                     // [0x103d58] 0x008a9000 + 0x103d58 = 0x009acd58
RTTICompleteObjectLocator EditingDebugBox                                                                          // [0x103d68] 0x008a9000 + 0x103d68 = 0x009acd68
.long 0x00000000                                                                                                   // [0x103d7c] 0x008a9000 + 0x103d7c = 0x009acd7c
RTTIBaseClassDescriptor GSLobbyBox 1                                                                               // [0x103d80] 0x008a9000 + 0x103d80 = 0x009acd80
RTTIBaseClassArray GSLobbyBox                                                                                      // [0x103d98] 0x008a9000 + 0x103d98 = 0x009acd98
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103da4] 0x008a9000 + 0x103da4 = 0x009acda4
RTTIClassHierarchyDescriptor GSLobbyBox 2                                                                          // [0x103da8] 0x008a9000 + 0x103da8 = 0x009acda8
RTTICompleteObjectLocator GSLobbyBox                                                                               // [0x103db8] 0x008a9000 + 0x103db8 = 0x009acdb8
.long 0x00000000                                                                                                   // [0x103dcc] 0x008a9000 + 0x103dcc = 0x009acdcc
RTTIBaseClassDescriptor SkipBox 1                                                                                  // [0x103dd0] 0x008a9000 + 0x103dd0 = 0x009acdd0
RTTIBaseClassArray SkipBox                                                                                         // [0x103de8] 0x008a9000 + 0x103de8 = 0x009acde8
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103df4] 0x008a9000 + 0x103df4 = 0x009acdf4
RTTIClassHierarchyDescriptor SkipBox 2                                                                             // [0x103df8] 0x008a9000 + 0x103df8 = 0x009acdf8
RTTICompleteObjectLocator SkipBox                                                                                  // [0x103e08] 0x008a9000 + 0x103e08 = 0x009ace08
.long 0x00000000                                                                                                   // [0x103e1c] 0x008a9000 + 0x103e1c = 0x009ace1c
RTTIBaseClassDescriptor LobbyBox 1                                                                                 // [0x103e20] 0x008a9000 + 0x103e20 = 0x009ace20
RTTIBaseClassArray LobbyBox                                                                                        // [0x103e38] 0x008a9000 + 0x103e38 = 0x009ace38
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103e44] 0x008a9000 + 0x103e44 = 0x009ace44
RTTIClassHierarchyDescriptor LobbyBox 2                                                                            // [0x103e48] 0x008a9000 + 0x103e48 = 0x009ace48
RTTICompleteObjectLocator LobbyBox                                                                                 // [0x103e58] 0x008a9000 + 0x103e58 = 0x009ace58
.long 0x00000000                                                                                                   // [0x103e6c] 0x008a9000 + 0x103e6c = 0x009ace6c
RTTIBaseClassDescriptor LoginBox 1                                                                                 // [0x103e70] 0x008a9000 + 0x103e70 = 0x009ace70
RTTIBaseClassArray LoginBox                                                                                        // [0x103e88] 0x008a9000 + 0x103e88 = 0x009ace88
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103e94] 0x008a9000 + 0x103e94 = 0x009ace94
RTTIClassHierarchyDescriptor LoginBox 2                                                                            // [0x103e98] 0x008a9000 + 0x103e98 = 0x009ace98
RTTICompleteObjectLocator LoginBox                                                                                 // [0x103ea8] 0x008a9000 + 0x103ea8 = 0x009acea8
.long 0x00000000                                                                                                   // [0x103ebc] 0x008a9000 + 0x103ebc = 0x009acebc
RTTIBaseClassDescriptor SetupLandscapeBox 1                                                                        // [0x103ec0] 0x008a9000 + 0x103ec0 = 0x009acec0
RTTIBaseClassArray SetupLandscapeBox                                                                               // [0x103ed8] 0x008a9000 + 0x103ed8 = 0x009aced8
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103ee4] 0x008a9000 + 0x103ee4 = 0x009acee4
RTTIClassHierarchyDescriptor SetupLandscapeBox 2                                                                   // [0x103ee8] 0x008a9000 + 0x103ee8 = 0x009acee8
RTTICompleteObjectLocator SetupLandscapeBox                                                                        // [0x103ef8] 0x008a9000 + 0x103ef8 = 0x009acef8
.long 0x00000000                                                                                                   // [0x103f0c] 0x008a9000 + 0x103f0c = 0x009acf0c
RTTIBaseClassDescriptor SpellSetupBox 1                                                                            // [0x103f10] 0x008a9000 + 0x103f10 = 0x009acf10
RTTIBaseClassArray SpellSetupBox                                                                                   // [0x103f28] 0x008a9000 + 0x103f28 = 0x009acf28
.long ??_R1A@?0A@A@DialogBoxBase@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103f34] 0x008a9000 + 0x103f34 = 0x009acf34
RTTIClassHierarchyDescriptor SpellSetupBox 2                                                                       // [0x103f38] 0x008a9000 + 0x103f38 = 0x009acf38
RTTICompleteObjectLocator SpellSetupBox                                                                            // [0x103f48] 0x008a9000 + 0x103f48 = 0x009acf48
.long 0x00000000                                                                                                   // [0x103f5c] 0x008a9000 + 0x103f5c = 0x009acf5c
RTTIBaseClassDescriptor GFurnitureInfo 3                                                                           // [0x103f60] 0x008a9000 + 0x103f60 = 0x009acf60
RTTIBaseClassArray GFurnitureInfo                                                                                  // [0x103f78] 0x008a9000 + 0x103f78 = 0x009acf78
.long ??_R1A@?0A@A@GObjectInfo@@8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x103f8c] 0x008a9000 + 0x103f8c = 0x009acf8c
RTTIClassHierarchyDescriptor GFurnitureInfo 4                                                                      // [0x103f90] 0x008a9000 + 0x103f90 = 0x009acf90
RTTICompleteObjectLocator GFurnitureInfo                                                                           // [0x103fa0] 0x008a9000 + 0x103fa0 = 0x009acfa0
.long 0x00000000                                                                                                   // [0x103fb4] 0x008a9000 + 0x103fb4 = 0x009acfb4
RTTIBaseClassDescriptor Furniture 4                                                                                // [0x103fb8] 0x008a9000 + 0x103fb8 = 0x009acfb8
RTTIBaseClassArray Furniture                                                                                       // [0x103fd0] 0x008a9000 + 0x103fd0 = 0x009acfd0
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Furniture 5                                                                           // [0x103fe8] 0x008a9000 + 0x103fe8 = 0x009acfe8
RTTICompleteObjectLocator Furniture                                                                                // [0x103ff8] 0x008a9000 + 0x103ff8 = 0x009acff8
.long 0x00000000                                                                                                   // [0x10400c] 0x008a9000 + 0x10400c = 0x009ad00c
RTTIBaseClassDescriptor GGame 2                                                                                    // [0x104010] 0x008a9000 + 0x104010 = 0x009ad010
RTTIBaseClassArray GGame                                                                                           // [0x104028] 0x008a9000 + 0x104028 = 0x009ad028
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GGame 3                                                                               // [0x104038] 0x008a9000 + 0x104038 = 0x009ad038
RTTICompleteObjectLocator GGame                                                                                    // [0x104048] 0x008a9000 + 0x104048 = 0x009ad048
.long 0x00000000                                                                                                   // [0x10405c] 0x008a9000 + 0x10405c = 0x009ad05c
RTTIBaseClassDescriptor GPlayerInfo 2                                                                              // [0x104060] 0x008a9000 + 0x104060 = 0x009ad060
RTTIBaseClassArray GPlayerInfo                                                                                     // [0x104078] 0x008a9000 + 0x104078 = 0x009ad078
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GPlayerInfo 3                                                                         // [0x104088] 0x008a9000 + 0x104088 = 0x009ad088
RTTICompleteObjectLocator GPlayerInfo                                                                              // [0x104098] 0x008a9000 + 0x104098 = 0x009ad098
.long 0x00000000                                                                                                   // [0x1040ac] 0x008a9000 + 0x1040ac = 0x009ad0ac
RTTIBaseClassDescriptor GlobalGameLists 1                                                                          // [0x1040b0] 0x008a9000 + 0x1040b0 = 0x009ad0b0
RTTIBaseClassArray GlobalGameLists                                                                                 // [0x1040c8] 0x008a9000 + 0x1040c8 = 0x009ad0c8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1040d4] 0x008a9000 + 0x1040d4 = 0x009ad0d4
RTTIClassHierarchyDescriptor GlobalGameLists 2                                                                     // [0x1040d8] 0x008a9000 + 0x1040d8 = 0x009ad0d8
RTTICompleteObjectLocator GlobalGameLists                                                                          // [0x1040e8] 0x008a9000 + 0x1040e8 = 0x009ad0e8
.long 0x00000000                                                                                                   // [0x1040fc] 0x008a9000 + 0x1040fc = 0x009ad0fc
RTTIBaseClassDescriptor GKeyBuffer 1                                                                               // [0x104100] 0x008a9000 + 0x104100 = 0x009ad100
RTTIBaseClassArray GKeyBuffer                                                                                      // [0x104118] 0x008a9000 + 0x104118 = 0x009ad118
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x104124] 0x008a9000 + 0x104124 = 0x009ad124
RTTIClassHierarchyDescriptor GKeyBuffer 2                                                                          // [0x104128] 0x008a9000 + 0x104128 = 0x009ad128
RTTICompleteObjectLocator GKeyBuffer                                                                               // [0x104138] 0x008a9000 + 0x104138 = 0x009ad138
.long 0x00000000                                                                                                   // [0x10414c] 0x008a9000 + 0x10414c = 0x009ad14c
RTTIBaseClassDescriptor GSoundMap 1                                                                                // [0x104150] 0x008a9000 + 0x104150 = 0x009ad150
RTTIBaseClassArray GSoundMap                                                                                       // [0x104168] 0x008a9000 + 0x104168 = 0x009ad168
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x104174] 0x008a9000 + 0x104174 = 0x009ad174
RTTIClassHierarchyDescriptor GSoundMap 2                                                                           // [0x104178] 0x008a9000 + 0x104178 = 0x009ad178
RTTICompleteObjectLocator GSoundMap                                                                                // [0x104188] 0x008a9000 + 0x104188 = 0x009ad188
.long 0x00000000                                                                                                   // [0x10419c] 0x008a9000 + 0x10419c = 0x009ad19c
RTTIBaseClassDescriptor GestureSystemDataList 1                                                                    // [0x1041a0] 0x008a9000 + 0x1041a0 = 0x009ad1a0
RTTIBaseClassArray GestureSystemDataList                                                                           // [0x1041b8] 0x008a9000 + 0x1041b8 = 0x009ad1b8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1041c4] 0x008a9000 + 0x1041c4 = 0x009ad1c4
RTTIClassHierarchyDescriptor GestureSystemDataList 2                                                               // [0x1041c8] 0x008a9000 + 0x1041c8 = 0x009ad1c8
RTTICompleteObjectLocator GestureSystemDataList                                                                    // [0x1041d8] 0x008a9000 + 0x1041d8 = 0x009ad1d8
.long 0x00000000                                                                                                   // [0x1041ec] 0x008a9000 + 0x1041ec = 0x009ad1ec
RTTIBaseClassDescriptor GestureSystemData 1                                                                        // [0x1041f0] 0x008a9000 + 0x1041f0 = 0x009ad1f0
RTTIBaseClassArray GestureSystemData                                                                               // [0x104208] 0x008a9000 + 0x104208 = 0x009ad208
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x104214] 0x008a9000 + 0x104214 = 0x009ad214
RTTIClassHierarchyDescriptor GestureSystemData 2                                                                   // [0x104218] 0x008a9000 + 0x104218 = 0x009ad218
RTTICompleteObjectLocator GestureSystemData                                                                        // [0x104228] 0x008a9000 + 0x104228 = 0x009ad228
.long 0x00000000                                                                                                   // [0x10423c] 0x008a9000 + 0x10423c = 0x009ad23c
RTTIBaseClassDescriptor GestureSystem 1                                                                            // [0x104240] 0x008a9000 + 0x104240 = 0x009ad240
RTTIBaseClassArray GestureSystem                                                                                   // [0x104258] 0x008a9000 + 0x104258 = 0x009ad258
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x104264] 0x008a9000 + 0x104264 = 0x009ad264
RTTIClassHierarchyDescriptor GestureSystem 2                                                                       // [0x104268] 0x008a9000 + 0x104268 = 0x009ad268
RTTICompleteObjectLocator GestureSystem                                                                            // [0x104278] 0x008a9000 + 0x104278 = 0x009ad278
.long 0x00000000                                                                                                   // [0x10428c] 0x008a9000 + 0x10428c = 0x009ad28c
RTTIBaseClassDescriptor GTerrainMap 1                                                                              // [0x104290] 0x008a9000 + 0x104290 = 0x009ad290
RTTIBaseClassArray GTerrainMap                                                                                     // [0x1042a8] 0x008a9000 + 0x1042a8 = 0x009ad2a8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1042b4] 0x008a9000 + 0x1042b4 = 0x009ad2b4
RTTIClassHierarchyDescriptor GTerrainMap 2                                                                         // [0x1042b8] 0x008a9000 + 0x1042b8 = 0x009ad2b8
RTTICompleteObjectLocator GTerrainMap                                                                              // [0x1042c8] 0x008a9000 + 0x1042c8 = 0x009ad2c8
.long 0x00000000                                                                                                   // [0x1042dc] 0x008a9000 + 0x1042dc = 0x009ad2dc
RTTIBaseClassDescriptor TerrainMapInfo 2                                                                           // [0x1042e0] 0x008a9000 + 0x1042e0 = 0x009ad2e0
RTTIBaseClassArray TerrainMapInfo                                                                                  // [0x1042f8] 0x008a9000 + 0x1042f8 = 0x009ad2f8
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor TerrainMapInfo 3                                                                      // [0x104308] 0x008a9000 + 0x104308 = 0x009ad308
RTTICompleteObjectLocator TerrainMapInfo                                                                           // [0x104318] 0x008a9000 + 0x104318 = 0x009ad318
.long 0x00000000                                                                                                   // [0x10432c] 0x008a9000 + 0x10432c = 0x009ad32c
RTTIBaseClassDescriptor TerrainMapTypeInfo 2                                                                       // [0x104330] 0x008a9000 + 0x104330 = 0x009ad330
RTTIBaseClassArray TerrainMapTypeInfo                                                                              // [0x104348] 0x008a9000 + 0x104348 = 0x009ad348
.long ??_R1A@?0A@A@GBaseInfo@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor TerrainMapTypeInfo 3                                                                  // [0x104358] 0x008a9000 + 0x104358 = 0x009ad358
RTTICompleteObjectLocator TerrainMapTypeInfo                                                                       // [0x104368] 0x008a9000 + 0x104368 = 0x009ad368
.long 0x00000000                                                                                                   // [0x10437c] 0x008a9000 + 0x10437c = 0x009ad37c
RTTIBaseClassDescriptor GameArea 1                                                                                 // [0x104380] 0x008a9000 + 0x104380 = 0x009ad380
RTTIBaseClassArray GameArea                                                                                        // [0x104398] 0x008a9000 + 0x104398 = 0x009ad398
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1043a4] 0x008a9000 + 0x1043a4 = 0x009ad3a4
RTTIClassHierarchyDescriptor GameArea 2                                                                            // [0x1043a8] 0x008a9000 + 0x1043a8 = 0x009ad3a8
RTTICompleteObjectLocator GameArea                                                                                 // [0x1043b8] 0x008a9000 + 0x1043b8 = 0x009ad3b8
.long 0x00000000                                                                                                   // [0x1043cc] 0x008a9000 + 0x1043cc = 0x009ad3cc
RTTIBaseClassDescriptor GGameInfo 1                                                                                // [0x1043d0] 0x008a9000 + 0x1043d0 = 0x009ad3d0
RTTIBaseClassArray GGameInfo                                                                                       // [0x1043e8] 0x008a9000 + 0x1043e8 = 0x009ad3e8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

.long 0x00000000                                                                                                   // [0x1043f4] 0x008a9000 + 0x1043f4 = 0x009ad3f4
RTTIClassHierarchyDescriptor GGameInfo 2                                                                           // [0x1043f8] 0x008a9000 + 0x1043f8 = 0x009ad3f8
RTTICompleteObjectLocator GGameInfo                                                                                // [0x104408] 0x008a9000 + 0x104408 = 0x009ad408
.long 0x00000000                                                                                                   // [0x10441c] 0x008a9000 + 0x10441c = 0x009ad41c
RTTIBaseClassDescriptor GameOSFile 2                                                                               // [0x104420] 0x008a9000 + 0x104420 = 0x009ad420
RTTIBaseClassArray GameOSFile                                                                                      // [0x104438] 0x008a9000 + 0x104438 = 0x009ad438
.long ??_R1A@?0A@A@LHReleasedOSFile@@8
.long ??_R1A@?0A@A@LHOSFile@@8
.long 0x00000000

RTTIClassHierarchyDescriptor GameOSFile 3                                                                          // [0x104448] 0x008a9000 + 0x104448 = 0x009ad448
RTTICompleteObjectLocator GameOSFile                                                                               // [0x104458] 0x008a9000 + 0x104458 = 0x009ad458
.long 0x00000000                                                                                                   // [0x10446c] 0x008a9000 + 0x10446c = 0x009ad46c
RTTIBaseClassDescriptor Tree 6                                                                                     // [0x104470] 0x008a9000 + 0x104470 = 0x009ad470
RTTIBaseClassArray Tree                                                                                            // [0x104488] 0x008a9000 + 0x104488 = 0x009ad488
.long ??_R1A@?0A@A@SingleMapFixed@@8
.long ??_R1A@?0A@A@Fixed@@8
.long ??_R1A@?0A@A@Object@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor Tree 7                                                                                // [0x1044a8] 0x008a9000 + 0x1044a8 = 0x009ad4a8
RTTICompleteObjectLocator Tree                                                                                     // [0x1044b8] 0x008a9000 + 0x1044b8 = 0x009ad4b8
.long 0x00000000                                                                                                   // [0x1044cc] 0x008a9000 + 0x1044cc = 0x009ad4cc
RTTIBaseClassDescriptor SpellFlockFlying 6                                                                         // [0x1044d0] 0x008a9000 + 0x1044d0 = 0x009ad4d0
RTTIBaseClassArray SpellFlockFlying                                                                                // [0x1044e8] 0x008a9000 + 0x1044e8 = 0x009ad4e8
.long ??_R1A@?0A@A@SpellFlock@@8
.long ??_R1A@?0A@A@SpellWithObjects@@8
.long ??_R1A@?0A@A@Spell@@8
.long ??_R1A@?0A@A@GameThingWithPos@@8
.long ??_R1A@?0A@A@GameThing@@8
.long ??_R1A@?0A@A@Base@@8
.long 0x00000000

RTTIClassHierarchyDescriptor SpellFlockFlying 7                                                                    // [0x104508] 0x008a9000 + 0x104508 = 0x009ad508
RTTICompleteObjectLocator SpellFlockFlying                                                                         // [0x104518] 0x008a9000 + 0x104518 = 0x009ad518
.long 0x00000000                                                                                                   // [0x10452c] 0x008a9000 + 0x10452c = 0x009ad52c
