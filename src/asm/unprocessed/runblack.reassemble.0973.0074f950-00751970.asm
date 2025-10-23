.intel_syntax noprefix
.align 16

.extern rdata_bytes
.extern data_bytes
.extern data1_bytes
.extern SELFMOD_bytes
.extern rsrc_bytes

.extern ?SetIdentity@LHMatrix@@QAEXXZ
.extern ?Translation@LHMatrix@@QAEXABVLHPoint@@@Z
.extern ?PostTranslation@LHMatrix@@QAEXAAULHPoint@@@Z
.extern ?RemoveDeletedVillagerFromAbode@Abode@@QAEXPAVVillager@@@Z
.extern ?GetSpouse@Abode@@QAEPAVVillager@@PAV2@@Z
.extern ?GetRoomLeftForAdults@Abode@@QAEHXZ
.extern ?ChildToAdult@Abode@@QAEXPAVVillager@@@Z
.extern ?Find@GAbodeInfo@@SAPAV1@W4TRIBE_TYPE@@W4ABODE_NUMBER@@@Z
.extern ?GetTribeType@Abode@@QAE?AW4TRIBE_TYPE@@XZ
.extern _jmp_addr_0x004141f0
.extern _jmp_addr_0x004143b0
.extern _jmp_addr_0x004145a0
.extern _jmp_addr_0x0041bce0
.extern _jmp_addr_0x00425fb0
.extern @PlaySoundEffect__6GAudioFP20LH_SamplePlayOptions@12
.extern _jmp_addr_0x0042a4b0
.extern ?__nw@Base@@SAPAXK@Z
.extern _jmp_addr_0x00436960
.extern ??3Base@@SAXPAXK@Z
.extern _jmp_addr_0x00436a80
.extern _jmp_addr_0x004383d0
.extern _jmp_addr_0x0043bca0
.extern _jmp_addr_0x0043bd00
.extern _jmp_addr_0x0043bd70
.extern _jmp_addr_0x0043be00
.extern @__ct__7LHPointFRC7LHPoint@12
.extern _jmp_addr_0x0045a7d0
.extern ?GetCreature3D@Creature@@QAEPAVLH3DCreature@@XZ
.extern _jmp_addr_0x004a1ba0
.extern _jmp_addr_0x004c2b90
.extern _jmp_addr_0x004ea900
.extern _jmp_addr_0x00510b70
.extern _jmp_addr_0x00510bb0
.extern _jmp_addr_0x00511270
.extern _jmp_addr_0x00511d80
.extern _jmp_addr_0x00519320
.extern _jmp_addr_0x005198f0
.extern _jmp_addr_0x0051c8e0
.extern _jmp_addr_0x00521a90
.extern _jmp_addr_0x00529350
.extern @__ct__11FixedObjectFRC9MapCoordsPC11GObjectInfoff@24
.extern ?EndPhysics@Fixed@@UAEXPAVPhysicsObject@@_N@Z
.extern ?Save@Fixed@@UAEIPAVGameOSFile@@@Z
.extern ?Load@Fixed@@QAEIAAVGGameOSFile@@@Z
.extern ?CallVirtualFunctionsForCreation@SingleMapFixed@@UAEXABUMapCoords@@@Z
.extern _jmp_addr_0x0052eac0
.extern ?ApplyThisToMapCoord@SingleMapFixed@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@PAUGestureSystemPacketData@@@Z
.extern _jmp_addr_0x0052f6a0
.extern @__ct__6ForestFRC9MapCoordsUl@16
.extern _jmp_addr_0x0053a010
.extern _jmp_addr_0x0053a220
.extern @AddTree__6ForestFP4Tree@12
.extern ?GetCamera@GGame@@QAEPAVGCamera@@XZ
.extern ?GetNextPlayerAndNeutral@GGame@@QAEPAVGPlayer@@PAV2@@Z
.extern _jmp_addr_0x00555240
.extern ?MyInterface@GGame@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x00555880
.extern _jmp_addr_0x005575a0
.extern _jmp_addr_0x00557ae0
.extern ?WritePtr@GameOSFile@@QAEXPAVGameThing@@@Z
.extern @ReadPtr__10GameOSFileFPP9GameThing@12
.extern ?CheckAndSetSaved@GameThing@@QAE_NXZ
.extern _jmp_addr_0x005cd560
.extern _jmp_addr_0x005d8a10
.extern ?GetInterface@GInterfaceStatus@@QAEPAVGInterface@@XZ
.extern _jmp_addr_0x005e6540
.extern @__ct__6LivingFRC9MapCoordsPC11GLivingInfo@16
.extern @IsReadyForNewAnimation__6LivingFUl@12
.extern ?CallVirtualFunctionsForCreation@Living@@UAEXABUMapCoords@@@Z
.extern ?SetStateAnim@Living@@QAEXXZ
.extern ?RemoveFromDance@Living@@UAEXH@Z
.extern ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ
.extern ?SetupMoveToObject@Living@@QAE_NPAVObject@@E@Z
.extern ?ConvertToText@MapCoords@@QAEPADPAD@Z
.extern _jmp_addr_0x00603320
.extern ?GetFirstObjectMobile@MapCoords@@QBEPAVObject@@XZ
.extern ?GetFirstObjectFixed@MapCoords@@QBEPAVObject@@XZ
.extern @GetFirstIterator__9MapCoordsCFv@12
.extern ?IsWater@MapCoords@@QBEIXZ
.extern _jmp_addr_0x006036a0
.extern _jmp_addr_0x00603720
.extern ?InBounds@MapCoords@@QBEIXZ
.extern @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16
.extern _jmp_addr_0x00604fe0
.extern _jmp_addr_0x00605250
.extern @__apl__9MapCoordsFRC9MapCoords@12
.extern @__apl__9MapCoordsFRC9JustMapXZ@12
.extern @__pl__9MapCoordsCFRC9MapCoords@16
.extern _jmp_addr_0x006055c0
.extern _jmp_addr_0x006057b0
.extern @GetLHPoint__9MapCoordsCFv@12
.extern ?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z_2
.extern _jmp_addr_0x0060db00
.extern ?SetSpeed@MobileWallHug@@UAEXH@Z
.extern @Create3DObject__6ObjectFv@4
.extern ?ToBeDeleted@Object@@UAEXH@Z
.extern ?ReactToPhysicsImpact@Object@@UAEXPAVPhysicsObject@@_N@Z
.extern _jmp_addr_0x00637cc0
.extern _jmp_addr_0x00637dd0
.extern _jmp_addr_0x006380c0
.extern @GetMapChild__6ObjectFRC9MapCoords@12
.extern _jmp_addr_0x00638b00
.extern _jmp_addr_0x00639a10
.extern _jmp_addr_0x00639a30
.extern _jmp_addr_0x00639a40
.extern @SetLife__6ObjectFf@12
.extern _jmp_addr_0x0063a230
.extern _jmp_addr_0x0063a710
.extern ?ApplyWaterSpell@Object@@UAEMPAVSpellWater@@@Z
.extern _jmp_addr_0x0063b5d0
.extern _jmp_addr_0x0063e580
.extern _jmp_addr_0x00644800
.extern _jmp_addr_0x00644f00
.extern _jmp_addr_0x00647460
.extern ?GetPlayerNumber@GPlayer@@QBEEXZ
.extern ?IsNeutral@GPlayer@@QAE_NXZ
.extern _jmp_addr_0x0064d6a0
.extern ?IsMemberOfThisPlayer@GPlayer@@QAE_NPAVGInterfaceStatus@@@Z
.extern _jmp_addr_0x0064da80
.extern ?GameRand@GRand@@SAHJ@Z
.extern ?GameFloatRand@GRand@@SAMM@Z
.extern ?LocalRand@GRand@@SAIJ@Z
.extern ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z
.extern _jmp_addr_0x0070d080
.extern ?GetCommandAsText@GSetup@@SAPADW4SCRIPT_FEATURE_COMMANDS@@@Z
.extern ?WriteToFile@GSetup@@SAIPAXAAVLHOSFile@@0K@Z
.extern _jmp_addr_0x0071c810
.extern _jmp_addr_0x0071c990
.extern _jmp_addr_0x0071ca60
.extern _jmp_addr_0x0071caf0
.extern ?HelpSpritesLowOnPeople@GGuidance@@QAEXAAVTown@@@Z
.extern _jmp_addr_0x0071ce70
.extern _jmp_addr_0x0071cfe0
.extern _jmp_addr_0x0071eb60
.extern _jmp_addr_0x0071ed40
.extern ?Create@SpecialVillager@@SAPAV1@ABUMapCoords@@PBVGVillagerInfo@@KHPAVGSpecialVillagerInfo@@@Z
.extern @__ct__9SpellIconFRC9MapCoordsPC14GSpellIconInfoPC14GSpellSeedInfofffi@36
.extern _jmp_addr_0x00726080
.extern ?ToBeDeleted@SpellIcon@@UAEXH@Z
.extern _jmp_addr_0x00726210
.extern @SetPowerUpType__16SpellSeedGraphicF13POWER_UP_TYPE@12
.extern ?Save@SpellIcon@@UAEIAAVGameOSFile@@@Z
.extern ?Load@SpellIcon@@UAEIAAVGameOSFile@@@Z
.extern _jmp_addr_0x0072b160
.extern _jmp_addr_0x00733d30
.extern ?ChildToAdult@Town@@QAEXPAVVillager@@@Z
.extern ?GetStoragePit@Town@@QAEPAVStoragePit@@XZ
.extern _jmp_addr_0x0073b860
.extern _jmp_addr_0x0073b8e0
.extern _jmp_addr_0x0073bab0
.extern ?SetWorshipPercentage@Town@@QAEXM@Z
.extern ?AdjustWorshipersWorshipping@Town@@QAEXJHH@Z
.extern ?GetWorshipersNeeded@Town@@QAEHHHPAH@Z
.extern _jmp_addr_0x0073c980
.extern _jmp_addr_0x0073d1c0
.extern _jmp_addr_0x0073d220
.extern _jmp_addr_0x0073d850
.extern _jmp_addr_0x0073dec0
.extern _jmp_addr_0x0073e0a0
.extern ?RemoveVillager@Town@@QAEXPAVVillager@@@Z
.extern _jmp_addr_0x0073e400
.extern _jmp_addr_0x0073e420
.extern _jmp_addr_0x0073e440
.extern _jmp_addr_0x0073e5e0
.extern _jmp_addr_0x0073e870
.extern _jmp_addr_0x0073fd40
.extern _jmp_addr_0x00741080
.extern _jmp_addr_0x00741540
.extern ?UpdateAttitudeToCreature@Town@@QAEXXZ
.extern _jmp_addr_0x00743ff0
.extern _jmp_addr_0x00744290
.extern ?Process@TownDesire@@QAEXXZ
.extern _jmp_addr_0x00745f80
.extern ?GetTribe@Villager@@QAEPAVGTribeInfo@@XZ
.extern ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ
.extern ?GetAbode@Villager@@QAEPAVAbode@@XZ
.extern ?CallState@Villager@@QAEIXZ
.extern ?WomanSpecial@Villager@@QAEIXZ
.extern ?IsWoman@Villager@@QAE_NXZ
.extern ?SetAge@Villager@@UAEXK@Z
.extern ?SetScaleForAge@Villager@@QAEXK@Z
.extern _jmp_addr_0x00753140
.extern ?ProcessFoodSpeedup@Villager@@QAEXXZ
.extern ?SetState@Villager@@UAEXKE@Z
.extern ?SetupNothingToDo@Villager@@QAEIXZ
.extern ?SetDiscipleNothingToDo@Villager@@QAE_NXZ
.extern ?SetVillagerDisciple@Villager@@QAEIPAVGameThing@@W4VILLAGER_DISCIPLE@@H@Z
.extern ?SetSkeleton@Villager@@QAEXH@Z
.extern ?SetTown@Villager@@QAEXPAVTown@@@Z
.extern _jmp_addr_0x007567e0
.extern ?FindChildrenAndOrphanThem@Villager@@QAEXXZ
.extern _jmp_addr_0x00757180
.extern ?ChildDecideWhatToDo@Villager@@QAE_NXZ
.extern ?ChildBecomesAdult@Villager@@QAE_NXZ
.extern _jmp_addr_0x00758340
.extern _jmp_addr_0x007593a0
.extern _jmp_addr_0x00759c00
.extern _jmp_addr_0x0075b4c0
.extern ?GetDesireForFood@Villager@@QAEMXZ
.extern ?GetAmountOfFoodRequiredForMeal@Villager@@QAEIXZ
.extern ?CheckHungry@Villager@@QAE_NXZ
.extern _jmp_addr_0x0075f4a0
.extern ?CheckNeededForSomething@Villager@@QAE_NXZ
.extern _jmp_addr_0x00760ca0
.extern _jmp_addr_0x00769b80
.extern _jmp_addr_0x00769ee0
.extern _jmp_addr_0x00771600
.extern _jmp_addr_0x0077c100
.extern _jmp_addr_0x0077c2b0
.extern _jmp_addr_0x007a1400
.extern _jmp_addr_0x007aed24
.extern _jmp_addr_0x007aed2a
.extern  ??3@YAXPAX@Z
.extern ??0LHOSFile@@QAE@XZ
.extern ??_DLHOSFile@@QAEXXZ
.extern @Open__16LHReleasedOSFileFPc12LH_FILE_MODE@16
.extern ?Close@LHOSFile@@QAEIXZ
.extern @Read__8LHOSFileFPvUlPUl@20
.extern @Write__8LHOSFileFPvUlPUl@20
.extern _atexit
.extern _sprintf
.extern ___RTDynamicCast
.extern ??2@YAPAXI@Z
.extern __strcmpi
.extern _strncpy
.extern _strrchr
.extern ___nw__FUl
.extern _jmp_addr_0x007e2df0
.extern _jmp_addr_0x007e3d20
.extern _jmp_addr_0x007e3db0
.extern _jmp_addr_0x007e41b0
.extern _jmp_addr_0x007fcb80
.extern _jmp_addr_0x007feb30
.extern _jmp_addr_0x00802120
.extern ?GetAltitude@LH3DIsland@@SAMABULH3DMapCoords@@@Z
.extern _jmp_addr_0x0081b370
.extern _Random__Fff@8
.extern _jmp_addr_0x00823c90
.extern _jmp_addr_0x008251f0
.extern _jmp_addr_0x00829590
.extern _CHAR2WCHAR__FPc
.extern _jmp_addr_0x00833a00
.extern _jmp_addr_0x00841170
.extern _jmp_addr_0x00841260
.extern _jmp_addr_0x00841290
.extern _jmp_addr_0x0086a1b0

.globl ??0Villager@@QAE@ABUMapCoords@@PBVGVillagerInfo@@KH@Z
.globl ?SetToZero@Villager@@QAEXXZ
.globl ?InitialiseScale@Villager@@QAEXK@Z
.globl ??1Villager@@UAE@XZ
.globl ?Create@Villager@@SAPAV1@ABUMapCoords@@PBVGVillagerInfo@@KH@Z
.globl ?DeleteDependancys@Villager@@QAEXXZ
.globl ?FinishedIntoOutOfAnimation@Villager@@QAEXXZ
.globl ?SetStateCarriedObject@Villager@@QAEXXZ
.globl ?GetGameTurnsSinceLastChecked@Villager@@QAEIXZ
.globl ?SetGameTurnLastChecked@Villager@@QAEXXZ
.globl ?VillagerDead@Villager@@QAEXW4DEATH_REASON@@PAVGPlayer@@MH@Z
.globl ?CreateDroppedResource@Villager@@QAEXPAULHPoint@@00@Z
.globl ?TownDeleted@Villager@@QAEXXZ
.globl ?DebugText@Villager@@QAEXH@Z
.globl ?SetAbode@Villager@@QAEXPAVAbode@@@Z
.globl ?SetSpeed@Villager@@QAEXJH@Z
.globl ?IsAMother@Villager@@QAE_NXZ
.globl ?StartMoveToObject@Villager@@QAE_NPAVObject@@W4VILLAGER_STATES@@@Z
.globl ?DropResource@Villager@@QAEGW4RESOURCE_TYPE@@G@Z
.globl ?DropFood@Villager@@QAEGG@Z
.globl ?DropWood@Villager@@QAEGG@Z
.globl ?IsEnoughFoodInStoragePitForDinner@Villager@@QAE_NXZ
.globl ?PickupResource@Villager@@QAEXW4RESOURCE_TYPE@@FE@Z
.globl ?PickupFood@Villager@@QAEXF@Z
.globl ?PickupWood@Villager@@QAEXFE@Z
.globl ?GetFoodCapacity@Villager@@QAEHXZ
.globl ?GetWoodCapacity@Villager@@QAEHXZ
.globl ?GetResourceHeld@Villager@@QAE_NAAW4RESOURCE_TYPE@@@Z
.globl ?CheckTakeResourcesToStoragePit@Villager@@QAE_NXZ
.globl ?DiscipleDecideWhatToDo@Villager@@QAE_NXZ
.globl ?DecideWhatToDo@Villager@@UAE_NXZ
.globl ?ProcessState@Villager@@UAEIXZ
.globl ?CallVirtualFunctionsForCreation@Villager@@UAEXABUMapCoords@@@Z
.globl ?GetAnimId@Villager@@UAE?AW4ANIM_LIST@@XZ
.globl ?DestroyedByEffect@Villager@@UAEIPAVGPlayer@@M@Z
.globl ?GetPlayer@Villager@@UAEPAVGPlayer@@XZ
.globl ?GetHoldType@Villager@@UAE?AW4HOLD_TYPE@@XZ
.globl ?GetHoldLoweringMultiplier@Villager@@UAEMXZ
.globl ?HasSunk@Villager@@UAE_NXZ
.globl ?Birthday@Villager@@UAEXXZ
.globl ?RemoveFromDance@Villager@@UAEXH@Z
.globl ?IsRandomlyLazy@Villager@@QAE_NXZ
.globl ?FindPotAroundToGoto@Villager@@QAEPAVPot@@W4RESOURCE_TYPE@@AAKH@Z
.globl ?GetRandomLookAhead@Villager@@QAE_NPAUMapCoords@@M@Z
.globl ?LookAroundForVillagerInState@Villager@@QAEPAV1@W4VILLAGER_STATES@@K@Z
.globl ?GetSpouse@Villager@@QAEPAV1@XZ
.globl ?SetupJobLocation@Villager@@QAE_NXZ
.globl ?UnemployedJobs@Villager@@QAE_NXZ

??0Villager@@QAE@ABUMapCoords@@PBVGVillagerInfo@@KH@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x0074f950    8b442404
                         push               ebx                                            // 0x0074f954    53
                         push               esi                                            // 0x0074f955    56
                         push               edi                                            // 0x0074f956    57
                         {disp8} mov        edi, dword ptr [esp + 0x14]                    // 0x0074f957    8b7c2414
                         push               edi                                            // 0x0074f95b    57
                         mov.s              esi, ecx                                       // 0x0074f95c    8bf1
                         push               eax                                            // 0x0074f95e    50
                         call               @__ct__6LivingFRC9MapCoordsPC11GLivingInfo@16  // 0x0074f95f    e85cc5e9ff
                         xor.s              ebx, ebx                                       // 0x0074f964    33db
                         {disp32} mov       dword ptr [esi + 0x000000e4], ebx              // 0x0074f966    899ee4000000
                         {disp32} mov       dword ptr [esi + 0x000000fc], ebx              // 0x0074f96c    899efc000000
                         {disp32} mov       dword ptr [esi + 0x0000010c], ebx              // 0x0074f972    899e0c010000
                         {disp32} mov       dword ptr [esi + 0x00000110], ebx              // 0x0074f978    899e10010000
                         {disp32} mov       dword ptr [esi + 0x0000010c], ebx              // 0x0074f97e    899e0c010000
                         {disp32} mov       dword ptr [esi + 0x00000110], ebx              // 0x0074f984    899e10010000
                         {disp32} mov       dword ptr [esi + 0x00000110], ebx              // 0x0074f98a    899e10010000
                         {disp32} mov       dword ptr [esi + 0x00000114], ebx              // 0x0074f990    899e14010000
                         {disp32} mov       dword ptr [esi + 0x0000010c], ebx              // 0x0074f996    899e0c010000
                         {disp32} mov       dword ptr [esi + 0x00000110], ebx              // 0x0074f99c    899e10010000
                         {disp32} mov       dword ptr [esi + 0x00000118], ebx              // 0x0074f9a2    899e18010000
                         {disp32} mov       dword ptr [esi + 0x0000011c], ebx              // 0x0074f9a8    899e1c010000
                         {disp32} mov       dword ptr [esi + 0x0000011c], ebx              // 0x0074f9ae    899e1c010000
                         {disp32} mov       dword ptr [esi + 0x00000120], ebx              // 0x0074f9b4    899e20010000
                         {disp32} mov       dword ptr [esi + 0x00000118], ebx              // 0x0074f9ba    899e18010000
                         {disp32} mov       dword ptr [esi + 0x0000011c], ebx              // 0x0074f9c0    899e1c010000
                         {disp32} mov       dword ptr [esi + 0x00000120], ebx              // 0x0074f9c6    899e20010000
                         {disp32} mov       dword ptr [esi + 0x00000124], ebx              // 0x0074f9cc    899e24010000
                         {disp32} mov       dword ptr [esi + 0x0000011c], ebx              // 0x0074f9d2    899e1c010000
                         mov.s              ecx, esi                                       // 0x0074f9d8    8bce
                         mov                dword ptr [esi], 0x008f7960                    // 0x0074f9da    c70660798f00
                         call               ?SetToZero@Villager@@QAEXXZ                    // 0x0074f9e0    e83b010000
                         {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x0074f9e5    8b442418
                         cmp                eax, dword ptr [edi + 0x00000138]              // 0x0074f9e9    3b8738010000
                         {disp8} jae        _jmp_addr_0x0074f9f7                           // 0x0074f9ef    7306
                         {disp32} mov       dword ptr [esi + 0x00000100], ebx              // 0x0074f9f1    899e00010000
_jmp_addr_0x0074f9f7:    push               eax                                            // 0x0074f9f7    50
                         mov.s              ecx, esi                                       // 0x0074f9f8    8bce
                         call               ?SetAge@Villager@@UAEXK@Z                      // 0x0074f9fa    e8c12e0000
                         {disp8} mov        edi, dword ptr [esi + 0x28]                    // 0x0074f9ff    8b7e28
                         {disp32} mov       byte ptr [esi + 0x000000f0], bl                // 0x0074fa02    889ef0000000
                         cmp                dword ptr [edi + 0x000001f8], 0x01             // 0x0074fa08    83bff801000001
                         {disp8} jne        _jmp_addr_0x0074fa18                           // 0x0074fa0f    7507
                         {disp32} mov       word ptr [esi + 0x000000f8], bx                // 0x0074fa11    66899ef8000000
_jmp_addr_0x0074fa18:    push               0x7e                                           // 0x0074fa18    6a7e
                         push               0x00c235dc                                     // 0x0074fa1a    68dc35c200
                         push               0x3f19999a                                     // 0x0074fa1f    689a99193f
                         call               ?GameFloatRand@GRand@@SAMM@Z                   // 0x0074fa24    e807ebf8ff
                         {disp32} fadd      dword ptr [edi + 0x000002c0]                   // 0x0074fa29    d887c0020000
                         add                esp, 0x0c                                      // 0x0074fa2f    83c40c
                         {disp32} fcomp     dword ptr [_rdata_float1p0]                    // 0x0074fa32    d81d90a38a00
                         fnstsw             ax                                             // 0x0074fa38    dfe0
                         test               ah, 0x01                                       // 0x0074fa3a    f6c401
                         {disp8} je         _jmp_addr_0x0074fa5e                           // 0x0074fa3d    741f
                         {disp8} mov        edi, dword ptr [esi + 0x28]                    // 0x0074fa3f    8b7e28
                         push               0x7e                                           // 0x0074fa42    6a7e
                         push               0x00c235dc                                     // 0x0074fa44    68dc35c200
                         push               0x3f19999a                                     // 0x0074fa49    689a99193f
                         call               ?GameFloatRand@GRand@@SAMM@Z                   // 0x0074fa4e    e8ddeaf8ff
                         {disp32} fadd      dword ptr [edi + 0x000002c0]                   // 0x0074fa53    d887c0020000
                         add                esp, 0x0c                                      // 0x0074fa59    83c40c
                         {disp8} jmp        _jmp_addr_0x0074fa64                           // 0x0074fa5c    eb06
_jmp_addr_0x0074fa5e:    {disp32} fld       dword ptr [_rdata_float1p0]                    // 0x0074fa5e    d90590a38a00
_jmp_addr_0x0074fa64:    {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x0074fa64    8b4628
                         {disp32} fstp      dword ptr [esi + 0x000000e8]                   // 0x0074fa67    d99ee8000000
                         {disp32} mov       edx, dword ptr [eax + 0x000002dc]              // 0x0074fa6d    8b90dc020000
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x0074fa73    8b0d5c19d000
                         {disp32} mov       edi, dword ptr [ecx + 0x00205a40]              // 0x0074fa79    8bb9405a2000
                         push               0x7f                                           // 0x0074fa7f    6a7f
                         push               0x00c235dc                                     // 0x0074fa81    68dc35c200
                         push               edx                                            // 0x0074fa86    52
                         call               ?GameRand@GRand@@SAHJ@Z                        // 0x0074fa87    e884eaf8ff
                         add                esp, 0x0c                                      // 0x0074fa8c    83c40c
                         cmp.s              eax, edi                                       // 0x0074fa8f    3bc7
                         {disp8} jae        _jmp_addr_0x0074faae                           // 0x0074fa91    731b
                         {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x0074fa93    8b4628
                         {disp32} mov       eax, dword ptr [eax + 0x000002dc]              // 0x0074fa96    8b80dc020000
                         push               0x7f                                           // 0x0074fa9c    6a7f
                         push               0x00c235dc                                     // 0x0074fa9e    68dc35c200
                         push               eax                                            // 0x0074faa3    50
                         call               ?GameRand@GRand@@SAHJ@Z                        // 0x0074faa4    e867eaf8ff
                         add                esp, 0x0c                                      // 0x0074faa9    83c40c
                         {disp8} jmp        _jmp_addr_0x0074fab0                           // 0x0074faac    eb02
_jmp_addr_0x0074faae:    mov.s              eax, edi                                       // 0x0074faae    8bc7
_jmp_addr_0x0074fab0:    {disp32} mov       ecx, dword ptr [_game]                         // 0x0074fab0    8b0d5c19d000
                         {disp32} mov       edx, dword ptr [ecx + 0x00205a40]              // 0x0074fab6    8b91405a2000
                         push               0x00000080                                     // 0x0074fabc    6880000000
                         sub.s              edx, eax                                       // 0x0074fac1    2bd0
                         push               0x00c235dc                                     // 0x0074fac3    68dc35c200
                         push               0x000001f4                                     // 0x0074fac8    68f4010000
                         {disp32} mov       dword ptr [esi + 0x000000ec], edx              // 0x0074facd    8996ec000000
                         call               ?GameRand@GRand@@SAHJ@Z                        // 0x0074fad3    e838eaf8ff
                         add                esp, 0x0c                                      // 0x0074fad8    83c40c
                         inc                eax                                            // 0x0074fadb    40
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                    // 0x0074fadc    8d4e14
                         {disp8} mov        word ptr [esi + 0x58], ax                      // 0x0074fadf    66894658
                         call               ?IsWater@MapCoords@@QBEIXZ                     // 0x0074fae3    e8c83aebff
                         test               eax, eax                                       // 0x0074fae8    85c0
                         {disp8} je         _jmp_addr_0x0074faf0                           // 0x0074faea    7404
                         push               0x10                                           // 0x0074faec    6a10
                         {disp8} jmp        _jmp_addr_0x0074faf2                           // 0x0074faee    eb02
_jmp_addr_0x0074faf0:    push               0x55                                           // 0x0074faf0    6a55
_jmp_addr_0x0074faf2:    push               ebx                                            // 0x0074faf2    53
                         mov.s              ecx, esi                                       // 0x0074faf3    8bce
                         call               ?SetState@Villager@@UAEXKE@Z                   // 0x0074faf5    e8963b0000
                         {disp32} mov       eax, dword ptr [_game]                         // 0x0074fafa    a15c19d000
                         {disp32} inc       dword ptr [eax + 0x00205a54]                   // 0x0074faff    ff80545a2000
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                    // 0x0074fb05    8b44241c
                         push               eax                                            // 0x0074fb09    50
                         mov.s              ecx, esi                                       // 0x0074fb0a    8bce
                         call               ?SetSkeleton@Villager@@QAEXH@Z                 // 0x0074fb0c    e8af670000
                         pop                edi                                            // 0x0074fb11    5f
                         mov.s              eax, esi                                       // 0x0074fb12    8bc6
                         pop                esi                                            // 0x0074fb14    5e
                         pop                ebx                                            // 0x0074fb15    5b
                         ret                0x0010                                         // 0x0074fb16    c21000
                         nop                                                               // 0x0074fb19    90
                         nop                                                               // 0x0074fb1a    90
                         nop                                                               // 0x0074fb1b    90
                         nop                                                               // 0x0074fb1c    90
                         nop                                                               // 0x0074fb1d    90
                         nop                                                               // 0x0074fb1e    90
                         nop                                                               // 0x0074fb1f    90
?SetToZero@Villager@@QAEXXZ:
                              xor.s              eax, eax                                       // 0x0074fb20    33c0
                         {disp32} mov       word ptr [ecx + 0x000000e0], ax                // 0x0074fb22    668981e0000000
                         {disp32} mov       dword ptr [ecx + 0x000000e8], eax              // 0x0074fb29    8981e8000000
                         {disp32} mov       byte ptr [ecx + 0x000000f0], al                // 0x0074fb2f    8881f0000000
                         {disp32} mov       word ptr [ecx + 0x000000f4], ax                // 0x0074fb35    668981f4000000
                         {disp32} mov       word ptr [ecx + 0x000000f6], ax                // 0x0074fb3c    668981f6000000
                         {disp32} mov       dword ptr [ecx + 0x000000fc], eax              // 0x0074fb43    8981fc000000
                         {disp32} mov       dword ptr [ecx + 0x00000128], eax              // 0x0074fb49    898128010000
                         {disp32} mov       byte ptr [ecx + 0x000000f2], al                // 0x0074fb4f    8881f2000000
                         {disp32} mov       dword ptr [ecx + 0x0000012c], eax              // 0x0074fb55    89812c010000
                         {disp32} mov       dword ptr [ecx + 0x000000ec], eax              // 0x0074fb5b    8981ec000000
                         {disp32} mov       dword ptr [ecx + 0x00000100], eax              // 0x0074fb61    898100010000
                         {disp32} mov       dword ptr [ecx + 0x00000104], eax              // 0x0074fb67    898104010000
                         {disp32} mov       dword ptr [ecx + 0x00000108], eax              // 0x0074fb6d    898108010000
                         ret                                                               // 0x0074fb73    c3
                         nop                                                               // 0x0074fb74    90
                         nop                                                               // 0x0074fb75    90
                         nop                                                               // 0x0074fb76    90
                         nop                                                               // 0x0074fb77    90
                         nop                                                               // 0x0074fb78    90
                         nop                                                               // 0x0074fb79    90
                         nop                                                               // 0x0074fb7a    90
                         nop                                                               // 0x0074fb7b    90
                         nop                                                               // 0x0074fb7c    90
                         nop                                                               // 0x0074fb7d    90
                         nop                                                               // 0x0074fb7e    90
                         nop                                                               // 0x0074fb7f    90
?InitialiseScale@Villager@@QAEXK@Z:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                    // 0x0074fb80    8b4128
                         {disp8} mov        edx, dword ptr [esp + 0x04]                    // 0x0074fb83    8b542404
                         push               esi                                            // 0x0074fb87    56
                         cmp                edx, dword ptr [eax + 0x00000138]              // 0x0074fb88    3b9038010000
                         {disp8} jae        _jmp_addr_0x0074fba4                           // 0x0074fb8e    7314
                         {disp32} mov       eax, dword ptr [eax + edx * 0x4 + 0x000002e4]  // 0x0074fb90    8b8490e4020000
                         mov                esi, dword ptr [ecx]                           // 0x0074fb97    8b31
                         push               eax                                            // 0x0074fb99    50
                         call               dword ptr [esi + 0x124]                        // 0x0074fb9a    ff9624010000
                         pop                esi                                            // 0x0074fba0    5e
                         ret                0x0004                                         // 0x0074fba1    c20400
_jmp_addr_0x0074fba4:    mov                edx, dword ptr [ecx]                           // 0x0074fba4    8b11
                         push               0x3f666666                                     // 0x0074fba6    686666663f
                         call               dword ptr [edx + 0x124]                        // 0x0074fbab    ff9224010000
                         pop                esi                                            // 0x0074fbb1    5e
                         ret                0x0004                                         // 0x0074fbb2    c20400
                         nop                                                               // 0x0074fbb5    90
                         nop                                                               // 0x0074fbb6    90
                         nop                                                               // 0x0074fbb7    90
                         nop                                                               // 0x0074fbb8    90
                         nop                                                               // 0x0074fbb9    90
                         nop                                                               // 0x0074fbba    90
                         nop                                                               // 0x0074fbbb    90
                         nop                                                               // 0x0074fbbc    90
                         nop                                                               // 0x0074fbbd    90
                         nop                                                               // 0x0074fbbe    90
                         nop                                                               // 0x0074fbbf    90

??1Villager@@UAE@XZ:     test               byte ptr [ecx + 0x000000e0], 0x40              // 0x0074fbc0    f681e000000040
                         mov                dword ptr [ecx], 0x008f7960                    // 0x0074fbc7    c70160798f00
                         {disp8} jne        _jmp_addr_0x0074fbda                           // 0x0074fbcd    750b
                         {disp32} mov       eax, dword ptr [_game]                         // 0x0074fbcf    a15c19d000
                         dec                dword ptr [eax + 0x00205a54]                   // 0x0074fbd4    ff88545a2000
_jmp_addr_0x0074fbda:    {disp32} jmp       _jmp_addr_0x0060db00                           // 0x0074fbda    e921dfebff
                         nop                                                               // 0x0074fbdf    90

?Create@Villager@@SAPAV1@ABUMapCoords@@PBVGVillagerInfo@@KH@Z:
                                                        push               ebx                                            // 0x0074fbe0    53
                         push               ebp                                            // 0x0074fbe1    55
                         push               esi                                            // 0x0074fbe2    56
                         push               edi                                            // 0x0074fbe3    57
                         push               0x000000e7                                     // 0x0074fbe4    68e7000000
                         push               0x00c235dc                                     // 0x0074fbe9    68dc35c200
                         push               0xa                                            // 0x0074fbee    6a0a
                         call               ?GameRand@GRand@@SAHJ@Z                        // 0x0074fbf0    e81be9f8ff
                         {disp8} mov        esi, dword ptr [esp + 0x2c]                    // 0x0074fbf5    8b74242c
                         {disp8} mov        ebx, dword ptr [esp + 0x28]                    // 0x0074fbf9    8b5c2428
                         {disp8} mov        ebp, dword ptr [esp + 0x24]                    // 0x0074fbfd    8b6c2424
                         {disp8} mov        edi, dword ptr [esp + 0x20]                    // 0x0074fc01    8b7c2420
                         add                esp, 0x0c                                      // 0x0074fc05    83c40c
                         cmp                eax, 0x01                                      // 0x0074fc08    83f801
                         {disp8} ja         _jmp_addr_0x0074fc25                           // 0x0074fc0b    7718
                         push               0x0                                            // 0x0074fc0d    6a00
                         push               esi                                            // 0x0074fc0f    56
                         push               ebx                                            // 0x0074fc10    53
                         push               ebp                                            // 0x0074fc11    55
                         push               edi                                            // 0x0074fc12    57
                         call               ?Create@SpecialVillager@@SAPAV1@ABUMapCoords@@PBVGVillagerInfo@@KHPAVGSpecialVillagerInfo@@@Z                // 0x0074fc13    e888f5fcff
                         add                esp, 0x14                                      // 0x0074fc18    83c414
                         test               eax, eax                                       // 0x0074fc1b    85c0
                         {disp8} je         _jmp_addr_0x0074fc25                           // 0x0074fc1d    7406
                         test               byte ptr [eax + 0x0a], 0x01                    // 0x0074fc1f    f6400a01
                         {disp8} je         _jmp_addr_0x0074fc5e                           // 0x0074fc23    7439
_jmp_addr_0x0074fc25:    push               0x000000f3                                     // 0x0074fc25    68f3000000
                         push               0x00c235dc                                     // 0x0074fc2a    68dc35c200
                         push               0x00000130                                     // 0x0074fc2f    6830010000
                         call               ?__nw@Base@@SAPAXK@Z                           // 0x0074fc34    e8b76aceff
                         add                esp, 0x0c                                      // 0x0074fc39    83c40c
                         test               eax, eax                                       // 0x0074fc3c    85c0
                         {disp8} je         _jmp_addr_0x0074fc63                           // 0x0074fc3e    7423
                         push               esi                                            // 0x0074fc40    56
                         push               ebx                                            // 0x0074fc41    53
                         push               ebp                                            // 0x0074fc42    55
                         push               edi                                            // 0x0074fc43    57
                         mov.s              ecx, eax                                       // 0x0074fc44    8bc8
                         call               ??0Villager@@QAE@ABUMapCoords@@PBVGVillagerInfo@@KH@Z  // 0x0074fc46    e805fdffff
                         mov.s              esi, eax                                       // 0x0074fc4b    8bf0
                         test               esi, esi                                       // 0x0074fc4d    85f6
                         {disp8} je         _jmp_addr_0x0074fc5c                           // 0x0074fc4f    740b
                         mov                eax, dword ptr [esi]                           // 0x0074fc51    8b06
                         push               edi                                            // 0x0074fc53    57
                         mov.s              ecx, esi                                       // 0x0074fc54    8bce
                         call               dword ptr [eax + 0x658]                        // 0x0074fc56    ff9058060000
_jmp_addr_0x0074fc5c:    mov.s              eax, esi                                       // 0x0074fc5c    8bc6
_jmp_addr_0x0074fc5e:    pop                edi                                            // 0x0074fc5e    5f
                         pop                esi                                            // 0x0074fc5f    5e
                         pop                ebp                                            // 0x0074fc60    5d
                         pop                ebx                                            // 0x0074fc61    5b
                         ret                                                               // 0x0074fc62    c3
_jmp_addr_0x0074fc63:    pop                edi                                            // 0x0074fc63    5f
                         pop                esi                                            // 0x0074fc64    5e
                         pop                ebp                                            // 0x0074fc65    5d
                         xor.s              eax, eax                                       // 0x0074fc66    33c0
                         pop                ebx                                            // 0x0074fc68    5b
                         ret                                                               // 0x0074fc69    c3
                         nop                                                               // 0x0074fc6a    90
                         nop                                                               // 0x0074fc6b    90
                         nop                                                               // 0x0074fc6c    90
                         nop                                                               // 0x0074fc6d    90
                         nop                                                               // 0x0074fc6e    90
                         nop                                                               // 0x0074fc6f    90
?CallVirtualFunctionsForCreation@Villager@@UAEXABUMapCoords@@@Z:
                         push               ebx                                            // 0x0074fc70    53
                         push               esi                                            // 0x0074fc71    56
                         mov.s              esi, ecx                                       // 0x0074fc72    8bf1
                         {disp32} mov       cl, byte ptr [data_bytes + 0x3e0bd4]           // 0x0074fc74    8a0dd46bda00
                         mov                al, 0x01                                       // 0x0074fc7a    b001
                         test               al, cl                                         // 0x0074fc7c    84c8
                         push               edi                                            // 0x0074fc7e    57
                         {disp8} jne        _jmp_addr_0x0074fca7                           // 0x0074fc7f    7526
                         mov.s              bl, cl                                         // 0x0074fc81    8ad9
                         {disp32} mov       ecx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]         // 0x0074fc83    8b0d34fee900
                         or.s               bl, al                                         // 0x0074fc89    0ad8
                         {disp32} mov       byte ptr [data_bytes + 0x3e0bd4], bl           // 0x0074fc8b    881dd46bda00
                         mov                edx, dword ptr [ecx]                           // 0x0074fc91    8b11
                         mov                eax, 0x000001ff                                // 0x0074fc93    b8ff010000
                         cmp.s              edx, eax                                       // 0x0074fc98    3bd0
                         {disp8} jg         _jmp_addr_0x0074fc9e                           // 0x0074fc9a    7f02
                         xor.s              eax, eax                                       // 0x0074fc9c    33c0
_jmp_addr_0x0074fc9e:    {disp8} mov        eax, dword ptr [ecx + eax * 0x4 + 0x04]        // 0x0074fc9e    8b448104
                         {disp32} mov       dword ptr [data_bytes + 0x3e0bd0], eax         // 0x0074fca2    a3d06bda00
_jmp_addr_0x0074fca7:    {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x0074fca7    8b4c2410
                         push               ecx                                            // 0x0074fcab    51
                         mov.s              ecx, esi                                       // 0x0074fcac    8bce
                         call               ?CallVirtualFunctionsForCreation@Living@@UAEXABUMapCoords@@@Z                           // 0x0074fcae    e8fdcce9ff
                         mov                edx, dword ptr [esi]                           // 0x0074fcb3    8b16
                         mov.s              ecx, esi                                       // 0x0074fcb5    8bce
                         call               dword ptr [edx + 0x4a0]                        // 0x0074fcb7    ff92a0040000
                         test               eax, eax                                       // 0x0074fcbd    85c0
                         {disp8} je         _jmp_addr_0x0074fcd6                           // 0x0074fcbf    7415
                         {disp32} mov       edx, dword ptr [data_bytes + 0x3e0bd0]         // 0x0074fcc1    8b15d06bda00
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                    // 0x0074fcc7    8b4e40
                         mov                eax, dword ptr [ecx]                           // 0x0074fcca    8b01
                         push               edx                                            // 0x0074fccc    52
                         push               edx                                            // 0x0074fccd    52
                         call               dword ptr [eax + 0xf4]                         // 0x0074fcce    ff90f4000000
                         {disp8} jmp        _jmp_addr_0x0074fd37                           // 0x0074fcd4    eb61
_jmp_addr_0x0074fcd6:    mov                edx, dword ptr [esi]                           // 0x0074fcd6    8b16
                         {disp8} mov        edi, dword ptr [esi + 0x28]                    // 0x0074fcd8    8b7e28
                         mov.s              ecx, esi                                       // 0x0074fcdb    8bce
                         call               dword ptr [edx + 0x8d0]                        // 0x0074fcdd    ff92d0080000
                         cmp                eax, dword ptr [edi + 0x00000138]              // 0x0074fce3    3b8738010000
                         {disp8} jae        _jmp_addr_0x0074fd37                           // 0x0074fce9    734c
                         {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x0074fceb    8b4628
                         {disp32} mov       eax, dword ptr [eax + 0x00000204]              // 0x0074fcee    8b8004020000
                         {disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]         // 0x0074fcf4    8b1534fee900
                         mov.s              ecx, eax                                       // 0x0074fcfa    8bc8
                         test               ecx, ecx                                       // 0x0074fcfc    85c9
                         {disp8} jl         _jmp_addr_0x0074fd04                           // 0x0074fcfe    7c04
                         cmp                ecx, dword ptr [edx]                           // 0x0074fd00    3b0a
                         {disp8} jl         _jmp_addr_0x0074fd06                           // 0x0074fd02    7c02
_jmp_addr_0x0074fd04:    xor.s              ecx, ecx                                       // 0x0074fd04    33c9
_jmp_addr_0x0074fd06:    {disp8} mov        ebx, dword ptr [edx + ecx * 0x4 + 0x04]        // 0x0074fd06    8b5c8a04
                         mov.s              ecx, eax                                       // 0x0074fd0a    8bc8
                         test               ecx, ecx                                       // 0x0074fd0c    85c9
                         {disp8} jl         _jmp_addr_0x0074fd14                           // 0x0074fd0e    7c04
                         cmp                ecx, dword ptr [edx]                           // 0x0074fd10    3b0a
                         {disp8} jl         _jmp_addr_0x0074fd16                           // 0x0074fd12    7c02
_jmp_addr_0x0074fd14:    xor.s              ecx, ecx                                       // 0x0074fd14    33c9
_jmp_addr_0x0074fd16:    test               eax, eax                                       // 0x0074fd16    85c0
                         {disp8} mov        edi, dword ptr [edx + ecx * 0x4 + 0x04]        // 0x0074fd18    8b7c8a04
                         {disp8} jl         _jmp_addr_0x0074fd22                           // 0x0074fd1c    7c04
                         cmp                eax, dword ptr [edx]                           // 0x0074fd1e    3b02
                         {disp8} jl         _jmp_addr_0x0074fd24                           // 0x0074fd20    7c02
_jmp_addr_0x0074fd22:    xor.s              eax, eax                                       // 0x0074fd22    33c0
_jmp_addr_0x0074fd24:    {disp8} mov        ecx, dword ptr [esi + 0x40]                    // 0x0074fd24    8b4e40
                         {disp8} mov        edx, dword ptr [edx + eax * 0x4 + 0x04]        // 0x0074fd27    8b548204
                         push               ebp                                            // 0x0074fd2b    55
                         mov                ebp, dword ptr [ecx]                           // 0x0074fd2c    8b29
                         push               ebx                                            // 0x0074fd2e    53
                         push               edi                                            // 0x0074fd2f    57
                         call               dword ptr [ebp + 0xf4]                         // 0x0074fd30    ff95f4000000
                         pop                ebp                                            // 0x0074fd36    5d
_jmp_addr_0x0074fd37:    {disp8} mov        ecx, dword ptr [esi + 0x40]                    // 0x0074fd37    8b4e40
                         mov                edx, dword ptr [ecx]                           // 0x0074fd3a    8b11
                         call               dword ptr [edx + 0xb4]                         // 0x0074fd3c    ff92b4000000
                         {disp8} mov        ecx, dword ptr [esi + 0x40]                    // 0x0074fd42    8b4e40
                         mov                eax, dword ptr [ecx]                           // 0x0074fd45    8b01
                         mov                edx, 0x00000001                                // 0x0074fd47    ba01000000
                         call               dword ptr [eax + 0xc4]                         // 0x0074fd4c    ff90c4000000
                         pop                edi                                            // 0x0074fd52    5f
                         pop                esi                                            // 0x0074fd53    5e
                         pop                ebx                                            // 0x0074fd54    5b
                         ret                0x0004                                         // 0x0074fd55    c20400
                         nop                                                               // 0x0074fd58    90
                         nop                                                               // 0x0074fd59    90
                         nop                                                               // 0x0074fd5a    90
                         nop                                                               // 0x0074fd5b    90
                         nop                                                               // 0x0074fd5c    90
                         nop                                                               // 0x0074fd5d    90
                         nop                                                               // 0x0074fd5e    90
                         nop                                                               // 0x0074fd5f    90
?DeleteDependancys@Villager@@QAEXXZ:
                                      sub                esp, 0x08                                      // 0x0074fd60    83ec08
                         push               ebx                                            // 0x0074fd63    53
                         push               ebp                                            // 0x0074fd64    55
                         push               esi                                            // 0x0074fd65    56
                         push               edi                                            // 0x0074fd66    57
                         mov.s              esi, ecx                                       // 0x0074fd67    8bf1
                         call               ?GetAbode@Villager@@QAEPAVAbode@@XZ            // 0x0074fd69    e8f2230000
                         mov.s              edi, eax                                       // 0x0074fd6e    8bf8
                         mov                eax, dword ptr [esi]                           // 0x0074fd70    8b06
                         mov.s              ecx, esi                                       // 0x0074fd72    8bce
                         {disp8} mov        dword ptr [esp + 0x10], edi                    // 0x0074fd74    897c2410
                         call               dword ptr [eax + 0x48]                         // 0x0074fd78    ff5048
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x0074fd7b    89442414
                         {disp32} mov       al, byte ptr [esi + 0x0000008c]                // 0x0074fd7f    8a868c000000
                         cmp                al, 0x0d                                       // 0x0074fd85    3c0d
                         {disp8} je         _jmp_addr_0x0074fd9d                           // 0x0074fd87    7414
                         cmp                al, 0x0e                                       // 0x0074fd89    3c0e
                         {disp8} je         _jmp_addr_0x0074fd9d                           // 0x0074fd8b    7410
                         cmp                al, 0x0f                                       // 0x0074fd8d    3c0f
                         {disp8} je         _jmp_addr_0x0074fd9d                           // 0x0074fd8f    740c
                         mov                edx, dword ptr [esi]                           // 0x0074fd91    8b16
                         push               0xd                                            // 0x0074fd93    6a0d
                         mov.s              ecx, esi                                       // 0x0074fd95    8bce
                         call               dword ptr [edx + 0x8e8]                        // 0x0074fd97    ff92e8080000
_jmp_addr_0x0074fd9d:    mov.s              ecx, esi                                       // 0x0074fd9d    8bce
                         call               ?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ// 0x0074fd9f    e84c2aeaff
                         cmp                al, 0x1d                                       // 0x0074fda4    3c1d
                         {disp8} je         _jmp_addr_0x0074fe01                           // 0x0074fda6    7459
                         {disp32} mov       ebx, dword ptr [esi + 0x000000cc]              // 0x0074fda8    8b9ecc000000
                         test               ebx, ebx                                       // 0x0074fdae    85db
                         {disp8} je         _jmp_addr_0x0074fe01                           // 0x0074fdb0    744f
                         {disp8} mov        eax, dword ptr [ebx + 0x28]                    // 0x0074fdb2    8b4328
                         test               eax, eax                                       // 0x0074fdb5    85c0
                         {disp8} je         _jmp_addr_0x0074fe01                           // 0x0074fdb7    7448
_jmp_addr_0x0074fdb9:    cmp                dword ptr [eax + 0x04], esi                    // 0x0074fdb9    397004
                         {disp8} je         _jmp_addr_0x0074fdc6                           // 0x0074fdbc    7408
                         mov                eax, dword ptr [eax]                           // 0x0074fdbe    8b00
                         test               eax, eax                                       // 0x0074fdc0    85c0
                         {disp8} jne        _jmp_addr_0x0074fdb9                           // 0x0074fdc2    75f5
                         {disp8} jmp        _jmp_addr_0x0074fe01                           // 0x0074fdc4    eb3b
_jmp_addr_0x0074fdc6:    {disp8} mov        eax, dword ptr [ebx + 0x28]                    // 0x0074fdc6    8b4328
                         xor.s              ebp, ebp                                       // 0x0074fdc9    33ed
                         test               eax, eax                                       // 0x0074fdcb    85c0
                         {disp8} je         _jmp_addr_0x0074fe01                           // 0x0074fdcd    7432
_jmp_addr_0x0074fdcf:    cmp                dword ptr [eax + 0x04], esi                    // 0x0074fdcf    397004
                         mov                edi, dword ptr [eax]                           // 0x0074fdd2    8b38
                         {disp8} jne        _jmp_addr_0x0074fdf5                           // 0x0074fdd4    751f
                         cmp                eax, dword ptr [ebx + 0x28]                    // 0x0074fdd6    3b4328
                         {disp8} jne        _jmp_addr_0x0074fde0                           // 0x0074fdd9    7505
                         {disp8} mov        dword ptr [ebx + 0x28], edi                    // 0x0074fddb    897b28
                         {disp8} jmp        _jmp_addr_0x0074fde3                           // 0x0074fdde    eb03
_jmp_addr_0x0074fde0:    {disp8} mov        dword ptr [ebp + 0x00], edi                    // 0x0074fde0    897d00
_jmp_addr_0x0074fde3:    {disp8} mov        edx, dword ptr [ebx + 0x2c]                    // 0x0074fde3    8b532c
                         dec                edx                                            // 0x0074fde6    4a
                         push               eax                                            // 0x0074fde7    50
                         {disp8} mov        dword ptr [ebx + 0x2c], edx                    // 0x0074fde8    89532c
                         call               ??3@YAXPAX@Z                                   // 0x0074fdeb    e8a8f00500
                         add                esp, 0x04                                      // 0x0074fdf0    83c404
                         {disp8} jmp        _jmp_addr_0x0074fdf7                           // 0x0074fdf3    eb02
_jmp_addr_0x0074fdf5:    mov.s              ebp, eax                                       // 0x0074fdf5    8be8
_jmp_addr_0x0074fdf7:    test               edi, edi                                       // 0x0074fdf7    85ff
                         mov.s              eax, edi                                       // 0x0074fdf9    8bc7
                         {disp8} jne        _jmp_addr_0x0074fdcf                           // 0x0074fdfb    75d2
                         {disp8} mov        edi, dword ptr [esp + 0x10]                    // 0x0074fdfd    8b7c2410
_jmp_addr_0x0074fe01:    xor.s              ebx, ebx                                       // 0x0074fe01    33db
                         mov.s              ecx, esi                                       // 0x0074fe03    8bce
                         {disp32} mov       dword ptr [esi + 0x000000cc], ebx              // 0x0074fe05    899ecc000000
                         call               ?IsAMother@Villager@@QAE_NXZ                   // 0x0074fe0b    e800130000
                         cmp                eax, 0x01                                      // 0x0074fe10    83f801
                         {disp8} jne        _jmp_addr_0x0074fe1c                           // 0x0074fe13    7507
                         mov.s              ecx, esi                                       // 0x0074fe15    8bce
                         call               ?FindChildrenAndOrphanThem@Villager@@QAEXXZ    // 0x0074fe17    e8c46d0000
_jmp_addr_0x0074fe1c:    cmp.s              edi, ebx                                       // 0x0074fe1c    3bfb
                         {disp8} je         _jmp_addr_0x0074fe30                           // 0x0074fe1e    7410
                         push               esi                                            // 0x0074fe20    56
                         mov.s              ecx, edi                                       // 0x0074fe21    8bcf
                         call               ?RemoveDeletedVillagerFromAbode@Abode@@QAEXPAVVillager@@@Z                           // 0x0074fe23    e8f843cbff
                         pop                edi                                            // 0x0074fe28    5f
                         pop                esi                                            // 0x0074fe29    5e
                         pop                ebp                                            // 0x0074fe2a    5d
                         pop                ebx                                            // 0x0074fe2b    5b
                         add                esp, 0x08                                      // 0x0074fe2c    83c408
                         ret                                                               // 0x0074fe2f    c3
_jmp_addr_0x0074fe30:    {disp8} mov        ecx, dword ptr [esp + 0x14]                    // 0x0074fe30    8b4c2414
                         cmp.s              ecx, ebx                                       // 0x0074fe34    3bcb
                         {disp8} je         _jmp_addr_0x0074fe46                           // 0x0074fe36    740e
                         push               esi                                            // 0x0074fe38    56
                         call               ?RemoveVillager@Town@@QAEXPAVVillager@@@Z      // 0x0074fe39    e8d2e3feff
                         pop                edi                                            // 0x0074fe3e    5f
                         pop                esi                                            // 0x0074fe3f    5e
                         pop                ebp                                            // 0x0074fe40    5d
                         pop                ebx                                            // 0x0074fe41    5b
                         add                esp, 0x08                                      // 0x0074fe42    83c408
                         ret                                                               // 0x0074fe45    c3
_jmp_addr_0x0074fe46:    {disp32} mov       eax, dword ptr [_game]                         // 0x0074fe46    a15c19d000
                         {disp32} lea       edx, dword ptr [eax + 0x00205bfc]              // 0x0074fe4b    8d90fc5b2000
                         mov                eax, dword ptr [edx]                           // 0x0074fe51    8b02
                         cmp.s              eax, ebx                                       // 0x0074fe53    3bc3
                         {disp8} je         _jmp_addr_0x0074feb2                           // 0x0074fe55    745b
_jmp_addr_0x0074fe57:    cmp.s              eax, esi                                       // 0x0074fe57    3bc6
                         {disp8} je         _jmp_addr_0x0074fe6d                           // 0x0074fe59    7412
                         {disp32} mov       eax, dword ptr [eax + 0x000000e4]              // 0x0074fe5b    8b80e4000000
                         cmp.s              eax, ebx                                       // 0x0074fe61    3bc3
                         {disp8} jne        _jmp_addr_0x0074fe57                           // 0x0074fe63    75f2
                         pop                edi                                            // 0x0074fe65    5f
                         pop                esi                                            // 0x0074fe66    5e
                         pop                ebp                                            // 0x0074fe67    5d
                         pop                ebx                                            // 0x0074fe68    5b
                         add                esp, 0x08                                      // 0x0074fe69    83c408
                         ret                                                               // 0x0074fe6c    c3
_jmp_addr_0x0074fe6d:    cmp.s              eax, ebx                                       // 0x0074fe6d    3bc3
                         {disp8} je         _jmp_addr_0x0074feb2                           // 0x0074fe6f    7441
                         mov                eax, dword ptr [edx]                           // 0x0074fe71    8b02
                         cmp.s              eax, esi                                       // 0x0074fe73    3bc6
                         {disp8} jne        _jmp_addr_0x0074fe81                           // 0x0074fe75    750a
                         {disp32} mov       ecx, dword ptr [esi + 0x000000e4]              // 0x0074fe77    8b8ee4000000
                         mov                dword ptr [edx], ecx                           // 0x0074fe7d    890a
                         {disp8} jmp        _jmp_addr_0x0074fea9                           // 0x0074fe7f    eb28
_jmp_addr_0x0074fe81:    cmp.s              eax, ebx                                       // 0x0074fe81    3bc3
                         {disp8} je         _jmp_addr_0x0074feb2                           // 0x0074fe83    742d
_jmp_addr_0x0074fe85:    {disp32} mov       ecx, dword ptr [eax + 0x000000e4]              // 0x0074fe85    8b88e4000000
                         cmp.s              ecx, esi                                       // 0x0074fe8b    3bce
                         {disp8} je         _jmp_addr_0x0074fe9d                           // 0x0074fe8d    740e
                         mov.s              eax, ecx                                       // 0x0074fe8f    8bc1
                         cmp.s              eax, ebx                                       // 0x0074fe91    3bc3
                         {disp8} jne        _jmp_addr_0x0074fe85                           // 0x0074fe93    75f0
                         pop                edi                                            // 0x0074fe95    5f
                         pop                esi                                            // 0x0074fe96    5e
                         pop                ebp                                            // 0x0074fe97    5d
                         pop                ebx                                            // 0x0074fe98    5b
                         add                esp, 0x08                                      // 0x0074fe99    83c408
                         ret                                                               // 0x0074fe9c    c3
_jmp_addr_0x0074fe9d:    {disp32} mov       ecx, dword ptr [esi + 0x000000e4]              // 0x0074fe9d    8b8ee4000000
                         {disp32} mov       dword ptr [eax + 0x000000e4], ecx              // 0x0074fea3    8988e4000000
_jmp_addr_0x0074fea9:    dec                dword ptr [edx + 0x04]                         // 0x0074fea9    ff4a04
                         {disp32} mov       dword ptr [esi + 0x000000e4], ebx              // 0x0074feac    899ee4000000
_jmp_addr_0x0074feb2:    pop                edi                                            // 0x0074feb2    5f
                         pop                esi                                            // 0x0074feb3    5e
                         pop                ebp                                            // 0x0074feb4    5d
                         pop                ebx                                            // 0x0074feb5    5b
                         add                esp, 0x08                                      // 0x0074feb6    83c408
                         ret                                                               // 0x0074feb9    c3
                         nop                                                               // 0x0074feba    90
                         nop                                                               // 0x0074febb    90
                         nop                                                               // 0x0074febc    90
                         nop                                                               // 0x0074febd    90
                         nop                                                               // 0x0074febe    90
                         nop                                                               // 0x0074febf    90
?UnemployedJobs@Villager@@QAE_NXZ:
                         sub                esp, 0x08                                      // 0x0074fec0    83ec08
                         push               esi                                            // 0x0074fec3    56
                         mov.s              esi, ecx                                       // 0x0074fec4    8bf1
                         mov                eax, dword ptr [esi]                           // 0x0074fec6    8b06
                         push               edi                                            // 0x0074fec8    57
                         call               dword ptr [eax + 0x48]                         // 0x0074fec9    ff5048
                         test               eax, eax                                       // 0x0074fecc    85c0
                         {disp8} je         _jmp_addr_0x0074ff4b                           // 0x0074fece    747b
                         mov                edx, dword ptr [esi]                           // 0x0074fed0    8b16
                         mov.s              ecx, esi                                       // 0x0074fed2    8bce
                         call               dword ptr [edx + 0x48]                         // 0x0074fed4    ff5248
                         mov.s              ecx, eax                                       // 0x0074fed7    8bc8
                         call               _jmp_addr_0x00747c70                           // 0x0074fed9    e8927dffff
                         mov.s              edi, eax                                       // 0x0074fede    8bf8
                         mov                eax, dword ptr [esi]                           // 0x0074fee0    8b06
                         mov.s              ecx, esi                                       // 0x0074fee2    8bce
                         call               dword ptr [eax + 0x48]                         // 0x0074fee4    ff5048
                         mov.s              ecx, eax                                       // 0x0074fee7    8bc8
                         call               _jmp_addr_0x00747c60                           // 0x0074fee9    e8727dffff
                         sub.s              edi, eax                                       // 0x0074feee    2bf8
                         {disp8} mov        dword ptr [esp + 0x08], edi                    // 0x0074fef0    897c2408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000             // 0x0074fef4    c744240c00000000
                         {disp8} fild       qword ptr [esp + 0x08]                         // 0x0074fefc    df6c2408
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x0074ff00    d81d98a38a00
                         fnstsw             ax                                             // 0x0074ff06    dfe0
                         test               ah, 0x41                                       // 0x0074ff08    f6c441
                         {disp8} jne        _jmp_addr_0x0074ff4b                           // 0x0074ff0b    753e
                         mov                edx, dword ptr [esi]                           // 0x0074ff0d    8b16
                         push               ebx                                            // 0x0074ff0f    53
                         mov.s              ecx, esi                                       // 0x0074ff10    8bce
                         call               dword ptr [edx + 0x48]                         // 0x0074ff12    ff5248
                         {disp8} mov        ebx, dword ptr [eax + 0x28]                    // 0x0074ff15    8b5828
                         {disp32} mov       eax, dword ptr [_game]                         // 0x0074ff18    a15c19d000
                         mov                edx, dword ptr [esi]                           // 0x0074ff1d    8b16
                         mov.s              ecx, esi                                       // 0x0074ff1f    8bce
                         {disp32} lea       edi, dword ptr [eax + 0x00205a40]              // 0x0074ff21    8db8405a2000
                         call               dword ptr [edx + 0x48]                         // 0x0074ff27    ff5248
                         {disp32} mov       edx, dword ptr [eax + 0x000006f0]              // 0x0074ff2a    8b90f0060000
                         mov                ecx, dword ptr [edi]                           // 0x0074ff30    8b0f
                         {disp8} mov        eax, dword ptr [ebx + 0x50]                    // 0x0074ff32    8b4350
                         sub.s              ecx, edx                                       // 0x0074ff35    2bca
                         cmp.s              ecx, eax                                       // 0x0074ff37    3bc8
                         pop                ebx                                            // 0x0074ff39    5b
                         {disp8} jbe        _jmp_addr_0x0074ff4b                           // 0x0074ff3a    760f
                         mov                edx, dword ptr [esi]                           // 0x0074ff3c    8b16
                         mov.s              ecx, esi                                       // 0x0074ff3e    8bce
                         call               dword ptr [edx + 0x48]                         // 0x0074ff40    ff5248
                         mov                ecx, dword ptr [edi]                           // 0x0074ff43    8b0f
                         {disp32} mov       dword ptr [eax + 0x000006f0], ecx              // 0x0074ff45    8988f0060000
_jmp_addr_0x0074ff4b:    pop                edi                                            // 0x0074ff4b    5f
                         xor.s              eax, eax                                       // 0x0074ff4c    33c0
                         pop                esi                                            // 0x0074ff4e    5e
                         add                esp, 0x08                                      // 0x0074ff4f    83c408
                         ret                                                               // 0x0074ff52    c3
                         nop                                                               // 0x0074ff53    90
                         nop                                                               // 0x0074ff54    90
                         nop                                                               // 0x0074ff55    90
                         nop                                                               // 0x0074ff56    90
                         nop                                                               // 0x0074ff57    90
                         nop                                                               // 0x0074ff58    90
                         nop                                                               // 0x0074ff59    90
                         nop                                                               // 0x0074ff5a    90
                         nop                                                               // 0x0074ff5b    90
                         nop                                                               // 0x0074ff5c    90
                         nop                                                               // 0x0074ff5d    90
                         nop                                                               // 0x0074ff5e    90
                         nop                                                               // 0x0074ff5f    90
?SetupJobLocation@Villager@@QAE_NXZ:
                         xor.s              eax, eax                                       // 0x0074ff60    33c0
                         ret                                                               // 0x0074ff62    c3
                         nop                                                               // 0x0074ff63    90
                         nop                                                               // 0x0074ff64    90
                         nop                                                               // 0x0074ff65    90
                         nop                                                               // 0x0074ff66    90
                         nop                                                               // 0x0074ff67    90
                         nop                                                               // 0x0074ff68    90
                         nop                                                               // 0x0074ff69    90
                         nop                                                               // 0x0074ff6a    90
                         nop                                                               // 0x0074ff6b    90
                         nop                                                               // 0x0074ff6c    90
                         nop                                                               // 0x0074ff6d    90
                         nop                                                               // 0x0074ff6e    90
                         nop                                                               // 0x0074ff6f    90

?ProcessState@Villager@@UAEIXZ:
                         sub                esp, 0x14                                      // 0x0074ff70    83ec14
                         push               esi                                            // 0x0074ff73    56
                         mov.s              esi, ecx                                       // 0x0074ff74    8bf1
                         {disp32} inc       word ptr [esi + 0x00000090]                    // 0x0074ff76    66ff8690000000
                         push               edi                                            // 0x0074ff7d    57
                         call               ?ProcessFoodSpeedup@Villager@@QAEXXZ           // 0x0074ff7e    e8ad340000
                         xor.s              eax, eax                                       // 0x0074ff83    33c0
                         {disp32} mov       al, byte ptr [esi + 0x0000008c]                // 0x0074ff85    8a868c000000
                         lea                eax, dword ptr [eax + eax * 0x8]               // 0x0074ff8b    8d04c0
                         shl                eax, 4                                         // 0x0074ff8e    c1e004
                         {disp32} lea       eax, dword ptr [eax + 0x00d09218]              // 0x0074ff91    8d801892d000
                         mov.s              edx, eax                                       // 0x0074ff97    8bd0
                         mov                ecx, dword ptr [edx]                           // 0x0074ff99    8b0a
                         test               ecx, ecx                                       // 0x0074ff9b    85c9
                         {disp8} mov        edi, dword ptr [edx + 0x04]                    // 0x0074ff9d    8b7a04
                         {disp8} mov        dword ptr [esp + 0x10], edi                    // 0x0074ffa0    897c2410
                         {disp8} mov        edi, dword ptr [edx + 0x08]                    // 0x0074ffa4    8b7a08
                         {disp8} mov        edx, dword ptr [edx + 0x0c]                    // 0x0074ffa7    8b520c
                         {disp8} mov        dword ptr [esp + 0x14], edi                    // 0x0074ffaa    897c2414
                         {disp8} mov        dword ptr [esp + 0x18], edx                    // 0x0074ffae    89542418
                         {disp8} je         _jmp_addr_0x0074ffcb                           // 0x0074ffb2    7417
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                    // 0x0074ffb4    8b4804
                         {disp8} mov        edi, dword ptr [eax + 0x08]                    // 0x0074ffb7    8b7808
                         mov                edx, dword ptr [eax]                           // 0x0074ffba    8b10
                         {disp8} mov        eax, dword ptr [eax + 0x0c]                    // 0x0074ffbc    8b400c
                         add.s              ecx, esi                                       // 0x0074ffbf    03ce
                         {disp8} mov        dword ptr [esp + 0x14], edi                    // 0x0074ffc1    897c2414
                         {disp8} mov        dword ptr [esp + 0x18], eax                    // 0x0074ffc5    89442418
                         call               edx                                            // 0x0074ffc9    ffd2
_jmp_addr_0x0074ffcb:    xor.s              eax, eax                                       // 0x0074ffcb    33c0
                         {disp32} mov       al, byte ptr [esi + 0x0000008d]                // 0x0074ffcd    8a868d000000
                         lea                ecx, dword ptr [eax + eax * 0x8]               // 0x0074ffd3    8d0cc0
                         shl                ecx, 4                                         // 0x0074ffd6    c1e104
                         {disp32} lea       eax, dword ptr [ecx + 0x00d09218]              // 0x0074ffd9    8d811892d000
                         mov.s              edx, eax                                       // 0x0074ffdf    8bd0
                         mov                ecx, dword ptr [edx]                           // 0x0074ffe1    8b0a
                         test               ecx, ecx                                       // 0x0074ffe3    85c9
                         {disp8} mov        edi, dword ptr [edx + 0x04]                    // 0x0074ffe5    8b7a04
                         {disp8} mov        dword ptr [esp + 0x10], edi                    // 0x0074ffe8    897c2410
                         {disp8} mov        edi, dword ptr [edx + 0x08]                    // 0x0074ffec    8b7a08
                         {disp8} mov        edx, dword ptr [edx + 0x0c]                    // 0x0074ffef    8b520c
                         {disp8} mov        dword ptr [esp + 0x14], edi                    // 0x0074fff2    897c2414
                         {disp8} mov        dword ptr [esp + 0x18], edx                    // 0x0074fff6    89542418
                         {disp8} je         _jmp_addr_0x00750013                           // 0x0074fffa    7417
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                    // 0x0074fffc    8b4804
                         {disp8} mov        edi, dword ptr [eax + 0x08]                    // 0x0074ffff    8b7808
                         mov                edx, dword ptr [eax]                           // 0x00750002    8b10
                         {disp8} mov        eax, dword ptr [eax + 0x0c]                    // 0x00750004    8b400c
                         add.s              ecx, esi                                       // 0x00750007    03ce
                         {disp8} mov        dword ptr [esp + 0x14], edi                    // 0x00750009    897c2414
                         {disp8} mov        dword ptr [esp + 0x18], eax                    // 0x0075000d    89442418
                         call               edx                                            // 0x00750011    ffd2
_jmp_addr_0x00750013:    xor.s              ecx, ecx                                       // 0x00750013    33c9
                         {disp32} mov       cx, word ptr [esi + 0x000000e0]                // 0x00750015    668b8ee0000000
                         shr                ecx, 0xb                                       // 0x0075001c    c1e90b
                         and                ecx, 0x01                                      // 0x0075001f    83e101
                         {disp8} mov        dword ptr [esp + 0x08], ecx                    // 0x00750022    894c2408
                         {disp8} je         _jmp_addr_0x00750047                           // 0x00750026    741f
                         push               0x1                                            // 0x00750028    6a01
                         mov.s              ecx, esi                                       // 0x0075002a    8bce
                         call               @IsReadyForNewAnimation__6LivingFUl@12         // 0x0075002c    e82fc9e9ff
                         test               eax, eax                                       // 0x00750031    85c0
                         {disp8} je         _jmp_addr_0x0075003c                           // 0x00750033    7407
                         mov.s              ecx, esi                                       // 0x00750035    8bce
                         call               ?FinishedIntoOutOfAnimation@Villager@@QAEXXZ   // 0x00750037    e824000000
_jmp_addr_0x0075003c:    pop                edi                                            // 0x0075003c    5f
                         mov                eax, 0x00000001                                // 0x0075003d    b801000000
                         pop                esi                                            // 0x00750042    5e
                         add                esp, 0x14                                      // 0x00750043    83c414
                         ret                                                               // 0x00750046    c3
_jmp_addr_0x00750047:    mov.s              ecx, esi                                       // 0x00750047    8bce
                         call               ?CheckEveryTime@Villager@@QAEHXZ               // 0x00750049    e8c2030000
                         mov.s              ecx, esi                                       // 0x0075004e    8bce
                         call               ?CallState@Villager@@QAEIXZ                    // 0x00750050    e87b210000
                         pop                edi                                            // 0x00750055    5f
                         pop                esi                                            // 0x00750056    5e
                         add                esp, 0x14                                      // 0x00750057    83c414
                         ret                                                               // 0x0075005a    c3
                         nop                                                               // 0x0075005b    90
                         nop                                                               // 0x0075005c    90
                         nop                                                               // 0x0075005d    90
                         nop                                                               // 0x0075005e    90
                         nop                                                               // 0x0075005f    90

?FinishedIntoOutOfAnimation@Villager@@QAEXXZ:
                         sub                esp, 0x14                                      // 0x00750060    83ec14
                         push               esi                                            // 0x00750063    56
                         xor.s              eax, eax                                       // 0x00750064    33c0
                         mov.s              esi, ecx                                       // 0x00750066    8bf1
                         {disp32} mov       ax, word ptr [esi + 0x000000e0]                // 0x00750068    668b86e0000000
                         and                eax, 0x00001000                                // 0x0075006f    2500100000
                         cmp                eax, 0x00001000                                // 0x00750074    3d00100000
                         {disp8} jne        _jmp_addr_0x007500ed                           // 0x00750079    7572
                         xor.s              ecx, ecx                                       // 0x0075007b    33c9
                         {disp32} mov       cl, byte ptr [esi + 0x0000008c]                // 0x0075007d    8a8e8c000000
                         push               ebx                                            // 0x00750083    53
                         mov.s              eax, ecx                                       // 0x00750084    8bc1
                         and                eax, 0x000000ff                                // 0x00750086    25ff000000
                         lea                edx, dword ptr [eax + eax * 0x8]               // 0x0075008b    8d14c0
                         shl                edx, 4                                         // 0x0075008e    c1e204
                         add                edx, 0x00d09208                                // 0x00750091    81c20892d000
                         mov                eax, dword ptr [edx]                           // 0x00750097    8b02
                         test               eax, eax                                       // 0x00750099    85c0
                         {disp8} mov        ebx, dword ptr [edx + 0x04]                    // 0x0075009b    8b5a04
                         {disp8} mov        dword ptr [esp + 0x10], ebx                    // 0x0075009e    895c2410
                         {disp8} mov        ebx, dword ptr [edx + 0x08]                    // 0x007500a2    8b5a08
                         {disp8} mov        edx, dword ptr [edx + 0x0c]                    // 0x007500a5    8b520c
                         {disp8} mov        dword ptr [esp + 0x14], ebx                    // 0x007500a8    895c2414
                         {disp8} mov        dword ptr [esp + 0x18], edx                    // 0x007500ac    89542418
                         pop                ebx                                            // 0x007500b0    5b
                         {disp8} je         _jmp_addr_0x007500ed                           // 0x007500b1    743a
                         mov                eax, dword ptr [esi]                           // 0x007500b3    8b06
                         {disp8} mov        byte ptr [esp + 0x04], cl                      // 0x007500b5    884c2404
                         {disp8} mov        ecx, dword ptr [esp + 0x04]                    // 0x007500b9    8b4c2404
                         push               ecx                                            // 0x007500bd    51
                         mov.s              ecx, esi                                       // 0x007500be    8bce
                         call               dword ptr [eax + 0x8e0]                        // 0x007500c0    ff90e0080000
                         cmp                eax, -0x01                                     // 0x007500c6    83f8ff
                         {disp8} je         _jmp_addr_0x007500ed                           // 0x007500c9    7422
                         mov                edx, dword ptr [esi]                           // 0x007500cb    8b16
                         push               eax                                            // 0x007500cd    50
                         mov.s              ecx, esi                                       // 0x007500ce    8bce
                         call               dword ptr [edx + 0x8fc]                        // 0x007500d0    ff92fc080000
                         and                word ptr [esi + 0x000000e0], -0x1001           // 0x007500d6    6681a6e0000000ffef
                         {disp32} mov       word ptr [esi + 0x00000090], 0x0000            // 0x007500df    66c786900000000000
                         pop                esi                                            // 0x007500e8    5e
                         add                esp, 0x14                                      // 0x007500e9    83c414
                         ret                                                               // 0x007500ec    c3
_jmp_addr_0x007500ed:    mov.s              ecx, esi                                       // 0x007500ed    8bce
                         call               ?SetStateAnim@Living@@QAEXXZ                   // 0x007500ef    e81ccae9ff
                         and                word ptr [esi + 0x000000e0], -0x0801           // 0x007500f4    6681a6e0000000fff7
                         {disp32} mov       word ptr [esi + 0x00000090], 0x0000            // 0x007500fd    66c786900000000000
                         pop                esi                                            // 0x00750106    5e
                         add                esp, 0x14                                      // 0x00750107    83c414
                         ret                                                               // 0x0075010a    c3
                         nop                                                               // 0x0075010b    90
                         nop                                                               // 0x0075010c    90
                         nop                                                               // 0x0075010d    90
                         nop                                                               // 0x0075010e    90
                         nop                                                               // 0x0075010f    90
?GetAnimId@Villager@@UAE?AW4ANIM_LIST@@XZ:
                         sub                esp, 0x10                                      // 0x00750110    83ec10
                         push               esi                                            // 0x00750113    56
                         mov.s              esi, ecx                                       // 0x00750114    8bf1
                         {disp32} mov       al, byte ptr [esi + 0x0000008c]                // 0x00750116    8a868c000000
                         cmp                al, -0x01                                      // 0x0075011c    3cff
                         push               edi                                            // 0x0075011e    57
                         {disp8} jae        _jmp_addr_0x00750125                           // 0x0075011f    7304
                         test               al, al                                         // 0x00750121    84c0
                         {disp8} jne        _jmp_addr_0x00750130                           // 0x00750123    750b
_jmp_addr_0x00750125:    pop                edi                                            // 0x00750125    5f
                         mov                eax, 0x00000181                                // 0x00750126    b881010000
                         pop                esi                                            // 0x0075012b    5e
                         add                esp, 0x10                                      // 0x0075012c    83c410
                         ret                                                               // 0x0075012f    c3
_jmp_addr_0x00750130:    push               ebx                                            // 0x00750130    53
                         mov.s              ecx, esi                                       // 0x00750131    8bce
                         call               ?SetStateCarriedObject@Villager@@QAEXXZ        // 0x00750133    e868000000
                         xor.s              ecx, ecx                                       // 0x00750138    33c9
                         {disp32} mov       cl, byte ptr [esi + 0x0000008c]                // 0x0075013a    8a8e8c000000
                         lea                eax, dword ptr [ecx + ecx * 0x8]               // 0x00750140    8d04c9
                         shl                eax, 4                                         // 0x00750143    c1e004
                         {disp32} lea       eax, dword ptr [eax + 0x00d091f8]              // 0x00750146    8d80f891d000
                         mov.s              edi, eax                                       // 0x0075014c    8bf8
                         mov                edx, dword ptr [edi]                           // 0x0075014e    8b17
                         test               edx, edx                                       // 0x00750150    85d2
                         {disp8} mov        ebx, dword ptr [edi + 0x04]                    // 0x00750152    8b5f04
                         {disp8} mov        dword ptr [esp + 0x10], ebx                    // 0x00750155    895c2410
                         {disp8} mov        ebx, dword ptr [edi + 0x08]                    // 0x00750159    8b5f08
                         {disp8} mov        edi, dword ptr [edi + 0x0c]                    // 0x0075015c    8b7f0c
                         {disp8} mov        dword ptr [esp + 0x14], ebx                    // 0x0075015f    895c2414
                         {disp8} mov        dword ptr [esp + 0x18], edi                    // 0x00750163    897c2418
                         pop                ebx                                            // 0x00750167    5b
                         {disp8} je         _jmp_addr_0x00750187                           // 0x00750168    741d
                         {disp8} mov        ecx, dword ptr [eax + 0x04]                    // 0x0075016a    8b4804
                         {disp8} mov        edi, dword ptr [eax + 0x08]                    // 0x0075016d    8b7808
                         mov                edx, dword ptr [eax]                           // 0x00750170    8b10
                         {disp8} mov        eax, dword ptr [eax + 0x0c]                    // 0x00750172    8b400c
                         add.s              ecx, esi                                       // 0x00750175    03ce
                         {disp8} mov        dword ptr [esp + 0x10], edi                    // 0x00750177    897c2410
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x0075017b    89442414
                         call               edx                                            // 0x0075017f    ffd2
                         pop                edi                                            // 0x00750181    5f
                         pop                esi                                            // 0x00750182    5e
                         add                esp, 0x10                                      // 0x00750183    83c410
                         ret                                                               // 0x00750186    c3
_jmp_addr_0x00750187:    lea                eax, dword ptr [ecx + ecx * 0x2]               // 0x00750187    8d0449
                         shl                eax, 3                                         // 0x0075018a    c1e003
                         sub.s              eax, ecx                                       // 0x0075018d    2bc1
                         lea                ecx, dword ptr [eax + eax * 0x2]               // 0x0075018f    8d0c40
                         {disp32} mov       eax, dword ptr [ecx * 0x4 + 0x00db9e78]        // 0x00750192    8b048d789edb00
                         pop                edi                                            // 0x00750199    5f
                         pop                esi                                            // 0x0075019a    5e
                         add                esp, 0x10                                      // 0x0075019b    83c410
                         ret                                                               // 0x0075019e    c3
                         nop                                                               // 0x0075019f    90
?SetStateCarriedObject@Villager@@QAEXXZ:
                         push               esi                                            // 0x007501a0    56
                         mov.s              esi, ecx                                       // 0x007501a1    8bf1
                         mov                eax, dword ptr [esi]                           // 0x007501a3    8b06
                         call               dword ptr [eax + 0xb04]                        // 0x007501a5    ff90040b0000
                         cmp                al, 0x04                                       // 0x007501ab    3c04
                         {disp32} je        _jmp_addr_0x00750299                           // 0x007501ad    0f84e6000000
                         cmp                byte ptr [esi + 0x0000008c], -0x38             // 0x007501b3    80be8c000000c8
                         {disp32} je        _jmp_addr_0x00750299                           // 0x007501ba    0f84d9000000
                         mov                edx, dword ptr [esi]                           // 0x007501c0    8b16
                         push               edi                                            // 0x007501c2    57
                         {disp8} mov        edi, dword ptr [esi + 0x28]                    // 0x007501c3    8b7e28
                         mov.s              ecx, esi                                       // 0x007501c6    8bce
                         {disp32} mov       byte ptr [esi + 0x000000f1], 0x01              // 0x007501c8    c686f100000001
                         call               dword ptr [edx + 0x11c]                        // 0x007501cf    ff921c010000
                         {disp32} fcomp     dword ptr [edi + 0x00000380]                   // 0x007501d5    d89f80030000
                         pop                edi                                            // 0x007501db    5f
                         fnstsw             ax                                             // 0x007501dc    dfe0
                         test               ah, 0x41                                       // 0x007501de    f6c441
                         {disp8} jne        _jmp_addr_0x00750225                           // 0x007501e1    7542
                         {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x007501e3    8b4628
                         movsx              ecx, word ptr [esi + 0x000000f6]               // 0x007501e6    0fbf8ef6000000
                         cmp                ecx, dword ptr [eax + 0x0000026c]              // 0x007501ed    3b886c020000
                         {disp8} jle        _jmp_addr_0x00750204                           // 0x007501f3    7e0f
                         mov.s              ecx, esi                                       // 0x007501f5    8bce
                         call               ?GetWoodCarriedObject@Villager@@QAEIXZ         // 0x007501f7    e8a4000000
                         {disp32} mov       byte ptr [esi + 0x000000f1], al                // 0x007501fc    8886f1000000
                         {disp8} jmp        _jmp_addr_0x00750225                           // 0x00750202    eb21
_jmp_addr_0x00750204:    movsx              edx, word ptr [esi + 0x000000f4]               // 0x00750204    0fbf96f4000000
                         cmp                edx, dword ptr [eax + 0x00000270]              // 0x0075020b    3b9070020000
                         {disp8} jle        _jmp_addr_0x00750225                           // 0x00750211    7e12
                         mov.s              ecx, esi                                       // 0x00750213    8bce
                         call               _jmp_addr_0x00753140                           // 0x00750215    e8262f0000
                         test               al, al                                         // 0x0075021a    84c0
                         {disp8} jne        _jmp_addr_0x00750225                           // 0x0075021c    7507
                         {disp32} mov       byte ptr [esi + 0x000000f1], 0x06              // 0x0075021e    c686f100000006
_jmp_addr_0x00750225:    mov                eax, dword ptr [esi]                           // 0x00750225    8b06
                         mov.s              ecx, esi                                       // 0x00750227    8bce
                         call               dword ptr [eax + 0xb04]                        // 0x00750229    ff90040b0000
                         and                eax, 0x000000ff                                // 0x0075022f    25ff000000
                         mov.s              ecx, eax                                       // 0x00750234    8bc8
                         lea                eax, dword ptr [ecx + ecx * 0x2]               // 0x00750236    8d0449
                         shl                eax, 3                                         // 0x00750239    c1e003
                         sub.s              eax, ecx                                       // 0x0075023c    2bc1
                         lea                ecx, dword ptr [eax + eax * 0x2]               // 0x0075023e    8d0c40
                         {disp32} mov       eax, dword ptr [ecx * 0x4 + 0x00db9f54]        // 0x00750241    8b048d549fdb00
                         test               eax, eax                                       // 0x00750248    85c0
                         {disp8} je         _jmp_addr_0x00750275                           // 0x0075024a    7429
                         mov                edx, dword ptr [esi]                           // 0x0075024c    8b16
                         mov.s              ecx, esi                                       // 0x0075024e    8bce
                         call               dword ptr [edx + 0xb04]                        // 0x00750250    ff92040b0000
                         and                eax, 0x000000ff                                // 0x00750256    25ff000000
                         mov.s              ecx, eax                                       // 0x0075025b    8bc8
                         lea                eax, dword ptr [ecx + ecx * 0x2]               // 0x0075025d    8d0449
                         shl                eax, 3                                         // 0x00750260    c1e003
                         sub.s              eax, ecx                                       // 0x00750263    2bc1
                         lea                eax, dword ptr [eax + eax * 0x2]               // 0x00750265    8d0440
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00db9f54]        // 0x00750268    8b0c85549fdb00
                         {disp32} mov       byte ptr [esi + 0x000000f1], cl                // 0x0075026f    888ef1000000
_jmp_addr_0x00750275:    xor.s              ecx, ecx                                       // 0x00750275    33c9
                         {disp32} mov       cl, byte ptr [esi + 0x0000008c]                // 0x00750277    8a8e8c000000
                         lea                eax, dword ptr [ecx + ecx * 0x2]               // 0x0075027d    8d0449
                         shl                eax, 3                                         // 0x00750280    c1e003
                         sub.s              eax, ecx                                       // 0x00750283    2bc1
                         lea                edx, dword ptr [eax + eax * 0x2]               // 0x00750285    8d1440
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x00db9f54]        // 0x00750288    8b0495549fdb00
                         test               eax, eax                                       // 0x0075028f    85c0
                         {disp8} je         _jmp_addr_0x00750299                           // 0x00750291    7406
                         {disp32} mov       byte ptr [esi + 0x000000f1], al                // 0x00750293    8886f1000000
_jmp_addr_0x00750299:    pop                esi                                            // 0x00750299    5e
                         ret                                                               // 0x0075029a    c3
                         nop                                                               // 0x0075029b    90
                         nop                                                               // 0x0075029c    90
                         nop                                                               // 0x0075029d    90
                         nop                                                               // 0x0075029e    90
                         nop                                                               // 0x0075029f    90
?GetWoodCarriedObject@Villager@@QAEIXZ:
                         xor.s              eax, eax                                       // 0x007502a0    33c0
                         {disp32} mov       ax, word ptr [ecx + 0x000000e0]                // 0x007502a2    668b81e0000000
                         shr                eax, 0xe                                       // 0x007502a9    c1e80e
                         dec                eax                                            // 0x007502ac    48
                         {disp8} je         _jmp_addr_0x007502c7                           // 0x007502ad    7418
                         dec                eax                                            // 0x007502af    48
                         {disp8} je         _jmp_addr_0x007502c1                           // 0x007502b0    740f
                         dec                eax                                            // 0x007502b2    48
                         {disp8} je         _jmp_addr_0x007502bb                           // 0x007502b3    7406
                         mov                eax, 0x0000000c                                // 0x007502b5    b80c000000
                         ret                                                               // 0x007502ba    c3
_jmp_addr_0x007502bb:    mov                eax, 0x0000000f                                // 0x007502bb    b80f000000
                         ret                                                               // 0x007502c0    c3
_jmp_addr_0x007502c1:    mov                eax, 0x0000000e                                // 0x007502c1    b80e000000
                         ret                                                               // 0x007502c6    c3
_jmp_addr_0x007502c7:    mov                eax, 0x0000000d                                // 0x007502c7    b80d000000
                         ret                                                               // 0x007502cc    c3
                         nop                                                               // 0x007502cd    90
                         nop                                                               // 0x007502ce    90
                         nop                                                               // 0x007502cf    90
?DestroyedByEffect@Villager@@UAEIPAVGPlayer@@M@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x007502d0    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]                    // 0x007502d4    8b542404
                         push               0x1                                            // 0x007502d8    6a01
                         push               eax                                            // 0x007502da    50
                         push               edx                                            // 0x007502db    52
                         push               0x2                                            // 0x007502dc    6a02
                         call               ?VillagerDead@Villager@@QAEXW4DEATH_REASON@@PAVGPlayer@@MH@Z                           // 0x007502de    e8dd030000
                         mov                eax, 0x00000001                                // 0x007502e3    b801000000
                         ret                0x0008                                         // 0x007502e8    c20800
                         nop                                                               // 0x007502eb    90
                         nop                                                               // 0x007502ec    90
                         nop                                                               // 0x007502ed    90
                         nop                                                               // 0x007502ee    90
                         nop                                                               // 0x007502ef    90
?GetPlayer@Villager@@UAEPAVGPlayer@@XZ:
                         push               esi                                            // 0x007502f0    56
                         mov.s              esi, ecx                                       // 0x007502f1    8bf1
                         mov                eax, dword ptr [esi]                           // 0x007502f3    8b06
                         call               dword ptr [eax + 0x48]                         // 0x007502f5    ff5048
                         test               eax, eax                                       // 0x007502f8    85c0
                         {disp8} je         _jmp_addr_0x0075030a                           // 0x007502fa    740e
                         mov                edx, dword ptr [esi]                           // 0x007502fc    8b16
                         mov.s              ecx, esi                                       // 0x007502fe    8bce
                         call               dword ptr [edx + 0x48]                         // 0x00750300    ff5248
                         add                eax, 0x2c                                      // 0x00750303    83c02c
                         mov                eax, dword ptr [eax]                           // 0x00750306    8b00
                         pop                esi                                            // 0x00750308    5e
                         ret                                                               // 0x00750309    c3
_jmp_addr_0x0075030a:    xor.s              eax, eax                                       // 0x0075030a    33c0
                         pop                esi                                            // 0x0075030c    5e
                         ret                                                               // 0x0075030d    c3
                         nop                                                               // 0x0075030e    90
                         nop                                                               // 0x0075030f    90
?GetHoldType@Villager@@UAE?AW4HOLD_TYPE@@XZ:
                         mov                eax, 0x00000007                                // 0x00750310    b807000000
                         ret                                                               // 0x00750315    c3
                         nop                                                               // 0x00750316    90
                         nop                                                               // 0x00750317    90
                         nop                                                               // 0x00750318    90
                         nop                                                               // 0x00750319    90
                         nop                                                               // 0x0075031a    90
                         nop                                                               // 0x0075031b    90
                         nop                                                               // 0x0075031c    90
                         nop                                                               // 0x0075031d    90
                         nop                                                               // 0x0075031e    90
                         nop                                                               // 0x0075031f    90
?GetHoldLoweringMultiplier@Villager@@UAEMXZ:
                         {disp32} fld       dword ptr [rdata_bytes + 0x3420]               // 0x00750320    d90520c48a00
                         ret                                                               // 0x00750326    c3
                         nop                                                               // 0x00750327    90
                         nop                                                               // 0x00750328    90
                         nop                                                               // 0x00750329    90
                         nop                                                               // 0x0075032a    90
                         nop                                                               // 0x0075032b    90
                         nop                                                               // 0x0075032c    90
                         nop                                                               // 0x0075032d    90
                         nop                                                               // 0x0075032e    90
                         nop                                                               // 0x0075032f    90

?GetSpouse@Villager@@QAEPAV1@XZ:
                         push               esi                                            // 0x00750330    56
                         mov.s              esi, ecx                                       // 0x00750331    8bf1
                         call               ?GetAbode@Villager@@QAEPAVAbode@@XZ            // 0x00750333    e8281e0000
                         test               eax, eax                                       // 0x00750338    85c0
                         {disp8} je         _jmp_addr_0x00750361                           // 0x0075033a    7425
                         push               esi                                            // 0x0075033c    56
                         mov.s              ecx, esi                                       // 0x0075033d    8bce
                         call               ?GetAbode@Villager@@QAEPAVAbode@@XZ            // 0x0075033f    e81c1e0000
                         mov.s              ecx, eax                                       // 0x00750344    8bc8
                         call               ?GetSpouse@Abode@@QAEPAVVillager@@PAV2@@Z      // 0x00750346    e8e542cbff
                         mov.s              esi, eax                                       // 0x0075034b    8bf0
                         test               esi, esi                                       // 0x0075034d    85f6
                         {disp8} je         _jmp_addr_0x00750361                           // 0x0075034f    7410
                         mov                eax, dword ptr [esi]                           // 0x00750351    8b06
                         mov.s              ecx, esi                                       // 0x00750353    8bce
                         call               dword ptr [eax + 0x2c]                         // 0x00750355    ff502c
                         cmp                eax, 0x01                                      // 0x00750358    83f801
                         {disp8} jne        _jmp_addr_0x00750361                           // 0x0075035b    7504
                         mov.s              eax, esi                                       // 0x0075035d    8bc6
                         pop                esi                                            // 0x0075035f    5e
                         ret                                                               // 0x00750360    c3
_jmp_addr_0x00750361:    xor.s              eax, eax                                       // 0x00750361    33c0
                         pop                esi                                            // 0x00750363    5e
                         ret                                                               // 0x00750364    c3
                         nop                                                               // 0x00750365    90
                         nop                                                               // 0x00750366    90
                         nop                                                               // 0x00750367    90
                         nop                                                               // 0x00750368    90
                         nop                                                               // 0x00750369    90
                         nop                                                               // 0x0075036a    90
                         nop                                                               // 0x0075036b    90
                         nop                                                               // 0x0075036c    90
                         nop                                                               // 0x0075036d    90
                         nop                                                               // 0x0075036e    90
                         nop                                                               // 0x0075036f    90
?LookAroundForVillagerInState@Villager@@QAEPAV1@W4VILLAGER_STATES@@K@Z:
                         sub                esp, 0x10                                      // 0x00750370    83ec10
                         push               ebx                                            // 0x00750373    53
                         push               esi                                            // 0x00750374    56
                         mov.s              esi, ecx                                       // 0x00750375    8bf1
                         {disp8} lea        eax, dword ptr [esi + 0x14]                    // 0x00750377    8d4614
                         mov                ecx, dword ptr [eax]                           // 0x0075037a    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                    // 0x0075037c    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x0075037f    8b4008
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x00750382    89442414
                         {disp8} mov        eax, dword ptr [esp + 0x20]                    // 0x00750386    8b442420
                         test               eax, eax                                       // 0x0075038a    85c0
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                    // 0x0075038c    894c240c
                         mov                ecx, 0x00000001                                // 0x00750390    b901000000
                         push               edi                                            // 0x00750395    57
                         {disp8} mov        dword ptr [esp + 0x14], edx                    // 0x00750396    89542414
                         mov.s              edi, eax                                       // 0x0075039a    8bf8
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                    // 0x0075039c    894c240c
                         {disp8} mov        dword ptr [esp + 0x24], ecx                    // 0x007503a0    894c2424
                         {disp8} je         _jmp_addr_0x007503ff                           // 0x007503a4    7459
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                    // 0x007503a6    8b5c2420
_jmp_addr_0x007503aa:    push               0x0                                            // 0x007503aa    6a00
                         push               0x009cafc8                                     // 0x007503ac    68c8af9c00
                         push               0x009c7f50                                     // 0x007503b1    68507f9c00
                         push               0x0                                            // 0x007503b6    6a00
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                    // 0x007503b8    8d4c2420
                         call               ?GetFirstObjectMobile@MapCoords@@QBEPAVObject@@XZ                           // 0x007503bc    e8cf30ebff
                         push               eax                                            // 0x007503c1    50
                         call               ___RTDynamicCast                               // 0x007503c2    e852560700
                         add                esp, 0x14                                      // 0x007503c7    83c414
                         test               eax, eax                                       // 0x007503ca    85c0
                         {disp8} je         _jmp_addr_0x007503de                           // 0x007503cc    7410
                         cmp.s              eax, esi                                       // 0x007503ce    3bc6
                         {disp8} je         _jmp_addr_0x007503de                           // 0x007503d0    740c
                         xor.s              ecx, ecx                                       // 0x007503d2    33c9
                         {disp32} mov       cl, byte ptr [eax + 0x0000008c]                // 0x007503d4    8a888c000000
                         cmp.s              ecx, ebx                                       // 0x007503da    3bcb
                         {disp8} je         _jmp_addr_0x00750401                           // 0x007503dc    7423
_jmp_addr_0x007503de:    {disp8} lea        edx, dword ptr [esp + 0x24]                    // 0x007503de    8d542424
                         push               edx                                            // 0x007503e2    52
                         {disp8} lea        eax, dword ptr [esp + 0x10]                    // 0x007503e3    8d442410
                         push               eax                                            // 0x007503e7    50
                         dec                edi                                            // 0x007503e8    4f
                         call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z         // 0x007503e9    e8f2d3ffff
                         add                esp, 0x08                                      // 0x007503ee    83c408
                         push               eax                                            // 0x007503f1    50
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                    // 0x007503f2    8d4c2414
                         call               @__apl__9MapCoordsFRC9JustMapXZ@12             // 0x007503f6    e87550ebff
                         test               edi, edi                                       // 0x007503fb    85ff
                         {disp8} jne        _jmp_addr_0x007503aa                           // 0x007503fd    75ab
_jmp_addr_0x007503ff:    xor.s              eax, eax                                       // 0x007503ff    33c0
_jmp_addr_0x00750401:    pop                edi                                            // 0x00750401    5f
                         pop                esi                                            // 0x00750402    5e
                         pop                ebx                                            // 0x00750403    5b
                         add                esp, 0x10                                      // 0x00750404    83c410
                         ret                0x0008                                         // 0x00750407    c20800
                         nop                                                               // 0x0075040a    90
                         nop                                                               // 0x0075040b    90
                         nop                                                               // 0x0075040c    90
                         nop                                                               // 0x0075040d    90
                         nop                                                               // 0x0075040e    90
                         nop                                                               // 0x0075040f    90

?CheckEveryTime@Villager@@QAEHXZ:
                         push               ebx                                            // 0x00750410    53
                         push               esi                                            // 0x00750411    56
                         mov.s              esi, ecx                                       // 0x00750412    8bf1
                         xor.s              ecx, ecx                                       // 0x00750414    33c9
                         {disp32} mov       cl, byte ptr [esi + 0x0000008c]                // 0x00750416    8a8e8c000000
                         push               edi                                            // 0x0075041c    57
                         lea                eax, dword ptr [ecx + ecx * 0x2]               // 0x0075041d    8d0449
                         shl                eax, 3                                         // 0x00750420    c1e003
                         sub.s              eax, ecx                                       // 0x00750423    2bc1
                         test               byte ptr [esi + 0x25], 0x04                    // 0x00750425    f6462504
                         lea                eax, dword ptr [eax + eax * 0x2]               // 0x00750429    8d0440
                         {disp32} lea       edi, dword ptr [eax * 0x4 + _GVillagerStateTableInfo_ARRAY_00db9e68]        // 0x0075042c    8d3c85689edb00
                         {disp32} jne       _jmp_addr_0x0075065c                           // 0x00750433    0f8523020000
                         {disp8} mov        eax, dword ptr [edi + 0x24]                    // 0x00750439    8b4724
                         test               eax, eax                                       // 0x0075043c    85c0
                         mov                edx, dword ptr [esi]                           // 0x0075043e    8b16
                         {disp8} je         _jmp_addr_0x00750471                           // 0x00750440    742f
                         {disp32} mov       eax, dword ptr [edi + 0x00000108]              // 0x00750442    8b8708010000
                         push               0x0                                            // 0x00750448    6a00
                         push               eax                                            // 0x0075044a    50
                         mov.s              ecx, esi                                       // 0x0075044b    8bce
                         call               dword ptr [edx + 0x5b8]                        // 0x0075044d    ff92b8050000
                         fstp               st(0)                                          // 0x00750453    ddd8
                         xor.s              ecx, ecx                                       // 0x00750455    33c9
                         {disp32} mov       cl, byte ptr [esi + 0x0000008d]                // 0x00750457    8a8e8d000000
                         lea                eax, dword ptr [ecx + ecx * 0x2]               // 0x0075045d    8d0449
                         shl                eax, 3                                         // 0x00750460    c1e003
                         sub.s              eax, ecx                                       // 0x00750463    2bc1
                         lea                ecx, dword ptr [eax + eax * 0x2]               // 0x00750465    8d0c40
                         {disp32} lea       edi, dword ptr [ecx * 0x4 + _GVillagerStateTableInfo_ARRAY_00db9e68]        // 0x00750468    8d3c8d689edb00
                         {disp8} jmp        _jmp_addr_0x007504a1                           // 0x0075046f    eb30
_jmp_addr_0x00750471:    mov.s              ecx, esi                                       // 0x00750471    8bce
                         call               dword ptr [edx + 0xb04]                        // 0x00750473    ff92040b0000
                         mov                edx, dword ptr [esi]                           // 0x00750479    8b16
                         push               0x0                                            // 0x0075047b    6a00
                         and                eax, 0x000000ff                                // 0x0075047d    25ff000000
                         mov.s              ecx, eax                                       // 0x00750482    8bc8
                         lea                eax, dword ptr [ecx + ecx * 0x2]               // 0x00750484    8d0449
                         shl                eax, 3                                         // 0x00750487    c1e003
                         sub.s              eax, ecx                                       // 0x0075048a    2bc1
                         lea                eax, dword ptr [eax + eax * 0x2]               // 0x0075048c    8d0440
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00db9f70]        // 0x0075048f    8b0c85709fdb00
                         push               ecx                                            // 0x00750496    51
                         mov.s              ecx, esi                                       // 0x00750497    8bce
                         call               dword ptr [edx + 0x5b8]                        // 0x00750499    ff92b8050000
                         fstp               st(0)                                          // 0x0075049f    ddd8
_jmp_addr_0x007504a1:    {disp32} mov       eax, dword ptr [edi + 0x000000f4]              // 0x007504a1    8b87f4000000
                         test               eax, eax                                       // 0x007504a7    85c0
                         {disp32} je        _jmp_addr_0x007505fc                           // 0x007504a9    0f844d010000
                         mov                edx, dword ptr [esi]                           // 0x007504af    8b16
                         mov.s              ecx, esi                                       // 0x007504b1    8bce
                         call               dword ptr [edx + 0x11c]                        // 0x007504b3    ff921c010000
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x007504b9    d81d98a38a00
                         fnstsw             ax                                             // 0x007504bf    dfe0
                         test               ah, 0x40                                       // 0x007504c1    f6c440
                         {disp8} je         _jmp_addr_0x0075050c                           // 0x007504c4    7446
                         mov                eax, dword ptr [esi]                           // 0x007504c6    8b06
                         mov.s              ecx, esi                                       // 0x007504c8    8bce
                         call               dword ptr [eax + 0xb04]                        // 0x007504ca    ff90040b0000
                         cmp                al, -0x08                                      // 0x007504d0    3cf8
                         {disp8} je         _jmp_addr_0x007504ea                           // 0x007504d2    7416
                         cmp                al, -0x07                                      // 0x007504d4    3cf9
                         {disp8} je         _jmp_addr_0x007504ea                           // 0x007504d6    7412
                         cmp                al, -0x06                                      // 0x007504d8    3cfa
                         {disp8} je         _jmp_addr_0x007504ea                           // 0x007504da    740e
                         test               byte ptr [esi + 0x000000e0], 0x02              // 0x007504dc    f686e000000002
                         mov                edi, 0x00000008                                // 0x007504e3    bf08000000
                         {disp8} je         _jmp_addr_0x007504ef                           // 0x007504e8    7405
_jmp_addr_0x007504ea:    mov                edi, 0x00000004                                // 0x007504ea    bf04000000
_jmp_addr_0x007504ef:    mov                edx, dword ptr [esi]                           // 0x007504ef    8b16
                         push               0x1                                            // 0x007504f1    6a01
                         push               0x0                                            // 0x007504f3    6a00
                         mov.s              ecx, esi                                       // 0x007504f5    8bce
                         call               dword ptr [edx + 0x1c]                         // 0x007504f7    ff521c
                         push               eax                                            // 0x007504fa    50
                         push               edi                                            // 0x007504fb    57
                         mov.s              ecx, esi                                       // 0x007504fc    8bce
                         call               ?VillagerDead@Villager@@QAEXW4DEATH_REASON@@PAVGPlayer@@MH@Z                           // 0x007504fe    e8bd010000
                         pop                edi                                            // 0x00750503    5f
                         pop                esi                                            // 0x00750504    5e
                         mov                eax, 0x00000001                                // 0x00750505    b801000000
                         pop                ebx                                            // 0x0075050a    5b
                         ret                                                               // 0x0075050b    c3
_jmp_addr_0x0075050c:    mov.s              ecx, esi                                       // 0x0075050c    8bce
                         call               ?GetGameTurnsSinceLastChecked@Villager@@QAEIXZ // 0x0075050e    e85d010000
                         mov.s              ebx, eax                                       // 0x00750513    8bd8
                         {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x00750515    8b4628
                         cmp                ebx, dword ptr [eax + 0x000002dc]              // 0x00750518    3b98dc020000
                         {disp32} jbe       _jmp_addr_0x007505fc                           // 0x0075051e    0f86d8000000
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x00750524    8b0d5c19d000
                         push               ebp                                            // 0x0075052a    55
                         {disp32} mov       ebp, dword ptr [ecx + 0x00205a40]              // 0x0075052b    8ba9405a2000
                         mov.s              ecx, esi                                       // 0x00750531    8bce
                         call               _jmp_addr_0x00436a80                           // 0x00750533    e84865ceff
                         add.s              eax, ebp                                       // 0x00750538    03c5
                         xor.s              edx, edx                                       // 0x0075053a    33d2
                         mov                ecx, 0x00000320                                // 0x0075053c    b920030000
                         div                ecx                                            // 0x00750541    f7f1
                         pop                ebp                                            // 0x00750543    5d
                         cmp.s              edx, ebx                                       // 0x00750544    3bd3
                         {disp8} jae        _jmp_addr_0x00750557                           // 0x00750546    730f
                         mov.s              ecx, esi                                       // 0x00750548    8bce
                         call               _jmp_addr_0x00760ca0                           // 0x0075054a    e851070100
                         test               eax, eax                                       // 0x0075054f    85c0
                         {disp32} jne       _jmp_addr_0x0075065c                           // 0x00750551    0f8505010000
_jmp_addr_0x00750557:    mov                edx, dword ptr [esi]                           // 0x00750557    8b16
                         {disp8} mov        ebx, dword ptr [esi + 0x28]                    // 0x00750559    8b5e28
                         mov.s              ecx, esi                                       // 0x0075055c    8bce
                         call               dword ptr [edx + 0x11c]                        // 0x0075055e    ff921c010000
                         {disp32} fcomp     dword ptr [ebx + 0x0000035c]                   // 0x00750564    d89b5c030000
                         fnstsw             ax                                             // 0x0075056a    dfe0
                         test               ah, 0x01                                       // 0x0075056c    f6c401
                         {disp8} je         _jmp_addr_0x007505c9                           // 0x0075056f    7458
                         test               byte ptr [esi + 0x000000e0], 0x04              // 0x00750571    f686e000000004
                         {disp8} jne        _jmp_addr_0x007505c9                           // 0x00750578    754f
                         {disp32} mov       eax, dword ptr [edi + 0x000000f8]              // 0x0075057a    8b87f8000000
                         test               eax, eax                                       // 0x00750580    85c0
                         {disp8} je         _jmp_addr_0x007505c9                           // 0x00750582    7445
                         test               byte ptr [esi + 0x000000b4], -0x80             // 0x00750584    f686b400000080
                         {disp8} jne        _jmp_addr_0x007505c9                           // 0x0075058b    753c
                         {disp32} mov       eax, dword ptr [edi + 0x000000e8]              // 0x0075058d    8b87e8000000
                         test               eax, eax                                       // 0x00750593    85c0
                         {disp8} jne        _jmp_addr_0x007505c9                           // 0x00750595    7532
                         cmp                edi, 0x00dbb2e4                                // 0x00750597    81ffe4b2db00
                         {disp8} je         _jmp_addr_0x007505a7                           // 0x0075059d    7408
                         cmp                edi, 0x00dbb3f8                                // 0x0075059f    81fff8b3db00
                         {disp8} jne        _jmp_addr_0x007505bd                           // 0x007505a5    7516
_jmp_addr_0x007505a7:    {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x007505a7    8b4628
                         {disp32} fld       dword ptr [esi + 0x000000e8]                   // 0x007505aa    d986e8000000
                         {disp32} fcomp     dword ptr [eax + 0x000002c0]                   // 0x007505b0    d898c0020000
                         fnstsw             ax                                             // 0x007505b6    dfe0
                         test               ah, 0x41                                       // 0x007505b8    f6c441
                         {disp8} jne        _jmp_addr_0x007505c9                           // 0x007505bb    750c
_jmp_addr_0x007505bd:    mov                edx, dword ptr [esi]                           // 0x007505bd    8b16
                         push               0x24                                           // 0x007505bf    6a24
                         mov.s              ecx, esi                                       // 0x007505c1    8bce
                         call               dword ptr [edx + 0x8e8]                        // 0x007505c3    ff92e8080000
_jmp_addr_0x007505c9:    mov                eax, dword ptr [esi]                           // 0x007505c9    8b06
                         mov.s              ecx, esi                                       // 0x007505cb    8bce
                         call               dword ptr [eax + 0xaf8]                        // 0x007505cd    ff90f80a0000
                         test               eax, eax                                       // 0x007505d3    85c0
                         {disp8} je         _jmp_addr_0x007505de                           // 0x007505d5    7407
                         mov.s              ecx, esi                                       // 0x007505d7    8bce
                         call               ?CheckChildGrownUp@Villager@@QAEHXZ            // 0x007505d9    e8720a0000
_jmp_addr_0x007505de:    mov.s              ecx, esi                                       // 0x007505de    8bce
                         call               ?IsWoman@Villager@@QAE_NXZ                     // 0x007505e0    e83b200000
                         cmp                eax, 0x01                                      // 0x007505e5    83f801
                         {disp8} jne        _jmp_addr_0x007505f1                           // 0x007505e8    7507
                         mov.s              ecx, esi                                       // 0x007505ea    8bce
                         call               ?WomanSpecial@Villager@@QAEIXZ                 // 0x007505ec    e84f1c0000
_jmp_addr_0x007505f1:    mov.s              ecx, esi                                       // 0x007505f1    8bce
                         call               ?CheckHungry@Villager@@QAE_NXZ                 // 0x007505f3    e8c8b60000
                         pop                edi                                            // 0x007505f8    5f
                         pop                esi                                            // 0x007505f9    5e
                         pop                ebx                                            // 0x007505fa    5b
                         ret                                                               // 0x007505fb    c3
_jmp_addr_0x007505fc:    xor.s              ecx, ecx                                       // 0x007505fc    33c9
                         {disp32} mov       cx, word ptr [esi + 0x000000e0]                // 0x007505fe    668b8ee0000000
                         shr                ecx, 9                                         // 0x00750605    c1e909
                         test               cl, 0x01                                       // 0x00750608    f6c101
                         {disp8} je         _jmp_addr_0x0075065c                           // 0x0075060b    744f
                         xor.s              eax, eax                                       // 0x0075060d    33c0
                         {disp32} mov       al, byte ptr [esi + 0x000000f2]                // 0x0075060f    8a86f2000000
                         {disp32} lea       edx, dword ptr [eax * 0x8 + 0x00000000]        // 0x00750615    8d14c500000000
                         sub.s              edx, eax                                       // 0x0075061c    2bd0
                         cmp                dword ptr [edx * 0x4 + 0x0099a204], 0x01       // 0x0075061e    833c9504a2990001
                         {disp8} jne        _jmp_addr_0x0075065c                           // 0x00750626    7534
                         cmp                byte ptr [esi + 0x0000008d], -0x23             // 0x00750628    80be8d000000dd
                         {disp8} jne        _jmp_addr_0x0075065c                           // 0x0075062f    752b
                         mov                eax, dword ptr [esi]                           // 0x00750631    8b06
                         mov.s              ecx, esi                                       // 0x00750633    8bce
                         call               dword ptr [eax + 0x48]                         // 0x00750635    ff5048
                         test               eax, eax                                       // 0x00750638    85c0
                         {disp8} je         _jmp_addr_0x0075065c                           // 0x0075063a    7420
                         mov                edx, dword ptr [esi]                           // 0x0075063c    8b16
                         mov.s              ecx, esi                                       // 0x0075063e    8bce
                         call               dword ptr [edx + 0x48]                         // 0x00750640    ff5248
                         {disp32} mov       ecx, dword ptr [eax + 0x000005e8]              // 0x00750643    8b88e8050000
                         test               ecx, ecx                                       // 0x00750649    85c9
                         {disp8} je         _jmp_addr_0x0075065c                           // 0x0075064b    740f
                         mov                eax, dword ptr [esi]                           // 0x0075064d    8b06
                         push               0x000000a3                                     // 0x0075064f    68a3000000
                         mov.s              ecx, esi                                       // 0x00750654    8bce
                         call               dword ptr [eax + 0x8e8]                        // 0x00750656    ff90e8080000
_jmp_addr_0x0075065c:    pop                edi                                            // 0x0075065c    5f
                         pop                esi                                            // 0x0075065d    5e
                         mov                eax, 0x00000001                                // 0x0075065e    b801000000
                         pop                ebx                                            // 0x00750663    5b
                         ret                                                               // 0x00750664    c3
                         nop                                                               // 0x00750665    90
                         nop                                                               // 0x00750666    90
                         nop                                                               // 0x00750667    90
                         nop                                                               // 0x00750668    90
                         nop                                                               // 0x00750669    90
                         nop                                                               // 0x0075066a    90
                         nop                                                               // 0x0075066b    90
                         nop                                                               // 0x0075066c    90
                         nop                                                               // 0x0075066d    90
                         nop                                                               // 0x0075066e    90
                         nop                                                               // 0x0075066f    90
?GetGameTurnsSinceLastChecked@Villager@@QAEIXZ:
                         {disp32} mov       eax, dword ptr [_game]                         // 0x00750670    a15c19d000
                         {disp32} mov       eax, dword ptr [eax + 0x00205a40]              // 0x00750675    8b80405a2000
                         sub                eax, dword ptr [ecx + 0x000000ec]              // 0x0075067b    2b81ec000000
                         ret                                                               // 0x00750681    c3
                         nop                                                               // 0x00750682    90
                         nop                                                               // 0x00750683    90
                         nop                                                               // 0x00750684    90
                         nop                                                               // 0x00750685    90
                         nop                                                               // 0x00750686    90
                         nop                                                               // 0x00750687    90
                         nop                                                               // 0x00750688    90
                         nop                                                               // 0x00750689    90
                         nop                                                               // 0x0075068a    90
                         nop                                                               // 0x0075068b    90
                         nop                                                               // 0x0075068c    90
                         nop                                                               // 0x0075068d    90
                         nop                                                               // 0x0075068e    90
                         nop                                                               // 0x0075068f    90
?GetGameTurnLastChecked@Villager@@QAEHXZ:
                         {disp32} mov       eax, dword ptr [ecx + 0x000000ec]              // 0x00750690    8b81ec000000
                         ret                                                               // 0x00750696    c3
                         nop                                                               // 0x00750697    90
                         nop                                                               // 0x00750698    90
                         nop                                                               // 0x00750699    90
                         nop                                                               // 0x0075069a    90
                         nop                                                               // 0x0075069b    90
                         nop                                                               // 0x0075069c    90
                         nop                                                               // 0x0075069d    90
                         nop                                                               // 0x0075069e    90
                         nop                                                               // 0x0075069f    90
?SetGameTurnLastChecked@Villager@@QAEXXZ:
                         {disp32} mov       eax, dword ptr [_game]                         // 0x007506a0    a15c19d000
                         {disp32} mov       edx, dword ptr [eax + 0x00205a40]              // 0x007506a5    8b90405a2000
                         {disp32} mov       dword ptr [ecx + 0x000000ec], edx              // 0x007506ab    8991ec000000
                         ret                                                               // 0x007506b1    c3
                         nop                                                               // 0x007506b2    90
                         nop                                                               // 0x007506b3    90
                         nop                                                               // 0x007506b4    90
                         nop                                                               // 0x007506b5    90
                         nop                                                               // 0x007506b6    90
                         nop                                                               // 0x007506b7    90
                         nop                                                               // 0x007506b8    90
                         nop                                                               // 0x007506b9    90
                         nop                                                               // 0x007506ba    90
                         nop                                                               // 0x007506bb    90
                         nop                                                               // 0x007506bc    90
                         nop                                                               // 0x007506bd    90
                         nop                                                               // 0x007506be    90
                         nop                                                               // 0x007506bf    90
?VillagerDead@Villager@@QAEXW4DEATH_REASON@@PAVGPlayer@@MH@Z:
                         push               esi                                            // 0x007506c0    56
                         mov.s              esi, ecx                                       // 0x007506c1    8bf1
                         test               byte ptr [esi + 0x24], 0x40                    // 0x007506c3    f6462440
                         {disp32} jne       _jmp_addr_0x00750930                           // 0x007506c7    0f8563020000
                         mov                eax, dword ptr [esi]                           // 0x007506cd    8b06
                         call               dword ptr [eax + 0xaf4]                        // 0x007506cf    ff90f40a0000
                         test               eax, eax                                       // 0x007506d5    85c0
                         {disp32} jne       _jmp_addr_0x00750930                           // 0x007506d7    0f8553020000
                         mov                edx, dword ptr [esi]                           // 0x007506dd    8b16
                         push               ebx                                            // 0x007506df    53
                         mov.s              ecx, esi                                       // 0x007506e0    8bce
                         call               dword ptr [edx + 0x48]                         // 0x007506e2    ff5248
                         {disp8} mov        ebx, dword ptr [esp + 0x0c]                    // 0x007506e5    8b5c240c
                         test               ebx, ebx                                       // 0x007506e9    85db
                         {disp8} je         _jmp_addr_0x00750713                           // 0x007506eb    7426
                         cmp                ebx, 0x01                                      // 0x007506ed    83fb01
                         {disp8} je         _jmp_addr_0x00750713                           // 0x007506f0    7421
                         cmp                ebx, 0x03                                      // 0x007506f2    83fb03
                         {disp8} je         _jmp_addr_0x00750713                           // 0x007506f5    741c
                         cmp                ebx, 0x04                                      // 0x007506f7    83fb04
                         {disp8} je         _jmp_addr_0x00750713                           // 0x007506fa    7417
                         cmp                ebx, 0x08                                      // 0x007506fc    83fb08
                         {disp8} je         _jmp_addr_0x00750713                           // 0x007506ff    7412
                         cmp                ebx, 0x09                                      // 0x00750701    83fb09
                         {disp8} je         _jmp_addr_0x00750713                           // 0x00750704    740d
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x00750706    8b4c2410
                         push               0x1                                            // 0x0075070a    6a01
                         push               0x0                                            // 0x0075070c    6a00
                         call               _jmp_addr_0x0064da80                           // 0x0075070e    e86dd3efff
_jmp_addr_0x00750713:    mov                eax, dword ptr [esi]                           // 0x00750713    8b06
                         push               ebp                                            // 0x00750715    55
                         push               edi                                            // 0x00750716    57
                         mov.s              ecx, esi                                       // 0x00750717    8bce
                         call               dword ptr [eax + 0x1c]                         // 0x00750719    ff501c
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x0075071c    8b0d5c19d000
                         mov.s              ebp, eax                                       // 0x00750722    8be8
                         test               ebp, ebp                                       // 0x00750724    85ed
                         {disp8} jne        _jmp_addr_0x00750740                           // 0x00750726    7518
                         xor.s              eax, eax                                       // 0x00750728    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a5b]                // 0x0075072a    8a815b5a2000
                         lea                edx, dword ptr [eax + eax * 0x4]               // 0x00750730    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]               // 0x00750733    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]               // 0x00750736    8d0450
                         shl                eax, 5                                         // 0x00750739    c1e005
                         {disp8} lea        ebp, dword ptr [eax + ecx * 0x1 + 0x18]        // 0x0075073c    8d6c0818
_jmp_addr_0x00750740:    {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x00750740    8b442418
                         test               eax, eax                                       // 0x00750744    85c0
                         {disp8} jne        _jmp_addr_0x00750764                           // 0x00750746    751c
                         xor.s              eax, eax                                       // 0x00750748    33c0
                         {disp32} mov       al, byte ptr [ecx + 0x00205a5b]                // 0x0075074a    8a815b5a2000
                         lea                edx, dword ptr [eax + eax * 0x4]               // 0x00750750    8d1480
                         lea                edx, dword ptr [eax + edx * 0x8]               // 0x00750753    8d14d0
                         lea                eax, dword ptr [eax + edx * 0x2]               // 0x00750756    8d0450
                         shl                eax, 5                                         // 0x00750759    c1e005
                         {disp8} lea        edx, dword ptr [eax + ecx * 0x1 + 0x18]        // 0x0075075c    8d540818
                         {disp8} mov        dword ptr [esp + 0x18], edx                    // 0x00750760    89542418
_jmp_addr_0x00750764:    call               _jmp_addr_0x00555880                           // 0x00750764    e81751e0ff
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                    // 0x00750769    8b4c2418
                         mov.s              edi, eax                                       // 0x0075076d    8bf8
                         push               edi                                            // 0x0075076f    57
                         call               ?IsMemberOfThisPlayer@GPlayer@@QAE_NPAVGInterfaceStatus@@@Z                           // 0x00750770    e8dbcfefff
                         test               eax, eax                                       // 0x00750775    85c0
                         {disp8} je         _jmp_addr_0x00750792                           // 0x00750777    7419
                         lea                eax, dword ptr [ebx + ebx * 0x2]               // 0x00750779    8d045b
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + 0x0099a368]        // 0x0075077c    8b0c8568a39900
                         test               ecx, ecx                                       // 0x00750783    85c9
                         {disp8} je         _jmp_addr_0x007507c0                           // 0x00750785    7439
                         {disp8} mov        ecx, dword ptr [edi + 0x30]                    // 0x00750787    8b4f30
                         push               esi                                            // 0x0075078a    56
                         call               _jmp_addr_0x0071ce70                           // 0x0075078b    e8e0c6fcff
                         {disp8} jmp        _jmp_addr_0x007507c0                           // 0x00750790    eb2e
_jmp_addr_0x00750792:    push               edi                                            // 0x00750792    57
                         mov.s              ecx, ebp                                       // 0x00750793    8bcd
                         call               ?IsMemberOfThisPlayer@GPlayer@@QAE_NPAVGInterfaceStatus@@@Z                           // 0x00750795    e8b6cfefff
                         test               eax, eax                                       // 0x0075079a    85c0
                         {disp8} je         _jmp_addr_0x007507c0                           // 0x0075079c    7422
                         lea                ecx, dword ptr [ebx + ebx * 0x2]               // 0x0075079e    8d0c5b
                         {disp32} mov       eax, dword ptr [ecx * 0x4 + 0x0099a370]        // 0x007507a1    8b048d70a39900
                         test               eax, eax                                       // 0x007507a8    85c0
                         {disp8} je         _jmp_addr_0x007507c0                           // 0x007507aa    7414
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x007507ac    8b0d5c19d000
                         call               _jmp_addr_0x00555880                           // 0x007507b2    e8c950e0ff
                         push               eax                                            // 0x007507b7    50
                         call               _jmp_addr_0x0071c810                           // 0x007507b8    e853c0fcff
                         add                esp, 0x04                                      // 0x007507bd    83c404
_jmp_addr_0x007507c0:    {disp8} mov        eax, dword ptr [esp + 0x20]                    // 0x007507c0    8b442420
                         test               eax, eax                                       // 0x007507c4    85c0
                         {disp8} je         _jmp_addr_0x007507d5                           // 0x007507c6    740d
                         push               0x0                                            // 0x007507c8    6a00
                         push               0x0                                            // 0x007507ca    6a00
                         push               0x0                                            // 0x007507cc    6a00
                         mov.s              ecx, esi                                       // 0x007507ce    8bce
                         call               ?CreateDroppedResource@Villager@@QAEXPAULHPoint@@00@Z                           // 0x007507d0    e86b010000
_jmp_addr_0x007507d5:    push               0x0                                            // 0x007507d5    6a00
                         mov.s              ecx, esi                                       // 0x007507d7    8bce
                         call               ?DropWood@Villager@@QAEGG@Z                    // 0x007507d9    e8620a0000
                         push               0x0                                            // 0x007507de    6a00
                         mov.s              ecx, esi                                       // 0x007507e0    8bce
                         call               ?DropFood@Villager@@QAEGG@Z                    // 0x007507e2    e8f9090000
                         xor.s              edx, edx                                       // 0x007507e7    33d2
                         {disp32} mov       dx, word ptr [esi + 0x000000e0]                // 0x007507e9    668b96e0000000
                         shr                edx, 9                                         // 0x007507f0    c1ea09
                         test               dl, 0x01                                       // 0x007507f3    f6c201
                         {disp8} je         _jmp_addr_0x00750805                           // 0x007507f6    740d
                         push               0x0                                            // 0x007507f8    6a00
                         push               0x0                                            // 0x007507fa    6a00
                         push               0x0                                            // 0x007507fc    6a00
                         mov.s              ecx, esi                                       // 0x007507fe    8bce
                         call               ?SetVillagerDisciple@Villager@@QAEIPAVGameThing@@W4VILLAGER_DISCIPLE@@H@Z                           // 0x00750800    e8fb570000
_jmp_addr_0x00750805:    test               ebp, ebp                                       // 0x00750805    85ed
                         {disp8} je         _jmp_addr_0x0075081d                           // 0x00750807    7414
                         mov                eax, dword ptr [esi]                           // 0x00750809    8b06
                         {disp8} mov        edi, dword ptr [ebp + 0x60]                    // 0x0075080b    8b7d60
                         push               ebx                                            // 0x0075080e    53
                         push               esi                                            // 0x0075080f    56
                         mov.s              ecx, esi                                       // 0x00750810    8bce
                         call               dword ptr [eax + 0x1c]                         // 0x00750812    ff501c
                         push               eax                                            // 0x00750815    50
                         mov.s              ecx, edi                                       // 0x00750816    8bcf
                         call               _jmp_addr_0x004143b0                           // 0x00750818    e8933bccff
_jmp_addr_0x0075081d:    mov                edx, dword ptr [esi]                           // 0x0075081d    8b16
                         mov.s              ecx, esi                                       // 0x0075081f    8bce
                         call               dword ptr [edx + 0x48]                         // 0x00750821    ff5248
                         mov.s              edi, eax                                       // 0x00750824    8bf8
                         test               edi, edi                                       // 0x00750826    85ff
                         {disp32} je        _jmp_addr_0x007508f4                           // 0x00750828    0f84c6000000
                         {disp8} mov        eax, dword ptr [esp + 0x1c]                    // 0x0075082e    8b44241c
                         {disp8} mov        ecx, dword ptr [esp + 0x18]                    // 0x00750832    8b4c2418
                         push               eax                                            // 0x00750836    50
                         push               ebx                                            // 0x00750837    53
                         push               ecx                                            // 0x00750838    51
                         mov.s              ecx, edi                                       // 0x00750839    8bcf
                         call               _jmp_addr_0x0073e0a0                           // 0x0075083b    e860d8feff
                         {disp8} mov        edx, dword ptr [esp + 0x1c]                    // 0x00750840    8b54241c
                         {disp8} mov        eax, dword ptr [esp + 0x18]                    // 0x00750844    8b442418
                         push               edx                                            // 0x00750848    52
                         push               eax                                            // 0x00750849    50
                         push               ebx                                            // 0x0075084a    53
                         push               esi                                            // 0x0075084b    56
                         mov.s              ecx, edi                                       // 0x0075084c    8bcf
                         call               _jmp_addr_0x0073e440                           // 0x0075084e    e8eddbfeff
                         test               ebp, ebp                                       // 0x00750853    85ed
                         {disp32} je        _jmp_addr_0x007508f4                           // 0x00750855    0f8499000000
                         cmp                ebx, 0x04                                      // 0x0075085b    83fb04
                         {disp8} jne        _jmp_addr_0x00750883                           // 0x0075085e    7523
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x00750860    8b0d5c19d000
                         call               _jmp_addr_0x00555880                           // 0x00750866    e81550e0ff
                         mov.s              edi, eax                                       // 0x0075086b    8bf8
                         push               edi                                            // 0x0075086d    57
                         mov.s              ecx, ebp                                       // 0x0075086e    8bcd
                         call               ?IsMemberOfThisPlayer@GPlayer@@QAE_NPAVGInterfaceStatus@@@Z                           // 0x00750870    e8dbceefff
                         test               eax, eax                                       // 0x00750875    85c0
                         {disp8} je         _jmp_addr_0x007508f4                           // 0x00750877    747b
                         {disp8} mov        ecx, dword ptr [edi + 0x30]                    // 0x00750879    8b4f30
                         call               _jmp_addr_0x0071cfe0                           // 0x0075087c    e85fc7fcff
                         {disp8} jmp        _jmp_addr_0x007508f4                           // 0x00750881    eb71
_jmp_addr_0x00750883:    {disp8} mov        ecx, dword ptr [edi + 0x28]                    // 0x00750883    8b4f28
                         {disp32} mov       edx, dword ptr [edi + 0x00000618]              // 0x00750886    8b9718060000
                         cmp                edx, dword ptr [ecx + 0x00000150]              // 0x0075088c    3b9150010000
                         {disp8} jbe        _jmp_addr_0x007508cc                           // 0x00750892    7638
                         lea                eax, dword ptr [ebx + ebx * 0x2]               // 0x00750894    8d045b
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + 0x0099a36c]        // 0x00750897    8b0c856ca39900
                         test               ecx, ecx                                       // 0x0075089e    85c9
                         {disp8} je         _jmp_addr_0x007508f4                           // 0x007508a0    7452
                         {disp32} mov       ecx, dword ptr [_game]                         // 0x007508a2    8b0d5c19d000
                         call               _jmp_addr_0x00555880                           // 0x007508a8    e8d34fe0ff
                         mov.s              edi, eax                                       // 0x007508ad    8bf8
                         cmp                dword ptr [esp + 0x18], ebp                    // 0x007508af    396c2418
                         {disp8} je         _jmp_addr_0x007508f4                           // 0x007508b3    743f
                         push               edi                                            // 0x007508b5    57
                         mov.s              ecx, ebp                                       // 0x007508b6    8bcd
                         call               ?IsMemberOfThisPlayer@GPlayer@@QAE_NPAVGInterfaceStatus@@@Z                           // 0x007508b8    e893ceefff
                         test               eax, eax                                       // 0x007508bd    85c0
                         {disp8} je         _jmp_addr_0x007508f4                           // 0x007508bf    7433
                         {disp8} mov        ecx, dword ptr [edi + 0x30]                    // 0x007508c1    8b4f30
                         push               esi                                            // 0x007508c4    56
                         call               _jmp_addr_0x0071c990                           // 0x007508c5    e8c6c0fcff
                         {disp8} jmp        _jmp_addr_0x007508f4                           // 0x007508ca    eb28
_jmp_addr_0x007508cc:    {disp32} mov       ecx, dword ptr [_game]                         // 0x007508cc    8b0d5c19d000
                         call               _jmp_addr_0x00555880                           // 0x007508d2    e8a94fe0ff
                         push               eax                                            // 0x007508d7    50
                         mov.s              ecx, ebp                                       // 0x007508d8    8bcd
                         {disp8} mov        dword ptr [esp + 0x20], eax                    // 0x007508da    89442420
                         call               ?IsMemberOfThisPlayer@GPlayer@@QAE_NPAVGInterfaceStatus@@@Z                           // 0x007508de    e86dceefff
                         test               eax, eax                                       // 0x007508e3    85c0
                         {disp8} je         _jmp_addr_0x007508f4                           // 0x007508e5    740d
                         {disp8} mov        ecx, dword ptr [esp + 0x1c]                    // 0x007508e7    8b4c241c
                         {disp8} mov        ecx, dword ptr [ecx + 0x30]                    // 0x007508eb    8b4930
                         push               edi                                            // 0x007508ee    57
                         call               ?HelpSpritesLowOnPeople@GGuidance@@QAEXAAVTown@@@Z                           // 0x007508ef    e8ecc2fcff
_jmp_addr_0x007508f4:    {disp32} mov       dl, byte ptr [esi + 0x000000b4]                // 0x007508f4    8a96b4000000
                         and                dl, 0x01                                       // 0x007508fa    80e201
                         cmp                dl, 0x01                                       // 0x007508fd    80fa01
                         pop                edi                                            // 0x00750900    5f
                         pop                ebp                                            // 0x00750901    5d
                         {disp8} je         _jmp_addr_0x00750929                           // 0x00750902    7425
                         mov                eax, dword ptr [esi]                           // 0x00750904    8b06
                         mov.s              ecx, esi                                       // 0x00750906    8bce
                         call               dword ptr [eax + 0x6a4]                        // 0x00750908    ff90a4060000
                         cmp                ebx, 0x07                                      // 0x0075090e    83fb07
                         {disp8} jne        _jmp_addr_0x00750929                           // 0x00750911    7516
                         {disp8} mov        ecx, dword ptr [esp + 0x10]                    // 0x00750913    8b4c2410
                         {disp32} mov       eax, dword ptr [ecx + 0x00000a44]              // 0x00750917    8b81440a0000
                         {disp32} inc       dword ptr [eax + 0x00001124]                   // 0x0075091d    ff8024110000
                         {disp8} mov        word ptr [esi + 0x58], 0x0000                  // 0x00750923    66c746580000
_jmp_addr_0x00750929:    {disp32} mov       byte ptr [esi + 0x00000118], bl                // 0x00750929    889e18010000
                         pop                ebx                                            // 0x0075092f    5b
_jmp_addr_0x00750930:    pop                esi                                            // 0x00750930    5e
                         ret                0x0010                                         // 0x00750931    c21000
                         nop                                                               // 0x00750934    90
                         nop                                                               // 0x00750935    90
                         nop                                                               // 0x00750936    90
                         nop                                                               // 0x00750937    90
                         nop                                                               // 0x00750938    90
                         nop                                                               // 0x00750939    90
                         nop                                                               // 0x0075093a    90
                         nop                                                               // 0x0075093b    90
                         nop                                                               // 0x0075093c    90
                         nop                                                               // 0x0075093d    90
                         nop                                                               // 0x0075093e    90
                         nop                                                               // 0x0075093f    90
?CreateDroppedResource@Villager@@QAEXPAULHPoint@@00@Z:
                         sub                esp, 0x24                                      // 0x00750940    83ec24
                         push               esi                                            // 0x00750943    56
                         push               edi                                            // 0x00750944    57
                         mov.s              edi, ecx                                       // 0x00750945    8bf9
                         {disp32} mov       cx, word ptr [edi + 0x000000f6]                // 0x00750947    668b8ff6000000
                         xor.s              eax, eax                                       // 0x0075094e    33c0
                         {disp32} mov       al, byte ptr [edi + 0x000000f1]                // 0x00750950    8a87f1000000
                         cmp                eax, 0x01                                      // 0x00750956    83f801
                         {disp32} jle       _jmp_addr_0x00750a9a                           // 0x00750959    0f8e3b010000
                         cmp                eax, 0x10                                      // 0x0075095f    83f810
                         {disp32} jge       _jmp_addr_0x00750a9a                           // 0x00750962    0f8d32010000
                         {disp8} mov        edx, dword ptr [edi + 0x28]                    // 0x00750968    8b5728
                         {disp32} mov       esi, dword ptr [edx + 0x0000026c]              // 0x0075096b    8bb26c020000
                         movsx              ecx, cx                                        // 0x00750971    0fbfc9
                         cmp.s              ecx, esi                                       // 0x00750974    3bce
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                    // 0x00750976    894c240c
                         {disp32} jle       _jmp_addr_0x00750a9a                           // 0x0075097a    0f8e1a010000
                         {disp8} lea        ecx, dword ptr [edi + 0x14]                    // 0x00750980    8d4f14
                         mov                edx, dword ptr [ecx]                           // 0x00750983    8b11
                         {disp8} mov        dword ptr [esp + 0x20], edx                    // 0x00750985    89542420
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                    // 0x00750989    8b5104
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                    // 0x0075098c    8b4908
                         {disp8} mov        dword ptr [esp + 0x28], ecx                    // 0x0075098f    894c2428
                         {disp32} mov       ecx, dword ptr [eax * 0x4 + 0x00c5e19c]        // 0x00750993    8b0c859ce1c500
                         {disp8} mov        dword ptr [esp + 0x24], edx                    // 0x0075099a    89542424
                         mov                edx, dword ptr [ecx]                           // 0x0075099e    8b11
                         call               dword ptr [edx + 0xf8]                         // 0x007509a0    ff92f8000000
                         push               eax                                            // 0x007509a6    50
                         push               0x0                                            // 0x007509a7    6a00
                         push               0x0                                            // 0x007509a9    6a00
                         push               0x3fc90fdb                                     // 0x007509ab    68db0fc93f
                         push               0x3f800000                                     // 0x007509b0    680000803f
                         push               0x0                                            // 0x007509b5    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x38]                    // 0x007509b7    8d442438
                         push               0x00da49d8                                     // 0x007509bb    68d849da00
                         push               eax                                            // 0x007509c0    50
                         call               _jmp_addr_0x00510bb0                           // 0x007509c1    e8ea01dcff
                         {disp8} fild       dword ptr [esp + 0x2c]                         // 0x007509c6    db44242c
                         mov.s              esi, eax                                       // 0x007509ca    8bf0
                         mov                edx, dword ptr [esi]                           // 0x007509cc    8b16
                         add                esp, 0x20                                      // 0x007509ce    83c420
                         {disp8} fstp       dword ptr [esp + 0x0c]                         // 0x007509d1    d95c240c
                         mov.s              ecx, esi                                       // 0x007509d5    8bce
                         call               dword ptr [edx + 0x664]                        // 0x007509d7    ff9264060000
                         {disp8} fdivr      dword ptr [esp + 0x0c]                         // 0x007509dd    d87c240c
                         {disp8} mov        eax, dword ptr [esp + 0x30]                    // 0x007509e1    8b442430
                         test               eax, eax                                       // 0x007509e5    85c0
                         {disp32} fstp      dword ptr [esi + 0x0000009c]                   // 0x007509e7    d99e9c000000
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000             // 0x007509ed    c744241400000000
                         {disp8} mov        dword ptr [esp + 0x18], 0x00000000             // 0x007509f5    c744241800000000
                         {disp8} mov        dword ptr [esp + 0x1c], 0x00000000             // 0x007509fd    c744241c00000000
                         {disp8} je         _jmp_addr_0x00750a23                           // 0x00750a05    741c
                         {disp8} mov        ecx, dword ptr [esp + 0x34]                    // 0x00750a07    8b4c2434
                         test               ecx, ecx                                       // 0x00750a0b    85c9
                         {disp8} jne        _jmp_addr_0x00750a13                           // 0x00750a0d    7504
                         {disp8} lea        ecx, dword ptr [esp + 0x14]                    // 0x00750a0f    8d4c2414
_jmp_addr_0x00750a13:    mov                edx, dword ptr [esi]                           // 0x00750a13    8b16
                         push               0x0                                            // 0x00750a15    6a00
                         push               0x1                                            // 0x00750a17    6a01
                         push               0x0                                            // 0x00750a19    6a00
                         push               ecx                                            // 0x00750a1b    51
                         push               eax                                            // 0x00750a1c    50
                         {disp8} lea        eax, dword ptr [esp + 0x20]                    // 0x00750a1d    8d442420
                         {disp8} jmp        _jmp_addr_0x00750a39                           // 0x00750a21    eb16
_jmp_addr_0x00750a23:    mov                edx, dword ptr [esi]                           // 0x00750a23    8b16
                         push               0x0                                            // 0x00750a25    6a00
                         push               0x1                                            // 0x00750a27    6a01
                         push               0x0                                            // 0x00750a29    6a00
                         {disp8} lea        eax, dword ptr [esp + 0x20]                    // 0x00750a2b    8d442420
                         push               eax                                            // 0x00750a2f    50
                         {disp8} lea        ecx, dword ptr [esp + 0x24]                    // 0x00750a30    8d4c2424
                         push               ecx                                            // 0x00750a34    51
                         {disp8} lea        eax, dword ptr [esp + 0x20]                    // 0x00750a35    8d442420
_jmp_addr_0x00750a39:    push               eax                                            // 0x00750a39    50
                         mov.s              ecx, esi                                       // 0x00750a3a    8bce
                         call               dword ptr [edx + 0x784]                        // 0x00750a3c    ff9284070000
                         mov                eax, dword ptr [eax]                           // 0x00750a42    8b00
                         test               eax, eax                                       // 0x00750a44    85c0
                         {disp8} mov        dword ptr [esp + 0x08], eax                    // 0x00750a46    89442408
                         {disp8} je         _jmp_addr_0x00750a91                           // 0x00750a4a    7445
                         {disp8} mov        ecx, dword ptr [esp + 0x38]                    // 0x00750a4c    8b4c2438
                         test               ecx, ecx                                       // 0x00750a50    85c9
                         {disp8} je         _jmp_addr_0x00750a6d                           // 0x00750a52    7419
                         mov                edx, dword ptr [ecx]                           // 0x00750a54    8b11
                         add                eax, 0x00000090                                // 0x00750a56    0590000000
                         mov                dword ptr [eax], edx                           // 0x00750a5b    8910
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                    // 0x00750a5d    8b5104
                         {disp8} mov        dword ptr [eax + 0x04], edx                    // 0x00750a60    895004
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                    // 0x00750a63    8b4908
                         {disp8} mov        dword ptr [eax + 0x08], ecx                    // 0x00750a66    894808
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x00750a69    8b442408
_jmp_addr_0x00750a6d:    or                 dword ptr [eax + 0x1d8], 0x10                  // 0x00750a6d    8388d801000010
                         {disp8} mov        edx, dword ptr [esp + 0x08]                    // 0x00750a74    8b542408
                         push               0x1                                            // 0x00750a78    6a01
                         push               0x0                                            // 0x00750a7a    6a00
                         {disp8} lea        ecx, dword ptr [edx + 0x28]                    // 0x00750a7c    8d4a28
                         call               _jmp_addr_0x007fcb80                           // 0x00750a7f    e8fcc00a00
                         {disp8} lea        eax, dword ptr [esp + 0x08]                    // 0x00750a84    8d442408
                         push               eax                                            // 0x00750a88    50
                         call               _jmp_addr_0x00644800                           // 0x00750a89    e8723defff
                         add                esp, 0x04                                      // 0x00750a8e    83c404
_jmp_addr_0x00750a91:    push               0x0                                            // 0x00750a91    6a00
                         mov.s              ecx, edi                                       // 0x00750a93    8bcf
                         call               ?DropWood@Villager@@QAEGG@Z                    // 0x00750a95    e8a6070000
_jmp_addr_0x00750a9a:    pop                edi                                            // 0x00750a9a    5f
                         pop                esi                                            // 0x00750a9b    5e
                         add                esp, 0x24                                      // 0x00750a9c    83c424
                         ret                0x000c                                         // 0x00750a9f    c20c00
                         nop                                                               // 0x00750aa2    90
                         nop                                                               // 0x00750aa3    90
                         nop                                                               // 0x00750aa4    90
                         nop                                                               // 0x00750aa5    90
                         nop                                                               // 0x00750aa6    90
                         nop                                                               // 0x00750aa7    90
                         nop                                                               // 0x00750aa8    90
                         nop                                                               // 0x00750aa9    90
                         nop                                                               // 0x00750aaa    90
                         nop                                                               // 0x00750aab    90
                         nop                                                               // 0x00750aac    90
                         nop                                                               // 0x00750aad    90
                         nop                                                               // 0x00750aae    90
                         nop                                                               // 0x00750aaf    90
?HasSunk@Villager@@UAE_NXZ:
                         push               esi                                            // 0x00750ab0    56
                         mov.s              esi, ecx                                       // 0x00750ab1    8bf1
                         mov                eax, dword ptr [esi]                           // 0x00750ab3    8b06
                         call               dword ptr [eax + 0x2c]                         // 0x00750ab5    ff502c
                         test               eax, eax                                       // 0x00750ab8    85c0
                         {disp8} jne        _jmp_addr_0x00750abe                           // 0x00750aba    7502
                         pop                esi                                            // 0x00750abc    5e
                         ret                                                               // 0x00750abd    c3
_jmp_addr_0x00750abe:    push               edi                                            // 0x00750abe    57
                         mov.s              ecx, esi                                       // 0x00750abf    8bce
                         call               _jmp_addr_0x0063a710                           // 0x00750ac1    e84a9ceeff
                         test               eax, eax                                       // 0x00750ac6    85c0
                         {disp8} je         _jmp_addr_0x00750af2                           // 0x00750ac8    7428
                         mov.s              ecx, esi                                       // 0x00750aca    8bce
                         call               _jmp_addr_0x0063a710                           // 0x00750acc    e83f9ceeff
                         mov                edx, dword ptr [eax]                           // 0x00750ad1    8b10
                         mov.s              ecx, eax                                       // 0x00750ad3    8bc8
                         call               dword ptr [edx + 0x1c]                         // 0x00750ad5    ff521c
                         mov.s              edi, eax                                       // 0x00750ad8    8bf8
                         test               edi, edi                                       // 0x00750ada    85ff
                         {disp8} je         _jmp_addr_0x00750af2                           // 0x00750adc    7414
                         push               0x0                                            // 0x00750ade    6a00
                         push               esi                                            // 0x00750ae0    56
                         push               0x15                                           // 0x00750ae1    6a15
                         mov.s              ecx, esi                                       // 0x00750ae3    8bce
                         call               _jmp_addr_0x0063a710                           // 0x00750ae5    e8269ceeff
                         push               eax                                            // 0x00750aea    50
                         mov.s              ecx, edi                                       // 0x00750aeb    8bcf
                         call               _jmp_addr_0x004ea900                           // 0x00750aed    e80e9ed9ff
_jmp_addr_0x00750af2:    {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x00750af2    8b4628
                         {disp32} mov       dl, byte ptr [esi + 0x000000b4]                // 0x00750af5    8a96b4000000
                         {disp32} mov       cx, word ptr [eax + 0x0000039a]                // 0x00750afb    668b889a030000
                         mov                eax, dword ptr [esi]                           // 0x00750b02    8b06
                         and                dl, 0x01                                       // 0x00750b04    80e201
                         cmp                dl, 0x01                                       // 0x00750b07    80fa01
                         {disp8} mov        word ptr [esi + 0x58], cx                      // 0x00750b0a    66894e58
                         pop                edi                                            // 0x00750b0e    5f
                         {disp8} jne        _jmp_addr_0x00750b30                           // 0x00750b0f    751f
                         push               0xe                                            // 0x00750b11    6a0e
                         mov.s              ecx, esi                                       // 0x00750b13    8bce
                         call               dword ptr [eax + 0x8e8]                        // 0x00750b15    ff90e8080000
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                    // 0x00750b1b    8b4e28
                         {disp32} mov       dx, word ptr [ecx + 0x00000290]                // 0x00750b1e    668b9190020000
                         {disp8} mov        word ptr [esi + 0x58], dx                      // 0x00750b25    66895658
                         mov                eax, 0x00000001                                // 0x00750b29    b801000000
                         pop                esi                                            // 0x00750b2e    5e
                         ret                                                               // 0x00750b2f    c3
_jmp_addr_0x00750b30:    push               0x10                                           // 0x00750b30    6a10
                         mov.s              ecx, esi                                       // 0x00750b32    8bce
                         call               dword ptr [eax + 0x8e8]                        // 0x00750b34    ff90e8080000
                         mov                eax, 0x00000001                                // 0x00750b3a    b801000000
                         pop                esi                                            // 0x00750b3f    5e
                         ret                                                               // 0x00750b40    c3
                         nop                                                               // 0x00750b41    90
                         nop                                                               // 0x00750b42    90
                         nop                                                               // 0x00750b43    90
                         nop                                                               // 0x00750b44    90
                         nop                                                               // 0x00750b45    90
                         nop                                                               // 0x00750b46    90
                         nop                                                               // 0x00750b47    90
                         nop                                                               // 0x00750b48    90
                         nop                                                               // 0x00750b49    90
                         nop                                                               // 0x00750b4a    90
                         nop                                                               // 0x00750b4b    90
                         nop                                                               // 0x00750b4c    90
                         nop                                                               // 0x00750b4d    90
                         nop                                                               // 0x00750b4e    90
                         nop                                                               // 0x00750b4f    90

?TownDeleted@Villager@@QAEXXZ:
                         {disp32} mov       eax, dword ptr [_game]                         // 0x00750b50    a15c19d000
                         push               esi                                            // 0x00750b55    56
                         mov.s              esi, ecx                                       // 0x00750b56    8bf1
                         {disp32} lea       ecx, dword ptr [eax + 0x00205bfc]              // 0x00750b58    8d88fc5b2000
                         mov                eax, dword ptr [ecx]                           // 0x00750b5e    8b01
                         test               eax, eax                                       // 0x00750b60    85c0
                         {disp8} je         _jmp_addr_0x00750b78                           // 0x00750b62    7414
_jmp_addr_0x00750b64:    cmp.s              eax, esi                                       // 0x00750b64    3bc6
                         {disp8} je         _jmp_addr_0x00750b74                           // 0x00750b66    740c
                         {disp32} mov       eax, dword ptr [eax + 0x000000e4]              // 0x00750b68    8b80e4000000
                         test               eax, eax                                       // 0x00750b6e    85c0
                         {disp8} jne        _jmp_addr_0x00750b64                           // 0x00750b70    75f2
                         {disp8} jmp        _jmp_addr_0x00750b78                           // 0x00750b72    eb04
_jmp_addr_0x00750b74:    test               eax, eax                                       // 0x00750b74    85c0
                         {disp8} jne        _jmp_addr_0x00750b89                           // 0x00750b76    7511
_jmp_addr_0x00750b78:    mov                edx, dword ptr [ecx]                           // 0x00750b78    8b11
                         {disp32} mov       dword ptr [esi + 0x000000e4], edx              // 0x00750b7a    8996e4000000
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                    // 0x00750b80    8b4104
                         inc                eax                                            // 0x00750b83    40
                         mov                dword ptr [ecx], esi                           // 0x00750b84    8931
                         {disp8} mov        dword ptr [ecx + 0x04], eax                    // 0x00750b86    894104
_jmp_addr_0x00750b89:    mov                eax, dword ptr [esi]                           // 0x00750b89    8b06
                         push               0x00000082                                     // 0x00750b8b    6882000000
                         mov.s              ecx, esi                                       // 0x00750b90    8bce
                         call               dword ptr [eax + 0x8e8]                        // 0x00750b92    ff90e8080000
                         push               0x0                                            // 0x00750b98    6a00
                         mov.s              ecx, esi                                       // 0x00750b9a    8bce
                         call               ?SetTown@Villager@@QAEXPAVTown@@@Z             // 0x00750b9c    e88f590000
                         pop                esi                                            // 0x00750ba1    5e
                         ret                                                               // 0x00750ba2    c3
                         nop                                                               // 0x00750ba3    90
                         nop                                                               // 0x00750ba4    90
                         nop                                                               // 0x00750ba5    90
                         nop                                                               // 0x00750ba6    90
                         nop                                                               // 0x00750ba7    90
                         nop                                                               // 0x00750ba8    90
                         nop                                                               // 0x00750ba9    90
                         nop                                                               // 0x00750baa    90
                         nop                                                               // 0x00750bab    90
                         nop                                                               // 0x00750bac    90
                         nop                                                               // 0x00750bad    90
                         nop                                                               // 0x00750bae    90
                         nop                                                               // 0x00750baf    90
?DebugText@Villager@@QAEXH@Z:
                         {disp32} mov       eax, dword ptr [data_bytes + 0x30dc38]         // 0x00750bb0    a1383ccd00
                         sub                esp, 0x000003d4                                // 0x00750bb5    81ecd4030000
                         test               eax, eax                                       // 0x00750bbb    85c0
                         push               esi                                            // 0x00750bbd    56
                         mov.s              esi, ecx                                       // 0x00750bbe    8bf1
                         {disp32} je        _jmp_addr_0x00750dcf                           // 0x00750bc0    0f8409020000
                         {disp32} mov       eax, dword ptr [esp + 0x000003dc]              // 0x00750bc6    8b8424dc030000
                         test               eax, eax                                       // 0x00750bcd    85c0
                         {disp32} jne       _jmp_addr_0x00750dcf                           // 0x00750bcf    0f85fa010000
                         mov                eax, dword ptr [esi]                           // 0x00750bd5    8b06
                         call               dword ptr [eax + 0xb04]                        // 0x00750bd7    ff90040b0000
                         cmp                al, -0x01                                      // 0x00750bdd    3cff
                         {disp8} mov        byte ptr [esp + 0x04], al                      // 0x00750bdf    88442404
                         {disp32} jae       _jmp_addr_0x00750c80                           // 0x00750be3    0f8397000000
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x00750be9    8b442404
                         and                eax, 0x000000ff                                // 0x00750bed    25ff000000
                         lea                ecx, dword ptr [eax + eax * 0x2]               // 0x00750bf2    8d0c40
                         shl                ecx, 3                                         // 0x00750bf5    c1e103
                         sub.s              ecx, eax                                       // 0x00750bf8    2bc8
                         lea                ecx, dword ptr [ecx + ecx * 0x2]               // 0x00750bfa    8d0c49
                         {disp32} lea       edx, dword ptr [ecx * 0x4 + 0x00db9ea0]        // 0x00750bfd    8d148da09edb00
                         push               edx                                            // 0x00750c04    52
                         {disp32} lea       eax, dword ptr [esp + 0x00000214]              // 0x00750c05    8d842414020000
                         push               0x009c8c40                                     // 0x00750c0c    68408c9c00
                         push               eax                                            // 0x00750c11    50
                         call               _sprintf                                       // 0x00750c12    e8bb4b0700
                         mov                eax, dword ptr [esi]                           // 0x00750c17    8b06
                         xor.s              ecx, ecx                                       // 0x00750c19    33c9
                         {disp32} mov       cx, word ptr [esi + 0x000000f6]                // 0x00750c1b    668b8ef6000000
                         xor.s              edx, edx                                       // 0x00750c22    33d2
                         {disp32} mov       dx, word ptr [esi + 0x000000f4]                // 0x00750c24    668b96f4000000
                         add                esp, 0x0c                                      // 0x00750c2b    83c40c
                         push               esi                                            // 0x00750c2e    56
                         push               ecx                                            // 0x00750c2f    51
                         mov.s              ecx, esi                                       // 0x00750c30    8bce
                         push               edx                                            // 0x00750c32    52
                         call               dword ptr [eax + 0x8d0]                        // 0x00750c33    ff90d0080000
                         movsx              ecx, word ptr [esi + 0x58]                     // 0x00750c39    0fbf4e58
                         push               eax                                            // 0x00750c3d    50
                         push               ecx                                            // 0x00750c3e    51
                         {disp32} lea       edx, dword ptr [esp + 0x00000224]              // 0x00750c3f    8d942424020000
                         push               edx                                            // 0x00750c46    52
                         mov.s              ecx, esi                                       // 0x00750c47    8bce
                         call               ?GetGameTurnLastChecked@Villager@@QAEHXZ       // 0x00750c49    e842faffff
                         push               eax                                            // 0x00750c4e    50
                         {disp32} fld       dword ptr [esi + 0x000000e8]                   // 0x00750c4f    d986e8000000
                         mov                eax, dword ptr [esi]                           // 0x00750c55    8b06
                         sub                esp, 0x08                                      // 0x00750c57    83ec08
                         mov.s              ecx, esi                                       // 0x00750c5a    8bce
                         fstp               qword ptr [esp]                                // 0x00750c5c    dd1c24
                         call               dword ptr [eax + 0x11c]                        // 0x00750c5f    ff901c010000
                         sub                esp, 0x08                                      // 0x00750c65    83ec08
                         fstp               qword ptr [esp]                                // 0x00750c68    dd1c24
                         {disp32} lea       ecx, dword ptr [esp + 0x00000174]              // 0x00750c6b    8d8c2474010000
                         push               0x00c23644                                     // 0x00750c72    684436c200
                         push               ecx                                            // 0x00750c77    51
                         call               _sprintf                                       // 0x00750c78    e8554b0700
                         add                esp, 0x34                                      // 0x00750c7d    83c434
_jmp_addr_0x00750c80:    {disp32} lea       edx, dword ptr [esp + 0x00000148]              // 0x00750c80    8d942448010000
                         push               edx                                            // 0x00750c87    52
                         push               0x00cd3b24                                     // 0x00750c88    68243bcd00
                         call               _jmp_addr_0x00511d80                           // 0x00750c8d    e8ee10dcff
                         mov                eax, dword ptr [esi]                           // 0x00750c92    8b06
                         add                esp, 0x08                                      // 0x00750c94    83c408
                         mov.s              ecx, esi                                       // 0x00750c97    8bce
                         call               dword ptr [eax + 0x48]                         // 0x00750c99    ff5048
                         mov.s              edx, eax                                       // 0x00750c9c    8bd0
                         test               edx, edx                                       // 0x00750c9e    85d2
                         {disp32} je        _jmp_addr_0x00750dcf                           // 0x00750ca0    0f8429010000
                         {disp32} mov       eax, dword ptr [edx + 0x00000974]              // 0x00750ca6    8b8274090000
                         test               eax, eax                                       // 0x00750cac    85c0
                         {disp32} jbe       _jmp_addr_0x00750dcf                           // 0x00750cae    0f861b010000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x25d63c]         // 0x00750cb4    8b0d3c36c200
                         {disp32} mov       eax, dword ptr [data_bytes + 0x25d640]         // 0x00750cba    a14036c200
                         {disp8} mov        dword ptr [esp + 0x08], ecx                    // 0x00750cbf    894c2408
                         {disp8} mov        dword ptr [esp + 0x0c], eax                    // 0x00750cc3    8944240c
                         push               edi                                            // 0x00750cc7    57
                         xor.s              eax, eax                                       // 0x00750cc8    33c0
                         mov                ecx, 0x0000000e                                // 0x00750cca    b90e000000
                         {disp8} lea        edi, dword ptr [esp + 0x14]                    // 0x00750ccf    8d7c2414
                         rep stosd                                                         // 0x00750cd3    f3ab
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x25d634]         // 0x00750cd5    8b0d3436c200
                         {disp32} mov       ax, word ptr [data_bytes + 0x25d638]           // 0x00750cdb    66a13836c200
                         {disp8} mov        dword ptr [esp + 0x4c], ecx                    // 0x00750ce1    894c244c
                         {disp32} mov       cl, byte ptr [data_bytes + 0x25d63a]           // 0x00750ce5    8a0d3a36c200
                         {disp8} mov        word ptr [esp + 0x50], ax                      // 0x00750ceb    6689442450
                         {disp8} mov        byte ptr [esp + 0x52], cl                      // 0x00750cf0    884c2452
                         xor.s              eax, eax                                       // 0x00750cf4    33c0
                         mov                ecx, 0x0000000e                                // 0x00750cf6    b90e000000
                         {disp8} lea        edi, dword ptr [esp + 0x53]                    // 0x00750cfb    8d7c2453
                         rep stosd                                                         // 0x00750cff    f3ab
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x25d62c]         // 0x00750d01    8b0d2c36c200
                         stosb                                                             // 0x00750d07    aa
                         {disp32} mov       eax, dword ptr [data_bytes + 0x25d628]         // 0x00750d08    a12836c200
                         {disp32} mov       dword ptr [esp + 0x0000008c], eax              // 0x00750d0d    8984248c000000
                         {disp32} mov       ax, word ptr [data_bytes + 0x25d630]           // 0x00750d14    66a13036c200
                         {disp32} mov       dword ptr [esp + 0x00000090], ecx              // 0x00750d1a    898c2490000000
                         {disp32} mov       word ptr [esp + 0x00000094], ax                // 0x00750d21    6689842494000000
                         xor.s              eax, eax                                       // 0x00750d29    33c0
                         mov                ecx, 0x0000000d                                // 0x00750d2b    b90d000000
                         {disp32} lea       edi, dword ptr [esp + 0x00000096]              // 0x00750d30    8dbc2496000000
                         rep stosd                                                         // 0x00750d37    f3ab
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x25d620]         // 0x00750d39    8b0d2036c200
                         stosw                                                             // 0x00750d3f    66ab
                         {disp32} mov       al, byte ptr [data_bytes + 0x25d624]           // 0x00750d41    a02436c200
                         {disp32} mov       dword ptr [esp + 0x000000cc], ecx              // 0x00750d46    898c24cc000000
                         {disp32} mov       byte ptr [esp + 0x000000d0], al                // 0x00750d4d    888424d0000000
                         xor.s              eax, eax                                       // 0x00750d54    33c0
                         mov                ecx, 0x0000000e                                // 0x00750d56    b90e000000
                         {disp32} lea       edi, dword ptr [esp + 0x000000d1]              // 0x00750d5b    8dbc24d1000000
                         rep stosd                                                         // 0x00750d62    f3ab
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x25d618]         // 0x00750d64    8b0d1836c200
                         stosw                                                             // 0x00750d6a    66ab
                         stosb                                                             // 0x00750d6c    aa
                         {disp32} mov       eax, dword ptr [data_bytes + 0x25d61c]         // 0x00750d6d    a11c36c200
                         {disp32} mov       dword ptr [esp + 0x0000010c], ecx              // 0x00750d72    898c240c010000
                         {disp32} mov       dword ptr [esp + 0x00000110], eax              // 0x00750d79    89842410010000
                         xor.s              eax, eax                                       // 0x00750d80    33c0
                         mov                ecx, 0x0000000e                                // 0x00750d82    b90e000000
                         {disp32} lea       edi, dword ptr [esp + 0x00000114]              // 0x00750d87    8dbc2414010000
                         rep stosd                                                         // 0x00750d8e    f3ab
                         {disp32} mov       ecx, dword ptr [edx + 0x00000970]              // 0x00750d90    8b8a70090000
                         {disp8} mov        edx, dword ptr [ecx + 0x04]                    // 0x00750d96    8b5104
                         {disp8} mov        eax, dword ptr [edx + 0x14]                    // 0x00750d99    8b4214
                         shl                eax, 6                                         // 0x00750d9c    c1e006
                         {disp8} lea        ecx, dword ptr [esp + eax * 0x1 + 0x0c]        // 0x00750d9f    8d4c040c
                         push               ecx                                            // 0x00750da3    51
                         {disp32} lea       edx, dword ptr [esp + 0x000002e0]              // 0x00750da4    8d9424e0020000
                         push               0x00c235fc                                     // 0x00750dab    68fc35c200
                         push               edx                                            // 0x00750db0    52
                         call               _sprintf                                       // 0x00750db1    e81c4a0700
                         add                esp, 0x0c                                      // 0x00750db6    83c40c
                         {disp32} lea       eax, dword ptr [esp + 0x000002dc]              // 0x00750db9    8d8424dc020000
                         push               eax                                            // 0x00750dc0    50
                         push               0x00cd3b24                                     // 0x00750dc1    68243bcd00
                         call               _jmp_addr_0x00511d80                           // 0x00750dc6    e8b50fdcff
                         add                esp, 0x08                                      // 0x00750dcb    83c408
                         pop                edi                                            // 0x00750dce    5f
_jmp_addr_0x00750dcf:    pop                esi                                            // 0x00750dcf    5e
                         add                esp, 0x000003d4                                // 0x00750dd0    81c4d4030000
                         ret                0x0004                                         // 0x00750dd6    c20400
                         nop                                                               // 0x00750dd9    90
                         nop                                                               // 0x00750dda    90
                         nop                                                               // 0x00750ddb    90
                         nop                                                               // 0x00750ddc    90
                         nop                                                               // 0x00750ddd    90
                         nop                                                               // 0x00750dde    90
                         nop                                                               // 0x00750ddf    90

?SetAbode@Villager@@QAEXPAVAbode@@@Z:
                         push               esi                                            // 0x00750de0    56
                         push               edi                                            // 0x00750de1    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                    // 0x00750de2    8b7c240c
                         mov.s              esi, ecx                                       // 0x00750de6    8bf1
                         push               0x0                                            // 0x00750de8    6a00
                         {disp32} mov       dword ptr [esi + 0x00000128], edi              // 0x00750dea    89be28010000
                         call               ?SetTown@Villager@@QAEXPAVTown@@@Z             // 0x00750df0    e83b570000
                         test               edi, edi                                       // 0x00750df5    85ff
                         {disp8} je         _jmp_addr_0x00750e08                           // 0x00750df7    740f
                         mov                eax, dword ptr [edi]                           // 0x00750df9    8b07
                         mov.s              ecx, edi                                       // 0x00750dfb    8bcf
                         call               dword ptr [eax + 0x48]                         // 0x00750dfd    ff5048
                         push               eax                                            // 0x00750e00    50
                         mov.s              ecx, esi                                       // 0x00750e01    8bce
                         call               ?SetTown@Villager@@QAEXPAVTown@@@Z             // 0x00750e03    e828570000
_jmp_addr_0x00750e08:    pop                edi                                            // 0x00750e08    5f
                         pop                esi                                            // 0x00750e09    5e
                         ret                0x0004                                         // 0x00750e0a    c20400
                         nop                                                               // 0x00750e0d    90
                         nop                                                               // 0x00750e0e    90
                         nop                                                               // 0x00750e0f    90
?GetRandomLookAhead@Villager@@QAE_NPAUMapCoords@@M@Z:
                         {disp8} fld        dword ptr [esp + 0x08]                         // 0x00750e10    d9442408
                         push               ebx                                            // 0x00750e14    53
                         {disp32} fcomp     dword ptr [_rdata_float0p0]                    // 0x00750e15    d81d98a38a00
                         push               esi                                            // 0x00750e1b    56
                         push               edi                                            // 0x00750e1c    57
                         mov.s              esi, ecx                                       // 0x00750e1d    8bf1
                         fnstsw             ax                                             // 0x00750e1f    dfe0
                         test               ah, 0x40                                       // 0x00750e21    f6c440
                         {disp8} je         _jmp_addr_0x00750e4c                           // 0x00750e24    7426
                         {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x00750e26    8b4628
                         {disp32} mov       eax, dword ptr [eax + 0x000002a4]              // 0x00750e29    8b80a4020000
                         push               0x000003f1                                     // 0x00750e2f    68f1030000
                         push               0x00c235dc                                     // 0x00750e34    68dc35c200
                         push               eax                                            // 0x00750e39    50
                         call               ?GameFloatRand@GRand@@SAMM@Z                   // 0x00750e3a    e8f1d6f8ff
                         {disp32} fadd      dword ptr [_rdata_float1p0]                    // 0x00750e3f    d80590a38a00
                         add                esp, 0x0c                                      // 0x00750e45    83c40c
                         {disp8} fstp       dword ptr [esp + 0x14]                         // 0x00750e48    d95c2414
_jmp_addr_0x00750e4c:    {disp8} mov        di, word ptr [esi + 0x5c]                      // 0x00750e4c    668b7e5c
                         push               0x000003f4                                     // 0x00750e50    68f4030000
                         push               0x00c235dc                                     // 0x00750e55    68dc35c200
                         push               0x00000200                                     // 0x00750e5a    6800020000
                         call               ?GameRand@GRand@@SAHJ@Z                        // 0x00750e5f    e8acd6f8ff
                         {disp8} mov        ebx, dword ptr [esp + 0x20]                    // 0x00750e64    8b5c2420
                         add                esi, 0x14                                      // 0x00750e68    83c614
                         {disp32} lea       edi, dword ptr [eax + edi * 0x1 + -0x00000100] // 0x00750e6b    8dbc3800ffffff
                         mov.s              ecx, esi                                       // 0x00750e72    8bce
                         mov                eax, dword ptr [ecx]                           // 0x00750e74    8b01
                         {disp8} mov        esi, dword ptr [esp + 0x1c]                    // 0x00750e76    8b74241c
                         mov.s              edx, esi                                       // 0x00750e7a    8bd6
                         mov                dword ptr [edx], eax                           // 0x00750e7c    8902
                         {disp8} mov        eax, dword ptr [ecx + 0x04]                    // 0x00750e7e    8b4104
                         {disp8} mov        dword ptr [edx + 0x04], eax                    // 0x00750e81    894204
                         {disp8} mov        ecx, dword ptr [ecx + 0x08]                    // 0x00750e84    8b4908
                         and                edi, 0x000007ff                                // 0x00750e87    81e7ff070000
                         push               ebx                                            // 0x00750e8d    53
                         push               edi                                            // 0x00750e8e    57
                         {disp8} mov        dword ptr [edx + 0x08], ecx                    // 0x00750e8f    894a08
                         call               ?GetXByAngleMetersDistance@GUtils@@SAXGM@Z     // 0x00750e92    e889c5ffff
                         mov                edx, dword ptr [esi]                           // 0x00750e97    8b16
                         add.s              edx, eax                                       // 0x00750e99    03d0
                         push               ebx                                            // 0x00750e9b    53
                         push               edi                                            // 0x00750e9c    57
                         mov                dword ptr [esi], edx                           // 0x00750e9d    8916
                         call               ?GetXByAngleMetersDistance@GUtils@@SAXGM@Z     // 0x00750e9f    e87cc5ffff
                         {disp8} mov        edi, dword ptr [esi + 0x04]                    // 0x00750ea4    8b7e04
                         add.s              edi, eax                                       // 0x00750ea7    03f8
                         add                esp, 0x1c                                      // 0x00750ea9    83c41c
                         mov.s              ecx, esi                                       // 0x00750eac    8bce
                         {disp8} mov        dword ptr [esi + 0x04], edi                    // 0x00750eae    897e04
                         call               ?InBounds@MapCoords@@QBEIXZ                    // 0x00750eb1    e80a34ebff
                         neg                eax                                            // 0x00750eb6    f7d8
                         pop                edi                                            // 0x00750eb8    5f
                         sbb.s              eax, eax                                       // 0x00750eb9    1bc0
                         pop                esi                                            // 0x00750ebb    5e
                         neg                eax                                            // 0x00750ebc    f7d8
                         pop                ebx                                            // 0x00750ebe    5b
                         ret                0x0008                                         // 0x00750ebf    c20800
                         nop                                                               // 0x00750ec2    90
                         nop                                                               // 0x00750ec3    90
                         nop                                                               // 0x00750ec4    90
                         nop                                                               // 0x00750ec5    90
                         nop                                                               // 0x00750ec6    90
                         nop                                                               // 0x00750ec7    90
                         nop                                                               // 0x00750ec8    90
                         nop                                                               // 0x00750ec9    90
                         nop                                                               // 0x00750eca    90
                         nop                                                               // 0x00750ecb    90
                         nop                                                               // 0x00750ecc    90
                         nop                                                               // 0x00750ecd    90
                         nop                                                               // 0x00750ece    90
                         nop                                                               // 0x00750ecf    90
?SetSpeed@Villager@@QAEXJH@Z:    {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x00750ed0    8b442408
                         {disp32} fld       dword ptr [_rdata_float1p0]                    // 0x00750ed4    d90590a38a00
                         sub                esp, 0x08                                      // 0x00750eda    83ec08
                         test               eax, eax                                       // 0x00750edd    85c0
                         push               esi                                            // 0x00750edf    56
                         push               edi                                            // 0x00750ee0    57
                         mov.s              esi, ecx                                       // 0x00750ee1    8bf1
                         {disp32} je        _jmp_addr_0x00751014                           // 0x00750ee3    0f842b010000
                         {disp8} mov        ecx, dword ptr [esi + 0x3c]                    // 0x00750ee9    8b4e3c
                         fstp               st(0)                                          // 0x00750eec    ddd8
                         lea                eax, dword ptr [ecx + ecx * 0x2]               // 0x00750eee    8d0449
                         shl                eax, 4                                         // 0x00750ef1    c1e004
                         sub.s              eax, ecx                                       // 0x00750ef4    2bc1
                         cdq                                                               // 0x00750ef6    99
                         mov                ecx, 0x0000001f                                // 0x00750ef7    b91f000000
                         idiv               ecx                                            // 0x00750efc    f7f9
                         {disp8} mov        edi, dword ptr [esi + 0x28]                    // 0x00750efe    8b7e28
                         mov.s              ecx, esi                                       // 0x00750f01    8bce
                         sub                edx, 0x10                                      // 0x00750f03    83ea10
                         {disp8} mov        dword ptr [esp + 0x18], edx                    // 0x00750f06    89542418
                         {disp8} fild       dword ptr [esp + 0x18]                         // 0x00750f0a    db442418
                         mov                edx, dword ptr [esi]                           // 0x00750f0e    8b16
                         {disp32} fmul      dword ptr [rdata_bytes + 0x1bb10]              // 0x00750f10    d80d104b8c00
                         {disp32} fadd      dword ptr [_rdata_float1p0]                    // 0x00750f16    d80590a38a00
                         {disp8} fstp       dword ptr [esp + 0x18]                         // 0x00750f1c    d95c2418
                         call               dword ptr [edx + 0x8d0]                        // 0x00750f20    ff92d0080000
                         cmp                eax, dword ptr [edi + 0x00000138]              // 0x00750f26    3b8738010000
                         {disp8} mov        edi, dword ptr [esi + 0x28]                    // 0x00750f2c    8b7e28
                         {disp8} jae        _jmp_addr_0x00750f7d                           // 0x00750f2f    734c
                         mov                eax, dword ptr [esi]                           // 0x00750f31    8b06
                         mov.s              ecx, esi                                       // 0x00750f33    8bce
                         call               dword ptr [eax + 0x8d0]                        // 0x00750f35    ff90d0080000
                         {disp32} mov       ecx, dword ptr [edi + 0x00000138]              // 0x00750f3b    8b8f38010000
                         sub.s              ecx, eax                                       // 0x00750f41    2bc8
                         {disp8} mov        dword ptr [esp + 0x08], ecx                    // 0x00750f43    894c2408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000             // 0x00750f47    c744240c00000000
                         {disp8} fild       qword ptr [esp + 0x08]                         // 0x00750f4f    df6c2408
                         {disp32} fmul      dword ptr [_rdata_float0p2]                    // 0x00750f53    d80daca38a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]               // 0x00750f59    d80d04c48a00
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1ea44]              // 0x00750f5f    d815447a8c00
                         fnstsw             ax                                             // 0x00750f65    dfe0
                         test               ah, 0x01                                       // 0x00750f67    f6c401
                         {disp8} jne        _jmp_addr_0x00750f74                           // 0x00750f6a    7508
                         fstp               st(0)                                          // 0x00750f6c    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1ea44]              // 0x00750f6e    d905447a8c00
_jmp_addr_0x00750f74:    {disp8} fsubr      dword ptr [esp + 0x18]                         // 0x00750f74    d86c2418
                         {disp32} jmp       _jmp_addr_0x00751014                           // 0x00750f78    e997000000
_jmp_addr_0x00750f7d:    mov                edx, dword ptr [esi]                           // 0x00750f7d    8b16
                         mov.s              ecx, esi                                       // 0x00750f7f    8bce
                         call               dword ptr [edx + 0x8d0]                        // 0x00750f81    ff92d0080000
                         cmp                eax, dword ptr [edi + 0x0000013c]              // 0x00750f87    3b873c010000
                         {disp8} jbe        _jmp_addr_0x00750fd9                           // 0x00750f8d    764a
                         mov                eax, dword ptr [esi]                           // 0x00750f8f    8b06
                         {disp8} mov        edi, dword ptr [esi + 0x28]                    // 0x00750f91    8b7e28
                         mov.s              ecx, esi                                       // 0x00750f94    8bce
                         call               dword ptr [eax + 0x8d0]                        // 0x00750f96    ff90d0080000
                         sub                eax, dword ptr [edi + 0x0000013c]              // 0x00750f9c    2b873c010000
                         {disp8} mov        dword ptr [esp + 0x08], eax                    // 0x00750fa2    89442408
                         {disp8} mov        dword ptr [esp + 0x0c], 0x00000000             // 0x00750fa6    c744240c00000000
                         {disp8} fild       qword ptr [esp + 0x08]                         // 0x00750fae    df6c2408
                         {disp32} fmul      dword ptr [_rdata_float0p2]                    // 0x00750fb2    d80daca38a00
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]               // 0x00750fb8    d80d04c48a00
                         {disp32} fcom      dword ptr [rdata_bytes + 0x1ea44]              // 0x00750fbe    d815447a8c00
                         fnstsw             ax                                             // 0x00750fc4    dfe0
                         test               ah, 0x01                                       // 0x00750fc6    f6c401
                         {disp8} jne        _jmp_addr_0x00750f74                           // 0x00750fc9    75a9
                         fstp               st(0)                                          // 0x00750fcb    ddd8
                         {disp32} fld       dword ptr [rdata_bytes + 0x1ea44]              // 0x00750fcd    d905447a8c00
                         {disp8} fsubr      dword ptr [esp + 0x18]                         // 0x00750fd3    d86c2418
                         {disp8} jmp        _jmp_addr_0x00751014                           // 0x00750fd7    eb3b
_jmp_addr_0x00750fd9:    mov.s              ecx, esi                                       // 0x00750fd9    8bce
                         call               ?GetDesireForFood@Villager@@QAEMXZ             // 0x00750fdb    e870ab0000
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]               // 0x00750fe0    d80d04c48a00
                         mov                edx, dword ptr [esi]                           // 0x00750fe6    8b16
                         mov.s              ecx, esi                                       // 0x00750fe8    8bce
                         {disp8} fsubr      dword ptr [esp + 0x18]                         // 0x00750fea    d86c2418
                         {disp8} fstp       dword ptr [esp + 0x18]                         // 0x00750fee    d95c2418
                         call               dword ptr [edx + 0x11c]                        // 0x00750ff2    ff921c010000
                         {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x00750ff8    8b4628
                         {disp32} fmul      dword ptr [rdata_bytes + 0x3404]               // 0x00750ffb    d80d04c48a00
                         cmp                dword ptr [eax + 0x000001f8], 0x01             // 0x00751001    83b8f801000001
                         {disp8} fsubr      dword ptr [esp + 0x18]                         // 0x00751008    d86c2418
                         {disp8} jne        _jmp_addr_0x00751014                           // 0x0075100c    7506
                         {disp32} fsub      dword ptr [__real@3e4ccccd]                    // 0x0075100e    d82544b28a00
_jmp_addr_0x00751014:    {disp8} fild       dword ptr [esp + 0x14]                         // 0x00751014    db442414
                         fmul               st, st(1)                                      // 0x00751018    d8c9
                         call               _jmp_addr_0x007a1400                           // 0x0075101a    e8e1030500
                         fstp               st(0)                                          // 0x0075101f    ddd8
                         push               eax                                            // 0x00751021    50
                         mov.s              ecx, esi                                       // 0x00751022    8bce
                         call               ?SetSpeed@MobileWallHug@@UAEXH@Z               // 0x00751024    e827ecebff
                         pop                edi                                            // 0x00751029    5f
                         pop                esi                                            // 0x0075102a    5e
                         add                esp, 0x08                                      // 0x0075102b    83c408
                         ret                0x0008                                         // 0x0075102e    c20800
                         nop                                                               // 0x00751031    90
                         nop                                                               // 0x00751032    90
                         nop                                                               // 0x00751033    90
                         nop                                                               // 0x00751034    90
                         nop                                                               // 0x00751035    90
                         nop                                                               // 0x00751036    90
                         nop                                                               // 0x00751037    90
                         nop                                                               // 0x00751038    90
                         nop                                                               // 0x00751039    90
                         nop                                                               // 0x0075103a    90
                         nop                                                               // 0x0075103b    90
                         nop                                                               // 0x0075103c    90
                         nop                                                               // 0x0075103d    90
                         nop                                                               // 0x0075103e    90
                         nop                                                               // 0x0075103f    90
?Birthday@Villager@@UAEXXZ:
                         ret                                                               // 0x00751040    c3
                         nop                                                               // 0x00751041    90
                         nop                                                               // 0x00751042    90
                         nop                                                               // 0x00751043    90
                         nop                                                               // 0x00751044    90
                         nop                                                               // 0x00751045    90
                         nop                                                               // 0x00751046    90
                         nop                                                               // 0x00751047    90
                         nop                                                               // 0x00751048    90
                         nop                                                               // 0x00751049    90
                         nop                                                               // 0x0075104a    90
                         nop                                                               // 0x0075104b    90
                         nop                                                               // 0x0075104c    90
                         nop                                                               // 0x0075104d    90
                         nop                                                               // 0x0075104e    90
                         nop                                                               // 0x0075104f    90

?CheckChildGrownUp@Villager@@QAEHXZ:
                         push               esi                                            // 0x00751050    56
                         mov.s              esi, ecx                                       // 0x00751051    8bf1
                         mov                eax, dword ptr [esi]                           // 0x00751053    8b06
                         push               edi                                            // 0x00751055    57
                         {disp8} mov        edi, dword ptr [esi + 0x28]                    // 0x00751056    8b7e28
                         call               dword ptr [eax + 0x8d0]                        // 0x00751059    ff90d0080000
                         cmp                eax, dword ptr [edi + 0x00000138]              // 0x0075105f    3b8738010000
                         .byte              0x72, 0x6f// {disp8} jb _jmp_addr_0x007510d6   // 0x00751065    726f
                         .byte              0x66, 0x81, 0xa6, 0xe0, 0x0, 0x0, 0x0, 0xf7, 0xff// and word ptr [esi + 0x000000e0], -0x0009 // 0x00751067    6681a6e0000000f7ff
                         {disp8} mov        ecx, dword ptr [esi + 0x28]                    // 0x00751070    8b4e28
                         {disp32} mov       eax, dword ptr [ecx + 0x00000138]              // 0x00751073    8b8138010000
                         cmp                eax, 0x12                                      // 0x00751079    83f812
                         {disp8} jae        _jmp_addr_0x00751083                           // 0x0075107c    7305
                         mov                eax, 0x00000012                                // 0x0075107e    b812000000
_jmp_addr_0x00751083:    mov                edx, dword ptr [esi]                           // 0x00751083    8b16
                         push               eax                                            // 0x00751085    50
                         mov.s              ecx, esi                                       // 0x00751086    8bce
                         call               dword ptr [edx + 0x8d4]                        // 0x00751088    ff92d4080000
                         mov.s              ecx, esi                                       // 0x0075108e    8bce
                         call               ?GetAbode@Villager@@QAEPAVAbode@@XZ            // 0x00751090    e8cb100000
                         test               eax, eax                                       // 0x00751095    85c0
                         {disp8} je         _jmp_addr_0x007510b2                           // 0x00751097    7419
                         push               esi                                            // 0x00751099    56
                         mov.s              ecx, esi                                       // 0x0075109a    8bce
                         call               ?GetAbode@Villager@@QAEPAVAbode@@XZ            // 0x0075109c    e8bf100000
                         mov.s              ecx, eax                                       // 0x007510a1    8bc8
                         call               ?ChildToAdult@Abode@@QAEXPAVVillager@@@Z       // 0x007510a3    e8183ccbff
                         mov.s              ecx, esi                                       // 0x007510a8    8bce
                         call               ?ChildBecomesAdult@Villager@@QAE_NXZ           // 0x007510aa    e8616e0000
                         pop                edi                                            // 0x007510af    5f
                         pop                esi                                            // 0x007510b0    5e
                         ret                                                               // 0x007510b1    c3
_jmp_addr_0x007510b2:    mov                eax, dword ptr [esi]                           // 0x007510b2    8b06
                         mov.s              ecx, esi                                       // 0x007510b4    8bce
                         call               dword ptr [eax + 0x48]                         // 0x007510b6    ff5048
                         test               eax, eax                                       // 0x007510b9    85c0
                         {disp8} je         _jmp_addr_0x007510cc                           // 0x007510bb    740f
                         mov                edx, dword ptr [esi]                           // 0x007510bd    8b16
                         push               esi                                            // 0x007510bf    56
                         mov.s              ecx, esi                                       // 0x007510c0    8bce
                         call               dword ptr [edx + 0x48]                         // 0x007510c2    ff5248
                         mov.s              ecx, eax                                       // 0x007510c5    8bc8
                         call               ?ChildToAdult@Town@@QAEXPAVVillager@@@Z        // 0x007510c7    e8849efeff
_jmp_addr_0x007510cc:    mov.s              ecx, esi                                       // 0x007510cc    8bce
                         call               ?ChildBecomesAdult@Villager@@QAE_NXZ           // 0x007510ce    e83d6e0000
                         pop                edi                                            // 0x007510d3    5f
                         pop                esi                                            // 0x007510d4    5e
                         ret                                                               // 0x007510d5    c3
_jmp_addr_0x007510d6:    {disp32} mov       edx, dword ptr [_game]                         // 0x007510d6    8b155c19d000
                         {disp32} mov       ecx, dword ptr [data_bytes + 0x33ba04]         // 0x007510dc    8b0d041ad000
                         {disp32} mov       eax, dword ptr [edx + 0x00205a40]              // 0x007510e2    8b82405a2000
                         shr                ecx, 2                                         // 0x007510e8    c1e902
                         xor.s              edx, edx                                       // 0x007510eb    33d2
                         div                ecx                                            // 0x007510ed    f7f1
                         test               edx, edx                                       // 0x007510ef    85d2
                         {disp8} jne        _jmp_addr_0x00751105                           // 0x007510f1    7512
                         mov                eax, dword ptr [esi]                           // 0x007510f3    8b06
                         mov.s              ecx, esi                                       // 0x007510f5    8bce
                         call               dword ptr [eax + 0x8d0]                        // 0x007510f7    ff90d0080000
                         push               eax                                            // 0x007510fd    50
                         mov.s              ecx, esi                                       // 0x007510fe    8bce
                         call               ?SetScaleForAge@Villager@@QAEXK@Z              // 0x00751100    e88b190000
_jmp_addr_0x00751105:    pop                edi                                            // 0x00751105    5f
                         pop                esi                                            // 0x00751106    5e
                         ret                                                               // 0x00751107    c3
                         nop                                                               // 0x00751108    90
                         nop                                                               // 0x00751109    90
                         nop                                                               // 0x0075110a    90
                         nop                                                               // 0x0075110b    90
                         nop                                                               // 0x0075110c    90
                         nop                                                               // 0x0075110d    90
                         nop                                                               // 0x0075110e    90
                         nop                                                               // 0x0075110f    90
?IsAMother@Villager@@QAE_NXZ:
                              {disp8} mov        eax, dword ptr [ecx + 0x28]                    // 0x00751110    8b4128
                         {disp32} mov       edx, dword ptr [eax + 0x000001f8]              // 0x00751113    8b90f8010000
                         xor.s              ecx, ecx                                       // 0x00751119    33c9
                         cmp                edx, 0x01                                      // 0x0075111b    83fa01
                         sete               cl                                             // 0x0075111e    0f94c1
                         mov.s              eax, ecx                                       // 0x00751121    8bc1
                         ret                                                               // 0x00751123    c3
                         nop                                                               // 0x00751124    90
                         nop                                                               // 0x00751125    90
                         nop                                                               // 0x00751126    90
                         nop                                                               // 0x00751127    90
                         nop                                                               // 0x00751128    90
                         nop                                                               // 0x00751129    90
                         nop                                                               // 0x0075112a    90
                         nop                                                               // 0x0075112b    90
                         nop                                                               // 0x0075112c    90
                         nop                                                               // 0x0075112d    90
                         nop                                                               // 0x0075112e    90
                         nop                                                               // 0x0075112f    90
                         sub                esp, 0x14                                      // 0x00751130    83ec14
                         xor.s              eax, eax                                       // 0x00751133    33c0
                         xor.s              ecx, ecx                                       // 0x00751135    33c9
                         {disp8} mov        dword ptr [esp + 0x00], ecx                    // 0x00751137    894c2400
                         {disp8} mov        dword ptr [esp + 0x04], ecx                    // 0x0075113b    894c2404
                         {disp8} mov        dword ptr [esp + 0x08], ecx                    // 0x0075113f    894c2408
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                    // 0x00751143    894c240c
                         {disp8} mov        word ptr [esp + 0x10], cx                      // 0x00751147    66894c2410
                         mov                ecx, 0x00da6ddc                                // 0x0075114c    b9dc6dda00
_jmp_addr_0x00751151:    mov                edx, dword ptr [ecx]                           // 0x00751151    8b11
                         {disp8} inc        word ptr [esp + edx * 0x2 + 0x00]              // 0x00751153    66ff445400
                         {disp8} lea        edx, dword ptr [esp + edx * 0x2 + 0x00]        // 0x00751158    8d545400
                         add                ecx, 0x000003a4                                // 0x0075115c    81c1a4030000
                         {disp32} lea       edx, dword ptr [ecx + -0x000001f4]             // 0x00751162    8d910cfeffff
                         cmp                edx, 0x00db9db8                                // 0x00751168    81fab89ddb00
                         .byte              0x72, 0xe1// {disp8} jb _jmp_addr_0x00751151   // 0x0075116e    72e1
                         push               esi                                            // 0x00751170    56
                         {disp8} lea        edx, dword ptr [esp + 0x04]                    // 0x00751171    8d542404
                         mov                esi, 0x00000009                                // 0x00751175    be09000000
_jmp_addr_0x0075117a:    xor.s              ecx, ecx                                       // 0x0075117a    33c9
                         mov                cx, word ptr [edx]                             // 0x0075117c    668b0a
                         cmp.s              ecx, eax                                       // 0x0075117f    3bc8
                         {disp8} jbe        _jmp_addr_0x00751185                           // 0x00751181    7602
                         mov.s              eax, ecx                                       // 0x00751183    8bc1
_jmp_addr_0x00751185:    add                edx, 0x02                                      // 0x00751185    83c202
                         dec                esi                                            // 0x00751188    4e
                         {disp8} jne        _jmp_addr_0x0075117a                           // 0x00751189    75ef
                         pop                esi                                            // 0x0075118b    5e
                         add                esp, 0x14                                      // 0x0075118c    83c414
                         ret                                                               // 0x0075118f    c3
?StartMoveToObject@Villager@@QAE_NPAVObject@@W4VILLAGER_STATES@@@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x00751190    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]                    // 0x00751194    8b542404
                         push               eax                                            // 0x00751198    50
                         push               edx                                            // 0x00751199    52
                         call               ?SetupMoveToObject@Living@@QAE_NPAVObject@@E@Z // 0x0075119a    e86116eaff
                         mov                eax, 0x00000001                                // 0x0075119f    b801000000
                         ret                0x0008                                         // 0x007511a4    c20800
                         nop                                                               // 0x007511a7    90
                         nop                                                               // 0x007511a8    90
                         nop                                                               // 0x007511a9    90
                         nop                                                               // 0x007511aa    90
                         nop                                                               // 0x007511ab    90
                         nop                                                               // 0x007511ac    90
                         nop                                                               // 0x007511ad    90
                         nop                                                               // 0x007511ae    90
                         nop                                                               // 0x007511af    90
?DropResource@Villager@@QAEGW4RESOURCE_TYPE@@G@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x007511b0    8b442404
                         cmp                eax, 0x01                                      // 0x007511b4    83f801
                         {disp8} jne        _jmp_addr_0x007511c6                           // 0x007511b7    750d
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x007511b9    8b442408
                         push               eax                                            // 0x007511bd    50
                         call               ?DropWood@Villager@@QAEGG@Z                    // 0x007511be    e87d000000
                         ret                0x0008                                         // 0x007511c3    c20800
_jmp_addr_0x007511c6:    test               eax, eax                                       // 0x007511c6    85c0
                         {disp8} jne        _jmp_addr_0x007511d7                           // 0x007511c8    750d
                         {disp8} mov        edx, dword ptr [esp + 0x08]                    // 0x007511ca    8b542408
                         push               edx                                            // 0x007511ce    52
                         call               ?DropFood@Villager@@QAEGG@Z                    // 0x007511cf    e80c000000
                         ret                0x0008                                         // 0x007511d4    c20800
_jmp_addr_0x007511d7:    xor.s              ax, ax                                         // 0x007511d7    6633c0
                         ret                0x0008                                         // 0x007511da    c20800
                         nop                                                               // 0x007511dd    90
                         nop                                                               // 0x007511de    90
                         nop                                                               // 0x007511df    90
?DropFood@Villager@@QAEGG@Z:
                         push               esi                                            // 0x007511e0    56
                         push               edi                                            // 0x007511e1    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                    // 0x007511e2    8b7c240c
                         test               di, di                                         // 0x007511e6    6685ff
                         mov.s              esi, ecx                                       // 0x007511e9    8bf1
                         {disp8} je         _jmp_addr_0x007511f9                           // 0x007511eb    740c
                         {disp32} mov       ax, word ptr [esi + 0x000000f4]                // 0x007511ed    668b86f4000000
                         cmp.s              di, ax                                         // 0x007511f4    663bf8
                         {disp8} jbe        _jmp_addr_0x00751204                           // 0x007511f7    760b
_jmp_addr_0x007511f9:    xor.s              eax, eax                                       // 0x007511f9    33c0
                         {disp32} mov       ax, word ptr [esi + 0x000000f4]                // 0x007511fb    668b86f4000000
                         mov.s              edi, eax                                       // 0x00751202    8bf8
_jmp_addr_0x00751204:    sub.s              eax, edi                                       // 0x00751204    2bc7
                         {disp32} mov       word ptr [esi + 0x000000f4], ax                // 0x00751206    668986f4000000
                         mov                eax, dword ptr [esi]                           // 0x0075120d    8b06
                         mov.s              ecx, esi                                       // 0x0075120f    8bce
                         call               dword ptr [eax + 0x48]                         // 0x00751211    ff5048
                         test               eax, eax                                       // 0x00751214    85c0
                         {disp8} je         _jmp_addr_0x00751238                           // 0x00751216    7420
                         mov                edx, dword ptr [esi]                           // 0x00751218    8b16
                         mov.s              ecx, esi                                       // 0x0075121a    8bce
                         call               dword ptr [edx + 0x48]                         // 0x0075121c    ff5248
                         add                eax, 0x00000708                                // 0x0075121f    0508070000
                         mov.s              ecx, edi                                       // 0x00751224    8bcf
                         and                ecx, 0x0000ffff                                // 0x00751226    81e1ffff0000
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                    // 0x0075122c    894c240c
                         {disp8} fild       dword ptr [esp + 0x0c]                         // 0x00751230    db44240c
                         fsubr              dword ptr [eax]                                // 0x00751234    d828
                         fstp               dword ptr [eax]                                // 0x00751236    d918
_jmp_addr_0x00751238:    mov.s              ax, di                                         // 0x00751238    668bc7
                         pop                edi                                            // 0x0075123b    5f
                         pop                esi                                            // 0x0075123c    5e
                         ret                0x0004                                         // 0x0075123d    c20400
?DropWood@Villager@@QAEGG@Z:
                         push               esi                                            // 0x00751240    56
                         push               edi                                            // 0x00751241    57
                         {disp8} mov        edi, dword ptr [esp + 0x0c]                    // 0x00751242    8b7c240c
                         test               di, di                                         // 0x00751246    6685ff
                         mov.s              esi, ecx                                       // 0x00751249    8bf1
                         {disp8} je         _jmp_addr_0x00751259                           // 0x0075124b    740c
                         {disp32} mov       ax, word ptr [esi + 0x000000f6]                // 0x0075124d    668b86f6000000
                         cmp.s              di, ax                                         // 0x00751254    663bf8
                         {disp8} jbe        _jmp_addr_0x00751264                           // 0x00751257    760b
_jmp_addr_0x00751259:    xor.s              eax, eax                                       // 0x00751259    33c0
                         {disp32} mov       ax, word ptr [esi + 0x000000f6]                // 0x0075125b    668b86f6000000
                         mov.s              edi, eax                                       // 0x00751262    8bf8
_jmp_addr_0x00751264:    sub.s              eax, edi                                       // 0x00751264    2bc7
                         {disp32} mov       word ptr [esi + 0x000000f6], ax                // 0x00751266    668986f6000000
                         mov                eax, dword ptr [esi]                           // 0x0075126d    8b06
                         mov.s              ecx, esi                                       // 0x0075126f    8bce
                         call               dword ptr [eax + 0x48]                         // 0x00751271    ff5048
                         test               eax, eax                                       // 0x00751274    85c0
                         {disp8} je         _jmp_addr_0x00751298                           // 0x00751276    7420
                         mov                edx, dword ptr [esi]                           // 0x00751278    8b16
                         mov.s              ecx, esi                                       // 0x0075127a    8bce
                         call               dword ptr [edx + 0x48]                         // 0x0075127c    ff5248
                         add                eax, 0x0000070c                                // 0x0075127f    050c070000
                         mov.s              ecx, edi                                       // 0x00751284    8bcf
                         and                ecx, 0x0000ffff                                // 0x00751286    81e1ffff0000
                         {disp8} mov        dword ptr [esp + 0x0c], ecx                    // 0x0075128c    894c240c
                         {disp8} fild       dword ptr [esp + 0x0c]                         // 0x00751290    db44240c
                         fsubr              dword ptr [eax]                                // 0x00751294    d828
                         fstp               dword ptr [eax]                                // 0x00751296    d918
_jmp_addr_0x00751298:    mov.s              ax, di                                         // 0x00751298    668bc7
                         pop                edi                                            // 0x0075129b    5f
                         pop                esi                                            // 0x0075129c    5e
                         ret                0x0004                                         // 0x0075129d    c20400
?IsEnoughFoodInStoragePitForDinner@Villager@@QAE_NXZ:
                         push               esi                                            // 0x007512a0    56
                         mov.s              esi, ecx                                       // 0x007512a1    8bf1
                         call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ  // 0x007512a3    e8680c0000
                         test               eax, eax                                       // 0x007512a8    85c0
                         {disp8} je         _jmp_addr_0x007512d5                           // 0x007512aa    7429
                         push               edi                                            // 0x007512ac    57
                         mov.s              ecx, esi                                       // 0x007512ad    8bce
                         call               ?GetStoragePit@Villager@@QAEPAVStoragePit@@XZ  // 0x007512af    e85c0c0000
                         mov                edx, dword ptr [eax]                           // 0x007512b4    8b10
                         push               0x0                                            // 0x007512b6    6a00
                         mov.s              ecx, eax                                       // 0x007512b8    8bc8
                         call               dword ptr [edx + 0x98]                         // 0x007512ba    ff9298000000
                         mov.s              ecx, esi                                       // 0x007512c0    8bce
                         mov.s              edi, eax                                       // 0x007512c2    8bf8
                         call               ?GetAmountOfFoodRequiredForMeal@Villager@@QAEIXZ                           // 0x007512c4    e837a90000
                         cmp.s              eax, edi                                       // 0x007512c9    3bc7
                         pop                edi                                            // 0x007512cb    5f
                         {disp8} ja         _jmp_addr_0x007512d5                           // 0x007512cc    7707
                         mov                eax, 0x00000001                                // 0x007512ce    b801000000
                         pop                esi                                            // 0x007512d3    5e
                         ret                                                               // 0x007512d4    c3
_jmp_addr_0x007512d5:    xor.s              eax, eax                                       // 0x007512d5    33c0
                         pop                esi                                            // 0x007512d7    5e
                         ret                                                               // 0x007512d8    c3
                         nop                                                               // 0x007512d9    90
                         nop                                                               // 0x007512da    90
                         nop                                                               // 0x007512db    90
                         nop                                                               // 0x007512dc    90
                         nop                                                               // 0x007512dd    90
                         nop                                                               // 0x007512de    90
                         nop                                                               // 0x007512df    90
?FindPotAroundToGoto@Villager@@QAEPAVPot@@W4RESOURCE_TYPE@@AAKH@Z:
                         sub                esp, 0x18                                      // 0x007512e0    83ec18
                         push               ebx                                            // 0x007512e3    53
                         {disp8} lea        ebx, dword ptr [ecx + 0x14]                    // 0x007512e4    8d5914
                         mov.s              eax, ebx                                       // 0x007512e7    8bc3
                         mov                ecx, dword ptr [eax]                           // 0x007512e9    8b08
                         {disp8} mov        edx, dword ptr [eax + 0x04]                    // 0x007512eb    8b5004
                         {disp8} mov        eax, dword ptr [eax + 0x08]                    // 0x007512ee    8b4008
                         push               ebp                                            // 0x007512f1    55
                         {disp8} mov        ebp, dword ptr [esp + 0x24]                    // 0x007512f2    8b6c2424
                         push               esi                                            // 0x007512f6    56
                         push               edi                                            // 0x007512f7    57
                         {disp8} mov        edi, dword ptr [esp + 0x30]                    // 0x007512f8    8b7c2430
                         {disp8} mov        dword ptr [esp + 0x24], eax                    // 0x007512fc    89442424
                         mov                eax, 0x00000001                                // 0x00751300    b801000000
                         {disp8} mov        dword ptr [esp + 0x1c], ecx                    // 0x00751305    894c241c
                         {disp8} mov        dword ptr [esp + 0x20], edx                    // 0x00751309    89542420
                         {disp8} mov        dword ptr [esp + 0x10], 0x00000000             // 0x0075130d    c744241000000000
                         mov                dword ptr [edi], 0xffffffff                    // 0x00751315    c707ffffffff
                         {disp8} mov        dword ptr [esp + 0x18], eax                    // 0x0075131b    89442418
                         {disp8} mov        dword ptr [esp + 0x14], eax                    // 0x0075131f    89442414
                         {disp8} mov        dword ptr [esp + 0x30], 0x00000009             // 0x00751323    c744243009000000
_jmp_addr_0x0075132b:    push               0x0                                            // 0x0075132b    6a00
                         push               0x009c8eb0                                     // 0x0075132d    68b08e9c00
                         push               0x009c7f50                                     // 0x00751332    68507f9c00
                         push               0x0                                            // 0x00751337    6a00
                         push               0x0                                            // 0x00751339    6a00
                         push               0x15                                           // 0x0075133b    6a15
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                    // 0x0075133d    8d4c2434
                         call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16// 0x00751341    e87a32ebff
                         push               eax                                            // 0x00751346    50
                         call               ___RTDynamicCast                               // 0x00751347    e8cd460700
                         mov.s              esi, eax                                       // 0x0075134c    8bf0
                         add                esp, 0x14                                      // 0x0075134e    83c414
                         test               esi, esi                                       // 0x00751351    85f6
                         {disp8} je         _jmp_addr_0x007513ba                           // 0x00751353    7465
_jmp_addr_0x00751355:    {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x00751355    8b4628
                         cmp                dword ptr [eax + 0x00000118], ebp              // 0x00751358    39a818010000
                         {disp8} je         _jmp_addr_0x00751365                           // 0x0075135e    7405
                         cmp                ebp, -0x02                                     // 0x00751360    83fdfe
                         {disp8} jne        _jmp_addr_0x00751391                           // 0x00751363    752c
_jmp_addr_0x00751365:    {disp8} mov        ecx, dword ptr [esp + 0x34]                    // 0x00751365    8b4c2434
                         test               ecx, ecx                                       // 0x00751369    85c9
                         {disp8} je         _jmp_addr_0x00751378                           // 0x0075136b    740b
                         {disp8} mov        ecx, dword ptr [esi + 0x70]                    // 0x0075136d    8b4e70
                         cmp                ecx, dword ptr [eax + 0x0000011c]              // 0x00751370    3b881c010000
                         {disp8} jae        _jmp_addr_0x00751391                           // 0x00751376    7319
_jmp_addr_0x00751378:    {disp8} lea        edx, dword ptr [esi + 0x14]                    // 0x00751378    8d5614
                         push               edx                                            // 0x0075137b    52
                         push               ebx                                            // 0x0075137c    53
                         call               ?FastDistance@GUtils@@SAHABUMapCoords@@0@Z     // 0x0075137d    e88ebaffff
                         mov                ecx, dword ptr [edi]                           // 0x00751382    8b0f
                         add                esp, 0x08                                      // 0x00751384    83c408
                         cmp.s              eax, ecx                                       // 0x00751387    3bc1
                         {disp8} jae        _jmp_addr_0x00751391                           // 0x00751389    7306
                         mov                dword ptr [edi], eax                           // 0x0075138b    8907
                         {disp8} mov        dword ptr [esp + 0x10], esi                    // 0x0075138d    89742410
_jmp_addr_0x00751391:    push               0x0                                            // 0x00751391    6a00
                         push               0x009c8eb0                                     // 0x00751393    68b08e9c00
                         push               0x009c7f50                                     // 0x00751398    68507f9c00
                         push               0x0                                            // 0x0075139d    6a00
                         push               esi                                            // 0x0075139f    56
                         push               0x15                                           // 0x007513a0    6a15
                         {disp8} lea        ecx, dword ptr [esp + 0x34]                    // 0x007513a2    8d4c2434
                         call               @FindType__9MapCoordsCF11OBJECT_TYPEP6Object@16// 0x007513a6    e81532ebff
                         push               eax                                            // 0x007513ab    50
                         call               ___RTDynamicCast                               // 0x007513ac    e868460700
                         mov.s              esi, eax                                       // 0x007513b1    8bf0
                         add                esp, 0x14                                      // 0x007513b3    83c414
                         test               esi, esi                                       // 0x007513b6    85f6
                         {disp8} jne        _jmp_addr_0x00751355                           // 0x007513b8    759b
_jmp_addr_0x007513ba:    {disp8} lea        eax, dword ptr [esp + 0x14]                    // 0x007513ba    8d442414
                         push               eax                                            // 0x007513be    50
                         {disp8} lea        ecx, dword ptr [esp + 0x1c]                    // 0x007513bf    8d4c241c
                         push               ecx                                            // 0x007513c3    51
                         call               ?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z         // 0x007513c4    e817c4ffff
                         add                esp, 0x08                                      // 0x007513c9    83c408
                         push               eax                                            // 0x007513cc    50
                         {disp8} lea        ecx, dword ptr [esp + 0x20]                    // 0x007513cd    8d4c2420
                         call               @__apl__9MapCoordsFRC9JustMapXZ@12             // 0x007513d1    e89a40ebff
                         dec                dword ptr [esp + 0x30]                         // 0x007513d6    ff4c2430
                         {disp32} jne       _jmp_addr_0x0075132b                           // 0x007513da    0f854bffffff
                         {disp8} mov        eax, dword ptr [esp + 0x10]                    // 0x007513e0    8b442410
                         pop                edi                                            // 0x007513e4    5f
                         pop                esi                                            // 0x007513e5    5e
                         pop                ebp                                            // 0x007513e6    5d
                         pop                ebx                                            // 0x007513e7    5b
                         add                esp, 0x18                                      // 0x007513e8    83c418
                         ret                0x000c                                         // 0x007513eb    c20c00
                         nop                                                               // 0x007513ee    90
                         nop                                                               // 0x007513ef    90
?PickupResource@Villager@@QAEXW4RESOURCE_TYPE@@FE@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x007513f0    8b442404
                         test               eax, eax                                       // 0x007513f4    85c0
                         push               esi                                            // 0x007513f6    56
                         push               edi                                            // 0x007513f7    57
                         {disp8} mov        edi, dword ptr [esp + 0x10]                    // 0x007513f8    8b7c2410
                         mov.s              esi, ecx                                       // 0x007513fc    8bf1
                         {disp8} jne        _jmp_addr_0x00751433                           // 0x007513fe    7533
                         mov                eax, dword ptr [esi]                           // 0x00751400    8b06
                         add                word ptr [esi + 0x000000f4], di                // 0x00751402    6601bef4000000
                         call               dword ptr [eax + 0x48]                         // 0x00751409    ff5048
                         test               eax, eax                                       // 0x0075140c    85c0
                         {disp8} je         _jmp_addr_0x00751487                           // 0x0075140e    7477
                         mov                edx, dword ptr [esi]                           // 0x00751410    8b16
                         mov.s              ecx, esi                                       // 0x00751412    8bce
                         call               dword ptr [edx + 0x48]                         // 0x00751414    ff5248
                         movsx              ecx, di                                        // 0x00751417    0fbfcf
                         {disp8} mov        dword ptr [esp + 0x14], ecx                    // 0x0075141a    894c2414
                         add                eax, 0x00000708                                // 0x0075141e    0508070000
                         {disp8} fild       dword ptr [esp + 0x14]                         // 0x00751423    db442414
                         fadd               dword ptr [eax]                                // 0x00751427    d800
                         fstp               dword ptr [eax]                                // 0x00751429    d918
                         mov.s              ax, di                                         // 0x0075142b    668bc7
                         pop                edi                                            // 0x0075142e    5f
                         pop                esi                                            // 0x0075142f    5e
                         ret                0x000c                                         // 0x00751430    c20c00
_jmp_addr_0x00751433:    mov                edx, dword ptr [esi]                           // 0x00751433    8b16
                         add                word ptr [esi + 0x000000f6], di                // 0x00751435    6601bef6000000
                         mov.s              ecx, esi                                       // 0x0075143c    8bce
                         call               dword ptr [edx + 0x48]                         // 0x0075143e    ff5248
                         test               eax, eax                                       // 0x00751441    85c0
                         {disp8} je         _jmp_addr_0x00751460                           // 0x00751443    741b
                         mov                eax, dword ptr [esi]                           // 0x00751445    8b06
                         mov.s              ecx, esi                                       // 0x00751447    8bce
                         call               dword ptr [eax + 0x48]                         // 0x00751449    ff5048
                         movsx              ecx, di                                        // 0x0075144c    0fbfcf
                         {disp8} mov        dword ptr [esp + 0x10], ecx                    // 0x0075144f    894c2410
                         add                eax, 0x0000070c                                // 0x00751453    050c070000
                         {disp8} fild       dword ptr [esp + 0x10]                         // 0x00751458    db442410
                         fadd               dword ptr [eax]                                // 0x0075145c    d800
                         fstp               dword ptr [eax]                                // 0x0075145e    d918
_jmp_addr_0x00751460:    {disp8} mov        dl, byte ptr [esp + 0x14]                      // 0x00751460    8a542414
                         and                dl, 0x03                                       // 0x00751464    80e203
                         xor.s              ax, ax                                         // 0x00751467    6633c0
                         xor.s              ecx, ecx                                       // 0x0075146a    33c9
                         {disp32} mov       cx, word ptr [esi + 0x000000e0]                // 0x0075146c    668b8ee0000000
                         mov.s              al, dl                                         // 0x00751473    8ac2
                         and                ecx, 0x00003fff                                // 0x00751475    81e1ff3f0000
                         shl                eax, 0xe                                       // 0x0075147b    c1e00e
                         or.s               eax, ecx                                       // 0x0075147e    0bc1
                         {disp32} mov       word ptr [esi + 0x000000e0], ax                // 0x00751480    668986e0000000
_jmp_addr_0x00751487:    mov.s              ax, di                                         // 0x00751487    668bc7
                         pop                edi                                            // 0x0075148a    5f
                         pop                esi                                            // 0x0075148b    5e
                         ret                0x000c                                         // 0x0075148c    c20c00
                         nop                                                               // 0x0075148f    90
?PickupFood@Villager@@QAEXF@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x00751490    8b442404
                         push               0x0                                            // 0x00751494    6a00
                         push               eax                                            // 0x00751496    50
                         push               0x0                                            // 0x00751497    6a00
                         call               ?PickupResource@Villager@@QAEXW4RESOURCE_TYPE@@FE@Z                           // 0x00751499    e852ffffff
                         ret                0x0004                                         // 0x0075149e    c20400
                         nop                                                               // 0x007514a1    90
                         nop                                                               // 0x007514a2    90
                         nop                                                               // 0x007514a3    90
                         nop                                                               // 0x007514a4    90
                         nop                                                               // 0x007514a5    90
                         nop                                                               // 0x007514a6    90
                         nop                                                               // 0x007514a7    90
                         nop                                                               // 0x007514a8    90
                         nop                                                               // 0x007514a9    90
                         nop                                                               // 0x007514aa    90
                         nop                                                               // 0x007514ab    90
                         nop                                                               // 0x007514ac    90
                         nop                                                               // 0x007514ad    90
                         nop                                                               // 0x007514ae    90
                         nop                                                               // 0x007514af    90
?PickupWood@Villager@@QAEXFE@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x08]                    // 0x007514b0    8b442408
                         {disp8} mov        edx, dword ptr [esp + 0x04]                    // 0x007514b4    8b542404
                         push               eax                                            // 0x007514b8    50
                         push               edx                                            // 0x007514b9    52
                         push               0x1                                            // 0x007514ba    6a01
                         call               ?PickupResource@Villager@@QAEXW4RESOURCE_TYPE@@FE@Z                           // 0x007514bc    e82fffffff
                         ret                0x0008                                         // 0x007514c1    c20800
                         nop                                                               // 0x007514c4    90
                         nop                                                               // 0x007514c5    90
                         nop                                                               // 0x007514c6    90
                         nop                                                               // 0x007514c7    90
                         nop                                                               // 0x007514c8    90
                         nop                                                               // 0x007514c9    90
                         nop                                                               // 0x007514ca    90
                         nop                                                               // 0x007514cb    90
                         nop                                                               // 0x007514cc    90
                         nop                                                               // 0x007514cd    90
                         nop                                                               // 0x007514ce    90
                         nop                                                               // 0x007514cf    90
?GetFoodCapacity@Villager@@QAEHXZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                    // 0x007514d0    8b4128
                         {disp32} mov       cx, word ptr [ecx + 0x000000f4]                // 0x007514d3    668b89f4000000
                         {disp32} mov       eax, dword ptr [eax + 0x00000264]              // 0x007514da    8b8064020000
                         sub.s              eax, ecx                                       // 0x007514e0    2bc1
                         ret                                                               // 0x007514e2    c3
                         nop                                                               // 0x007514e3    90
                         nop                                                               // 0x007514e4    90
                         nop                                                               // 0x007514e5    90
                         nop                                                               // 0x007514e6    90
                         nop                                                               // 0x007514e7    90
                         nop                                                               // 0x007514e8    90
                         nop                                                               // 0x007514e9    90
                         nop                                                               // 0x007514ea    90
                         nop                                                               // 0x007514eb    90
                         nop                                                               // 0x007514ec    90
                         nop                                                               // 0x007514ed    90
                         nop                                                               // 0x007514ee    90
                         nop                                                               // 0x007514ef    90
?GetWoodCapacity@Villager@@QAEHXZ:
                         {disp8} mov        eax, dword ptr [ecx + 0x28]                    // 0x007514f0    8b4128
                         {disp32} mov       cx, word ptr [ecx + 0x000000f6]                // 0x007514f3    668b89f6000000
                         {disp32} mov       eax, dword ptr [eax + 0x00000268]              // 0x007514fa    8b8068020000
                         sub.s              eax, ecx                                       // 0x00751500    2bc1
                         ret                                                               // 0x00751502    c3
                         nop                                                               // 0x00751503    90
                         nop                                                               // 0x00751504    90
                         nop                                                               // 0x00751505    90
                         nop                                                               // 0x00751506    90
                         nop                                                               // 0x00751507    90
                         nop                                                               // 0x00751508    90
                         nop                                                               // 0x00751509    90
                         nop                                                               // 0x0075150a    90
                         nop                                                               // 0x0075150b    90
                         nop                                                               // 0x0075150c    90
                         nop                                                               // 0x0075150d    90
                         nop                                                               // 0x0075150e    90
                         nop                                                               // 0x0075150f    90
?RemoveFromDance@Villager@@UAEXH@Z:
                         {disp8} mov        eax, dword ptr [esp + 0x04]                    // 0x00751510    8b442404
                         push               eax                                            // 0x00751514    50
                         call               ?RemoveFromDance@Living@@UAEXH@Z               // 0x00751515    e816e4e9ff
                         ret                0x0004                                         // 0x0075151a    c20400
                         nop                                                               // 0x0075151d    90
                         nop                                                               // 0x0075151e    90
                         nop                                                               // 0x0075151f    90
?IsRandomlyLazy@Villager@@QAE_NXZ:
                         sub                esp, 0x08                                      // 0x00751520    83ec08
                         push               esi                                            // 0x00751523    56
                         {disp8} mov        esi, dword ptr [ecx + 0x28]                    // 0x00751524    8b7128
                         push               0x00000566                                     // 0x00751527    6866050000
                         push               0x00c235dc                                     // 0x0075152c    68dc35c200
                         push               0x64                                           // 0x00751531    6a64
                         call               ?GameRand@GRand@@SAHJ@Z                        // 0x00751533    e8d8cff8ff
                         {disp8} mov        dword ptr [esp + 0x10], eax                    // 0x00751538    89442410
                         {disp8} mov        dword ptr [esp + 0x14], 0x00000000             // 0x0075153c    c744241400000000
                         {disp8} fild       qword ptr [esp + 0x10]                         // 0x00751544    df6c2410
                         add                esp, 0x0c                                      // 0x00751548    83c40c
                         {disp32} fld       dword ptr [esi + 0x00000288]                   // 0x0075154b    d98688020000
                         pop                esi                                            // 0x00751551    5e
                         {disp32} fmul      dword ptr [rdata_bytes + 0x241c]               // 0x00751552    d80d1cb48a00
                         fcompp                                                            // 0x00751558    ded9
                         fnstsw             ax                                             // 0x0075155a    dfe0
                         test               ah, 0x01                                       // 0x0075155c    f6c401
                         {disp8} jne        _jmp_addr_0x0075156a                           // 0x0075155f    7509
                         mov                eax, 0x00000001                                // 0x00751561    b801000000
                         add                esp, 0x08                                      // 0x00751566    83c408
                         ret                                                               // 0x00751569    c3
_jmp_addr_0x0075156a:    xor.s              eax, eax                                       // 0x0075156a    33c0
                         add                esp, 0x08                                      // 0x0075156c    83c408
                         ret                                                               // 0x0075156f    c3
?GetResourceHeld@Villager@@QAE_NAAW4RESOURCE_TYPE@@@Z:
                         {disp8} mov        edx, dword ptr [esp + 0x04]                    // 0x00751570    8b542404
                         mov                dword ptr [edx], 0xffffffff                    // 0x00751574    c702ffffffff
                         {disp32} mov       ax, word ptr [ecx + 0x000000f6]                // 0x0075157a    668b81f6000000
                         cmp                word ptr [ecx + 0x000000f4], ax                // 0x00751581    663981f4000000
                         {disp8} jbe        _jmp_addr_0x0075159c                           // 0x00751588    7612
                         xor.s              eax, eax                                       // 0x0075158a    33c0
                         mov                dword ptr [edx], 0x00000000                    // 0x0075158c    c70200000000
                         {disp32} mov       ax, word ptr [ecx + 0x000000f4]                // 0x00751592    668b81f4000000
                         ret                0x0004                                         // 0x00751599    c20400
_jmp_addr_0x0075159c:    test               ax, ax                                         // 0x0075159c    6685c0
                         {disp8} je         _jmp_addr_0x007515b3                           // 0x0075159f    7412
                         xor.s              eax, eax                                       // 0x007515a1    33c0
                         mov                dword ptr [edx], 0x00000001                    // 0x007515a3    c70201000000
                         {disp32} mov       ax, word ptr [ecx + 0x000000f6]                // 0x007515a9    668b81f6000000
                         ret                0x0004                                         // 0x007515b0    c20400
_jmp_addr_0x007515b3:    xor.s              eax, eax                                       // 0x007515b3    33c0
                         ret                0x0004                                         // 0x007515b5    c20400
                         nop                                                               // 0x007515b8    90
                         nop                                                               // 0x007515b9    90
                         nop                                                               // 0x007515ba    90
                         nop                                                               // 0x007515bb    90
                         nop                                                               // 0x007515bc    90
                         nop                                                               // 0x007515bd    90
                         nop                                                               // 0x007515be    90
                         nop                                                               // 0x007515bf    90

?DecideWhatToDo@Villager@@UAE_NXZ:
                         push               esi                                            // 0x007515c0    56
                         mov.s              esi, ecx                                       // 0x007515c1    8bf1
                         mov                eax, dword ptr [esi]                           // 0x007515c3    8b06
                         call               dword ptr [eax + 0x48]                         // 0x007515c5    ff5048
                         test               eax, eax                                       // 0x007515c8    85c0
                         {disp8} je         _jmp_addr_0x007515f4                           // 0x007515ca    7428
                         mov                edx, dword ptr [esi]                           // 0x007515cc    8b16
                         mov.s              ecx, esi                                       // 0x007515ce    8bce
                         call               dword ptr [edx + 0x48]                         // 0x007515d0    ff5248
                         mov.s              ecx, eax                                       // 0x007515d3    8bc8
                         call               ?IsInStateOfEmergency@Town@@QAE_NXZ            // 0x007515d5    e89663ffff
                         test               eax, eax                                       // 0x007515da    85c0
                         {disp8} je         _jmp_addr_0x007515f4                           // 0x007515dc    7416
                         mov                eax, dword ptr [esi]                           // 0x007515de    8b06
                         push               0x000000f2                                     // 0x007515e0    68f2000000
                         mov.s              ecx, esi                                       // 0x007515e5    8bce
                         call               dword ptr [eax + 0x8e8]                        // 0x007515e7    ff90e8080000
                         mov                eax, 0x00000001                                // 0x007515ed    b801000000
                         pop                esi                                            // 0x007515f2    5e
                         ret                                                               // 0x007515f3    c3
_jmp_addr_0x007515f4:    xor.s              eax, eax                                       // 0x007515f4    33c0
                         {disp32} mov       ax, word ptr [esi + 0x000000e0]                // 0x007515f6    668b86e0000000
                         mov.s              ecx, eax                                       // 0x007515fd    8bc8
                         shr                ecx, 9                                         // 0x007515ff    c1e909
                         test               cl, 0x01                                       // 0x00751602    f6c101
                         {disp8} jne        _jmp_addr_0x0075160c                           // 0x00751605    7505
                         test               ah, 0x04                                       // 0x00751607    f6c404
                         {disp8} je         _jmp_addr_0x00751687                           // 0x0075160a    747b
_jmp_addr_0x0075160c:    mov.s              ecx, esi                                       // 0x0075160c    8bce
                         call               ?DiscipleDecideWhatToDo@Villager@@QAE_NXZ      // 0x0075160e    e80d010000
                         cmp                eax, 0x01                                      // 0x00751613    83f801
                         {disp8} jne        _jmp_addr_0x00751666                           // 0x00751616    754e
                         test               byte ptr [esi + 0x000000e1], 0x04              // 0x00751618    f686e100000004
                         {disp8} je         _jmp_addr_0x0075162a                           // 0x0075161f    7409
                         {disp32} mov       byte ptr [esi + 0x000000f2], 0x00              // 0x00751621    c686f200000000
                         pop                esi                                            // 0x00751628    5e
                         ret                                                               // 0x00751629    c3
_jmp_addr_0x0075162a:    xor.s              eax, eax                                       // 0x0075162a    33c0
                         {disp32} mov       al, byte ptr [esi + 0x000000f2]                // 0x0075162c    8a86f2000000
                         {disp32} lea       edx, dword ptr [eax * 0x8 + 0x00000000]        // 0x00751632    8d14c500000000
                         sub.s              edx, eax                                       // 0x00751639    2bd0
                         {disp32} mov       eax, dword ptr [edx * 0x4 + 0x0099a1fc]        // 0x0075163b    8b0495fca19900
                         test               eax, eax                                       // 0x00751642    85c0
                         {disp32} je        _jmp_addr_0x007516d9                           // 0x00751644    0f848f000000
                         mov                eax, dword ptr [esi]                           // 0x0075164a    8b06
                         push               0x1                                            // 0x0075164c    6a01
                         mov.s              ecx, esi                                       // 0x0075164e    8bce
                         call               dword ptr [eax + 0x1c]                         // 0x00751650    ff501c
                         push               eax                                            // 0x00751653    50
                         push               0x18                                           // 0x00751654    6a18
                         push               esi                                            // 0x00751656    56
                         call               ?CreateReaction@Reaction@@SAPAV1@PAVGameThingWithPos@@EPAVGPlayer@@H@Z               // 0x00751657    e81427f9ff
                         add                esp, 0x10                                      // 0x0075165c    83c410
                         mov                eax, 0x00000001                                // 0x0075165f    b801000000
                         pop                esi                                            // 0x00751664    5e
                         ret                                                               // 0x00751665    c3
_jmp_addr_0x00751666:    xor.s              eax, eax                                       // 0x00751666    33c0
                         {disp32} mov       ax, word ptr [esi + 0x000000e0]                // 0x00751668    668b86e0000000
                         test               ah, 0x04                                       // 0x0075166f    f6c404
                         {disp8} je         _jmp_addr_0x00751687                           // 0x00751672    7413
                         and                eax, 0x0000f9ff                                // 0x00751674    25fff90000
                         {disp32} mov       byte ptr [esi + 0x000000f2], 0x00              // 0x00751679    c686f200000000
                         {disp32} mov       word ptr [esi + 0x000000e0], ax                // 0x00751680    668986e0000000
_jmp_addr_0x00751687:    mov                edx, dword ptr [esi]                           // 0x00751687    8b16
                         push               0x000000a3                                     // 0x00751689    68a3000000
                         mov.s              ecx, esi                                       // 0x0075168e    8bce
                         call               dword ptr [edx + 0x8e8]                        // 0x00751690    ff92e8080000
                         mov                eax, dword ptr [esi]                           // 0x00751696    8b06
                         mov.s              ecx, esi                                       // 0x00751698    8bce
                         call               dword ptr [eax + 0xaf8]                        // 0x0075169a    ff90f80a0000
                         test               eax, eax                                       // 0x007516a0    85c0
                         mov.s              ecx, esi                                       // 0x007516a2    8bce
                         {disp8} je         _jmp_addr_0x007516ad                           // 0x007516a4    7407
                         call               ?ChildDecideWhatToDo@Villager@@QAE_NXZ         // 0x007516a6    e815680000
                         pop                esi                                            // 0x007516ab    5e
                         ret                                                               // 0x007516ac    c3
_jmp_addr_0x007516ad:    call               ?CheckNeededForSomething@Villager@@QAE_NXZ     // 0x007516ad    e8cee80000
                         cmp                eax, 0x01                                      // 0x007516b2    83f801
                         {disp8} je         _jmp_addr_0x007516d9                           // 0x007516b5    7422
                         mov.s              ecx, esi                                       // 0x007516b7    8bce
                         call               ?CheckTakeResourcesToStoragePit@Villager@@QAE_NXZ // 0x007516b9    e822000000
                         test               eax, eax                                       // 0x007516be    85c0
                         {disp8} jne        _jmp_addr_0x007516d9                           // 0x007516c0    7517
                         mov.s              ecx, esi                                       // 0x007516c2    8bce
                         call               ?SetupNothingToDo@Villager@@QAEIXZ             // 0x007516c4    e887240000
                         test               eax, eax                                       // 0x007516c9    85c0
                         {disp8} jne        _jmp_addr_0x007516d9                           // 0x007516cb    750c
                         mov                edx, dword ptr [esi]                           // 0x007516cd    8b16
                         push               0x24                                           // 0x007516cf    6a24
                         mov.s              ecx, esi                                       // 0x007516d1    8bce
                         call               dword ptr [edx + 0x8e8]                        // 0x007516d3    ff92e8080000
_jmp_addr_0x007516d9:    mov                eax, 0x00000001                                // 0x007516d9    b801000000
                         pop                esi                                            // 0x007516de    5e
                         ret                                                               // 0x007516df    c3
?CheckTakeResourcesToStoragePit@Villager@@QAE_NXZ:
                                                   {disp8} mov        eax, dword ptr [ecx + 0x28]                    // 0x007516e0    8b4128
                         movsx              edx, word ptr [ecx + 0x000000f6]               // 0x007516e3    0fbf91f6000000
                         cmp                edx, dword ptr [eax + 0x0000026c]              // 0x007516ea    3b906c020000
                         {disp8} jg         _jmp_addr_0x00751704                           // 0x007516f0    7f12
                         movsx              edx, word ptr [ecx + 0x000000f4]               // 0x007516f2    0fbf91f4000000
                         cmp                edx, dword ptr [eax + 0x00000270]              // 0x007516f9    3b9070020000
                         {disp8} jg         _jmp_addr_0x00751704                           // 0x007516ff    7f03
                         xor.s              eax, eax                                       // 0x00751701    33c0
                         ret                                                               // 0x00751703    c3
_jmp_addr_0x00751704:    mov                eax, dword ptr [ecx]                           // 0x00751704    8b01
                         push               0x1f                                           // 0x00751706    6a1f
                         call               dword ptr [eax + 0x8e8]                        // 0x00751708    ff90e8080000
                         mov                eax, 0x00000001                                // 0x0075170e    b801000000
                         ret                                                               // 0x00751713    c3
                         nop                                                               // 0x00751714    90
                         nop                                                               // 0x00751715    90
                         nop                                                               // 0x00751716    90
                         nop                                                               // 0x00751717    90
                         nop                                                               // 0x00751718    90
                         nop                                                               // 0x00751719    90
                         nop                                                               // 0x0075171a    90
                         nop                                                               // 0x0075171b    90
                         nop                                                               // 0x0075171c    90
                         nop                                                               // 0x0075171d    90
                         nop                                                               // 0x0075171e    90
                         nop                                                               // 0x0075171f    90
?DiscipleDecideWhatToDo@Villager@@QAE_NXZ:
                                           push               ecx                                            // 0x00751720    51
                         push               esi                                            // 0x00751721    56
                         xor.s              eax, eax                                       // 0x00751722    33c0
                         mov.s              esi, ecx                                       // 0x00751724    8bf1
                         {disp32} mov       al, byte ptr [esi + 0x000000f2]                // 0x00751726    8a86f2000000
                         push               edi                                            // 0x0075172c    57
                         {disp8} lea        ecx, dword ptr [eax + -0x01]                   // 0x0075172d    8d48ff
                         cmp                ecx, 0x0b                                      // 0x00751730    83f90b
                         {disp32} ja        _jmp_addr_0x007518e7                           // 0x00751733    0f87ae010000
                         jmp                dword ptr [ecx*4 + 0x75193c]                   // 0x00751739    ff248d3c197500
                         mov                eax, dword ptr [esi]                           // 0x00751740    8b06
                         mov.s              ecx, esi                                       // 0x00751742    8bce
                         call               dword ptr [eax + 0x48]                         // 0x00751744    ff5048
                         test               eax, eax                                       // 0x00751747    85c0
                         {disp32} je        _jmp_addr_0x007518e7                           // 0x00751749    0f8498010000
                         mov                edx, dword ptr [esi]                           // 0x0075174f    8b16
                         {disp8} lea        ecx, dword ptr [esp + 0x08]                    // 0x00751751    8d4c2408
                         push               ecx                                            // 0x00751755    51
                         push               esi                                            // 0x00751756    56
                         mov.s              ecx, esi                                       // 0x00751757    8bce
                         call               dword ptr [edx + 0x48]                         // 0x00751759    ff5248
                         mov.s              ecx, eax                                       // 0x0075175c    8bc8
                         call               _jmp_addr_0x0073e870                           // 0x0075175e    e80dd1feff
                         mov.s              edi, eax                                       // 0x00751763    8bf8
                         test               edi, edi                                       // 0x00751765    85ff
                         {disp32} je        _jmp_addr_0x007518e7                           // 0x00751767    0f847a010000
                         push               0x0                                            // 0x0075176d    6a00
                         mov.s              ecx, edi                                       // 0x0075176f    8bcf
                         call               _jmp_addr_0x00529350                           // 0x00751771    e8da7bddff
                         cmp                eax, 0x02                                      // 0x00751776    83f802
                         {disp8} jne        _jmp_addr_0x007517a3                           // 0x00751779    7528
                         {disp8} mov        eax, dword ptr [esi + 0x28]                    // 0x0075177b    8b4628
                         {disp32} mov       cx, word ptr [esi + 0x000000f4]                // 0x0075177e    668b8ef4000000
                         cmp                cx, word ptr [eax + 0x00000270]                // 0x00751785    663b8870020000
                         {disp8} jle        _jmp_addr_0x007517a3                           // 0x0075178c    7e15
                         mov                edx, dword ptr [esi]                           // 0x0075178e    8b16
                         push               0x1f                                           // 0x00751790    6a1f
                         mov.s              ecx, esi                                       // 0x00751792    8bce
                         call               dword ptr [edx + 0x8e8]                        // 0x00751794    ff92e8080000
                         pop                edi                                            // 0x0075179a    5f
                         mov                eax, 0x00000001                                // 0x0075179b    b801000000
                         pop                esi                                            // 0x007517a0    5e
                         pop                ecx                                            // 0x007517a1    59
                         ret                                                               // 0x007517a2    c3
_jmp_addr_0x007517a3:    push               edi                                            // 0x007517a3    57
                         mov.s              ecx, esi                                       // 0x007517a4    8bce
                         call               _jmp_addr_0x00759c00                           // 0x007517a6    e855840000
                         cmp                eax, 0x01                                      // 0x007517ab    83f801
                         {disp32} jne       _jmp_addr_0x007518e7                           // 0x007517ae    0f8533010000
                         pop                edi                                            // 0x007517b4    5f
                         pop                esi                                            // 0x007517b5    5e
                         pop                ecx                                            // 0x007517b6    59
                         ret                                                               // 0x007517b7    c3
                         mov.s              ecx, esi                                       // 0x007517b8    8bce
                         call               _jmp_addr_0x0075f4a0                           // 0x007517ba    e8e1dc0000
                         cmp                eax, 0x01                                      // 0x007517bf    83f801
                         {disp32} jne       _jmp_addr_0x007518e7                           // 0x007517c2    0f851f010000
                         pop                edi                                            // 0x007517c8    5f
                         pop                esi                                            // 0x007517c9    5e
                         pop                ecx                                            // 0x007517ca    59
                         ret                                                               // 0x007517cb    c3
                         mov.s              ecx, esi                                       // 0x007517cc    8bce
                         call               _jmp_addr_0x0075b4c0                           // 0x007517ce    e8ed9c0000
                         cmp                eax, 0x01                                      // 0x007517d3    83f801
                         {disp32} jne       _jmp_addr_0x007518e7                           // 0x007517d6    0f850b010000
                         pop                edi                                            // 0x007517dc    5f
                         pop                esi                                            // 0x007517dd    5e
                         pop                ecx                                            // 0x007517de    59
                         ret                                                               // 0x007517df    c3
                         mov.s              ecx, esi                                       // 0x007517e0    8bce
                         call               _jmp_addr_0x00758340                           // 0x007517e2    e8596b0000
                         cmp                eax, 0x01                                      // 0x007517e7    83f801
                         {disp32} jne       _jmp_addr_0x007518e7                           // 0x007517ea    0f85f7000000
                         pop                edi                                            // 0x007517f0    5f
                         pop                esi                                            // 0x007517f1    5e
                         pop                ecx                                            // 0x007517f2    59
                         ret                                                               // 0x007517f3    c3
                         mov.s              ecx, esi                                       // 0x007517f4    8bce
                         call               _jmp_addr_0x00769ee0                           // 0x007517f6    e8e5860100
                         cmp                eax, 0x01                                      // 0x007517fb    83f801
                         {disp32} jne       _jmp_addr_0x007518e7                           // 0x007517fe    0f85e3000000
                         pop                edi                                            // 0x00751804    5f
                         pop                esi                                            // 0x00751805    5e
                         pop                ecx                                            // 0x00751806    59
                         ret                                                               // 0x00751807    c3
                         mov.s              ecx, esi                                       // 0x00751808    8bce
                         call               _jmp_addr_0x007593a0                           // 0x0075180a    e8917b0000
                         test               eax, eax                                       // 0x0075180f    85c0
                         {disp32} je        _jmp_addr_0x007518e7                           // 0x00751811    0f84d0000000
                         pop                edi                                            // 0x00751817    5f
                         mov                eax, 0x00000001                                // 0x00751818    b801000000
                         pop                esi                                            // 0x0075181d    5e
                         pop                ecx                                            // 0x0075181e    59
                         ret                                                               // 0x0075181f    c3
                         mov.s              ecx, esi                                       // 0x00751820    8bce
                         call               _jmp_addr_0x00769b80                           // 0x00751822    e859830100
                         cmp                eax, 0x01                                      // 0x00751827    83f801
                         {disp32} jne       _jmp_addr_0x007518e7                           // 0x0075182a    0f85b7000000
                         pop                edi                                            // 0x00751830    5f
                         pop                esi                                            // 0x00751831    5e
                         pop                ecx                                            // 0x00751832    59
                         ret                                                               // 0x00751833    c3
                         mov                eax, dword ptr [esi]                           // 0x00751834    8b06
                         mov.s              ecx, esi                                       // 0x00751836    8bce
                         call               dword ptr [eax + 0x1c]                         // 0x00751838    ff501c
                         push               0x0                                            // 0x0075183b    6a00
                         push               0x0                                            // 0x0075183d    6a00
                         push               esi                                            // 0x0075183f    56
                         mov.s              ecx, esi                                       // 0x00751840    8bce
                         mov.s              edi, eax                                       // 0x00751842    8bf8
                         call               ?SetVillagerDisciple@Villager@@QAEIPAVGameThing@@W4VILLAGER_DISCIPLE@@H@Z                           // 0x00751844    e8b7470000
                         push               0x0                                            // 0x00751849    6a00
                         push               0x0                                            // 0x0075184b    6a00
                         push               0x0                                            // 0x0075184d    6a00
                         {disp8} lea        ecx, dword ptr [esi + 0x14]                    // 0x0075184f    8d4e14
                         push               -0x1                                           // 0x00751852    6aff
                         push               ecx                                            // 0x00751854    51
                         call               _jmp_addr_0x0074dd70                           // 0x00751855    e816c5ffff
                         add                esp, 0x14                                      // 0x0075185a    83c414
                         push               eax                                            // 0x0075185d    50
                         mov.s              ecx, esi                                       // 0x0075185e    8bce
                         call               _jmp_addr_0x00757180                           // 0x00751860    e81b590000
                         cmp                eax, 0x01                                      // 0x00751865    83f801
                         {disp8} jne        _jmp_addr_0x007518e7                           // 0x00751868    757d
                         mov                edx, dword ptr [esi]                           // 0x0075186a    8b16
                         push               0x000000ea                                     // 0x0075186c    68ea000000
                         mov.s              ecx, esi                                       // 0x00751871    8bce
                         call               dword ptr [edx + 0x8e8]                        // 0x00751873    ff92e8080000
                         mov                eax, dword ptr [esi]                           // 0x00751879    8b06
                         mov.s              ecx, esi                                       // 0x0075187b    8bce
                         call               dword ptr [eax + 0x1c]                         // 0x0075187d    ff501c
                         cmp.s              edi, eax                                       // 0x00751880    3bf8
                         {disp8} je         _jmp_addr_0x00751896                           // 0x00751882    7412
                         mov                edx, dword ptr [esi]                           // 0x00751884    8b16
                         push               0x1                                            // 0x00751886    6a01
                         push               0xd                                            // 0x00751888    6a0d
                         mov.s              ecx, esi                                       // 0x0075188a    8bce
                         call               dword ptr [edx + 0x1c]                         // 0x0075188c    ff521c
                         mov.s              ecx, eax                                       // 0x0075188f    8bc8
                         call               _jmp_addr_0x0064da80                           // 0x00751891    e8eac1efff
_jmp_addr_0x00751896:    pop                edi                                            // 0x00751896    5f
                         mov                eax, 0x00000001                                // 0x00751897    b801000000
                         pop                esi                                            // 0x0075189c    5e
                         pop                ecx                                            // 0x0075189d    59
                         ret                                                               // 0x0075189e    c3
                         mov                eax, dword ptr [esi]                           // 0x0075189f    8b06
                         push               0x3a                                           // 0x007518a1    6a3a
                         mov.s              ecx, esi                                       // 0x007518a3    8bce
                         call               dword ptr [eax + 0x8e8]                        // 0x007518a5    ff90e8080000
                         pop                edi                                            // 0x007518ab    5f
                         mov                eax, 0x00000001                                // 0x007518ac    b801000000
                         pop                esi                                            // 0x007518b1    5e
                         pop                ecx                                            // 0x007518b2    59
                         ret                                                               // 0x007518b3    c3
                         mov                edx, dword ptr [esi]                           // 0x007518b4    8b16
                         {disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00000000]        // 0x007518b6    8d0cc500000000
                         sub.s              ecx, eax                                       // 0x007518bd    2bc8
                         xor.s              eax, eax                                       // 0x007518bf    33c0
                         {disp32} mov       al, byte ptr [ecx * 0x4 + _DiscipleInfo_ARRAY_0099a1f8]          // 0x007518c1    8a048df8a19900
                         mov.s              ecx, esi                                       // 0x007518c8    8bce
                         push               eax                                            // 0x007518ca    50
                         call               dword ptr [edx + 0x8e8]                        // 0x007518cb    ff92e8080000
                         push               0x0                                            // 0x007518d1    6a00
                         push               0x0                                            // 0x007518d3    6a00
                         push               0x0                                            // 0x007518d5    6a00
                         mov.s              ecx, esi                                       // 0x007518d7    8bce
                         call               ?SetVillagerDisciple@Villager@@QAEIPAVGameThing@@W4VILLAGER_DISCIPLE@@H@Z                           // 0x007518d9    e822470000
                         pop                edi                                            // 0x007518de    5f
                         mov                eax, 0x00000001                                // 0x007518df    b801000000
                         pop                esi                                            // 0x007518e4    5e
                         pop                ecx                                            // 0x007518e5    59
                         ret                                                               // 0x007518e6    c3
_jmp_addr_0x007518e7:    mov                edx, dword ptr [esi]                           // 0x007518e7    8b16
                         mov.s              ecx, esi                                       // 0x007518e9    8bce
                         call               dword ptr [edx + 0xb04]                        // 0x007518eb    ff92040b0000
                         cmp                al, -0x23                                      // 0x007518f1    3cdd
                         {disp8} je         _jmp_addr_0x00751934                           // 0x007518f3    743f
                         xor.s              eax, eax                                       // 0x007518f5    33c0
                         {disp32} mov       ax, word ptr [esi + 0x000000e0]                // 0x007518f7    668b86e0000000
                         shr                eax, 9                                         // 0x007518fe    c1e809
                         test               al, 0x01                                       // 0x00751901    a801
                         {disp8} je         _jmp_addr_0x00751934                           // 0x00751903    742f
                         xor.s              eax, eax                                       // 0x00751905    33c0
                         {disp32} mov       al, byte ptr [esi + 0x000000f2]                // 0x00751907    8a86f2000000
                         {disp32} lea       ecx, dword ptr [eax * 0x8 + 0x00000000]        // 0x0075190d    8d0cc500000000
                         sub.s              ecx, eax                                       // 0x00751914    2bc8
                         cmp                dword ptr [ecx * 0x4 + 0x0099a204], 0x01       // 0x00751916    833c8d04a2990001
                         {disp8} jne        _jmp_addr_0x00751934                           // 0x0075191e    7514
                         mov.s              ecx, esi                                       // 0x00751920    8bce
                         call               ?SetDiscipleNothingToDo@Villager@@QAE_NXZ      // 0x00751922    e849270000
                         test               eax, eax                                       // 0x00751927    85c0
                         {disp8} je         _jmp_addr_0x00751934                           // 0x00751929    7409
                         pop                edi                                            // 0x0075192b    5f
                         mov                eax, 0x00000001                                // 0x0075192c    b801000000
                         pop                esi                                            // 0x00751931    5e
                         pop                ecx                                            // 0x00751932    59
                         ret                                                               // 0x00751933    c3
_jmp_addr_0x00751934:    pop                edi                                            // 0x00751934    5f
                         xor.s              eax, eax                                       // 0x00751935    33c0
                         pop                esi                                            // 0x00751937    5e
                         pop                ecx                                            // 0x00751938    59
                         ret                                                               // 0x00751939    c3

// Snippet: db, [0x0075193a, 0x0075193c)
.byte 0x8b, 0xff                  // 0x0075193a

// Snippet: jmptbl, [0x0075193c, 0x0075196c)
.byte 0x40, 0x17, 0x75, 0x00      // 0x0075193c
.byte 0xb8, 0x17, 0x75, 0x00      // 0x00751940
.byte 0xcc, 0x17, 0x75, 0x00      // 0x00751944
.byte 0xe0, 0x17, 0x75, 0x00      // 0x00751948
.byte 0xf4, 0x17, 0x75, 0x00      // 0x0075194c
.byte 0xe7, 0x18, 0x75, 0x00      // 0x00751950
.byte 0x34, 0x19, 0x75, 0x00      // 0x00751954
.byte 0x08, 0x18, 0x75, 0x00      // 0x00751958
.byte 0x20, 0x18, 0x75, 0x00      // 0x0075195c
.byte 0x34, 0x18, 0x75, 0x00      // 0x00751960
.byte 0x9f, 0x18, 0x75, 0x00      // 0x00751964
.byte 0xb4, 0x18, 0x75, 0x00      // 0x00751968

// Snippet: db, [0x0075196c, 0x00751970)
.byte 0x90, 0x90, 0x90, 0x90      // 0x0075196c

