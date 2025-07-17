.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ??0Abode@@QAE@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z
.extern ??1Abode@@UAE@XZ
.extern _jmp_addr_0x004073f0
.extern _jmp_addr_0x00414520
.extern ___nw__4BaseFUl
.extern ??3Base@@SAXPAXK@Z
.extern _jmp_addr_0x00437eb0
.extern @InsertMapObject__13MultiMapFixedFv@4
.extern ?CallVirtualFunctionsForCreation@MultiMapFixed@@UAEXABUMapCoords@@@Z
.extern ?Built@MultiMapFixed@@UAE_NXZ
.extern ?Repaired@MultiMapFixed@@UAE_NXZ
.extern ?SaveObject@MultiMapFixed@@UAEIPAVLHOSFile@@PBUMapCoords@@@Z
.extern ?ReduceLife@MultiMapFixed@@UAEXMPAVGPlayer@@@Z
.extern ?Process@MultiMapFixed@@UAEIXZ
.extern @__ct__9GFootpathFP16GameThingWithPosP16GameThingWithPos@16
.extern @AddPos__9GFootpathFRC9MapCoords@12
.extern _AttemptRerenderFootpathWithCreatureRP__9GFootpathFP13GFootpathNodeP13GFootpathNodeRC9MapCoords
.extern _jmp_addr_0x00561e10
.extern @ReadPtr__10GameOSFileFPP9GameThing@12
.extern _jmp_addr_0x0056a3f0
.extern _jmp_addr_0x0056fa80
.extern ?ToBeDeleted@GameThingWithPos@@UAEXH@Z
.extern _jmp_addr_0x0056fef0
.extern ?GetPlayer@GameThing@@QAEPAVGPlayer@@XZ
.extern _jmp_addr_0x005e6540
.extern _jmp_addr_0x00602880
.extern @__ct__9MapCoordsFRC7LHPoint@12
.extern _jmp_addr_0x00603860
.extern _jmp_addr_0x00603b30
.extern @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16
.extern _jmp_addr_0x006055c0
.extern _GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2
.extern ?IncreaseLife@Object@@UAEXM@Z
.extern @GetAltitudeFondation__12Game3DObjectCFv@4
.extern @__ct__20PlannedMultiMapFixedFRC9MapCoordsPC18GMultiMapFixedInfoff@24
.extern _jmp_addr_0x00648820
.extern ?Save@PlannedMultiMapFixed@@QAEIAAVGGameOSFile@@@Z
.extern ?Load@PlannedMultiMapFixed@@QAEIAAVGGameOSFile@@@Z
.extern @GetPlayerNumber__7GPlayerCFv@4
.extern _jmp_addr_0x0064da80
.extern _jmp_addr_0x006e8860
.extern _jmp_addr_0x006e9610
.extern _jmp_addr_0x00709a20
.extern _jmp_addr_0x00709a40
.extern _jmp_addr_0x00709c40
.extern _jmp_addr_0x00715130
.extern _jmp_addr_0x00719610
.extern _Create__8SoundTagFP16GameThingWithPosUlbUlUlii19AUDIO_SFX_BANK_TYPEi
.extern _jmp_addr_0x007346e0
.extern _jmp_addr_0x00734a30
.extern ?AddAbodeToTownStats@Town@@QAEXPAVAbode@@@Z
.extern ?AddVillagerToTown@Town@@QAE_NPAVVillager@@@Z
.extern _jmp_addr_0x0073af50
.extern ?IsVillagerInHomelessList@Town@@QAE_NPAVVillager@@@Z
.extern ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ
.extern _jmp_addr_0x0073b8e0
.extern ?RemoveBuildingSite@Town@@QAEIPAVMultiMapFixed@@@Z
.extern ?GetTribe@Town@@QBEPAVGTribeInfo@@XZ
.extern ?AddPlanned@Town@@QAEXPAVPlannedMultiMapFixed@@@Z
.extern ?RemovePlanned@Town@@QAEXPAVPlannedMultiMapFixed@@@Z
.extern ?AllVillagersCheckNeedNewAbode@Town@@QAEXXZ
.extern _jmp_addr_0x00740030
.extern _jmp_addr_0x007400d0
.extern _jmp_addr_0x00745d80
.extern ?SetInStateOfEmergency@Town@@QAEXXZ
.extern ?VillagerMoveOutOfAbode@TownStats@@QAEXPAVVillager@@@Z
.extern _jmp_addr_0x00749500
.extern _GetDistanceModifier__6GUtilsFff@8
.extern ?SetAbode@Villager@@QAEXPAVAbode@@@Z
.extern @GetAbode__8VillagerFv@4
.extern @IsVillagerAvailable__8VillagerFv@4
.extern _jmp_addr_0x00752b80
.extern ?HomeDeleted@Villager@@QAEXXZ
.extern _jmp_addr_0x007a1400
.extern  ___dl__FPv
.extern _jmp_addr_0x007c57d2
.extern _jmp_addr_0x007c6ce0
.extern _jmp_addr_0x007da710
.extern ??1FragMesh@@QAE@XZ
.extern _Create__9LH3DSmokeFPC7LHPoint
.extern @GetAltitude__10LH3DIslandFRC13LH3DMapCoords@4
.extern @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4

.globl _jmp_addr_0x004056f0
.globl _jmp_addr_0x00405890
.globl _jmp_addr_0x00405980
.globl _jmp_addr_0x004059d0
.globl _jmp_addr_0x004059f0
.globl _jmp_addr_0x00405b70
.globl _jmp_addr_0x00405fa0
.globl _jmp_addr_0x00405fb0
.globl _jmp_addr_0x00405fc0
.globl _jmp_addr_0x00405660
.globl ?GetTribeType@Abode@@QAE?AW4TRIBE_TYPE@@XZ
.globl ?GetPlayer@Abode@@UAEPAVGPlayer@@XZ
.globl ?ReduceLife@Abode@@UAEXMPAVGPlayer@@@Z
.globl ?IncreaseLife@Abode@@UAEXM@Z
.globl ?SaveObject@Abode@@UAEIPAVLHOSFile@@PBUMapCoords@@@Z
.globl ?IsCivic@Abode@@UAE_NXZ
.globl ?GetTribe@Abode@@UAEPAUGTribeInfo@@XZ
.globl ?CreateNoInit@PlannedAbode@@SAPAV1@PAUMapCoords@@PAVGMultiMapFixedInfo@@PAVTown@@MM@Z
.globl ?SetIdentity@LHMatrix@@QAEXXZ
.globl ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z
.globl ?PostTranslation@LHMatrix@@QAEXAAULHPoint@@@Z
.globl ?IsOkToCreateAtPos@GAbodeInfo@@QBE_NPBUMapCoords@@MMPAVTown@@@Z
.globl ??0PlannedAbode@@QAE@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z
.globl @Init__12PlannedAbodeFP4Town@12
.globl ?Create@PlannedAbode@@SAPAV1@PAUMapCoords@@PAVGMultiMapFixedInfo@@PAVTown@@MM@Z
.globl ?GetInfo@PlannedAbode@@SAPAVGPlannedAbodeInfo@@XZ
.globl _GetInfoFromText__10GAbodeInfoFPc
.globl _Find__10GAbodeInfoF10TRIBE_TYPE12ABODE_NUMBER
.globl ?CastAbode@GameThing@@QAEPAVAbode@@XZ
.globl ?ResolveLoad@GameThing@@QAEXXZ
.globl ?GetTownArtifactValue@GameThing@@QAEMXZ
.globl ?GetNearestPathTo@GameThing@@QAEIABUMapCoords@@MH@Z
.globl ?RemoveFootpath@GameThing@@QAEIPAVGFootpath@@@Z
.globl ?GetFootpathLink@GameThing@@QAEPAVGFootpathLink@@XZ
.globl ?GetDrawImportance@GameThing@@QAEMXZ
.globl ?IsFootpathLink@GameThing@@QAE_NXZ
.globl ?RemoveResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPAVGInterfaceStatus@@PA_N@Z
.globl ?AddResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPAVGInterfaceStatus@@_NABUMapCoords@@H@Z
.globl ?CastMultiMapFixed@GameThing@@QAEPAVMultiMapFixed@@XZ
.globl ?DrawInHand@GameThing@@QAEXPAVGInterfaceStatus@@@Z
.globl ?AddFootpath@GameThing@@QAEIPAVGFootpath@@@Z
.globl ?IsFunctional@GameThing@@QAE_NXZ
.globl ?CanBecomeArtifact@GameThing@@QAE_NXZ
.globl ?Get2DRadius@GameThing@@QAEMXZ
.globl ?GetRadius@GameThing@@QAEMXZ
.globl ?GetResource@GameThing@@QAEIW4RESOURCE_TYPE@@@Z
.globl ?GetNumberOfInstanceForGlobalList@GameThing@@QAEGXZ
.globl ?GetArrivePos@GameThingWithPos@@QAEPAUMapCoords@@XZ
.globl ?GetCreatureBeliefType@GameThingWithPos@@UAEIXZ
.globl ?GetOrigin@GameThingWithPos@@UBEIXZ
.globl ?GetLife@GameThingWithPos@@UBEMXZ
.globl ?IsMoving@GameThingWithPos@@UBE_NXZ
.globl ?IsObjectInMap@GameThingWithPos@@UAE_NXZ
.globl ?IsDrowning@GameThingWithPos@@UAE_NXZ
.globl ?IsCastShadowAtNight@GameThingWithPos@@UAE_NXZ
.globl ?CleanupWhenDeleted@GameThingWithPos@@UAEXH@Z
.globl ?GetImpressiveValue@GameThingWithPos@@UAEMPAULiving@@PAUReaction@@@Z
.globl ?IsAbode@GameThingWithPos@@UAE_NXZ
.globl ?IsBuildingMaterial@GameThingWithPos@@UAE_NXZ
.globl ?IsSuitableForCreatureAction@GameThingWithPos@@UAE_NXZ
.globl ?CanBeEatenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?CanBeAttackedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?CanBeFrighteningToCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?CanBeHelpedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?CanBePlayedWithByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?CanBeImpressedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?CanBeInspectedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?CanBePoodUponByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?CanBeSleptNextToByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?CanBePickedUpByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?CanBeStrokedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?CanBeSetOnFire@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?CanBeStompedOnByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?CanBeThrownByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?CanBePutInAStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?CanBeDestroyedByStoning@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?CanBeExaminedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?IsBeingBuilt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?NeedsRepair@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?IsOnFire@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?CanBePutInFoodPile@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?CanBePutInWoodPile@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?CanBeBroughtBackToCitadel@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?CanBePoodOn@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?IsBuildingWhichIsBeingBuilt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?CanBeKickedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.globl ?GetCreatureMimicType@GameThingWithPos@@UBEIXZ
.globl ?GetHowMuchCreatureWantsToLookAtMe@GameThingWithPos@@UAEMXZ
.globl ?GetHeight@GameThingWithPos@@UBEMXZ
.globl ?SetInScript@GameThingWithPos@@UAEXH@Z
.globl ?IsHouse@GameThingWithPos@@UAE_NXZ
.globl ?IsObject@GameThingWithPos@@UBE_NXZ
.globl ?GetQueryFirstEnumText@GameThingWithPos@@UAE?AW4HELP_TEXT@@XZ
.globl ?GetQueryLastEnumText@GameThingWithPos@@UAE?AW4HELP_TEXT@@XZ
.globl ?IsAbode@GameThingWithPos@@UAE_NXZ
.globl ??_GPlannedAbode@@QAEXXZ
.globl ?ToBeDeleted@PlannedAbode@@UAEXH@Z
.globl ?GetTown@PlannedAbode@@QAEPAVTown@@XZ
.globl ?GetDebugText@PlannedAbode@@QAEPADXZ
.globl ?GetScale@PlannedMultiMapFixed@@UBEMXZ
.globl ?SetScale@PlannedMultiMapFixed@@UAEXM@Z
.globl ?Load@PlannedAbode@@QAEIAAVGGameOSFile@@@Z
.globl ?Save@PlannedAbode@@QAEIAAVGGameOSFile@@@Z
.globl ?GetSaveType@PlannedAbode@@UAEIXZ
.globl ?CreatePlanned@PlannedAbode@@QAEPAVMultiMapFixed@@M@Z
.globl ?CreatePlannedNoFixedCheck@PlannedAbode@@QAEPAVMultiMapFixed@@M@Z

??0PlannedAbode@@QAE@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00405080    8b442414
                         {disp8} mov        edx, dword ptr [esp + 0x08]                   // 0x00405084    8b542408
                         push               esi                                           // 0x00405088    56
                         push               eax                                           // 0x00405089    50
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x0040508a    8b44240c
                         mov.s              esi, ecx                                      // 0x0040508e    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                   // 0x00405090    8b4c2418
                         push               ecx                                           // 0x00405094    51
                         push               edx                                           // 0x00405095    52
                         push               eax                                           // 0x00405096    50
                         mov.s              ecx, esi                                      // 0x00405097    8bce
                         call               @__ct__20PlannedMultiMapFixedFRC9MapCoordsPC18GMultiMapFixedInfoff@24                          // 0x00405099    e8e2362400
                         {disp8} mov        dword ptr [esi + 0x48], 0x00000000            // 0x0040509e    c7464800000000
                         mov                dword ptr [esi], 0x008aa3bc                   // 0x004050a5    c706bca38a00
                         mov.s              eax, esi                                      // 0x004050ab    8bc6
                         pop                esi                                           // 0x004050ad    5e
                         ret                0x0014                                        // 0x004050ae    c21400
                         nop                                                              // 0x004050b1    90
                         nop                                                              // 0x004050b2    90
                         nop                                                              // 0x004050b3    90
                         nop                                                              // 0x004050b4    90
                         nop                                                              // 0x004050b5    90
                         nop                                                              // 0x004050b6    90
                         nop                                                              // 0x004050b7    90
                         nop                                                              // 0x004050b8    90
                         nop                                                              // 0x004050b9    90
                         nop                                                              // 0x004050ba    90
                         nop                                                              // 0x004050bb    90
                         nop                                                              // 0x004050bc    90
                         nop                                                              // 0x004050bd    90
                         nop                                                              // 0x004050be    90
                         nop                                                              // 0x004050bf    90

?GetScale@PlannedMultiMapFixed@@UBEMXZ:
                         {disp8} fld        dword ptr [ecx + 0x2c]                        // 0x004050c0    d9412c
                         ret                                                              // 0x004050c3    c3
                         nop                                                              // 0x004050c4    90
                         nop                                                              // 0x004050c5    90
                         nop                                                              // 0x004050c6    90
                         nop                                                              // 0x004050c7    90
                         nop                                                              // 0x004050c8    90
                         nop                                                              // 0x004050c9    90
                         nop                                                              // 0x004050ca    90
                         nop                                                              // 0x004050cb    90
                         nop                                                              // 0x004050cc    90
                         nop                                                              // 0x004050cd    90
                         nop                                                              // 0x004050ce    90
                         nop                                                              // 0x004050cf    90

?SetScale@PlannedMultiMapFixed@@UAEXM@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x004050d0    8b442404
                         {disp8} mov        dword ptr [ecx + 0x2c], eax                   // 0x004050d4    89412c
                         ret                0x0004                                        // 0x004050d7    c20400
                         call               dword ptr [rdata_bytes + 0x470]               // 0x004050da    ff1570948a00

?GetTown@PlannedAbode@@QAEPAVTown@@XZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x48]                   // 0x004050e0    8b4148
                         ret                                                              // 0x004050e3    c3
                         nop                                                              // 0x004050e4    90
                         nop                                                              // 0x004050e5    90
                         nop                                                              // 0x004050e6    90
                         nop                                                              // 0x004050e7    90
                         nop                                                              // 0x004050e8    90
                         nop                                                              // 0x004050e9    90
                         nop                                                              // 0x004050ea    90
                         nop                                                              // 0x004050eb    90
                         nop                                                              // 0x004050ec    90
                         nop                                                              // 0x004050ed    90
                         nop                                                              // 0x004050ee    90
                         nop                                                              // 0x004050ef    90

?GetSaveType@PlannedAbode@@UAEIXZ:
                         mov                eax, 0x00000061                               // 0x004050f0    b861000000
                         ret                                                              // 0x004050f5    c3
                         nop                                                              // 0x004050f6    90
                         nop                                                              // 0x004050f7    90
                         nop                                                              // 0x004050f8    90
                         nop                                                              // 0x004050f9    90
                         nop                                                              // 0x004050fa    90
                         nop                                                              // 0x004050fb    90
                         nop                                                              // 0x004050fc    90
                         nop                                                              // 0x004050fd    90
                         nop                                                              // 0x004050fe    90
                         nop                                                              // 0x004050ff    90

?GetDebugText@PlannedAbode@@QAEPADXZ:
                         mov                eax, OFFSET _debug_text_PlannedAbode          // 0x00405100    b81c809c00
                         ret                                                              // 0x00405105    c3
                         nop                                                              // 0x00405106    90
                         nop                                                              // 0x00405107    90
                         nop                                                              // 0x00405108    90
                         nop                                                              // 0x00405109    90
                         nop                                                              // 0x0040510a    90
                         nop                                                              // 0x0040510b    90
                         nop                                                              // 0x0040510c    90
                         nop                                                              // 0x0040510d    90
                         nop                                                              // 0x0040510e    90
                         nop                                                              // 0x0040510f    90

??_GPlannedAbode@@QAEXXZ:
                         push               esi                                           // 0x00405110    56
                         mov.s              esi, ecx                                      // 0x00405111    8bf1
                         call               _jmp_addr_0x0056fa80                          // 0x00405113    e868a91600
                         test               byte ptr [esp + 0x08], 0x01                   // 0x00405118    f644240801
                         {disp8} je         _jmp_addr_0x0040512a                          // 0x0040511d    740b
                         push               0x4c                                          // 0x0040511f    6a4c
                         push               esi                                           // 0x00405121    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x00405122    e849180300
                         add                esp, 0x08                                     // 0x00405127    83c408
_jmp_addr_0x0040512a:    mov.s              eax, esi                                      // 0x0040512a    8bc6
                         pop                esi                                           // 0x0040512c    5e
                         ret                0x0004                                        // 0x0040512d    c20400

?GetDrawImportance@GameThing@@QAEMXZ:
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00405130    d90598a38a00
                         ret                                                              // 0x00405136    c3
                         nop                                                              // 0x00405137    90
                         nop                                                              // 0x00405138    90
                         nop                                                              // 0x00405139    90
                         nop                                                              // 0x0040513a    90
                         nop                                                              // 0x0040513b    90
                         nop                                                              // 0x0040513c    90
                         nop                                                              // 0x0040513d    90
                         nop                                                              // 0x0040513e    90
                         nop                                                              // 0x0040513f    90

?GetRadius@GameThing@@QAEMXZ:
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00405140    d90598a38a00
                         ret                                                              // 0x00405146    c3
                         nop                                                              // 0x00405147    90
                         nop                                                              // 0x00405148    90
                         nop                                                              // 0x00405149    90
                         nop                                                              // 0x0040514a    90
                         nop                                                              // 0x0040514b    90
                         nop                                                              // 0x0040514c    90
                         nop                                                              // 0x0040514d    90
                         nop                                                              // 0x0040514e    90
                         nop                                                              // 0x0040514f    90

?Get2DRadius@GameThing@@QAEMXZ:
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00405150    d90598a38a00
                         ret                                                              // 0x00405156    c3
                         nop                                                              // 0x00405157    90
                         nop                                                              // 0x00405158    90
                         nop                                                              // 0x00405159    90
                         nop                                                              // 0x0040515a    90
                         nop                                                              // 0x0040515b    90
                         nop                                                              // 0x0040515c    90
                         nop                                                              // 0x0040515d    90
                         nop                                                              // 0x0040515e    90
                         nop                                                              // 0x0040515f    90

?IsFootpathLink@GameThing@@QAE_NXZ:
                         xor.s              eax, eax                                      // 0x00405160    33c0
                         ret                                                              // 0x00405162    c3
                         nop                                                              // 0x00405163    90
                         nop                                                              // 0x00405164    90
                         nop                                                              // 0x00405165    90
                         nop                                                              // 0x00405166    90
                         nop                                                              // 0x00405167    90
                         nop                                                              // 0x00405168    90
                         nop                                                              // 0x00405169    90
                         nop                                                              // 0x0040516a    90
                         nop                                                              // 0x0040516b    90
                         nop                                                              // 0x0040516c    90
                         nop                                                              // 0x0040516d    90
                         nop                                                              // 0x0040516e    90
                         nop                                                              // 0x0040516f    90
?GetFootpathLink@GameThing@@QAEPAVGFootpathLink@@XZ:
                         xor.s              eax, eax                                      // 0x00405170    33c0
                         ret                                                              // 0x00405172    c3
                         nop                                                              // 0x00405173    90
                         nop                                                              // 0x00405174    90
                         nop                                                              // 0x00405175    90
                         nop                                                              // 0x00405176    90
                         nop                                                              // 0x00405177    90
                         nop                                                              // 0x00405178    90
                         nop                                                              // 0x00405179    90
                         nop                                                              // 0x0040517a    90
                         nop                                                              // 0x0040517b    90
                         nop                                                              // 0x0040517c    90
                         nop                                                              // 0x0040517d    90
                         nop                                                              // 0x0040517e    90
                         nop                                                              // 0x0040517f    90
?GetNearestPathTo@GameThing@@QAEIABUMapCoords@@MH@Z:
                         xor.s              eax, eax                                      // 0x00405180    33c0
                         ret                0x000c                                        // 0x00405182    c20c00
                         nop                                                              // 0x00405185    90
                         nop                                                              // 0x00405186    90
                         nop                                                              // 0x00405187    90
                         nop                                                              // 0x00405188    90
                         nop                                                              // 0x00405189    90
                         nop                                                              // 0x0040518a    90
                         nop                                                              // 0x0040518b    90
                         nop                                                              // 0x0040518c    90
                         nop                                                              // 0x0040518d    90
                         nop                                                              // 0x0040518e    90
                         nop                                                              // 0x0040518f    90
?AddFootpath@GameThing@@QAEIPAVGFootpath@@@Z:
                         xor.s              eax, eax                                      // 0x00405190    33c0
                         ret                0x0004                                        // 0x00405192    c20400
                         nop                                                              // 0x00405195    90
                         nop                                                              // 0x00405196    90
                         nop                                                              // 0x00405197    90
                         nop                                                              // 0x00405198    90
                         nop                                                              // 0x00405199    90
                         nop                                                              // 0x0040519a    90
                         nop                                                              // 0x0040519b    90
                         nop                                                              // 0x0040519c    90
                         nop                                                              // 0x0040519d    90
                         nop                                                              // 0x0040519e    90
                         nop                                                              // 0x0040519f    90
?RemoveFootpath@GameThing@@QAEIPAVGFootpath@@@Z:
                         xor.s              eax, eax                                      // 0x004051a0    33c0
                         ret                0x0004                                        // 0x004051a2    c20400
                         nop                                                              // 0x004051a5    90
                         nop                                                              // 0x004051a6    90
                         nop                                                              // 0x004051a7    90
                         nop                                                              // 0x004051a8    90
                         nop                                                              // 0x004051a9    90
                         nop                                                              // 0x004051aa    90
                         nop                                                              // 0x004051ab    90
                         nop                                                              // 0x004051ac    90
                         nop                                                              // 0x004051ad    90
                         nop                                                              // 0x004051ae    90
                         nop                                                              // 0x004051af    90
?GetResource@GameThing@@QAEIW4RESOURCE_TYPE@@@Z:
                         xor.s              eax, eax                                      // 0x004051b0    33c0
                         ret                0x0004                                        // 0x004051b2    c20400
                         nop                                                              // 0x004051b5    90
                         nop                                                              // 0x004051b6    90
                         nop                                                              // 0x004051b7    90
                         nop                                                              // 0x004051b8    90
                         nop                                                              // 0x004051b9    90
                         nop                                                              // 0x004051ba    90
                         nop                                                              // 0x004051bb    90
                         nop                                                              // 0x004051bc    90
                         nop                                                              // 0x004051bd    90
                         nop                                                              // 0x004051be    90
                         nop                                                              // 0x004051bf    90
?AddResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPAVGInterfaceStatus@@_NABUMapCoords@@H@Z:
                         xor.s              eax, eax                                      // 0x004051c0    33c0
                         ret                0x0018                                        // 0x004051c2    c21800
                         nop                                                              // 0x004051c5    90
                         nop                                                              // 0x004051c6    90
                         nop                                                              // 0x004051c7    90
                         nop                                                              // 0x004051c8    90
                         nop                                                              // 0x004051c9    90
                         nop                                                              // 0x004051ca    90
                         nop                                                              // 0x004051cb    90
                         nop                                                              // 0x004051cc    90
                         nop                                                              // 0x004051cd    90
                         nop                                                              // 0x004051ce    90
                         nop                                                              // 0x004051cf    90
?RemoveResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPAVGInterfaceStatus@@PA_N@Z:
                         xor.s              eax, eax                                      // 0x004051d0    33c0
                         ret                0x0010                                        // 0x004051d2    c21000
                         nop                                                              // 0x004051d5    90
                         nop                                                              // 0x004051d6    90
                         nop                                                              // 0x004051d7    90
                         nop                                                              // 0x004051d8    90
                         nop                                                              // 0x004051d9    90
                         nop                                                              // 0x004051da    90
                         nop                                                              // 0x004051db    90
                         nop                                                              // 0x004051dc    90
                         nop                                                              // 0x004051dd    90
                         nop                                                              // 0x004051de    90
                         nop                                                              // 0x004051df    90
?CastAbode@GameThing@@QAEPAVAbode@@XZ:
                         xor.s              eax, eax                                      // 0x004051e0    33c0
                         ret                                                              // 0x004051e2    c3
                         nop                                                              // 0x004051e3    90
                         nop                                                              // 0x004051e4    90
                         nop                                                              // 0x004051e5    90
                         nop                                                              // 0x004051e6    90
                         nop                                                              // 0x004051e7    90
                         nop                                                              // 0x004051e8    90
                         nop                                                              // 0x004051e9    90
                         nop                                                              // 0x004051ea    90
                         nop                                                              // 0x004051eb    90
                         nop                                                              // 0x004051ec    90
                         nop                                                              // 0x004051ed    90
                         nop                                                              // 0x004051ee    90
                         nop                                                              // 0x004051ef    90
?CastMultiMapFixed@GameThing@@QAEPAVMultiMapFixed@@XZ:
                         xor.s              eax, eax                                      // 0x004051f0    33c0
                         ret                                                              // 0x004051f2    c3
                         nop                                                              // 0x004051f3    90
                         nop                                                              // 0x004051f4    90
                         nop                                                              // 0x004051f5    90
                         nop                                                              // 0x004051f6    90
                         nop                                                              // 0x004051f7    90
                         nop                                                              // 0x004051f8    90
                         nop                                                              // 0x004051f9    90
                         nop                                                              // 0x004051fa    90
                         nop                                                              // 0x004051fb    90
                         nop                                                              // 0x004051fc    90
                         nop                                                              // 0x004051fd    90
                         nop                                                              // 0x004051fe    90
                         nop                                                              // 0x004051ff    90
?GetNumberOfInstanceForGlobalList@GameThing@@QAEGXZ:
                         mov                ax, 0x0001                                    // 0x00405200    66b80100
                         ret                                                              // 0x00405204    c3
                         nop                                                              // 0x00405205    90
                         nop                                                              // 0x00405206    90
                         nop                                                              // 0x00405207    90
                         nop                                                              // 0x00405208    90
                         nop                                                              // 0x00405209    90
                         nop                                                              // 0x0040520a    90
                         nop                                                              // 0x0040520b    90
                         nop                                                              // 0x0040520c    90
                         nop                                                              // 0x0040520d    90
                         nop                                                              // 0x0040520e    90
                         nop                                                              // 0x0040520f    90
?GetTownArtifactValue@GameThing@@QAEMXZ:
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00405210    d90598a38a00
                         ret                                                              // 0x00405216    c3
                         nop                                                              // 0x00405217    90
                         nop                                                              // 0x00405218    90
                         nop                                                              // 0x00405219    90
                         nop                                                              // 0x0040521a    90
                         nop                                                              // 0x0040521b    90
                         nop                                                              // 0x0040521c    90
                         nop                                                              // 0x0040521d    90
                         nop                                                              // 0x0040521e    90
                         nop                                                              // 0x0040521f    90
?CanBecomeArtifact@GameThing@@QAE_NXZ:
                         xor.s              al, al                                        // 0x00405220    32c0
                         ret                                                              // 0x00405222    c3
                         nop                                                              // 0x00405223    90
                         nop                                                              // 0x00405224    90
                         nop                                                              // 0x00405225    90
                         nop                                                              // 0x00405226    90
                         nop                                                              // 0x00405227    90
                         nop                                                              // 0x00405228    90
                         nop                                                              // 0x00405229    90
                         nop                                                              // 0x0040522a    90
                         nop                                                              // 0x0040522b    90
                         nop                                                              // 0x0040522c    90
                         nop                                                              // 0x0040522d    90
                         nop                                                              // 0x0040522e    90
                         nop                                                              // 0x0040522f    90
?DrawInHand@GameThing@@QAEXPAVGInterfaceStatus@@@Z:
                         ret                0x0004                                        // 0x00405230    c20400
                         nop                                                              // 0x00405233    90
                         nop                                                              // 0x00405234    90
                         nop                                                              // 0x00405235    90
                         nop                                                              // 0x00405236    90
                         nop                                                              // 0x00405237    90
                         nop                                                              // 0x00405238    90
                         nop                                                              // 0x00405239    90
                         nop                                                              // 0x0040523a    90
                         nop                                                              // 0x0040523b    90
                         nop                                                              // 0x0040523c    90
                         nop                                                              // 0x0040523d    90
                         nop                                                              // 0x0040523e    90
                         nop                                                              // 0x0040523f    90
?IsFunctional@GameThing@@QAE_NXZ:
                         mov                eax, dword ptr [ecx]                          // 0x00405240    8b01
                         {disp8} jmp        dword ptr [eax + 0x2c]                        // 0x00405242    ff602c
                         nop                                                              // 0x00405245    90
                         nop                                                              // 0x00405246    90
                         nop                                                              // 0x00405247    90
                         nop                                                              // 0x00405248    90
                         nop                                                              // 0x00405249    90
                         nop                                                              // 0x0040524a    90
                         nop                                                              // 0x0040524b    90
                         nop                                                              // 0x0040524c    90
                         nop                                                              // 0x0040524d    90
                         nop                                                              // 0x0040524e    90
                         nop                                                              // 0x0040524f    90
?ResolveLoad@GameThing@@QAEXXZ:
                         ret                                                              // 0x00405250    c3
                         nop                                                              // 0x00405251    90
                         nop                                                              // 0x00405252    90
                         nop                                                              // 0x00405253    90
                         nop                                                              // 0x00405254    90
                         nop                                                              // 0x00405255    90
                         nop                                                              // 0x00405256    90
                         nop                                                              // 0x00405257    90
                         nop                                                              // 0x00405258    90
                         nop                                                              // 0x00405259    90
                         nop                                                              // 0x0040525a    90
                         nop                                                              // 0x0040525b    90
                         nop                                                              // 0x0040525c    90
                         nop                                                              // 0x0040525d    90
                         nop                                                              // 0x0040525e    90
                         nop                                                              // 0x0040525f    90
?GetArrivePos@GameThingWithPos@@QAEPAUMapCoords@@XZ: {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00405260    8b442404
                         add                ecx, 0x14                                     // 0x00405264    83c114
                         push               esi                                           // 0x00405267    56
                         mov                esi, dword ptr [ecx]                          // 0x00405268    8b31
                         mov.s              edx, eax                                      // 0x0040526a    8bd0
                         mov                dword ptr [edx], esi                          // 0x0040526c    8932
                         {disp8} mov        esi, dword ptr [ecx + 0x04]                   // 0x0040526e    8b7104
                         {disp8} mov        dword ptr [edx + 0x04], esi                   // 0x00405271    897204
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00405274    8b4908
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x00405277    894a08
                         pop                esi                                           // 0x0040527a    5e
                         ret                0x0004                                        // 0x0040527b    c20400
                         nop                                                              // 0x0040527e    90
                         nop                                                              // 0x0040527f    90
?GetCreatureBeliefType@GameThingWithPos@@UAEIXZ:
                         mov                eax, 0x00000015                               // 0x00405280    b815000000
                         ret                                                              // 0x00405285    c3
                         nop                                                              // 0x00405286    90
                         nop                                                              // 0x00405287    90
                         nop                                                              // 0x00405288    90
                         nop                                                              // 0x00405289    90
                         nop                                                              // 0x0040528a    90
                         nop                                                              // 0x0040528b    90
                         nop                                                              // 0x0040528c    90
                         nop                                                              // 0x0040528d    90
                         nop                                                              // 0x0040528e    90
                         nop                                                              // 0x0040528f    90
?GetOrigin@GameThingWithPos@@UBEIXZ:
                         xor.s              eax, eax                                      // 0x00405290    33c0
                         ret                                                              // 0x00405292    c3
                         nop                                                              // 0x00405293    90
                         nop                                                              // 0x00405294    90
                         nop                                                              // 0x00405295    90
                         nop                                                              // 0x00405296    90
                         nop                                                              // 0x00405297    90
                         nop                                                              // 0x00405298    90
                         nop                                                              // 0x00405299    90
                         nop                                                              // 0x0040529a    90
                         nop                                                              // 0x0040529b    90
                         nop                                                              // 0x0040529c    90
                         nop                                                              // 0x0040529d    90
                         nop                                                              // 0x0040529e    90
                         nop                                                              // 0x0040529f    90
?GetLife@GameThingWithPos@@UBEMXZ:
                         {disp32} fld       dword ptr [_rdata_float1p0]                   // 0x004052a0    d90590a38a00
                         ret                                                              // 0x004052a6    c3
                         nop                                                              // 0x004052a7    90
                         nop                                                              // 0x004052a8    90
                         nop                                                              // 0x004052a9    90
                         nop                                                              // 0x004052aa    90
                         nop                                                              // 0x004052ab    90
                         nop                                                              // 0x004052ac    90
                         nop                                                              // 0x004052ad    90
                         nop                                                              // 0x004052ae    90
                         nop                                                              // 0x004052af    90
?IsMoving@GameThingWithPos@@UBE_NXZ:
                         xor.s              eax, eax                                      // 0x004052b0    33c0
                         ret                                                              // 0x004052b2    c3
                         nop                                                              // 0x004052b3    90
                         nop                                                              // 0x004052b4    90
                         nop                                                              // 0x004052b5    90
                         nop                                                              // 0x004052b6    90
                         nop                                                              // 0x004052b7    90
                         nop                                                              // 0x004052b8    90
                         nop                                                              // 0x004052b9    90
                         nop                                                              // 0x004052ba    90
                         nop                                                              // 0x004052bb    90
                         nop                                                              // 0x004052bc    90
                         nop                                                              // 0x004052bd    90
                         nop                                                              // 0x004052be    90
                         nop                                                              // 0x004052bf    90
?IsObjectInMap@GameThingWithPos@@UAE_NXZ:
                         xor.s              eax, eax                                      // 0x004052c0    33c0
                         {disp8} mov        al, byte ptr [ecx + 0x24]                     // 0x004052c2    8a4124
                         and                eax, 0x01                                     // 0x004052c5    83e001
                         ret                                                              // 0x004052c8    c3
                         nop                                                              // 0x004052c9    90
                         nop                                                              // 0x004052ca    90
                         nop                                                              // 0x004052cb    90
                         nop                                                              // 0x004052cc    90
                         nop                                                              // 0x004052cd    90
                         nop                                                              // 0x004052ce    90
                         nop                                                              // 0x004052cf    90
?IsDrowning@GameThingWithPos@@UAE_NXZ:
                         xor.s              eax, eax                                      // 0x004052d0    33c0
                         ret                                                              // 0x004052d2    c3
                         nop                                                              // 0x004052d3    90
                         nop                                                              // 0x004052d4    90
                         nop                                                              // 0x004052d5    90
                         nop                                                              // 0x004052d6    90
                         nop                                                              // 0x004052d7    90
                         nop                                                              // 0x004052d8    90
                         nop                                                              // 0x004052d9    90
                         nop                                                              // 0x004052da    90
                         nop                                                              // 0x004052db    90
                         nop                                                              // 0x004052dc    90
                         nop                                                              // 0x004052dd    90
                         nop                                                              // 0x004052de    90
                         nop                                                              // 0x004052df    90
?IsCastShadowAtNight@GameThingWithPos@@UAE_NXZ:
                         xor.s              eax, eax                                      // 0x004052e0    33c0
                         ret                                                              // 0x004052e2    c3
                         nop                                                              // 0x004052e3    90
                         nop                                                              // 0x004052e4    90
                         nop                                                              // 0x004052e5    90
                         nop                                                              // 0x004052e6    90
                         nop                                                              // 0x004052e7    90
                         nop                                                              // 0x004052e8    90
                         nop                                                              // 0x004052e9    90
                         nop                                                              // 0x004052ea    90
                         nop                                                              // 0x004052eb    90
                         nop                                                              // 0x004052ec    90
                         nop                                                              // 0x004052ed    90
                         nop                                                              // 0x004052ee    90
                         nop                                                              // 0x004052ef    90
?CleanupWhenDeleted@GameThingWithPos@@UAEXH@Z:
                         ret                0x0004                                        // 0x004052f0    c20400
                         nop                                                              // 0x004052f3    90
                         nop                                                              // 0x004052f4    90
                         nop                                                              // 0x004052f5    90
                         nop                                                              // 0x004052f6    90
                         nop                                                              // 0x004052f7    90
                         nop                                                              // 0x004052f8    90
                         nop                                                              // 0x004052f9    90
                         nop                                                              // 0x004052fa    90
                         nop                                                              // 0x004052fb    90
                         nop                                                              // 0x004052fc    90
                         nop                                                              // 0x004052fd    90
                         nop                                                              // 0x004052fe    90
                         nop                                                              // 0x004052ff    90
?GetImpressiveValue@GameThingWithPos@@UAEMPAULiving@@PAUReaction@@@Z:
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00405300    d90598a38a00
                         ret                0x0008                                        // 0x00405306    c20800
                         nop                                                              // 0x00405309    90
                         nop                                                              // 0x0040530a    90
                         nop                                                              // 0x0040530b    90
                         nop                                                              // 0x0040530c    90
                         nop                                                              // 0x0040530d    90
                         nop                                                              // 0x0040530e    90
                         nop                                                              // 0x0040530f    90
?IsAbode@GameThingWithPos@@UAE_NXZ:
                         xor.s              eax, eax                                      // 0x00405310    33c0
                         ret                                                              // 0x00405312    c3
                         nop                                                              // 0x00405313    90
                         nop                                                              // 0x00405314    90
                         nop                                                              // 0x00405315    90
                         nop                                                              // 0x00405316    90
                         nop                                                              // 0x00405317    90
                         nop                                                              // 0x00405318    90
                         nop                                                              // 0x00405319    90
                         nop                                                              // 0x0040531a    90
                         nop                                                              // 0x0040531b    90
                         nop                                                              // 0x0040531c    90
                         nop                                                              // 0x0040531d    90
                         nop                                                              // 0x0040531e    90
                         nop                                                              // 0x0040531f    90
?IsBuildingMaterial@GameThingWithPos@@UAE_NXZ:
                         xor.s              eax, eax                                      // 0x00405320    33c0
                         ret                                                              // 0x00405322    c3
                         nop                                                              // 0x00405323    90
                         nop                                                              // 0x00405324    90
                         nop                                                              // 0x00405325    90
                         nop                                                              // 0x00405326    90
                         nop                                                              // 0x00405327    90
                         nop                                                              // 0x00405328    90
                         nop                                                              // 0x00405329    90
                         nop                                                              // 0x0040532a    90
                         nop                                                              // 0x0040532b    90
                         nop                                                              // 0x0040532c    90
                         nop                                                              // 0x0040532d    90
                         nop                                                              // 0x0040532e    90
                         nop                                                              // 0x0040532f    90
?IsSuitableForCreatureAction@GameThingWithPos@@UAE_NXZ:
                         xor.s              eax, eax                                      // 0x00405330    33c0
                         ret                                                              // 0x00405332    c3
                         nop                                                              // 0x00405333    90
                         nop                                                              // 0x00405334    90
                         nop                                                              // 0x00405335    90
                         nop                                                              // 0x00405336    90
                         nop                                                              // 0x00405337    90
                         nop                                                              // 0x00405338    90
                         nop                                                              // 0x00405339    90
                         nop                                                              // 0x0040533a    90
                         nop                                                              // 0x0040533b    90
                         nop                                                              // 0x0040533c    90
                         nop                                                              // 0x0040533d    90
                         nop                                                              // 0x0040533e    90
                         nop                                                              // 0x0040533f    90
?CanBeEatenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x00405340    33c0
                         ret                0x0004                                        // 0x00405342    c20400
                         nop                                                              // 0x00405345    90
                         nop                                                              // 0x00405346    90
                         nop                                                              // 0x00405347    90
                         nop                                                              // 0x00405348    90
                         nop                                                              // 0x00405349    90
                         nop                                                              // 0x0040534a    90
                         nop                                                              // 0x0040534b    90
                         nop                                                              // 0x0040534c    90
                         nop                                                              // 0x0040534d    90
                         nop                                                              // 0x0040534e    90
                         nop                                                              // 0x0040534f    90
?CanBeAttackedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x00405350    33c0
                         ret                0x0004                                        // 0x00405352    c20400
                         nop                                                              // 0x00405355    90
                         nop                                                              // 0x00405356    90
                         nop                                                              // 0x00405357    90
                         nop                                                              // 0x00405358    90
                         nop                                                              // 0x00405359    90
                         nop                                                              // 0x0040535a    90
                         nop                                                              // 0x0040535b    90
                         nop                                                              // 0x0040535c    90
                         nop                                                              // 0x0040535d    90
                         nop                                                              // 0x0040535e    90
                         nop                                                              // 0x0040535f    90
?CanBeFrighteningToCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x00405360    33c0
                         ret                0x0004                                        // 0x00405362    c20400
                         nop                                                              // 0x00405365    90
                         nop                                                              // 0x00405366    90
                         nop                                                              // 0x00405367    90
                         nop                                                              // 0x00405368    90
                         nop                                                              // 0x00405369    90
                         nop                                                              // 0x0040536a    90
                         nop                                                              // 0x0040536b    90
                         nop                                                              // 0x0040536c    90
                         nop                                                              // 0x0040536d    90
                         nop                                                              // 0x0040536e    90
                         nop                                                              // 0x0040536f    90
?CanBeHelpedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x00405370    33c0
                         ret                0x0004                                        // 0x00405372    c20400
                         nop                                                              // 0x00405375    90
                         nop                                                              // 0x00405376    90
                         nop                                                              // 0x00405377    90
                         nop                                                              // 0x00405378    90
                         nop                                                              // 0x00405379    90
                         nop                                                              // 0x0040537a    90
                         nop                                                              // 0x0040537b    90
                         nop                                                              // 0x0040537c    90
                         nop                                                              // 0x0040537d    90
                         nop                                                              // 0x0040537e    90
                         nop                                                              // 0x0040537f    90
?CanBePlayedWithByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x00405380    33c0
                         ret                0x0004                                        // 0x00405382    c20400
                         nop                                                              // 0x00405385    90
                         nop                                                              // 0x00405386    90
                         nop                                                              // 0x00405387    90
                         nop                                                              // 0x00405388    90
                         nop                                                              // 0x00405389    90
                         nop                                                              // 0x0040538a    90
                         nop                                                              // 0x0040538b    90
                         nop                                                              // 0x0040538c    90
                         nop                                                              // 0x0040538d    90
                         nop                                                              // 0x0040538e    90
                         nop                                                              // 0x0040538f    90
?CanBeImpressedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x00405390    33c0
                         ret                0x0004                                        // 0x00405392    c20400
                         nop                                                              // 0x00405395    90
                         nop                                                              // 0x00405396    90
                         nop                                                              // 0x00405397    90
                         nop                                                              // 0x00405398    90
                         nop                                                              // 0x00405399    90
                         nop                                                              // 0x0040539a    90
                         nop                                                              // 0x0040539b    90
                         nop                                                              // 0x0040539c    90
                         nop                                                              // 0x0040539d    90
                         nop                                                              // 0x0040539e    90
                         nop                                                              // 0x0040539f    90
?CanBeInspectedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x004053a0    33c0
                         ret                0x0004                                        // 0x004053a2    c20400
                         nop                                                              // 0x004053a5    90
                         nop                                                              // 0x004053a6    90
                         nop                                                              // 0x004053a7    90
                         nop                                                              // 0x004053a8    90
                         nop                                                              // 0x004053a9    90
                         nop                                                              // 0x004053aa    90
                         nop                                                              // 0x004053ab    90
                         nop                                                              // 0x004053ac    90
                         nop                                                              // 0x004053ad    90
                         nop                                                              // 0x004053ae    90
                         nop                                                              // 0x004053af    90
?CanBePoodUponByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x004053b0    33c0
                         ret                0x0004                                        // 0x004053b2    c20400
                         nop                                                              // 0x004053b5    90
                         nop                                                              // 0x004053b6    90
                         nop                                                              // 0x004053b7    90
                         nop                                                              // 0x004053b8    90
                         nop                                                              // 0x004053b9    90
                         nop                                                              // 0x004053ba    90
                         nop                                                              // 0x004053bb    90
                         nop                                                              // 0x004053bc    90
                         nop                                                              // 0x004053bd    90
                         nop                                                              // 0x004053be    90
                         nop                                                              // 0x004053bf    90
?CanBeSleptNextToByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x004053c0    33c0
                         ret                0x0004                                        // 0x004053c2    c20400
                         nop                                                              // 0x004053c5    90
                         nop                                                              // 0x004053c6    90
                         nop                                                              // 0x004053c7    90
                         nop                                                              // 0x004053c8    90
                         nop                                                              // 0x004053c9    90
                         nop                                                              // 0x004053ca    90
                         nop                                                              // 0x004053cb    90
                         nop                                                              // 0x004053cc    90
                         nop                                                              // 0x004053cd    90
                         nop                                                              // 0x004053ce    90
                         nop                                                              // 0x004053cf    90
?CanBePickedUpByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x004053d0    33c0
                         ret                0x0004                                        // 0x004053d2    c20400
                         nop                                                              // 0x004053d5    90
                         nop                                                              // 0x004053d6    90
                         nop                                                              // 0x004053d7    90
                         nop                                                              // 0x004053d8    90
                         nop                                                              // 0x004053d9    90
                         nop                                                              // 0x004053da    90
                         nop                                                              // 0x004053db    90
                         nop                                                              // 0x004053dc    90
                         nop                                                              // 0x004053dd    90
                         nop                                                              // 0x004053de    90
                         nop                                                              // 0x004053df    90
?CanBeStrokedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x004053e0    33c0
                         ret                0x0004                                        // 0x004053e2    c20400
                         nop                                                              // 0x004053e5    90
                         nop                                                              // 0x004053e6    90
                         nop                                                              // 0x004053e7    90
                         nop                                                              // 0x004053e8    90
                         nop                                                              // 0x004053e9    90
                         nop                                                              // 0x004053ea    90
                         nop                                                              // 0x004053eb    90
                         nop                                                              // 0x004053ec    90
                         nop                                                              // 0x004053ed    90
                         nop                                                              // 0x004053ee    90
                         nop                                                              // 0x004053ef    90
?CanBeSetOnFire@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x004053f0    33c0
                         ret                0x0004                                        // 0x004053f2    c20400
                         nop                                                              // 0x004053f5    90
                         nop                                                              // 0x004053f6    90
                         nop                                                              // 0x004053f7    90
                         nop                                                              // 0x004053f8    90
                         nop                                                              // 0x004053f9    90
                         nop                                                              // 0x004053fa    90
                         nop                                                              // 0x004053fb    90
                         nop                                                              // 0x004053fc    90
                         nop                                                              // 0x004053fd    90
                         nop                                                              // 0x004053fe    90
                         nop                                                              // 0x004053ff    90
?CanBeStompedOnByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x00405400    33c0
                         ret                0x0004                                        // 0x00405402    c20400
                         nop                                                              // 0x00405405    90
                         nop                                                              // 0x00405406    90
                         nop                                                              // 0x00405407    90
                         nop                                                              // 0x00405408    90
                         nop                                                              // 0x00405409    90
                         nop                                                              // 0x0040540a    90
                         nop                                                              // 0x0040540b    90
                         nop                                                              // 0x0040540c    90
                         nop                                                              // 0x0040540d    90
                         nop                                                              // 0x0040540e    90
                         nop                                                              // 0x0040540f    90
?CanBeThrownByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x00405410    33c0
                         ret                0x0004                                        // 0x00405412    c20400
                         nop                                                              // 0x00405415    90
                         nop                                                              // 0x00405416    90
                         nop                                                              // 0x00405417    90
                         nop                                                              // 0x00405418    90
                         nop                                                              // 0x00405419    90
                         nop                                                              // 0x0040541a    90
                         nop                                                              // 0x0040541b    90
                         nop                                                              // 0x0040541c    90
                         nop                                                              // 0x0040541d    90
                         nop                                                              // 0x0040541e    90
                         nop                                                              // 0x0040541f    90
?CanBePutInAStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x00405420    33c0
                         ret                0x0004                                        // 0x00405422    c20400
                         nop                                                              // 0x00405425    90
                         nop                                                              // 0x00405426    90
                         nop                                                              // 0x00405427    90
                         nop                                                              // 0x00405428    90
                         nop                                                              // 0x00405429    90
                         nop                                                              // 0x0040542a    90
                         nop                                                              // 0x0040542b    90
                         nop                                                              // 0x0040542c    90
                         nop                                                              // 0x0040542d    90
                         nop                                                              // 0x0040542e    90
                         nop                                                              // 0x0040542f    90
?CanBeDestroyedByStoning@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x00405430    33c0
                         ret                0x0004                                        // 0x00405432    c20400
                         nop                                                              // 0x00405435    90
                         nop                                                              // 0x00405436    90
                         nop                                                              // 0x00405437    90
                         nop                                                              // 0x00405438    90
                         nop                                                              // 0x00405439    90
                         nop                                                              // 0x0040543a    90
                         nop                                                              // 0x0040543b    90
                         nop                                                              // 0x0040543c    90
                         nop                                                              // 0x0040543d    90
                         nop                                                              // 0x0040543e    90
                         nop                                                              // 0x0040543f    90
?CanBeExaminedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x00405440    33c0
                         ret                0x0004                                        // 0x00405442    c20400
                         nop                                                              // 0x00405445    90
                         nop                                                              // 0x00405446    90
                         nop                                                              // 0x00405447    90
                         nop                                                              // 0x00405448    90
                         nop                                                              // 0x00405449    90
                         nop                                                              // 0x0040544a    90
                         nop                                                              // 0x0040544b    90
                         nop                                                              // 0x0040544c    90
                         nop                                                              // 0x0040544d    90
                         nop                                                              // 0x0040544e    90
                         nop                                                              // 0x0040544f    90
?IsBeingBuilt@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x00405450    33c0
                         ret                0x0004                                        // 0x00405452    c20400
                         nop                                                              // 0x00405455    90
                         nop                                                              // 0x00405456    90
                         nop                                                              // 0x00405457    90
                         nop                                                              // 0x00405458    90
                         nop                                                              // 0x00405459    90
                         nop                                                              // 0x0040545a    90
                         nop                                                              // 0x0040545b    90
                         nop                                                              // 0x0040545c    90
                         nop                                                              // 0x0040545d    90
                         nop                                                              // 0x0040545e    90
                         nop                                                              // 0x0040545f    90
?NeedsRepair@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x00405460    33c0
                         ret                0x0004                                        // 0x00405462    c20400
                         nop                                                              // 0x00405465    90
                         nop                                                              // 0x00405466    90
                         nop                                                              // 0x00405467    90
                         nop                                                              // 0x00405468    90
                         nop                                                              // 0x00405469    90
                         nop                                                              // 0x0040546a    90
                         nop                                                              // 0x0040546b    90
                         nop                                                              // 0x0040546c    90
                         nop                                                              // 0x0040546d    90
                         nop                                                              // 0x0040546e    90
                         nop                                                              // 0x0040546f    90
?IsOnFire@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x00405470    33c0
                         ret                0x0004                                        // 0x00405472    c20400
                         nop                                                              // 0x00405475    90
                         nop                                                              // 0x00405476    90
                         nop                                                              // 0x00405477    90
                         nop                                                              // 0x00405478    90
                         nop                                                              // 0x00405479    90
                         nop                                                              // 0x0040547a    90
                         nop                                                              // 0x0040547b    90
                         nop                                                              // 0x0040547c    90
                         nop                                                              // 0x0040547d    90
                         nop                                                              // 0x0040547e    90
                         nop                                                              // 0x0040547f    90
?CanBePutInFoodPile@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x00405480    33c0
                         ret                0x0004                                        // 0x00405482    c20400
                         nop                                                              // 0x00405485    90
                         nop                                                              // 0x00405486    90
                         nop                                                              // 0x00405487    90
                         nop                                                              // 0x00405488    90
                         nop                                                              // 0x00405489    90
                         nop                                                              // 0x0040548a    90
                         nop                                                              // 0x0040548b    90
                         nop                                                              // 0x0040548c    90
                         nop                                                              // 0x0040548d    90
                         nop                                                              // 0x0040548e    90
                         nop                                                              // 0x0040548f    90
?CanBePutInWoodPile@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x00405490    33c0
                         ret                0x0004                                        // 0x00405492    c20400
                         nop                                                              // 0x00405495    90
                         nop                                                              // 0x00405496    90
                         nop                                                              // 0x00405497    90
                         nop                                                              // 0x00405498    90
                         nop                                                              // 0x00405499    90
                         nop                                                              // 0x0040549a    90
                         nop                                                              // 0x0040549b    90
                         nop                                                              // 0x0040549c    90
                         nop                                                              // 0x0040549d    90
                         nop                                                              // 0x0040549e    90
                         nop                                                              // 0x0040549f    90
?CanBeBroughtBackToCitadel@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x004054a0    33c0
                         ret                0x0004                                        // 0x004054a2    c20400
                         nop                                                              // 0x004054a5    90
                         nop                                                              // 0x004054a6    90
                         nop                                                              // 0x004054a7    90
                         nop                                                              // 0x004054a8    90
                         nop                                                              // 0x004054a9    90
                         nop                                                              // 0x004054aa    90
                         nop                                                              // 0x004054ab    90
                         nop                                                              // 0x004054ac    90
                         nop                                                              // 0x004054ad    90
                         nop                                                              // 0x004054ae    90
                         nop                                                              // 0x004054af    90
?CanBePoodOn@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x004054b0    33c0
                         ret                0x0004                                        // 0x004054b2    c20400
                         nop                                                              // 0x004054b5    90
                         nop                                                              // 0x004054b6    90
                         nop                                                              // 0x004054b7    90
                         nop                                                              // 0x004054b8    90
                         nop                                                              // 0x004054b9    90
                         nop                                                              // 0x004054ba    90
                         nop                                                              // 0x004054bb    90
                         nop                                                              // 0x004054bc    90
                         nop                                                              // 0x004054bd    90
                         nop                                                              // 0x004054be    90
                         nop                                                              // 0x004054bf    90
?IsBuildingWhichIsBeingBuilt@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x004054c0    33c0
                         ret                0x0004                                        // 0x004054c2    c20400
                         nop                                                              // 0x004054c5    90
                         nop                                                              // 0x004054c6    90
                         nop                                                              // 0x004054c7    90
                         nop                                                              // 0x004054c8    90
                         nop                                                              // 0x004054c9    90
                         nop                                                              // 0x004054ca    90
                         nop                                                              // 0x004054cb    90
                         nop                                                              // 0x004054cc    90
                         nop                                                              // 0x004054cd    90
                         nop                                                              // 0x004054ce    90
                         nop                                                              // 0x004054cf    90
?CanBeKickedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z:
                         xor.s              eax, eax                                      // 0x004054d0    33c0
                         ret                0x0004                                        // 0x004054d2    c20400
                         nop                                                              // 0x004054d5    90
                         nop                                                              // 0x004054d6    90
                         nop                                                              // 0x004054d7    90
                         nop                                                              // 0x004054d8    90
                         nop                                                              // 0x004054d9    90
                         nop                                                              // 0x004054da    90
                         nop                                                              // 0x004054db    90
                         nop                                                              // 0x004054dc    90
                         nop                                                              // 0x004054dd    90
                         nop                                                              // 0x004054de    90
                         nop                                                              // 0x004054df    90
?GetCreatureMimicType@GameThingWithPos@@UBEIXZ:
                         mov                eax, 0x0000000a                               // 0x004054e0    b80a000000
                         ret                                                              // 0x004054e5    c3
                         nop                                                              // 0x004054e6    90
                         nop                                                              // 0x004054e7    90
                         nop                                                              // 0x004054e8    90
                         nop                                                              // 0x004054e9    90
                         nop                                                              // 0x004054ea    90
                         nop                                                              // 0x004054eb    90
                         nop                                                              // 0x004054ec    90
                         nop                                                              // 0x004054ed    90
                         nop                                                              // 0x004054ee    90
                         nop                                                              // 0x004054ef    90
?GetHowMuchCreatureWantsToLookAtMe@GameThingWithPos@@UAEMXZ:
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x004054f0    d90598a38a00
                         ret                                                              // 0x004054f6    c3
                         nop                                                              // 0x004054f7    90
                         nop                                                              // 0x004054f8    90
                         nop                                                              // 0x004054f9    90
                         nop                                                              // 0x004054fa    90
                         nop                                                              // 0x004054fb    90
                         nop                                                              // 0x004054fc    90
                         nop                                                              // 0x004054fd    90
                         nop                                                              // 0x004054fe    90
                         nop                                                              // 0x004054ff    90
?GetHeight@GameThingWithPos@@UBEMXZ:
                         {disp32} fld       dword ptr [_rdata_float0p0]                   // 0x00405500    d90598a38a00
                         ret                                                              // 0x00405506    c3
                         nop                                                              // 0x00405507    90
                         nop                                                              // 0x00405508    90
                         nop                                                              // 0x00405509    90
                         nop                                                              // 0x0040550a    90
                         nop                                                              // 0x0040550b    90
                         nop                                                              // 0x0040550c    90
                         nop                                                              // 0x0040550d    90
                         nop                                                              // 0x0040550e    90
                         nop                                                              // 0x0040550f    90
?SetInScript@GameThingWithPos@@UAEXH@Z:
                         xor.s              eax, eax                                      // 0x00405510    33c0
                         {disp8} mov        al, byte ptr [esp + 0x04]                     // 0x00405512    8a442404
                         xor.s              edx, edx                                      // 0x00405516    33d2
                         {disp8} mov        dx, word ptr [ecx + 0x24]                     // 0x00405518    668b5124
                         and                eax, 0x01                                     // 0x0040551c    83e001
                         shl                eax, 9                                        // 0x0040551f    c1e009
                         and                edx, 0x0000fdff                               // 0x00405522    81e2fffd0000
                         or.s               eax, edx                                      // 0x00405528    0bc2
                         {disp8} mov        word ptr [ecx + 0x24], ax                     // 0x0040552a    66894124
                         ret                0x0004                                        // 0x0040552e    c20400
                         nop                                                              // 0x00405531    90
                         nop                                                              // 0x00405532    90
                         nop                                                              // 0x00405533    90
                         nop                                                              // 0x00405534    90
                         nop                                                              // 0x00405535    90
                         nop                                                              // 0x00405536    90
                         nop                                                              // 0x00405537    90
                         nop                                                              // 0x00405538    90
                         nop                                                              // 0x00405539    90
                         nop                                                              // 0x0040553a    90
                         nop                                                              // 0x0040553b    90
                         nop                                                              // 0x0040553c    90
                         nop                                                              // 0x0040553d    90
                         nop                                                              // 0x0040553e    90
                         nop                                                              // 0x0040553f    90
?IsHouse@GameThingWithPos@@UAE_NXZ:
                         xor.s              eax, eax                                      // 0x00405540    33c0
                         ret                                                              // 0x00405542    c3
                         nop                                                              // 0x00405543    90
                         nop                                                              // 0x00405544    90
                         nop                                                              // 0x00405545    90
                         nop                                                              // 0x00405546    90
                         nop                                                              // 0x00405547    90
                         nop                                                              // 0x00405548    90
                         nop                                                              // 0x00405549    90
                         nop                                                              // 0x0040554a    90
                         nop                                                              // 0x0040554b    90
                         nop                                                              // 0x0040554c    90
                         nop                                                              // 0x0040554d    90
                         nop                                                              // 0x0040554e    90
                         nop                                                              // 0x0040554f    90
?IsObject@GameThingWithPos@@UBE_NXZ:
                         xor.s              eax, eax                                      // 0x00405550    33c0
                         ret                                                              // 0x00405552    c3
                         nop                                                              // 0x00405553    90
                         nop                                                              // 0x00405554    90
                         nop                                                              // 0x00405555    90
                         nop                                                              // 0x00405556    90
                         nop                                                              // 0x00405557    90
                         nop                                                              // 0x00405558    90
                         nop                                                              // 0x00405559    90
                         nop                                                              // 0x0040555a    90
                         nop                                                              // 0x0040555b    90
                         nop                                                              // 0x0040555c    90
                         nop                                                              // 0x0040555d    90
                         nop                                                              // 0x0040555e    90
                         nop                                                              // 0x0040555f    90
?GetQueryFirstEnumText@GameThingWithPos@@UAE?AW4HELP_TEXT@@XZ:
                         xor.s              eax, eax                                      // 0x00405560    33c0
                         ret                                                              // 0x00405562    c3
                         nop                                                              // 0x00405563    90
                         nop                                                              // 0x00405564    90
                         nop                                                              // 0x00405565    90
                         nop                                                              // 0x00405566    90
                         nop                                                              // 0x00405567    90
                         nop                                                              // 0x00405568    90
                         nop                                                              // 0x00405569    90
                         nop                                                              // 0x0040556a    90
                         nop                                                              // 0x0040556b    90
                         nop                                                              // 0x0040556c    90
                         nop                                                              // 0x0040556d    90
                         nop                                                              // 0x0040556e    90
                         nop                                                              // 0x0040556f    90
?GetQueryLastEnumText@GameThingWithPos@@UAE?AW4HELP_TEXT@@XZ:
                         xor.s              eax, eax                                      // 0x00405570    33c0
                         ret                                                              // 0x00405572    c3
                         nop                                                              // 0x00405573    90
                         nop                                                              // 0x00405574    90
                         nop                                                              // 0x00405575    90
                         nop                                                              // 0x00405576    90
                         nop                                                              // 0x00405577    90
                         nop                                                              // 0x00405578    90
                         nop                                                              // 0x00405579    90
                         nop                                                              // 0x0040557a    90
                         nop                                                              // 0x0040557b    90
                         nop                                                              // 0x0040557c    90
                         nop                                                              // 0x0040557d    90
                         nop                                                              // 0x0040557e    90
                         nop                                                              // 0x0040557f    90
_jmp_addr_0x00405580:    {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00405580    8b442404
                         push               esi                                           // 0x00405584    56
                         mov.s              esi, ecx                                      // 0x00405585    8bf1
                         push               eax                                           // 0x00405587    50
                         call               _jmp_addr_0x00648820                          // 0x00405588    e893322400
                         {disp8} mov        dword ptr [esi + 0x48], 0x00000000            // 0x0040558d    c7464800000000
                         mov                dword ptr [esi], 0x008aa3bc                   // 0x00405594    c706bca38a00
                         mov.s              eax, esi                                      // 0x0040559a    8bc6
                         pop                esi                                           // 0x0040559c    5e
                         ret                0x0004                                        // 0x0040559d    c20400
@Init__12PlannedAbodeFP4Town@12:    mov.s              eax, ecx                                      // 0x004055a0    8bc1
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                   // 0x004055a2    8b4c2404
                         test               ecx, ecx                                      // 0x004055a6    85c9
                         {disp8} mov        dword ptr [eax + 0x48], ecx                   // 0x004055a8    894848
                         {disp8} je         _jmp_addr_0x004055b3                          // 0x004055ab    7406
                         push               eax                                           // 0x004055ad    50
                         call               ?AddPlanned@Town@@QAEXPAVPlannedMultiMapFixed@@@Z // 0x004055ae    e8cd7a3300
_jmp_addr_0x004055b3:    ret                0x0004                                        // 0x004055b3    c20400
                         nop                                                              // 0x004055b6    90
                         nop                                                              // 0x004055b7    90
                         nop                                                              // 0x004055b8    90
                         nop                                                              // 0x004055b9    90
                         nop                                                              // 0x004055ba    90
                         nop                                                              // 0x004055bb    90
                         nop                                                              // 0x004055bc    90
                         nop                                                              // 0x004055bd    90
                         nop                                                              // 0x004055be    90
                         nop                                                              // 0x004055bf    90

?CreateNoInit@PlannedAbode@@SAPAV1@PAUMapCoords@@PAVGMultiMapFixedInfo@@PAVTown@@MM@Z:
                         push               0x0000054f                                    // 0x004055c0    684f050000
                         push               0x009c7fbc                                    // 0x004055c5    68bc7f9c00
                         push               0x4c                                          // 0x004055ca    6a4c
                         call               ___nw__4BaseFUl                               // 0x004055cc    e81f110300
                         add                esp, 0x0c                                     // 0x004055d1    83c40c
                         test               eax, eax                                      // 0x004055d4    85c0
                         {disp8} je         _jmp_addr_0x004055f9                          // 0x004055d6    7421
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x004055d8    8b4c2414
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x004055dc    8b542410
                         push               ecx                                           // 0x004055e0    51
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x004055e1    8b4c2410
                         push               edx                                           // 0x004055e5    52
                         {disp8} mov        edx, dword ptr [esp + 0x10]                   // 0x004055e6    8b542410
                         push               ecx                                           // 0x004055ea    51
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x004055eb    8b4c2410
                         push               edx                                           // 0x004055ef    52
                         push               ecx                                           // 0x004055f0    51
                         mov.s              ecx, eax                                      // 0x004055f1    8bc8
                         call               ??0PlannedAbode@@QAE@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z  // 0x004055f3    e888faffff
                         ret                                                              // 0x004055f8    c3
_jmp_addr_0x004055f9:    xor.s              eax, eax                                      // 0x004055f9    33c0
                         ret                                                              // 0x004055fb    c3
                         nop                                                              // 0x004055fc    90
                         nop                                                              // 0x004055fd    90
                         nop                                                              // 0x004055fe    90
                         nop                                                              // 0x004055ff    90

?Create@PlannedAbode@@SAPAV1@PAUMapCoords@@PAVGMultiMapFixedInfo@@PAVTown@@MM@Z:
                         push               esi                                           // 0x00405600    56
                         push               edi                                           // 0x00405601    57
                         push               0x00000557                                    // 0x00405602    6857050000
                         push               0x009c7fbc                                    // 0x00405607    68bc7f9c00
                         push               0x4c                                          // 0x0040560c    6a4c
                         call               ___nw__4BaseFUl                               // 0x0040560e    e8dd100300
                         {disp8} mov        edi, dword ptr [esp + 0x20]                   // 0x00405613    8b7c2420
                         add                esp, 0x0c                                     // 0x00405617    83c40c
                         test               eax, eax                                      // 0x0040561a    85c0
                         {disp8} je         _jmp_addr_0x00405649                          // 0x0040561c    742b
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x0040561e    8b4c241c
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x00405622    8b542418
                         push               ecx                                           // 0x00405626    51
                         {disp8} mov        ecx, dword ptr [esp + 0x14]                   // 0x00405627    8b4c2414
                         push               edx                                           // 0x0040562b    52
                         {disp8} mov        edx, dword ptr [esp + 0x14]                   // 0x0040562c    8b542414
                         push               edi                                           // 0x00405630    57
                         push               ecx                                           // 0x00405631    51
                         push               edx                                           // 0x00405632    52
                         mov.s              ecx, eax                                      // 0x00405633    8bc8
                         call               ??0PlannedAbode@@QAE@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z  // 0x00405635    e846faffff
                         mov.s              esi, eax                                      // 0x0040563a    8bf0
                         push               edi                                           // 0x0040563c    57
                         mov.s              ecx, esi                                      // 0x0040563d    8bce
                         call               @Init__12PlannedAbodeFP4Town@12               // 0x0040563f    e85cffffff
                         pop                edi                                           // 0x00405644    5f
                         mov.s              eax, esi                                      // 0x00405645    8bc6
                         pop                esi                                           // 0x00405647    5e
                         ret                                                              // 0x00405648    c3
_jmp_addr_0x00405649:    xor.s              esi, esi                                      // 0x00405649    33f6
                         push               edi                                           // 0x0040564b    57
                         mov.s              ecx, esi                                      // 0x0040564c    8bce
                         call               @Init__12PlannedAbodeFP4Town@12               // 0x0040564e    e84dffffff
                         pop                edi                                           // 0x00405653    5f
                         mov.s              eax, esi                                      // 0x00405654    8bc6
                         pop                esi                                           // 0x00405656    5e
                         ret                                                              // 0x00405657    c3
                         nop                                                              // 0x00405658    90
                         nop                                                              // 0x00405659    90
                         nop                                                              // 0x0040565a    90
                         nop                                                              // 0x0040565b    90
                         nop                                                              // 0x0040565c    90
                         nop                                                              // 0x0040565d    90
                         nop                                                              // 0x0040565e    90
                         nop                                                              // 0x0040565f    90
_jmp_addr_0x00405660:    push               esi                                           // 0x00405660    56
                         push               edi                                           // 0x00405661    57
                         push               0x00000560                                    // 0x00405662    6860050000
                         push               0x009c7fbc                                    // 0x00405667    68bc7f9c00
                         push               0x4c                                          // 0x0040566c    6a4c
                         call               ___nw__4BaseFUl                               // 0x0040566e    e87d100300
                         {disp8} mov        edi, dword ptr [esp + 0x18]                   // 0x00405673    8b7c2418
                         add                esp, 0x0c                                     // 0x00405677    83c40c
                         test               eax, eax                                      // 0x0040567a    85c0
                         {disp8} je         _jmp_addr_0x0040568a                          // 0x0040567c    740c
                         push               edi                                           // 0x0040567e    57
                         mov.s              ecx, eax                                      // 0x0040567f    8bc8
                         call               _jmp_addr_0x00405580                          // 0x00405681    e8fafeffff
                         mov.s              esi, eax                                      // 0x00405686    8bf0
                         {disp8} jmp        _jmp_addr_0x0040568c                          // 0x00405688    eb02
_jmp_addr_0x0040568a:    xor.s              esi, esi                                      // 0x0040568a    33f6
_jmp_addr_0x0040568c:    {disp8} mov        eax, dword ptr [edi + 0x64]                   // 0x0040568c    8b4764
                         {disp8} mov        dword ptr [esi + 0x38], eax                   // 0x0040568f    894638
                         mov                edx, dword ptr [edi]                          // 0x00405692    8b17
                         mov.s              ecx, edi                                      // 0x00405694    8bcf
                         {disp8} mov        dword ptr [edi + 0x64], 0x00000000            // 0x00405696    c7476400000000
                         call               dword ptr [edx + 0x48]                        // 0x0040569d    ff5248
                         push               eax                                           // 0x004056a0    50
                         mov.s              ecx, esi                                      // 0x004056a1    8bce
                         call               @Init__12PlannedAbodeFP4Town@12               // 0x004056a3    e8f8feffff
                         pop                edi                                           // 0x004056a8    5f
                         mov.s              eax, esi                                      // 0x004056a9    8bc6
                         pop                esi                                           // 0x004056ab    5e
                         ret                                                              // 0x004056ac    c3
                         nop                                                              // 0x004056ad    90
                         nop                                                              // 0x004056ae    90
                         nop                                                              // 0x004056af    90

?ToBeDeleted@PlannedAbode@@UAEXH@Z:
                         push               esi                                           // 0x004056b0    56
                         mov.s              esi, ecx                                      // 0x004056b1    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x48]                   // 0x004056b3    8b4e48
                         test               ecx, ecx                                      // 0x004056b6    85c9
                         {disp8} je         _jmp_addr_0x004056c0                          // 0x004056b8    7406
                         push               esi                                           // 0x004056ba    56
                         call               ?RemovePlanned@Town@@QAEXPAVPlannedMultiMapFixed@@@Z  // 0x004056bb    e8107a3300
_jmp_addr_0x004056c0:    {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x004056c0    8b442408
                         push               eax                                           // 0x004056c4    50
                         mov.s              ecx, esi                                      // 0x004056c5    8bce
                         call               ?ToBeDeleted@GameThingWithPos@@UAEXH@Z        // 0x004056c7    e834a71600
                         pop                esi                                           // 0x004056cc    5e
                         ret                0x0004                                        // 0x004056cd    c20400

?GetInfo@PlannedAbode@@SAPAVGPlannedAbodeInfo@@XZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x40]                   // 0x004056d0    8b4140
                         ret                                                              // 0x004056d3    c3
                         nop                                                              // 0x004056d4    90
                         nop                                                              // 0x004056d5    90
                         nop                                                              // 0x004056d6    90
                         nop                                                              // 0x004056d7    90
                         nop                                                              // 0x004056d8    90
                         nop                                                              // 0x004056d9    90
                         nop                                                              // 0x004056da    90
                         nop                                                              // 0x004056db    90
                         nop                                                              // 0x004056dc    90
                         nop                                                              // 0x004056dd    90
                         nop                                                              // 0x004056de    90
                         nop                                                              // 0x004056df    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x004056e0    8b442404
                         {disp8} mov        dword ptr [ecx + 0x2c], eax                   // 0x004056e4    89412c
                         ret                0x0004                                        // 0x004056e7    c20400
                         call               dword ptr [__imp__CoFileTimeToDosDateTime@4]  // 0x004056ea    ff1578998a00
_jmp_addr_0x004056f0:    call               ?GetInfo@PlannedAbode@@SAPAVGPlannedAbodeInfo@@XZ                          // 0x004056f0    e8dbffffff
                         {disp32} mov       eax, dword ptr [eax + 0x00000120]             // 0x004056f5    8b8020010000
                         and                eax, dword ptr [esp + 0x04]                   // 0x004056fb    23442404
                         neg                eax                                           // 0x004056ff    f7d8
                         sbb.s              eax, eax                                      // 0x00405701    1bc0
                         neg                eax                                           // 0x00405703    f7d8
                         ret                0x0004                                        // 0x00405705    c20400
                         nop                                                              // 0x00405708    90
                         nop                                                              // 0x00405709    90
                         nop                                                              // 0x0040570a    90
                         nop                                                              // 0x0040570b    90
                         nop                                                              // 0x0040570c    90
                         nop                                                              // 0x0040570d    90
                         nop                                                              // 0x0040570e    90
                         nop                                                              // 0x0040570f    90

?CreatePlanned@PlannedAbode@@QAEPAVMultiMapFixed@@M@Z:
                         push               ecx                                           // 0x00405710    51
                         push               esi                                           // 0x00405711    56
                         mov.s              esi, ecx                                      // 0x00405712    8bf1
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                   // 0x00405714    8b4e28
                         {disp8} mov        eax, dword ptr [esi + 0x48]                   // 0x00405717    8b4648
                         mov                edx, dword ptr [esi]                          // 0x0040571a    8b16
                         {disp8} mov        dword ptr [esp + 0x04], ecx                   // 0x0040571c    894c2404
                         push               eax                                           // 0x00405720    50
                         mov.s              ecx, esi                                      // 0x00405721    8bce
                         call               dword ptr [edx + 0x120]                       // 0x00405723    ff9220010000
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00405729    8b442408
                         push               ecx                                           // 0x0040572d    51
                         fstp               dword ptr [esp]                               // 0x0040572e    d91c24
                         push               eax                                           // 0x00405731    50
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x00405732    8d4e14
                         push               ecx                                           // 0x00405735    51
                         mov.s              ecx, esi                                      // 0x00405736    8bce
                         call               ?GetInfo@PlannedAbode@@SAPAVGPlannedAbodeInfo@@XZ                          // 0x00405738    e893ffffff
                         mov.s              ecx, eax                                      // 0x0040573d    8bc8
                         call               ?IsOkToCreateAtPos@GAbodeInfo@@QBE_NPBUMapCoords@@MMPAVTown@@@Z  // 0x0040573f    e8ccf3ffff
                         test               eax, eax                                      // 0x00405744    85c0
                         {disp8} je         _jmp_addr_0x0040575c                          // 0x00405746    7414
                         {disp8} mov        eax, dword ptr [esp + 0x0c]                   // 0x00405748    8b44240c
                         mov                edx, dword ptr [esi]                          // 0x0040574c    8b16
                         push               eax                                           // 0x0040574e    50
                         mov.s              ecx, esi                                      // 0x0040574f    8bce
                         call               dword ptr [edx + 0x504]                       // 0x00405751    ff9204050000
                         pop                esi                                           // 0x00405757    5e
                         pop                ecx                                           // 0x00405758    59
                         ret                0x0004                                        // 0x00405759    c20400
_jmp_addr_0x0040575c:    xor.s              eax, eax                                      // 0x0040575c    33c0
                         pop                esi                                           // 0x0040575e    5e
                         pop                ecx                                           // 0x0040575f    59
                         ret                0x0004                                        // 0x00405760    c20400
                         nop                                                              // 0x00405763    90
                         nop                                                              // 0x00405764    90
                         nop                                                              // 0x00405765    90
                         nop                                                              // 0x00405766    90
                         nop                                                              // 0x00405767    90
                         nop                                                              // 0x00405768    90
                         nop                                                              // 0x00405769    90
                         nop                                                              // 0x0040576a    90
                         nop                                                              // 0x0040576b    90
                         nop                                                              // 0x0040576c    90
                         nop                                                              // 0x0040576d    90
                         nop                                                              // 0x0040576e    90
                         nop                                                              // 0x0040576f    90

?CreatePlannedNoFixedCheck@PlannedAbode@@QAEPAVMultiMapFixed@@M@Z:
                         push               ecx                                           // 0x00405770    51
                         push               esi                                           // 0x00405771    56
                         push               edi                                           // 0x00405772    57
                         mov.s              esi, ecx                                      // 0x00405773    8bf1
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00405775    8b4c2410
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x00405779    8b4628
                         mov                edx, dword ptr [esi]                          // 0x0040577c    8b16
                         {disp8} mov        edi, dword ptr [esi + 0x48]                   // 0x0040577e    8b7e48
                         push               0x1                                           // 0x00405781    6a01
                         push               0x1                                           // 0x00405783    6a01
                         push               ecx                                           // 0x00405785    51
                         push               0x0                                           // 0x00405786    6a00
                         push               0x0                                           // 0x00405788    6a00
                         mov.s              ecx, esi                                      // 0x0040578a    8bce
                         {disp8} mov        dword ptr [esp + 0x1c], eax                   // 0x0040578c    8944241c
                         call               dword ptr [edx + 0x120]                       // 0x00405790    ff9220010000
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x00405796    8b44241c
                         push               ecx                                           // 0x0040579a    51
                         fstp               dword ptr [esp]                               // 0x0040579b    d91c24
                         push               eax                                           // 0x0040579e    50
                         push               edi                                           // 0x0040579f    57
                         mov.s              ecx, esi                                      // 0x004057a0    8bce
                         call               ?GetInfo@PlannedAbode@@SAPAVGPlannedAbodeInfo@@XZ                          // 0x004057a2    e829ffffff
                         push               eax                                           // 0x004057a7    50
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x004057a8    8d4e14
                         push               ecx                                           // 0x004057ab    51
                         call               ?Create@Abode@@SAPAV1@PBUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMIIMHH@Z // 0x004057ac    e86fd6ffff
                         mov.s              edi, eax                                      // 0x004057b1    8bf8
                         add                esp, 0x28                                     // 0x004057b3    83c428
                         test               edi, edi                                      // 0x004057b6    85ff
                         {disp8} je         _jmp_addr_0x004057e1                          // 0x004057b8    7427
                         mov                edx, dword ptr [esi]                          // 0x004057ba    8b16
                         push               edi                                           // 0x004057bc    57
                         mov.s              ecx, esi                                      // 0x004057bd    8bce
                         call               dword ptr [edx + 0x508]                       // 0x004057bf    ff9208050000
                         {disp8} mov        eax, dword ptr [esi + 0x30]                   // 0x004057c5    8b4630
                         test               eax, eax                                      // 0x004057c8    85c0
                         {disp8} je         _jmp_addr_0x004057d0                          // 0x004057ca    7404
                         or                 byte ptr [edi + 0x58], 4                      // 0x004057cc    804f5804
_jmp_addr_0x004057d0:    mov                eax, dword ptr [esi]                          // 0x004057d0    8b06
                         push               0x0                                           // 0x004057d2    6a00
                         mov.s              ecx, esi                                      // 0x004057d4    8bce
                         call               dword ptr [eax + 0xc]                         // 0x004057d6    ff500c
                         mov.s              eax, edi                                      // 0x004057d9    8bc7
                         pop                edi                                           // 0x004057db    5f
                         pop                esi                                           // 0x004057dc    5e
                         pop                ecx                                           // 0x004057dd    59
                         ret                0x0004                                        // 0x004057de    c20400
_jmp_addr_0x004057e1:    pop                edi                                           // 0x004057e1    5f
                         xor.s              eax, eax                                      // 0x004057e2    33c0
                         pop                esi                                           // 0x004057e4    5e
                         pop                ecx                                           // 0x004057e5    59
                         ret                0x0004                                        // 0x004057e6    c20400
                         nop                                                              // 0x004057e9    90
                         nop                                                              // 0x004057ea    90
                         nop                                                              // 0x004057eb    90
                         nop                                                              // 0x004057ec    90
                         nop                                                              // 0x004057ed    90
                         nop                                                              // 0x004057ee    90
                         nop                                                              // 0x004057ef    90
                         push               ecx                                           // 0x004057f0    51
                         push               esi                                           // 0x004057f1    56
                         mov.s              esi, ecx                                      // 0x004057f2    8bf1
                         {disp8} mov        eax, dword ptr [esi + 0x28]                   // 0x004057f4    8b4628
                         push               edi                                           // 0x004057f7    57
                         {disp8} mov        dword ptr [esp + 0x08], eax                   // 0x004057f8    89442408
                         call               ?GetInfo@PlannedAbode@@SAPAVGPlannedAbodeInfo@@XZ                          // 0x004057fc    e8cffeffff
                         mov                edx, dword ptr [esi]                          // 0x00405801    8b16
                         mov.s              ecx, esi                                      // 0x00405803    8bce
                         mov.s              edi, eax                                      // 0x00405805    8bf8
                         call               dword ptr [edx + 0x120]                       // 0x00405807    ff9220010000
                         {disp32} fmul      qword ptr [rdata_bytes + 0x18d8]              // 0x0040580d    dc0dd8a88a00
                         {disp8} mov        eax, dword ptr [esp + 0x08]                   // 0x00405813    8b442408
                         mov                edx, dword ptr [edi]                          // 0x00405817    8b17
                         push               ecx                                           // 0x00405819    51
                         fstp               dword ptr [esp]                               // 0x0040581a    d91c24
                         push               eax                                           // 0x0040581d    50
                         mov.s              ecx, edi                                      // 0x0040581e    8bcf
                         call               dword ptr [edx + 0x2c]                        // 0x00405820    ff522c
                         push               eax                                           // 0x00405823    50
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x00405824    8d4e14
                         call               _jmp_addr_0x00603b30                          // 0x00405827    e804e31f00
                         pop                edi                                           // 0x0040582c    5f
                         pop                esi                                           // 0x0040582d    5e
                         pop                ecx                                           // 0x0040582e    59
                         ret                                                              // 0x0040582f    c3

?Save@PlannedAbode@@QAEIAAVGGameOSFile@@@Z:
                         push               esi                                           // 0x00405830    56
                         push               edi                                           // 0x00405831    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00405832    8b7c240c
                         mov.s              esi, ecx                                      // 0x00405836    8bf1
                         push               edi                                           // 0x00405838    57
                         call               ?Save@PlannedMultiMapFixed@@QAEIAAVGGameOSFile@@@Z  // 0x00405839    e852312400
                         test               eax, eax                                      // 0x0040583e    85c0
                         {disp8} je         _jmp_addr_0x00405857                          // 0x00405840    7415
                         {disp8} mov        eax, dword ptr [esi + 0x48]                   // 0x00405842    8b4648
                         push               eax                                           // 0x00405845    50
                         mov.s              ecx, edi                                      // 0x00405846    8bcf
                         call               _jmp_addr_0x00561e10                          // 0x00405848    e8c3c51500
                         pop                edi                                           // 0x0040584d    5f
                         mov                eax, 0x00000001                               // 0x0040584e    b801000000
                         pop                esi                                           // 0x00405853    5e
                         ret                0x0004                                        // 0x00405854    c20400
_jmp_addr_0x00405857:    pop                edi                                           // 0x00405857    5f
                         xor.s              eax, eax                                      // 0x00405858    33c0
                         pop                esi                                           // 0x0040585a    5e
                         ret                0x0004                                        // 0x0040585b    c20400
                         nop                                                              // 0x0040585e    90
                         nop                                                              // 0x0040585f    90

?Load@PlannedAbode@@QAEIAAVGGameOSFile@@@Z:
                         push               esi                                           // 0x00405860    56
                         push               edi                                           // 0x00405861    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x00405862    8b7c240c
                         mov.s              esi, ecx                                      // 0x00405866    8bf1
                         push               edi                                           // 0x00405868    57
                         call               ?Load@PlannedMultiMapFixed@@QAEIAAVGGameOSFile@@@Z  // 0x00405869    e882322400
                         test               eax, eax                                      // 0x0040586e    85c0
                         {disp8} je         _jmp_addr_0x00405887                          // 0x00405870    7415
                         add                esi, 0x48                                     // 0x00405872    83c648
                         push               esi                                           // 0x00405875    56
                         mov.s              ecx, edi                                      // 0x00405876    8bcf
                         call               @ReadPtr__10GameOSFileFPP9GameThing@12        // 0x00405878    e803c91500
                         pop                edi                                           // 0x0040587d    5f
                         mov                eax, 0x00000001                               // 0x0040587e    b801000000
                         pop                esi                                           // 0x00405883    5e
                         ret                0x0004                                        // 0x00405884    c20400
_jmp_addr_0x00405887:    pop                edi                                           // 0x00405887    5f
                         xor.s              eax, eax                                      // 0x00405888    33c0
                         pop                esi                                           // 0x0040588a    5e
                         ret                0x0004                                        // 0x0040588b    c20400
                         nop                                                              // 0x0040588e    90
                         nop                                                              // 0x0040588f    90
_jmp_addr_0x00405890:    push               esi                                           // 0x00405890    56
                         push               0x000005c4                                    // 0x00405891    68c4050000
                         push               0x009c7fbc                                    // 0x00405896    68bc7f9c00
                         push               0x000000c4                                    // 0x0040589b    68c4000000
                         call               ___nw__4BaseFUl                               // 0x004058a0    e84b0e0300
                         mov.s              esi, eax                                      // 0x004058a5    8bf0
                         add                esp, 0x0c                                     // 0x004058a7    83c40c
                         test               esi, esi                                      // 0x004058aa    85f6
                         {disp8} je         _jmp_addr_0x004058ed                          // 0x004058ac    743f
                         {disp8} mov        eax, dword ptr [esp + 0x20]                   // 0x004058ae    8b442420
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x004058b2    8b4c241c
                         {disp8} mov        edx, dword ptr [esp + 0x18]                   // 0x004058b6    8b542418
                         push               edi                                           // 0x004058ba    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                   // 0x004058bb    8b7c240c
                         push               eax                                           // 0x004058bf    50
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                   // 0x004058c0    8b44241c
                         push               ecx                                           // 0x004058c4    51
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                   // 0x004058c5    8b4c241c
                         push               edx                                           // 0x004058c9    52
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                   // 0x004058ca    8b54241c
                         push               eax                                           // 0x004058ce    50
                         push               ecx                                           // 0x004058cf    51
                         push               edx                                           // 0x004058d0    52
                         push               edi                                           // 0x004058d1    57
                         mov.s              ecx, esi                                      // 0x004058d2    8bce
                         call               ??0Abode@@QAE@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z                          // 0x004058d4    e877baffff
                         push               edi                                           // 0x004058d9    57
                         mov.s              ecx, esi                                      // 0x004058da    8bce
                         mov                dword ptr [esi], 0x008aa8e4                   // 0x004058dc    c706e4a88a00
                         call               dword ptr [rdata_bytes + 0x1f3c]              // 0x004058e2    ff153caf8a00
                         pop                edi                                           // 0x004058e8    5f
                         mov.s              eax, esi                                      // 0x004058e9    8bc6
                         pop                esi                                           // 0x004058eb    5e
                         ret                                                              // 0x004058ec    c3
_jmp_addr_0x004058ed:    xor.s              eax, eax                                      // 0x004058ed    33c0
                         pop                esi                                           // 0x004058ef    5e
                         ret                                                              // 0x004058f0    c3
                         nop                                                              // 0x004058f1    90
                         nop                                                              // 0x004058f2    90
                         nop                                                              // 0x004058f3    90
                         nop                                                              // 0x004058f4    90
                         nop                                                              // 0x004058f5    90
                         nop                                                              // 0x004058f6    90
                         nop                                                              // 0x004058f7    90
                         nop                                                              // 0x004058f8    90
                         nop                                                              // 0x004058f9    90
                         nop                                                              // 0x004058fa    90
                         nop                                                              // 0x004058fb    90
                         nop                                                              // 0x004058fc    90
                         nop                                                              // 0x004058fd    90
                         nop                                                              // 0x004058fe    90
                         nop                                                              // 0x004058ff    90
                         mov                eax, 0x000000f8                               // 0x00405900    b8f8000000
                         ret                                                              // 0x00405905    c3
                         nop                                                              // 0x00405906    90
                         nop                                                              // 0x00405907    90
                         nop                                                              // 0x00405908    90
                         nop                                                              // 0x00405909    90
                         nop                                                              // 0x0040590a    90
                         nop                                                              // 0x0040590b    90
                         nop                                                              // 0x0040590c    90
                         nop                                                              // 0x0040590d    90
                         nop                                                              // 0x0040590e    90
                         nop                                                              // 0x0040590f    90
                         mov                eax, 0x009c8048                               // 0x00405910    b848809c00
                         ret                                                              // 0x00405915    c3
                         nop                                                              // 0x00405916    90
                         nop                                                              // 0x00405917    90
                         nop                                                              // 0x00405918    90
                         nop                                                              // 0x00405919    90
                         nop                                                              // 0x0040591a    90
                         nop                                                              // 0x0040591b    90
                         nop                                                              // 0x0040591c    90
                         nop                                                              // 0x0040591d    90
                         nop                                                              // 0x0040591e    90
                         nop                                                              // 0x0040591f    90
                         push               esi                                           // 0x00405920    56
                         mov.s              esi, ecx                                      // 0x00405921    8bf1
                         call               ??1Abode@@UAE@XZ                              // 0x00405923    e838d2ffff
                         test               byte ptr [esp + 0x08], 0x01                   // 0x00405928    f644240801
                         {disp8} je         _jmp_addr_0x0040593d                          // 0x0040592d    740e
                         push               0x000000c4                                    // 0x0040592f    68c4000000
                         push               esi                                           // 0x00405934    56
                         call               ??3Base@@SAXPAXK@Z                          // 0x00405935    e836100300
                         add                esp, 0x08                                     // 0x0040593a    83c408
_jmp_addr_0x0040593d:    mov.s              eax, esi                                      // 0x0040593d    8bc6
                         pop                esi                                           // 0x0040593f    5e
                         ret                0x0004                                        // 0x00405940    c20400
                         nop                                                              // 0x00405943    90
                         nop                                                              // 0x00405944    90
                         nop                                                              // 0x00405945    90
                         nop                                                              // 0x00405946    90
                         nop                                                              // 0x00405947    90
                         nop                                                              // 0x00405948    90
                         nop                                                              // 0x00405949    90
                         nop                                                              // 0x0040594a    90
                         nop                                                              // 0x0040594b    90
                         nop                                                              // 0x0040594c    90
                         nop                                                              // 0x0040594d    90
                         nop                                                              // 0x0040594e    90
                         nop                                                              // 0x0040594f    90
                         {disp8} mov        eax, dword ptr [esp + 0x04]                   // 0x00405950    8b442404
                         push               esi                                           // 0x00405954    56
                         mov.s              esi, ecx                                      // 0x00405955    8bf1
                         push               eax                                           // 0x00405957    50
                         call               ?CallVirtualFunctionsForCreation@Abode@@UAEXABUMapCoords@@@Z  // 0x00405958    e8a3d8ffff
                         test               byte ptr [esi + 0x0a], 0x01                   // 0x0040595d    f6460a01
                         {disp8} jne        _jmp_addr_0x0040597c                          // 0x00405961    7519
                         push               0x0                                           // 0x00405963    6a00
                         push               0x1                                           // 0x00405965    6a01
                         push               0x1                                           // 0x00405967    6a01
                         push               0x0                                           // 0x00405969    6a00
                         push               -0x1                                          // 0x0040596b    6aff
                         push               0x2                                           // 0x0040596d    6a02
                         push               0x0                                           // 0x0040596f    6a00
                         push               0xd                                           // 0x00405971    6a0d
                         push               esi                                           // 0x00405973    56
                         call               _Create__8SoundTagFP16GameThingWithPosUlbUlUlii19AUDIO_SFX_BANK_TYPEi                          // 0x00405974    e8c78e3100
                         add                esp, 0x24                                     // 0x00405979    83c424
_jmp_addr_0x0040597c:    pop                esi                                           // 0x0040597c    5e
                         ret                0x0004                                        // 0x0040597d    c20400
_jmp_addr_0x00405980:    push               esi                                           // 0x00405980    56
                         xor.s              ecx, ecx                                      // 0x00405981    33c9
                         call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4                          // 0x00405983    e8485b4000
                         {disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]        // 0x00405988    8b1534fee900
                         {disp32} mov       dword ptr [data_bytes + 0x286c70], eax        // 0x0040598e    a370ccc400
                         mov                esi, dword ptr [edx]                          // 0x00405993    8b32
                         mov                ecx, 0x00000085                               // 0x00405995    b985000000
                         cmp.s              esi, ecx                                      // 0x0040599a    3bf1
                         {disp8} jg         _jmp_addr_0x004059a0                          // 0x0040599c    7f02
                         xor.s              ecx, ecx                                      // 0x0040599e    33c9
_jmp_addr_0x004059a0:    {disp8} mov        edx, dword ptr [edx + ecx * 0x4 + 0x04]       // 0x004059a0    8b548a04
                         mov                esi, dword ptr [eax]                          // 0x004059a4    8b30
                         push               0x0                                           // 0x004059a6    6a00
                         push               0x0                                           // 0x004059a8    6a00
                         mov.s              ecx, eax                                      // 0x004059aa    8bc8
                         call               dword ptr [esi + 0xf4]                        // 0x004059ac    ff96f4000000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x286c70]        // 0x004059b2    8b0d70ccc400
                         mov                eax, dword ptr [ecx]                          // 0x004059b8    8b01
                         mov                edx, 0x00000001                               // 0x004059ba    ba01000000
                         pop                esi                                           // 0x004059bf    5e
                         {disp8} jmp        dword ptr [eax + 0x58]                        // 0x004059c0    ff6058
                         nop                                                              // 0x004059c3    90
                         nop                                                              // 0x004059c4    90
                         nop                                                              // 0x004059c5    90
                         nop                                                              // 0x004059c6    90
                         nop                                                              // 0x004059c7    90
                         nop                                                              // 0x004059c8    90
                         nop                                                              // 0x004059c9    90
                         nop                                                              // 0x004059ca    90
                         nop                                                              // 0x004059cb    90
                         nop                                                              // 0x004059cc    90
                         nop                                                              // 0x004059cd    90
                         nop                                                              // 0x004059ce    90
                         nop                                                              // 0x004059cf    90
_jmp_addr_0x004059d0:    {disp32} mov       ecx, dword ptr [data_bytes + 0x286c70]        // 0x004059d0    8b0d70ccc400
                         test               ecx, ecx                                      // 0x004059d6    85c9
                         {disp8} je         _jmp_addr_0x004059e9                          // 0x004059d8    740f
                         mov                eax, dword ptr [ecx]                          // 0x004059da    8b01
                         call               dword ptr [eax + 4]                           // 0x004059dc    ff5004
                         {disp32} mov       dword ptr [data_bytes + 0x286c70], 0x00000000 // 0x004059df    c70570ccc40000000000
_jmp_addr_0x004059e9:    ret                                                              // 0x004059e9    c3
                         call               dword ptr [__imp__RegSetValueExA@4]           // 0x004059ea    ff1514908a00
_jmp_addr_0x004059f0:    {disp32} fild      dword ptr [data_bytes + 0x4e3ec0]             // 0x004059f0    db05c09eea00
                         {disp32} fld       dword ptr [data_bytes + 0x286c78]             // 0x004059f6    d90578ccc400
                         fcos                                                             // 0x004059fc    d9ff
                         fabs                                                             // 0x004059fe    d9e1
                         {disp32} fmul      qword ptr [rdata_bytes + 0x2220]              // 0x00405a00    dc0d20b28a00
                         fld                st(1)                                         // 0x00405a06    d9c1
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2218]              // 0x00405a08    d80d18b28a00
                         faddp              st(1), st                                     // 0x00405a0e    dec1
                         {disp32} fsubr     dword ptr [data_bytes + 0x286c74]             // 0x00405a10    d82d74ccc400
                         {disp32} fstp      dword ptr [data_bytes + 0x286c74]             // 0x00405a16    d91d74ccc400
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2214]              // 0x00405a1c    d80d14b28a00
                         {disp32} fadd      dword ptr [data_bytes + 0x286c78]             // 0x00405a22    d80578ccc400
                         {disp32} fcom      dword ptr [rdata_bytes + 0x2210]              // 0x00405a28    d81510b28a00
                         {disp32} fst       dword ptr [data_bytes + 0x286c78]             // 0x00405a2e    d91578ccc400
                         fnstsw             ax                                            // 0x00405a34    dfe0
                         test               ah, 0x41                                      // 0x00405a36    f6c441
                         {disp8} jne        _jmp_addr_0x00405a55                          // 0x00405a39    751a
_jmp_addr_0x00405a3b:    {disp32} fsub      dword ptr [rdata_bytes + 0x2210]              // 0x00405a3b    d82510b28a00
                         {disp32} fcom      dword ptr [rdata_bytes + 0x2210]              // 0x00405a41    d81510b28a00
                         fnstsw             ax                                            // 0x00405a47    dfe0
                         test               ah, 0x41                                      // 0x00405a49    f6c441
                         {disp8} je         _jmp_addr_0x00405a3b                          // 0x00405a4c    74ed
                         {disp32} fstp      dword ptr [data_bytes + 0x286c78]             // 0x00405a4e    d91d78ccc400
                         ret                                                              // 0x00405a54    c3
_jmp_addr_0x00405a55:    fstp               st(0)                                         // 0x00405a55    ddd8
                         ret                                                              // 0x00405a57    c3
                         nop                                                              // 0x00405a58    90
                         nop                                                              // 0x00405a59    90
                         nop                                                              // 0x00405a5a    90
                         nop                                                              // 0x00405a5b    90
                         nop                                                              // 0x00405a5c    90
                         nop                                                              // 0x00405a5d    90
                         nop                                                              // 0x00405a5e    90
                         nop                                                              // 0x00405a5f    90
_jmp_addr_0x00405a60:    {disp32} lea       eax, dword ptr [ecx + 0x00000128]             // 0x00405a60    8d8128010000
                         ret                                                              // 0x00405a66    c3
                         nop                                                              // 0x00405a67    90
                         nop                                                              // 0x00405a68    90
                         nop                                                              // 0x00405a69    90
                         nop                                                              // 0x00405a6a    90
                         nop                                                              // 0x00405a6b    90
                         nop                                                              // 0x00405a6c    90
                         nop                                                              // 0x00405a6d    90
                         nop                                                              // 0x00405a6e    90
                         nop                                                              // 0x00405a6f    90
_GetInfoFromText__10GAbodeInfoFPc:    sub                esp, 0x08                                     // 0x00405a70    83ec08
                         push               ebx                                           // 0x00405a73    53
                         push               ebp                                           // 0x00405a74    55
                         push               esi                                           // 0x00405a75    56
                         push               edi                                           // 0x00405a76    57
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000            // 0x00405a77    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x10], OFFSET _AbodeInfos    // 0x00405a7f    c744241090c6c300
                         mov                ebp, 0x00da57b8                               // 0x00405a87    bdb857da00
_jmp_addr_0x00405a8c:    {disp8} mov        eax, dword ptr [ebp + 0x00]                   // 0x00405a8c    8b4500
                         {disp32} mov       edx, dword ptr [eax * 0x4 + 0x00c22fdc]       // 0x00405a8f    8b1485dc2fc200
                         {disp8} mov        ebx, dword ptr [esp + 0x1c]                   // 0x00405a96    8b5c241c
                         or                 ecx, 0xffffffff                               // 0x00405a9a    83c9ff
                         xor.s              eax, eax                                      // 0x00405a9d    33c0
                         mov.s              edi, edx                                      // 0x00405a9f    8bfa
                         repne scasb                                                      // 0x00405aa1    f2ae
                         not                ecx                                           // 0x00405aa3    f7d1
                         dec                ecx                                           // 0x00405aa5    49
                         mov.s              edi, ecx                                      // 0x00405aa6    8bf9
                         push               edi                                           // 0x00405aa8    57
                         push               edx                                           // 0x00405aa9    52
                         push               ebx                                           // 0x00405aaa    53
                         call               _jmp_addr_0x007da710                          // 0x00405aab    e8604c3d00
                         add                esp, 0x0c                                     // 0x00405ab0    83c40c
                         test               eax, eax                                      // 0x00405ab3    85c0
                         {disp8} jne        _jmp_addr_0x00405ae8                          // 0x00405ab5    7531
                         cmp                byte ptr [edi + ebx * 0x1], 0x5f              // 0x00405ab7    803c1f5f
                         {disp8} jne        _jmp_addr_0x00405ae8                          // 0x00405abb    752b
                         {disp8} lea        ebx, dword ptr [edi + ebx * 0x1 + 0x01]       // 0x00405abd    8d5c1f01
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00405ac1    8b7c2410
                         xor.s              esi, esi                                      // 0x00405ac5    33f6
_jmp_addr_0x00405ac7:    mov.s              ecx, edi                                      // 0x00405ac7    8bcf
                         call               _jmp_addr_0x00405a60                          // 0x00405ac9    e892ffffff
                         push               eax                                           // 0x00405ace    50
                         push               ebx                                           // 0x00405acf    53
                         call               _jmp_addr_0x007c6ce0                          // 0x00405ad0    e80b123c00
                         add                esp, 0x08                                     // 0x00405ad5    83c408
                         test               eax, eax                                      // 0x00405ad8    85c0
                         {disp8} je         _jmp_addr_0x00405b15                          // 0x00405ada    7439
                         inc                esi                                           // 0x00405adc    46
                         add                edi, 0x000001c8                               // 0x00405add    81c7c8010000
                         cmp                esi, 0x10                                     // 0x00405ae3    83fe10
                         .byte              0x72, 0xdf// {disp8} jb _jmp_addr_0x00405ac7  // 0x00405ae6    72df
_jmp_addr_0x00405ae8:    {disp8} mov        esi, dword ptr [esp + 0x14]                   // 0x00405ae8    8b742414
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                   // 0x00405aec    8b4c2410
                         inc                esi                                           // 0x00405af0    46
                         add                ebp, 0x1c                                     // 0x00405af1    83c51c
                         add                ecx, 0x00001c80                               // 0x00405af4    81c1801c0000
                         cmp                ebp, 0x00da58b4                               // 0x00405afa    81fdb458da00
                         {disp8} mov        dword ptr [esp + 0x14], esi                   // 0x00405b00    89742414
                         {disp8} mov        dword ptr [esp + 0x10], ecx                   // 0x00405b04    894c2410
                         .byte              0x72, 0x82// {disp8} jb _jmp_addr_0x00405a8c  // 0x00405b08    7282
                         pop                edi                                           // 0x00405b0a    5f
                         pop                esi                                           // 0x00405b0b    5e
                         pop                ebp                                           // 0x00405b0c    5d
                         or                 eax, -0x1                                     // 0x00405b0d    83c8ff
                         pop                ebx                                           // 0x00405b10    5b
                         add                esp, 0x08                                     // 0x00405b11    83c408
                         ret                                                              // 0x00405b14    c3
_jmp_addr_0x00405b15:    {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00405b15    8b442414
                         pop                edi                                           // 0x00405b19    5f
                         shl                eax, 4                                        // 0x00405b1a    c1e004
                         add.s              eax, esi                                      // 0x00405b1d    03c6
                         pop                esi                                           // 0x00405b1f    5e
                         pop                ebp                                           // 0x00405b20    5d
                         pop                ebx                                           // 0x00405b21    5b
                         add                esp, 0x08                                     // 0x00405b22    83c408
                         ret                                                              // 0x00405b25    c3
                         nop                                                              // 0x00405b26    90
                         nop                                                              // 0x00405b27    90
                         nop                                                              // 0x00405b28    90
                         nop                                                              // 0x00405b29    90
                         nop                                                              // 0x00405b2a    90
                         nop                                                              // 0x00405b2b    90
                         nop                                                              // 0x00405b2c    90
                         nop                                                              // 0x00405b2d    90
                         nop                                                              // 0x00405b2e    90
                         nop                                                              // 0x00405b2f    90
_Find__10GAbodeInfoF10TRIBE_TYPE12ABODE_NUMBER:    push               esi                                           // 0x00405b30    56
                         {disp8} mov        esi, dword ptr [esp + 0x08]                   // 0x00405b31    8b742408
                         push               edi                                           // 0x00405b35    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                   // 0x00405b36    8b7c2410
                         mov                eax, OFFSET _AbodeInfos                       // 0x00405b3a    b890c6c300
                         mov                ecx, 0x00c3c7e8                               // 0x00405b3f    b9e8c7c300
_jmp_addr_0x00405b44:    mov                edx, dword ptr [ecx]                          // 0x00405b44    8b11
                         cmp.s              edx, esi                                      // 0x00405b46    3bd6
                         {disp8} je         _jmp_addr_0x00405b4f                          // 0x00405b48    7405
                         cmp                edx, -0x01                                    // 0x00405b4a    83faff
                         {disp8} jne        _jmp_addr_0x00405b54                          // 0x00405b4d    7505
_jmp_addr_0x00405b4f:    cmp                dword ptr [ecx + -0x34], edi                  // 0x00405b4f    3979cc
                         {disp8} je         _jmp_addr_0x00405b69                          // 0x00405b52    7415
_jmp_addr_0x00405b54:    add                ecx, 0x000001c8                               // 0x00405b54    81c1c8010000
                         add                eax, 0x000001c8                               // 0x00405b5a    05c8010000
                         cmp                ecx, 0x00c4cdc0                               // 0x00405b5f    81f9c0cdc400
                         .byte              0x72, 0xdd// {disp8} jb _jmp_addr_0x00405b44  // 0x00405b65    72dd
                         xor.s              eax, eax                                      // 0x00405b67    33c0
_jmp_addr_0x00405b69:    pop                edi                                           // 0x00405b69    5f
                         pop                esi                                           // 0x00405b6a    5e
                         ret                                                              // 0x00405b6b    c3
                         nop                                                              // 0x00405b6c    90
                         nop                                                              // 0x00405b6d    90
                         nop                                                              // 0x00405b6e    90
                         nop                                                              // 0x00405b6f    90
_jmp_addr_0x00405b70:    mov                eax, dword ptr [ecx]                          // 0x00405b70    8b01
                         push               esi                                           // 0x00405b72    56
                         {disp8} mov        esi, dword ptr [ecx + 0x28]                   // 0x00405b73    8b7128
                         push               edi                                           // 0x00405b76    57
                         call               dword ptr [eax + 0x928]                       // 0x00405b77    ff9028090000
                         {disp8} mov        ecx, dword ptr [eax + 0x10]                   // 0x00405b7d    8b4810
                         {disp32} mov       edi, dword ptr [ecx * 0x4 + 0x00c22fdc]       // 0x00405b80    8b3c8ddc2fc200
                         mov.s              ecx, esi                                      // 0x00405b87    8bce
                         call               _jmp_addr_0x00405a60                          // 0x00405b89    e8d2feffff
                         {disp8} mov        esi, dword ptr [esp + 0x0c]                   // 0x00405b8e    8b74240c
                         push               eax                                           // 0x00405b92    50
                         push               edi                                           // 0x00405b93    57
                         push               0x009c8054                                    // 0x00405b94    6854809c00
                         push               esi                                           // 0x00405b99    56
                         call               _jmp_addr_0x007c57d2                          // 0x00405b9a    e833fc3b00
                         add                esp, 0x10                                     // 0x00405b9f    83c410
                         pop                edi                                           // 0x00405ba2    5f
                         mov.s              eax, esi                                      // 0x00405ba3    8bc6
                         pop                esi                                           // 0x00405ba5    5e
                         ret                0x0004                                        // 0x00405ba6    c20400
                         nop                                                              // 0x00405ba9    90
                         nop                                                              // 0x00405baa    90
                         nop                                                              // 0x00405bab    90
                         nop                                                              // 0x00405bac    90
                         nop                                                              // 0x00405bad    90
                         nop                                                              // 0x00405bae    90
                         nop                                                              // 0x00405baf    90

?SaveObject@Abode@@UAEIPAVLHOSFile@@PBUMapCoords@@@Z:
                         sub                esp, 0x00000278                               // 0x00405bb0    81ec78020000
                         push               ebp                                           // 0x00405bb6    55
                         push               esi                                           // 0x00405bb7    56
                         mov.s              esi, ecx                                      // 0x00405bb8    8bf1
                         call               _jmp_addr_0x0056fef0                          // 0x00405bba    e831a31600
                         mov.s              ebp, eax                                      // 0x00405bbf    8be8
                         test               ebp, ebp                                      // 0x00405bc1    85ed
                         {disp32} je        _jmp_addr_0x00405d68                          // 0x00405bc3    0f849f010000
                         push               ebx                                           // 0x00405bc9    53
                         {disp32} mov       ebx, dword ptr [esp + 0x0000028c]             // 0x00405bca    8b9c248c020000
                         test               ebx, ebx                                      // 0x00405bd1    85db
                         push               edi                                           // 0x00405bd3    57
                         {disp8} je         _jmp_addr_0x00405be6                          // 0x00405bd4    7410
                         push               ebx                                           // 0x00405bd6    53
                         {disp8} lea        eax, dword ptr [esp + 0x28]                   // 0x00405bd7    8d442428
                         push               eax                                           // 0x00405bdb    50
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                   // 0x00405bdc    8d4e14
                         call               _jmp_addr_0x006055c0                          // 0x00405bdf    e8dcf91f00
                         {disp8} jmp        _jmp_addr_0x00405be9                          // 0x00405be4    eb03
_jmp_addr_0x00405be6:    {disp8} lea        eax, dword ptr [esi + 0x14]                   // 0x00405be6    8d4614
_jmp_addr_0x00405be9:    mov                ecx, dword ptr [eax]                          // 0x00405be9    8b08
                         {disp8} mov        dword ptr [esp + 0x18], ecx                   // 0x00405beb    894c2418
                         {disp8} mov        edx, dword ptr [eax + 0x04]                   // 0x00405bef    8b5004
                         {disp8} mov        dword ptr [esp + 0x1c], edx                   // 0x00405bf2    8954241c
                         {disp8} mov        eax, dword ptr [eax + 0x08]                   // 0x00405bf6    8b4008
                         mov                edx, dword ptr [esi]                          // 0x00405bf9    8b16
                         mov.s              ecx, esi                                      // 0x00405bfb    8bce
                         {disp8} mov        dword ptr [esp + 0x20], eax                   // 0x00405bfd    89442420
                         call               dword ptr [edx + 0x48]                        // 0x00405c01    ff5248
                         test               eax, eax                                      // 0x00405c04    85c0
                         {disp8} je         _jmp_addr_0x00405c1b                          // 0x00405c06    7413
                         test               ebx, ebx                                      // 0x00405c08    85db
                         {disp8} jne        _jmp_addr_0x00405c1b                          // 0x00405c0a    750f
                         mov                eax, dword ptr [esi]                          // 0x00405c0c    8b06
                         mov.s              ecx, esi                                      // 0x00405c0e    8bce
                         call               dword ptr [eax + 0x48]                        // 0x00405c10    ff5048
                         {disp32} mov       edi, dword ptr [eax + 0x000005b4]             // 0x00405c13    8bb8b4050000
                         {disp8} jmp        _jmp_addr_0x00405c1e                          // 0x00405c19    eb03
_jmp_addr_0x00405c1b:    or                 edi, 0xffffffff                               // 0x00405c1b    83cfff
_jmp_addr_0x00405c1e:    test               byte ptr [esi + 0x58], 0x02                   // 0x00405c1e    f6465802
                         mov                edx, dword ptr [esi]                          // 0x00405c22    8b16
                         mov.s              ecx, esi                                      // 0x00405c24    8bce
                         {disp8} je         _jmp_addr_0x00405ca1                          // 0x00405c26    7479
                         call               dword ptr [edx + 0x120]                       // 0x00405c28    ff9220010000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00405c2e    d95c2414
                         mov                eax, dword ptr [esi]                          // 0x00405c32    8b06
                         mov.s              ecx, esi                                      // 0x00405c34    8bce
                         call               dword ptr [eax + 0x508]                       // 0x00405c36    ff9008050000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00405c3c    d95c2410
                         mov                edx, dword ptr [esi]                          // 0x00405c40    8b16
                         push               0x1                                           // 0x00405c42    6a01
                         mov.s              ecx, esi                                      // 0x00405c44    8bce
                         call               dword ptr [edx + 0x98]                        // 0x00405c46    ff9298000000
                         push               eax                                           // 0x00405c4c    50
                         mov                eax, dword ptr [esi]                          // 0x00405c4d    8b06
                         push               0x0                                           // 0x00405c4f    6a00
                         mov.s              ecx, esi                                      // 0x00405c51    8bce
                         call               dword ptr [eax + 0x98]                        // 0x00405c53    ff9098000000
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00405c59    d9442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2228]              // 0x00405c5d    d80d28b28a00
                         push               eax                                           // 0x00405c63    50
                         call               _jmp_addr_0x007a1400                          // 0x00405c64    e897b73900
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00405c69    d9442418
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2228]              // 0x00405c6d    d80d28b28a00
                         push               eax                                           // 0x00405c73    50
                         call               _jmp_addr_0x007a1400                          // 0x00405c74    e887b73900
                         push               eax                                           // 0x00405c79    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000108]             // 0x00405c7a    8d8c2408010000
                         push               ecx                                           // 0x00405c81    51
                         mov.s              ecx, esi                                      // 0x00405c82    8bce
                         call               _jmp_addr_0x00405b70                          // 0x00405c84    e8e7feffff
                         push               eax                                           // 0x00405c89    50
                         {disp32} lea       edx, dword ptr [esp + 0x000001d4]             // 0x00405c8a    8d9424d4010000
                         push               edx                                           // 0x00405c91    52
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x00405c92    8d4c2430
                         call               _jmp_addr_0x00602880                          // 0x00405c96    e8e5cb1f00
                         push               eax                                           // 0x00405c9b    50
                         push               edi                                           // 0x00405c9c    57
                         push               0x8                                           // 0x00405c9d    6a08
                         {disp8} jmp        _jmp_addr_0x00405d18                          // 0x00405c9f    eb77
_jmp_addr_0x00405ca1:    call               dword ptr [edx + 0x120]                       // 0x00405ca1    ff9220010000
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00405ca7    d95c2410
                         mov                eax, dword ptr [esi]                          // 0x00405cab    8b06
                         mov.s              ecx, esi                                      // 0x00405cad    8bce
                         call               dword ptr [eax + 0x508]                       // 0x00405caf    ff9008050000
                         {disp8} fstp       dword ptr [esp + 0x14]                        // 0x00405cb5    d95c2414
                         mov                edx, dword ptr [esi]                          // 0x00405cb9    8b16
                         push               0x1                                           // 0x00405cbb    6a01
                         mov.s              ecx, esi                                      // 0x00405cbd    8bce
                         call               dword ptr [edx + 0x98]                        // 0x00405cbf    ff9298000000
                         push               eax                                           // 0x00405cc5    50
                         mov                eax, dword ptr [esi]                          // 0x00405cc6    8b06
                         push               0x0                                           // 0x00405cc8    6a00
                         mov.s              ecx, esi                                      // 0x00405cca    8bce
                         call               dword ptr [eax + 0x98]                        // 0x00405ccc    ff9098000000
                         {disp8} fld        dword ptr [esp + 0x14]                        // 0x00405cd2    d9442414
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2228]              // 0x00405cd6    d80d28b28a00
                         push               eax                                           // 0x00405cdc    50
                         call               _jmp_addr_0x007a1400                          // 0x00405cdd    e81eb73900
                         {disp8} fld        dword ptr [esp + 0x1c]                        // 0x00405ce2    d944241c
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2228]              // 0x00405ce6    d80d28b28a00
                         push               eax                                           // 0x00405cec    50
                         call               _jmp_addr_0x007a1400                          // 0x00405ced    e80eb73900
                         push               eax                                           // 0x00405cf2    50
                         {disp32} lea       ecx, dword ptr [esp + 0x00000108]             // 0x00405cf3    8d8c2408010000
                         push               ecx                                           // 0x00405cfa    51
                         mov.s              ecx, esi                                      // 0x00405cfb    8bce
                         call               _jmp_addr_0x00405b70                          // 0x00405cfd    e86efeffff
                         push               eax                                           // 0x00405d02    50
                         {disp32} lea       edx, dword ptr [esp + 0x000001d4]             // 0x00405d03    8d9424d4010000
                         push               edx                                           // 0x00405d0a    52
                         {disp8} lea        ecx, dword ptr [esp + 0x30]                   // 0x00405d0b    8d4c2430
                         call               _jmp_addr_0x00602880                          // 0x00405d0f    e86ccb1f00
                         push               eax                                           // 0x00405d14    50
                         push               edi                                           // 0x00405d15    57
                         push               0x7                                           // 0x00405d16    6a07
_jmp_addr_0x00405d18:    call               _jmp_addr_0x00715130                          // 0x00405d18    e813f43000
                         add                esp, 0x04                                     // 0x00405d1d    83c404
                         push               eax                                           // 0x00405d20    50
                         {disp8} lea        eax, dword ptr [esp + 0x50]                   // 0x00405d21    8d442450
                         push               eax                                           // 0x00405d25    50
                         call               _jmp_addr_0x007c57d2                          // 0x00405d26    e8a7fa3b00
                         or                 ecx, 0xffffffff                               // 0x00405d2b    83c9ff
                         xor.s              eax, eax                                      // 0x00405d2e    33c0
                         {disp8} lea        edi, dword ptr [esp + 0x54]                   // 0x00405d30    8d7c2454
                         repne scasb                                                      // 0x00405d34    f2ae
                         {disp32} mov       edi, dword ptr [esp + 0x000002b0]             // 0x00405d36    8bbc24b0020000
                         not                ecx                                           // 0x00405d3d    f7d1
                         dec                ecx                                           // 0x00405d3f    49
                         push               ecx                                           // 0x00405d40    51
                         {disp8} lea        ecx, dword ptr [esp + 0x58]                   // 0x00405d41    8d4c2458
                         push               ecx                                           // 0x00405d45    51
                         push               edi                                           // 0x00405d46    57
                         push               esi                                           // 0x00405d47    56
                         call               _jmp_addr_0x00719610                          // 0x00405d48    e8c3383100
                         add                esp, 0x34                                     // 0x00405d4d    83c434
                         push               ebx                                           // 0x00405d50    53
                         push               edi                                           // 0x00405d51    57
                         mov.s              ecx, esi                                      // 0x00405d52    8bce
                         call               ?SaveObject@MultiMapFixed@@UAEIPAVLHOSFile@@PBUMapCoords@@@Z                          // 0x00405d54    e8b7911200
                         pop                edi                                           // 0x00405d59    5f
                         pop                ebx                                           // 0x00405d5a    5b
                         pop                esi                                           // 0x00405d5b    5e
                         mov.s              eax, ebp                                      // 0x00405d5c    8bc5
                         pop                ebp                                           // 0x00405d5e    5d
                         add                esp, 0x00000278                               // 0x00405d5f    81c478020000
                         ret                0x0008                                        // 0x00405d65    c20800
_jmp_addr_0x00405d68:    pop                esi                                           // 0x00405d68    5e
                         mov.s              eax, ebp                                      // 0x00405d69    8bc5
                         pop                ebp                                           // 0x00405d6b    5d
                         add                esp, 0x00000278                               // 0x00405d6c    81c478020000
                         ret                0x0008                                        // 0x00405d72    c20800
                         nop                                                              // 0x00405d75    90
                         nop                                                              // 0x00405d76    90
                         nop                                                              // 0x00405d77    90
                         nop                                                              // 0x00405d78    90
                         nop                                                              // 0x00405d79    90
                         nop                                                              // 0x00405d7a    90
                         nop                                                              // 0x00405d7b    90
                         nop                                                              // 0x00405d7c    90
                         nop                                                              // 0x00405d7d    90
                         nop                                                              // 0x00405d7e    90
                         nop                                                              // 0x00405d7f    90
_jmp_addr_0x00405d80:    mov                eax, 0x00000001                               // 0x00405d80    b801000000
                         ret                                                              // 0x00405d85    c3
                         nop                                                              // 0x00405d86    90
                         nop                                                              // 0x00405d87    90
                         nop                                                              // 0x00405d88    90
                         nop                                                              // 0x00405d89    90
                         nop                                                              // 0x00405d8a    90
                         nop                                                              // 0x00405d8b    90
                         nop                                                              // 0x00405d8c    90
                         nop                                                              // 0x00405d8d    90
                         nop                                                              // 0x00405d8e    90
                         nop                                                              // 0x00405d8f    90

?ReduceLife@Abode@@UAEXMPAVGPlayer@@@Z:
                         push               ecx                                           // 0x00405d90    51
                         push               ebx                                           // 0x00405d91    53
                         push               ebp                                           // 0x00405d92    55
                         push               esi                                           // 0x00405d93    56
                         mov.s              esi, ecx                                      // 0x00405d94    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00405d96    8b06
                         call               dword ptr [eax + 0x11c]                       // 0x00405d98    ff901c010000
                         {disp8} fstp       dword ptr [esp + 0x0c]                        // 0x00405d9e    d95c240c
                         mov                edx, dword ptr [esi]                          // 0x00405da2    8b16
                         mov.s              ecx, esi                                      // 0x00405da4    8bce
                         call               dword ptr [edx + 0x894]                       // 0x00405da6    ff9294080000
                         {disp8} fcomp      dword ptr [esp + 0x0c]                        // 0x00405dac    d85c240c
                         fnstsw             ax                                            // 0x00405db0    dfe0
                         test               ah, 0x01                                      // 0x00405db2    f6c401
                         {disp8} je         _jmp_addr_0x00405dbe                          // 0x00405db5    7407
                         mov                ebp, 0x00000001                               // 0x00405db7    bd01000000
                         {disp8} jmp        _jmp_addr_0x00405dc0                          // 0x00405dbc    eb02
_jmp_addr_0x00405dbe:    xor.s              ebp, ebp                                      // 0x00405dbe    33ed
_jmp_addr_0x00405dc0:    {disp8} mov        ebx, dword ptr [esp + 0x18]                   // 0x00405dc0    8b5c2418
                         {disp8} mov        eax, dword ptr [esp + 0x14]                   // 0x00405dc4    8b442414
                         push               ebx                                           // 0x00405dc8    53
                         push               eax                                           // 0x00405dc9    50
                         mov.s              ecx, esi                                      // 0x00405dca    8bce
                         call               ?ReduceLife@MultiMapFixed@@UAEXMPAVGPlayer@@@Z// 0x00405dcc    e80f981200
                         {disp8} fst        dword ptr [esp + 0x18]                        // 0x00405dd1    d9542418
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00405dd5    d81d90a38a00
                         fnstsw             ax                                            // 0x00405ddb    dfe0
                         test               ah, 0x01                                      // 0x00405ddd    f6c401
                         {disp32} je        _jmp_addr_0x00405ec5                          // 0x00405de0    0f84df000000
                         push               edi                                           // 0x00405de6    57
                         {disp32} mov       edi, dword ptr [esi + 0x000000a0]             // 0x00405de7    8bbea0000000
                         test               edi, edi                                      // 0x00405ded    85ff
                         {disp8} je         _jmp_addr_0x00405e02                          // 0x00405def    7411
_jmp_addr_0x00405df1:    mov.s              ecx, edi                                      // 0x00405df1    8bcf
                         call               _jmp_addr_0x00752b80                          // 0x00405df3    e888cd3400
                         {disp32} mov       edi, dword ptr [edi + 0x000000e4]             // 0x00405df8    8bbfe4000000
                         test               edi, edi                                      // 0x00405dfe    85ff
                         {disp8} jne        _jmp_addr_0x00405df1                          // 0x00405e00    75ef
_jmp_addr_0x00405e02:    test               ebp, ebp                                      // 0x00405e02    85ed
                         pop                edi                                           // 0x00405e04    5f
                         {disp8} je         _jmp_addr_0x00405e45                          // 0x00405e05    743e
                         mov                edx, dword ptr [esi]                          // 0x00405e07    8b16
                         mov.s              ecx, esi                                      // 0x00405e09    8bce
                         call               dword ptr [edx + 0x894]                       // 0x00405e0b    ff9294080000
                         {disp8} fcomp      dword ptr [esp + 0x18]                        // 0x00405e11    d85c2418
                         fnstsw             ax                                            // 0x00405e15    dfe0
                         test               ah, 0x01                                      // 0x00405e17    f6c401
                         {disp8} jne        _jmp_addr_0x00405e45                          // 0x00405e1a    7529
                         mov                eax, dword ptr [esi]                          // 0x00405e1c    8b06
                         push               ebx                                           // 0x00405e1e    53
                         mov.s              ecx, esi                                      // 0x00405e1f    8bce
                         call               dword ptr [eax + 0x918]                       // 0x00405e21    ff9018090000
                         mov                edx, dword ptr [esi]                          // 0x00405e27    8b16
                         mov.s              ecx, esi                                      // 0x00405e29    8bce
                         call               dword ptr [edx + 0x920]                       // 0x00405e2b    ff9220090000
                         test               eax, eax                                      // 0x00405e31    85c0
                         {disp8} je         _jmp_addr_0x00405e5e                          // 0x00405e33    7429
                         mov                eax, dword ptr [esi]                          // 0x00405e35    8b06
                         mov.s              ecx, esi                                      // 0x00405e37    8bce
                         call               dword ptr [eax + 0x48]                        // 0x00405e39    ff5048
                         mov.s              ecx, eax                                      // 0x00405e3c    8bc8
                         call               ?SetInStateOfEmergency@Town@@QAEXXZ           // 0x00405e3e    e85d1b3400
                         {disp8} jmp        _jmp_addr_0x00405e5e                          // 0x00405e43    eb19
_jmp_addr_0x00405e45:    {disp8} fld        dword ptr [esp + 0x0c]                        // 0x00405e45    d944240c
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                   // 0x00405e49    d81d90a38a00
                         fnstsw             ax                                            // 0x00405e4f    dfe0
                         test               ah, 0x01                                      // 0x00405e51    f6c401
                         {disp8} jne        _jmp_addr_0x00405e5e                          // 0x00405e54    7508
                         push               ebx                                           // 0x00405e56    53
                         mov.s              ecx, esi                                      // 0x00405e57    8bce
                         call               _jmp_addr_0x004073f0                          // 0x00405e59    e892150000
_jmp_addr_0x00405e5e:    {disp8} mov        eax, dword ptr [esi + 0x74]                   // 0x00405e5e    8b4674
                         test               eax, eax                                      // 0x00405e61    85c0
                         {disp8} jne        _jmp_addr_0x00405e86                          // 0x00405e63    7521
                         mov                edx, dword ptr [esi]                          // 0x00405e65    8b16
                         mov.s              ecx, esi                                      // 0x00405e67    8bce
                         call               dword ptr [edx + 0x48]                        // 0x00405e69    ff5248
                         test               eax, eax                                      // 0x00405e6c    85c0
                         {disp8} je         _jmp_addr_0x00405e7f                          // 0x00405e6e    740f
                         mov                eax, dword ptr [esi]                          // 0x00405e70    8b06
                         push               esi                                           // 0x00405e72    56
                         mov.s              ecx, esi                                      // 0x00405e73    8bce
                         call               dword ptr [eax + 0x48]                        // 0x00405e75    ff5048
                         mov.s              ecx, eax                                      // 0x00405e78    8bc8
                         call               _jmp_addr_0x0073b8e0                          // 0x00405e7a    e8615a3300
_jmp_addr_0x00405e7f:    {disp8} mov        eax, dword ptr [esi + 0x74]                   // 0x00405e7f    8b4674
                         test               eax, eax                                      // 0x00405e82    85c0
                         {disp8} je         _jmp_addr_0x00405ead                          // 0x00405e84    7427
_jmp_addr_0x00405e86:    mov                edx, dword ptr [esi]                          // 0x00405e86    8b16
                         mov.s              ecx, esi                                      // 0x00405e88    8bce
                         call               dword ptr [edx + 0x890]                       // 0x00405e8a    ff9290080000
                         test               eax, eax                                      // 0x00405e90    85c0
                         {disp8} je         _jmp_addr_0x00405ead                          // 0x00405e92    7419
                         {disp8} fld        dword ptr [esp + 0x18]                        // 0x00405e94    d9442418
                         {disp8} mov        eax, dword ptr [esi + 0x74]                   // 0x00405e98    8b4674
                         {disp32} fmul      dword ptr [rdata_bytes + 0x2230]              // 0x00405e9b    d80d30b28a00
                         {disp32} fsub      dword ptr [rdata_bytes + 0x222c]              // 0x00405ea1    d8252cb28a00
                         {disp32} fstp      dword ptr [eax + 0x00000640]                  // 0x00405ea7    d99840060000
_jmp_addr_0x00405ead:    {disp8} fld        dword ptr [esp + 0x18]                        // 0x00405ead    d9442418
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                   // 0x00405eb1    d81d98a38a00
                         fnstsw             ax                                            // 0x00405eb7    dfe0
                         test               ah, 0x40                                      // 0x00405eb9    f6c440
                         {disp8} je         _jmp_addr_0x00405ec5                          // 0x00405ebc    7407
                         mov.s              ecx, esi                                      // 0x00405ebe    8bce
                         call               _jmp_addr_0x00405d80                          // 0x00405ec0    e8bbfeffff
_jmp_addr_0x00405ec5:    {disp8} fld        dword ptr [esp + 0x18]                        // 0x00405ec5    d9442418
                         pop                esi                                           // 0x00405ec9    5e
                         pop                ebp                                           // 0x00405eca    5d
                         pop                ebx                                           // 0x00405ecb    5b
                         pop                ecx                                           // 0x00405ecc    59
                         ret                0x0008                                        // 0x00405ecd    c20800

?IncreaseLife@Abode@@UAEXM@Z:
                         push               ecx                                           // 0x00405ed0    51
                         push               esi                                           // 0x00405ed1    56
                         mov.s              esi, ecx                                      // 0x00405ed2    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00405ed4    8b06
                         push               edi                                           // 0x00405ed6    57
                         call               dword ptr [eax + 0x11c]                       // 0x00405ed7    ff901c010000
                         {disp8} fstp       dword ptr [esp + 0x08]                        // 0x00405edd    d95c2408
                         mov                edx, dword ptr [esi]                          // 0x00405ee1    8b16
                         mov.s              ecx, esi                                      // 0x00405ee3    8bce
                         call               dword ptr [edx + 0x894]                       // 0x00405ee5    ff9294080000
                         {disp8} fcomp      dword ptr [esp + 0x08]                        // 0x00405eeb    d85c2408
                         fnstsw             ax                                            // 0x00405eef    dfe0
                         test               ah, 0x01                                      // 0x00405ef1    f6c401
                         {disp8} jne        _jmp_addr_0x00405efd                          // 0x00405ef4    7507
                         mov                edi, 0x00000001                               // 0x00405ef6    bf01000000
                         {disp8} jmp        _jmp_addr_0x00405eff                          // 0x00405efb    eb02
_jmp_addr_0x00405efd:    xor.s              edi, edi                                      // 0x00405efd    33ff
_jmp_addr_0x00405eff:    {disp8} mov        eax, dword ptr [esp + 0x10]                   // 0x00405eff    8b442410
                         push               eax                                           // 0x00405f03    50
                         mov.s              ecx, esi                                      // 0x00405f04    8bce
                         call               ?IncreaseLife@Object@@UAEXM@Z                 // 0x00405f06    e865192300
                         {disp8} fstp       dword ptr [esp + 0x10]                        // 0x00405f0b    d95c2410
                         test               edi, edi                                      // 0x00405f0f    85ff
                         {disp8} je         _jmp_addr_0x00405f32                          // 0x00405f11    741f
                         mov                edx, dword ptr [esi]                          // 0x00405f13    8b16
                         mov.s              ecx, esi                                      // 0x00405f15    8bce
                         call               dword ptr [edx + 0x894]                       // 0x00405f17    ff9294080000
                         {disp8} fcomp      dword ptr [esp + 0x10]                        // 0x00405f1d    d85c2410
                         fnstsw             ax                                            // 0x00405f21    dfe0
                         test               ah, 0x01                                      // 0x00405f23    f6c401
                         {disp8} je         _jmp_addr_0x00405f32                          // 0x00405f26    740a
                         mov                eax, dword ptr [esi]                          // 0x00405f28    8b06
                         mov.s              ecx, esi                                      // 0x00405f2a    8bce
                         call               dword ptr [eax + 0x91c]                       // 0x00405f2c    ff901c090000
_jmp_addr_0x00405f32:    {disp8} fld        dword ptr [esp + 0x10]                        // 0x00405f32    d9442410
                         pop                edi                                           // 0x00405f36    5f
                         pop                esi                                           // 0x00405f37    5e
                         pop                ecx                                           // 0x00405f38    59
                         ret                0x0004                                        // 0x00405f39    c20400
                         nop                                                              // 0x00405f3c    90
                         nop                                                              // 0x00405f3d    90
                         nop                                                              // 0x00405f3e    90
                         nop                                                              // 0x00405f3f    90

?GetTribeType@Abode@@QAE?AW4TRIBE_TYPE@@XZ:
                         {disp32} mov       eax, dword ptr [ecx + 0x00000098]             // 0x00405f40    8b8198000000
                         {disp32} mov       eax, dword ptr [eax + 0x000005b8]             // 0x00405f46    8b80b8050000
                         ret                                                              // 0x00405f4c    c3
                         nop                                                              // 0x00405f4d    90
                         nop                                                              // 0x00405f4e    90
                         nop                                                              // 0x00405f4f    90

?GetTribe@Abode@@UAEPAUGTribeInfo@@XZ:
                         push               esi                                           // 0x00405f50    56
                         mov.s              esi, ecx                                      // 0x00405f51    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00405f53    8b06
                         call               dword ptr [eax + 0x48]                        // 0x00405f55    ff5048
                         test               eax, eax                                      // 0x00405f58    85c0
                         {disp8} je         _jmp_addr_0x00405f6c                          // 0x00405f5a    7410
                         mov                edx, dword ptr [esi]                          // 0x00405f5c    8b16
                         mov.s              ecx, esi                                      // 0x00405f5e    8bce
                         call               dword ptr [edx + 0x48]                        // 0x00405f60    ff5248
                         mov.s              ecx, eax                                      // 0x00405f63    8bc8
                         call               ?GetTribe@Town@@QBEPAVGTribeInfo@@XZ          // 0x00405f65    e8d6683300
                         pop                esi                                           // 0x00405f6a    5e
                         ret                                                              // 0x00405f6b    c3
_jmp_addr_0x00405f6c:    xor.s              eax, eax                                      // 0x00405f6c    33c0
                         pop                esi                                           // 0x00405f6e    5e
                         ret                                                              // 0x00405f6f    c3

?GetPlayer@Abode@@UAEPAVGPlayer@@XZ:
                         push               esi                                           // 0x00405f70    56
                         mov.s              esi, ecx                                      // 0x00405f71    8bf1
                         mov                eax, dword ptr [esi]                          // 0x00405f73    8b06
                         call               dword ptr [eax + 0x48]                        // 0x00405f75    ff5048
                         test               eax, eax                                      // 0x00405f78    85c0
                         {disp8} je         _jmp_addr_0x00405f8c                          // 0x00405f7a    7410
                         mov                edx, dword ptr [esi]                          // 0x00405f7c    8b16
                         mov.s              ecx, esi                                      // 0x00405f7e    8bce
                         call               dword ptr [edx + 0x48]                        // 0x00405f80    ff5248
                         mov                edx, dword ptr [eax]                          // 0x00405f83    8b10
                         mov.s              ecx, eax                                      // 0x00405f85    8bc8
                         call               dword ptr [edx + 0x1c]                        // 0x00405f87    ff521c
                         pop                esi                                           // 0x00405f8a    5e
                         ret                                                              // 0x00405f8b    c3
_jmp_addr_0x00405f8c:    mov.s              ecx, esi                                      // 0x00405f8c    8bce
                         call               ?GetPlayer@GameThing@@QAEPAVGPlayer@@XZ       // 0x00405f8e    e89da11600
                         pop                esi                                           // 0x00405f93    5e
                         ret                                                              // 0x00405f94    c3
                         nop                                                              // 0x00405f95    90
                         nop                                                              // 0x00405f96    90
                         nop                                                              // 0x00405f97    90
                         nop                                                              // 0x00405f98    90
                         nop                                                              // 0x00405f99    90
                         nop                                                              // 0x00405f9a    90
                         nop                                                              // 0x00405f9b    90
                         nop                                                              // 0x00405f9c    90
                         nop                                                              // 0x00405f9d    90
                         nop                                                              // 0x00405f9e    90
                         nop                                                              // 0x00405f9f    90
_jmp_addr_0x00405fa0:    {disp32} inc       byte ptr [ecx + 0x000000b6]                   // 0x00405fa0    fe81b6000000
                         ret                                                              // 0x00405fa6    c3
                         nop                                                              // 0x00405fa7    90
                         nop                                                              // 0x00405fa8    90
                         nop                                                              // 0x00405fa9    90
                         nop                                                              // 0x00405faa    90
                         nop                                                              // 0x00405fab    90
                         nop                                                              // 0x00405fac    90
                         nop                                                              // 0x00405fad    90
                         nop                                                              // 0x00405fae    90
                         nop                                                              // 0x00405faf    90
_jmp_addr_0x00405fb0:    dec                byte ptr [ecx + 0x000000b6]                   // 0x00405fb0    fe89b6000000
                         ret                                                              // 0x00405fb6    c3
                         nop                                                              // 0x00405fb7    90
                         nop                                                              // 0x00405fb8    90
                         nop                                                              // 0x00405fb9    90
                         nop                                                              // 0x00405fba    90
                         nop                                                              // 0x00405fbb    90
                         nop                                                              // 0x00405fbc    90
                         nop                                                              // 0x00405fbd    90
                         nop                                                              // 0x00405fbe    90
                         nop                                                              // 0x00405fbf    90
_jmp_addr_0x00405fc0:    {disp8} mov        dl, byte ptr [ecx + 0x7c]                     // 0x00405fc0    8a517c
                         mov                eax, 0x00000001                               // 0x00405fc3    b801000000
                         test               al, dl                                        // 0x00405fc8    84d0
                         {disp8} je         _jmp_addr_0x00405feb                          // 0x00405fca    741f
                         {disp8} mov        edx, dword ptr [esp + 0x04]                   // 0x00405fcc    8b542404
                         add                ecx, 0x00000080                               // 0x00405fd0    81c180000000
                         push               esi                                           // 0x00405fd6    56
                         mov                esi, dword ptr [ecx]                          // 0x00405fd7    8b31
                         mov                dword ptr [edx], esi                          // 0x00405fd9    8932
                         {disp8} mov        esi, dword ptr [ecx + 0x04]                   // 0x00405fdb    8b7104
                         {disp8} mov        dword ptr [edx + 0x04], esi                   // 0x00405fde    897204
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                   // 0x00405fe1    8b4908
                         {disp8} mov        dword ptr [edx + 0x08], ecx                   // 0x00405fe4    894a08
                         pop                esi                                           // 0x00405fe7    5e
                         ret                0x0004                                        // 0x00405fe8    c20400
_jmp_addr_0x00405feb:    xor.s              eax, eax                                      // 0x00405feb    33c0
                         ret                0x0004                                        // 0x00405fed    c20400

?IsCivic@Abode@@UAE_NXZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                   // 0x00405ff0    8b4128
                         {disp32} mov       eax, dword ptr [eax + 0x00000120]             // 0x00405ff3    8b8020010000
                         cmp                eax, 0x00000100                               // 0x00405ff9    3d00010000
                         {disp8} jg         _jmp_addr_0x00406019                          // 0x00405ffe    7f19
                         {disp8} je         _jmp_addr_0x0040603d                          // 0x00406000    743b
                         add                eax, -0x14                                    // 0x00406002    83c0ec
                         cmp                eax, 0x70                                     // 0x00406005    83f870
                         {disp8} ja         _jmp_addr_0x0040603a                          // 0x00406008    7730
                         xor.s              ecx, ecx                                      // 0x0040600a    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x0040604c]               // 0x0040600c    8a884c604000
                         jmp                dword ptr [ecx*4 + 0x406044]                  // 0x00406012    ff248d44604000
_jmp_addr_0x00406019:    cmp                eax, 0x00001004                               // 0x00406019    3d04100000
                         {disp8} jg         _jmp_addr_0x00406033                          // 0x0040601e    7f13
                         {disp8} je         _jmp_addr_0x0040603d                          // 0x00406020    741b
                         cmp                eax, 0x00000204                               // 0x00406022    3d04020000
                         {disp8} je         _jmp_addr_0x0040603d                          // 0x00406027    7414
                         cmp                eax, 0x00000404                               // 0x00406029    3d04040000
                         {disp8} je         _jmp_addr_0x0040603d                          // 0x0040602e    740d
                         xor.s              eax, eax                                      // 0x00406030    33c0
                         ret                                                              // 0x00406032    c3
_jmp_addr_0x00406033:    cmp                eax, 0x00002004                               // 0x00406033    3d04200000
                         {disp8} je         _jmp_addr_0x0040603d                          // 0x00406038    7403
_jmp_addr_0x0040603a:    xor.s              eax, eax                                      // 0x0040603a    33c0
                         ret                                                              // 0x0040603c    c3
_jmp_addr_0x0040603d:    mov                eax, 0x00000001                               // 0x0040603d    b801000000
                         ret                                                              // 0x00406042    c3
                         nop                                                              // 0x00406043    90

// Snippet: jmptbl, [0x00406044, 0x0040604c)
.byte 0x3d, 0x60, 0x40, 0x00      // 0x00406044
.byte 0x3a, 0x60, 0x40, 0x00      // 0x00406048

// Snippet: ijmptbl, [0x0040604c, 0x004060bd)
.byte 0x00, 0x01, 0x01, 0x01      // 0x0040604c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406050
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406054
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406058
.byte 0x00, 0x01, 0x01, 0x01      // 0x0040605c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406060
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406064
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406068
.byte 0x01, 0x01, 0x01, 0x01      // 0x0040606c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406070
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406074
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406078
.byte 0x00, 0x01, 0x01, 0x01      // 0x0040607c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406080
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406084
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406088
.byte 0x01, 0x01, 0x01, 0x01      // 0x0040608c
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406090
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406094
.byte 0x01, 0x01, 0x01, 0x01      // 0x00406098
.byte 0x01, 0x01, 0x01, 0x01      // 0x0040609c
.byte 0x01, 0x01, 0x01, 0x01      // 0x004060a0
.byte 0x01, 0x01, 0x01, 0x01      // 0x004060a4
.byte 0x01, 0x01, 0x01, 0x01      // 0x004060a8
.byte 0x01, 0x01, 0x01, 0x01      // 0x004060ac
.byte 0x01, 0x01, 0x01, 0x01      // 0x004060b0
.byte 0x01, 0x01, 0x01, 0x01      // 0x004060b4
.byte 0x01, 0x01, 0x01, 0x01      // 0x004060b8
.byte 0x00                        // 0x004060bc

// Snippet: db, [0x004060bd, 0x004060c0)
.byte 0x90, 0x90, 0x90            // 0x004060bd

