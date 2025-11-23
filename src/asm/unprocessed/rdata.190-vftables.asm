.intel_syntax noprefix
.section .rdata

.macro VftableAndRTTI name
    .long ??_R4\name@@6B@
__vt__\name:
??_7\name@@6B@:
.endm

.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf1a64] 0x008a9000 + 0xf1a64 = 0x0099aa64

VftableAndRTTI GVirtualInfluence                                                                                   // [0xf1a6c] 0x008a9000 + 0xf1a6c = 0x0099aa6c
.long ?Serialise@Base@@UAEXAAVArchive@@@Z
.long ??_GGVirtualInfluence@@UAEPAXI@Z
.long ?Delete@Base@@UAEXH@Z
.long ?ToBeDeleted@Base@@UAEXH@Z
.long ?Get3DSoundPos@Base@@UAEHPAULHPoint@@@Z
.long ?CleanUpForSerialisation@Base@@UAEXXZ
.long ?Dump@Base@@UAEXXZ
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf1a8c] 0x008a9000 + 0xf1a8c = 0x0099aa8c

VftableAndRTTI Fragment                                                                                            // [0xf1a94] 0x008a9000 + 0xf1a94 = 0x0099aa94
.long ?Serialise@Base@@UAEXAAVArchive@@@Z
.long ??_GFragment@@UAEPAXI@Z                                                                                                   // [0xf1a9c] 0x008a9000 + 0xf1a9c = 0x0099aa9c
.long ?Delete@Object@@UAEXH@Z
.long ?ToBeDeleted@Fragment@@UAEXH@Z
.long ?Get3DSoundPos@GameThingWithPos@@UAEHPAULHPoint@@@Z
.long ?CleanUpForSerialisation@Base@@UAEXXZ
.long ?Dump@Base@@UAEXXZ
.long ?GetPlayer@Rock@@UAEPAVGPlayer@@XZ
.long ?SetPlayer@Rock@@UAEXPAVGPlayer@@@Z                                                                                       // [0xf1ab4] 0x008a9000 + 0xf1ab4 = 0x0099aab4
.long ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z
.long ?RemoveDance@GameThing@@QAEXXZ
.long ?IsAvailable@GameThing@@QAE_NXZ
.long ?IsCreature@GameThing@@QAE_NPAVCreature@@@Z
.long ?IsCreature@GameThing@@UAE_NXZ
.long ?IsCreatureNotTooNear@GameThing@@UAE_NPAVCreature@@@Z
.long ?GetDrawImportance@Object@@UAEMXZ
.long ?GetMaxAlignmentChangePerGameTurn@GameThing@@UAEMXZ
.long ?GetComputerSeen@GameThing@@UAE_NXZ
.long ?GetTown@MultiMapFixed@@UAEPAVTown@@XZ                                                                                                   // [0xf1ae0] 0x008a9000 + 0xf1ae0 = 0x0099aae0
.long ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z
.long ?SetVillagerActivity@GameThing@@UAEXPAVVillager@@@Z
.long ?UpdateVillagerActivityEffect@GameThing@@QAEIPAVVillager@@@Z
.long ?MaintainSpell@GameThing@@UAEXIM@Z
.long ?UpdateSpellInfo@GameThing@@QAEXPAVSpell@@PAVPSysProcessInfo@@@Z
.long ?GetRadius@Object@@UAEMXZ
.long ?Get2DRadius@Object@@UAEMXZ
.long ?GetPlayerWhoLastPickedMeUp@GameThing@@QAEPAVGPlayer@@XZ
.long ?GetPlayerWhoLastDroppedMe@GameThing@@QAEPAVGPlayer@@XZ
.long ?IsFootpathLink@MultiMapFixed@@UAE_NXZ, ?GetFootpathLink@MultiMapFixed@@UAEPAVGFootpathLink@@XZ                                                                                       // [0xf1b08] 0x008a9000 + 0xf1b08 = 0x0099ab08
.long ?AddFootpathLink@GameThing@@QAEXPAVGFootpath@@@Z
.long ?GetNearestPathTo@MultiMapFixed@@UAEIPAUMapCoords@@MH@Z, ?UseFootpathIfNecessary@MultiMapFixed@@UAEXPAVLiving@@PBUMapCoords@@E@Z                                                                                       // [0xf1b14] 0x008a9000 + 0xf1b14 = 0x0099ab14
.long ?AddFootpathLink@MultiMapFixed@@QAEXPAVGFootpath@@@Z
.long ?RemoveFootpath@MultiMapFixed@@UAEIPAVGFootpath@@@Z                                                                                                   // [0xf1b20] 0x008a9000 + 0xf1b20 = 0x0099ab20
.long ?JustAddResource@GameThing@@QAEIW4RESOURCE_TYPE@@K_N@Z
.long ?JustRemoveResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z
.long ?JustGetResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z
.long ?GetResource@Object@@UAEIW4RESOURCE_TYPE@@@Z
.long ?AddResource@Rock@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_NPBUMapCoords@@H@Z
.long ?RemoveResource@Rock@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@PA_N@Z
.long ?CastCreature@GameThing@@QAEPAVCreature@@XZ
.long ?CastPlayer@GameThing@@QAEPAVGPlayer@@XZ
.long ?CastOneOffSpellSeed@GameThing@@UAEIXZ
.long ?CastAbode@GameThing@@QAEPAVAbode@@XZ
.long ?CastMultiMapFixed@MultiMapFixed@@UAEPAV1@XZ                                                                                                   // [0xf1b4c] 0x008a9000 + 0xf1b4c = 0x0099ab4c
.long ?CastSpellIcon@GameThing@@UAEIXZ
.long ?CastTree@GameThing@@UAEIXZ
.long ?IsDeletedOnNewMap@GameThing@@QAE_NXZ
.long ?GetNumberOfInstanceForGlobalList@GameThing@@QAEGXZ
.long ?GetTownArtifactValue@Fixed@@UAEMXZ
.long ?CanBecomeArtifact@Object@@UAE_NXZ
.long ?DrawInHand@Object@@UAEXPAVGInterfaceStatus@@@Z
.long ?IsFunctional@MobileStatic@@UAE_NXZ
.long ?GetDebugText@Fragment@@UAEPADXZ
.long ?GetSampleForAttack@Rock@@UAEIXZ                                                                                       // [0xf1b70] 0x008a9000 + 0xf1b70 = 0x0099ab70
.long ?GetGuidanceResourceType@GameThing@@UAEIXZ
.long ?GetShowNeedsPos@MultiMapFixed@@UAEIKPAUMapCoords@@@Z
.long ?Load@Fragment@@UAEIAAVGameOSFile@@@Z
.long ?Save@Fragment@@UAEIAAVGameOSFile@@@Z
.long ?GetSaveType@Fragment@@UAEIXZ                                                                           // [0xf1b80] 0x008a9000 + 0xf1b80 = 0x0099ab80
.long ?SaveExtraData@GameThing@@QAEXAAVGameOSFile@@@Z
.long ?ResolveLoad@Fragment@@UAEXXZ                                                                                                   // [0xf1b90] 0x008a9000 + 0xf1b90 = 0x0099ab90
.long ?SetPos@GameThingWithPos@@QAEXABUMapCoords@@@Z
.long ?GetPos@GameThingWithPos@@QAEPAUMapCoords@@XZ
.long ?GetArrivePos@MultiMapFixed@@UAEPAUMapCoords@@PAU2@@Z
.long ?PhysicsEditorCreate@Rock@@UAEXH@Z
.long ?GetCreatureBeliefType@MobileStatic@@UAEIXZ
.long ?GetCreatureBeliefListType@GameThingWithPos@@UAEIXZ
.long ?GetCitadel@GameThingWithPos@@UAEPAUCitadel@@XZ

.long ?GetOrigin@GameThingWithPos@@UBEIXZ
.long ?GetLife@Object@@UAEMXZ
.long ?GetScale@Object@@UAEMXZ
.long ?SetScale@Object@@UAEXM@Z

.long ?GetPower@GameThingWithPos@@UBEMXZ
.long ?GetPSysPower@GameThingWithPos@@UBEMXZ
.long ?GetSpeedInMetres@GameThingWithPos@@UBEMXZ
.long ?SetSpeedInMetres@GameThingWithPos@@UAEXMH@Z

.long ?GetRunningSpeedInMetres@GameThingWithPos@@UBEMXZ
.long ?GetDistanceFromObject@Object@@UAEMPAUMapCoords@@@Z
.long ?GetDefaultSpeedInMetres@GameThingWithPos@@UAEMXZ
.long ?SetHeight@GameThingWithPos@@UAEXM@Z

.long ?SetMaxHeight@GameThingWithPos@@UAEXM@Z
.long ?GetMaxHeight@GameThingWithPos@@UAEMXZ
.long ?GetPSysBeamTargetPos@GameThingWithPos@@UAEXPAULHPoint@@@Z
.long ?GetSpeedInMetresPerSecond@GameThingWithPos@@UBEMXZ

.long ?SetSpeedInMetresPerSecond@GameThingWithPos@@UAEXMH@Z
.long ?GetRunningSpeedInMetresPerSecond@GameThingWithPos@@UAEMXZ
.long ?GetDefaultSpeedInMetresPerSecond@GameThingWithPos@@UAEMXZ
.long ?IsAnimate@GameThingWithPos@@UAE_NXZ

.long ?GetMovementDirection@GameThingWithPos@@UAEXPAULHPoint@@@Z
.long ?GetPhysicsMovementDirection@Object@@UAEXPAULHPoint@@@Z
.long ?GetInteractPos@GameThingWithPos@@UAEXPAULHPoint@@@Z
.long ?IsMoving@Object@@UAE_NXZ
.long ?IsObjectInMap@MultiMapFixed@@UAE_NXZ
.long ?IsDrowning@Object@@UAE_NXZ
.long ?IsCannotBePickedUp@GameThingWithPos@@UBE_NXZ
.long ?GetOverwritePickUpToolTip@GameThingWithPos@@UAEIXZ

.long ?IsStompable@GameThingWithPos@@UAE_NXZ
.long ?IsAvailableForStateChange@GameThingWithPos@@UAE_NXZ
.long ?IsInteractable@GameThingWithPos@@UAE_NXZ
.long ?GetOverwriteInteractableToolTip@GameThingWithPos@@UAEIXZ

.long ?GetOverwriteDropToolTip@GameThingWithPos@@UAEIXZ
.long ?GetOverwriteTapToolTip@Rock@@UAEIXZ
.long ?IsCastShadowAtNight@MobileStatic@@UAEIXZ
.long ?CleanupWhenDeleted@Object@@UAEXH@Z

.long ?GetImpressiveType@GameThingWithPos@@UAE?AW4IMPRESSIVE_TYPE@@XZ
.long ?GetImpressiveIntensity@GameThingWithPos@@UAEMW4IMPRESSIVE_TYPE@@@Z
.long ?GetImpressiveValue@Object@@UAEMPAVLiving@@PAVReaction@@@Z
.long ?GetUpdateOfBoredomValue@Object@@UAEMPAVReaction@@PAVGameThingWithPos@@@Z

.long ?IsTown@GameThingWithPos@@UAE_NXZ
.long ?IsTown@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsActivityObjectWhichAngerAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsActivityObjectWhichCompassionAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsActivityObjectWhichPlayfulnessAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTownBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?TrueFunction@GameThingWithPos@@UAE_NXZ
.long ?FalseFunction@GameThingWithPos@@UAE_NXZ

.long ?IsNotLiving@GameThingWithPos@@UAE_NXZ
.long ?IsSuitableForCreatureActivity@GameThingWithPos@@UAE_NXZ
.long ?IsTownCentre@GameThingWithPos@@UAE_NXZ
.long ?IsTotemStatue@GameThingWithPos@@UAE_NXZ

.long ?IsTownDesireFlag@GameThingWithPos@@UAE_NXZ
.long ?IsRock@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsRock@Rock@@UAEIXZ
.long ?IsSpellDispenser@GameThingWithPos@@UAE_NXZ

.long ?IsMist@GameThingWithPos@@UAE_NXZ
.long ?IsQueryIcon@GameThingWithPos@@UAE_NXZ
.long ?IsStreetLight@GameThingWithPos@@UAE_NXZ
.long ?IsStreetLantern@GameThingWithPos@@UAE_NXZ

.long ?IsAbode@GameThingWithPos@@UAE_NXZ
.long ?IsField@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsField@GameThingWithPos@@UAE_NXZ
.long ?IsBuildingMaterial@Object@@UAE_NXZ

.long ?IsMagicFireBall@GameThingWithPos@@UAE_NXZ
.long ?IsSuitableForCreatureAction@Object@@UAE_NXZ
.long ?IsCitadelHeart@GameThingWithPos@@UAE_NXZ
.long ?IsDamaged@GameThingWithPos@@UAE_NXZ

.long ?CanBeHealedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeEatenByCreature@MobileStatic@@UAEIPAVCreature@@@Z
.long ?CanCreatureEatMe@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeAttackedByCreature@Rock@@UAEIPAVCreature@@@Z
.long ?CanBeFrighteningToCreature@Fixed@@UAE_NPAVCreature@@@Z
.long ?CanBeHelpedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBePlayedWithByCreature@MobileStatic@@UAEIPAVCreature@@@Z
.long ?CanBeImpressedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeInspectedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBePoodUponByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeBefriendedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeSleptNextToByCreature@Fixed@@UAE_NPAVCreature@@@Z
.long ?CanBePickedUpByCreature@Fragment@@UAEIPAVCreature@@@Z
.long ?CanBeStrokedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeKissedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeSetOnFire@Fixed@@UAE_NPAVCreature@@@Z
.long ?CanBeStompedOnByCreature@MobileStatic@@UAEIPAVCreature@@@Z
.long ?CanBeThrownByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeGivenToVillager@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePutInAStoragePit@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeDestroyedByStoning@Fixed@@UAE_NPAVCreature@@@Z
.long ?CanBeStonedAndEatenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeExaminedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeFoughtByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanReceiveGifts@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanActAsAContainer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsBeingBuilt@MultiMapFixed@@UAE_NPAVCreature@@@Z, ?NeedsRepair@MultiMapFixed@@UAE_NPAVCreature@@@Z
.long ?IsOnFire@Object@@UAE_NPAVCreature@@@Z
.long ?IsNotOnFire@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeUsedForBuilding@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsMushroom@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeUsedForRepair@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeGivenToTown@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeUsedToHoldWater@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePutInFoodPile@Object@@UAE_NPAVCreature@@@Z
.long ?CanBePutInWoodPile@Object@@UAE_NPAVCreature@@@Z
.long ?CanHaveMagicFoodCastOnMe@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanHaveMagicWoodCastOnMe@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeBroughtBackToCitadel@Object@@UAE_NPAVCreature@@@Z

.long ?IsVillager@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerFarFromHome@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerInTownWithoutManyBreeders@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerNotWorshipping@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsVillagerBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCow@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePoodOn@Object@@UAE_NPAVCreature@@@Z
.long ?IsVillagerWhoHasNotBeenImpressedRecently@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsVillagerWhoHasNotBeenDancedWithRecently@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?DoesVillagerBelongToATownWhichIsAlreadyImpressed@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?DoesTotemBelongToATownWhichIsVeryImpressedIndeed@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsDominantCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeDancedWith@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAggressive@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsWorshipSite@GameThingWithPos@@UAE_NXZ

.long ?IsWorshipSite@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?GetWorshipSite@GameThingWithPos@@UAEPAUWorshipSite@@XZ
.long ?IsWorkshop@GameThingWithPos@@UAE_NXZ
.long ?IsWorkshop@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsBuildingWhichIsBeingBuilt@MultiMapFixed@@UAE_NPAVCreature@@@Z
.long ?IsStoragePitWithFoodInIt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsFieldWhichNeedsWatering@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsFieldWithFoodInIt@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsFieldBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStoragePitBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStoragePitBelongingToMyPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?BenefitsFromHavingWaterSprinkledOnIt@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsTree@GameThingWithPos@@UAE_NXZ
.long ?IsTree@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTreeNotTooNearPlannedForest@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTreeBigEnoughForCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsAFoodPileOutsideStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAWoodPileOutsideStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsDoingSomethingInteresting@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeUsedForBuildingHomeByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsPickupableRock@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCitadelPart@GameThingWithPos@@UAE_NXZ
.long ?IsCitadelPart@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPlayingFootball@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsPlayingFootballAndMySideHasJustScored@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPlayingFootballAndOtherSideHasJustScored@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeBroughtHomeByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAnimalBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsOneOffSpellBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellAggressive@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellCompassionate@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellPlayful@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsOneOffSpellToRestoreHealth@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeKickedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeStolenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStealableByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsStealableSpell@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStealableScaffold@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTownBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTotemWithStealableSpell@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsCreatureAvailableForJointActivity@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCreatureNotAvailableForJointActivity@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToyAwayFromHome@MobileStatic@@UAEIPAVCreature@@@Z
.long ?IsToy@MobileStatic@@UAEIPAVCreature@@@Z
.long ?IsToyBall@MobileStatic@@UAEIPAVCreature@@@Z
.long ?IsToyDie@MobileStatic@@UAEIPAVCreature@@@Z
.long ?IsToyCuddly@MobileStatic@@UAEIPAVCreature@@@Z
.long ?IsLiving@GameThingWithPos@@UBE_NXZ

.long ?IsLiving@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?IsFence@MobileStatic@@UAEIXZ
.long ?IsSpellIcon@GameThingWithPos@@UBE_NXZ
.long ?NothingScareyNearMe@GameThingWithPos@@UBE_NXZ
.long ?CanBeUsedForThrowingDamageByCreature@MobileStatic@@UAEIPAVCreature@@@Z
.long ?IsCreatureWhoSeemsFriendly@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?CanBeThrownInTheSeaPlayfully@MobileStatic@@UAEIPAVCreature@@@Z
.long ?GetCreatureMimicType@Rock@@UAEIXZ
.long ?GetHowMuchCreatureWantsToLookAtMe@MobileStatic@@UAEMXZ
.long ?IsFlock@GameThingWithPos@@UBE_NXZ
.long ?IsDance@GameThingWithPos@@UBE_NXZ
.long ?IsReward@GameThingWithPos@@UBE_NXZ

.long ?IsScriptContainer@GameThingWithPos@@UBE_NXZ
.long ?IsWeather@GameThingWithPos@@UBE_NXZ
.long ?IsSpell@GameThingWithPos@@UBE_NXZ
.long ?IsDeletedWhenReleasedFromScript@GameThingWithPos@@UAE_NXZ

.long ?IsMobileWallHug@GameThingWithPos@@UBE_NXZ
.long ?IsActive@GameThingWithPos@@UBE_NXZ
.long ?IsObjectTurningTooFastForCameraToFollowSmoothly@GameThingWithPos@@UBE_NXZ
.long ?CalculateWhereIWillBeAfterNSeconds@Object@@UAEXMPAULHPoint@@@Z

.long ?AttitudeToCreatureEating@GameThingWithPos@@UAEIXZ
.long ?GetText@Object@@UAEPBDXZ
.long ?CalculateDesireForFood@GameThingWithPos@@UAEMXZ
.long ?CalculateDesireForRest@GameThingWithPos@@UAEMXZ

.long ?CalculatePeopleHidingIndicator@GameThingWithPos@@UAEMXZ
.long ?GetHeight@Object@@UAEMXZ
.long ?IsReadyForNewScriptAction@GameThingWithPos@@UBE_NXZ
.long ?ForDrawFXGetNumVertices@GameThingWithPos@@UAEHXZ

.long ?ForDrawFXGetVertexPos@GameThingWithPos@@UAEXHPAULHPoint@@@Z
.long ?SetInScript@Object@@UAEXH@Z
.long ?SetControlledByScript@GameThingWithPos@@UAEXH@Z
.long ?GetDeathReason@GameThingWithPos@@UAE?AW4DEATH_REASON@@XZ

.long ?IsInScript@GameThingWithPos@@UAE_NXZ
.long ?IsMaleVillager@GameThingWithPos@@UAE_NXZ
.long ?IsFemaleVillager@GameThingWithPos@@UAE_NXZ
.long ?IsAnimal@GameThingWithPos@@UAE_NXZ

.long ?IsAChild@GameThingWithPos@@UAE_NXZ
.long ?IsHouse@GameThingWithPos@@UAE_NXZ
.long ?IsObject@Object@@UAE_NXZ
.long ?IsFootball@GameThingWithPos@@UBE_NXZ

.long ?IsCitadel@GameThingWithPos@@UAE_NXZ
.long ?IsForest@GameThingWithPos@@UAE_NXZ
.long ?IsMobileObject@GameThingWithPos@@UAE_NXZ
.long ?IsMobileStatic@MobileStatic@@UAEIXZ

.long ?IsAnyKindOfTree@GameThingWithPos@@UAE_NXZ
.long ?IsDeadTree@GameThingWithPos@@UAE_NXZ
.long ?IsPileFood@GameThingWithPos@@UAE_NXZ
.long ?IsFeature@GameThingWithPos@@UAE_NXZ

.long ?IsScriptMarker@GameThingWithPos@@UAE_NXZ
.long ?IsScriptHighlight@GameThingWithPos@@UAE_NXZ
.long ?IsWonder@MultiMapFixed@@UAE_NXZ
.long ?IsInfluenceRing@GameThingWithPos@@UAE_NXZ

.long ?IsPuzzleGame@GameThingWithPos@@UAE_NXZ
.long ?IsScaffold@GameThingWithPos@@UAE_NXZ
.long ?IsSkeleton@GameThingWithPos@@UBE_NXZ
.long ?IsPoisoned@GameThingWithPos@@UBE_NXZ

.long ?IsSpeedUp@GameThingWithPos@@UAE_NXZ
.long ?IsParticleContainer@GameThingWithPos@@UAE_NXZ
.long ?IsSacrificeAltar@GameThingWithPos@@UAE_NXZ
.long ?IsPot@GameThingWithPos@@UAE_NXZ

.long ?IsComputerPlayer@GameThingWithPos@@UBE_NXZ
.long ?CanBeThrownByPlayer@Fragment@@UAEIXZ
.long ?SetSkeleton@GameThingWithPos@@UAEXH@Z
.long ?IsSpellSeed@GameThingWithPos@@UBE_NXZ

.long ?IsSpellShield@GameThingWithPos@@UBE_NXZ
.long ?IsPileResource@GameThingWithPos@@UBE_NXZ
.long ?IsScriptTimer@GameThingWithPos@@UBE_NXZ
.long ?CreateBuildingSite@MultiMapFixed@@UAE_NXZ
.long ?GetQueryFirstEnumText@Object@@UAE?AW4HELP_TEXT@@XZ
.long ?GetQueryLastEnumText@Object@@UAE?AW4HELP_TEXT@@XZ
.long ?GetFOVHelpMessageSet@Object@@UAEIXZ
.long ?GetFOVHelpCondition@Object@@UAEIXZ
.long ?GetScriptObjectType@Fragment@@UAEIXZ
.long ?GetFacingDirection@GameThingWithPos@@UAEMXZ
.long ?SetAffectedByWind@GameThingWithPos@@UAEXH@Z
.long ?GetReactionPower@GameThingWithPos@@UAEMXZ

.long ?GetSpellCastPos@GameThingWithPos@@UAEXPAUMapCoords@@@Z
.long ?CleanUpBeforeReset@GameThingWithPos@@UAEXXZ
.long ?DestroyedByBeam@Object@@UAEXXZ
.long ?GetXAngle@MobileStatic@@UAEMXZ
.long ?GetYAngle@Object@@UAEMXZ
.long ?GetZAngle@MobileStatic@@UAEMXZ
.long ?SetFocus@Object@@UAEXPBULHPoint@@@Z
.long ?SetXYZAngles@MobileStatic@@UAEXMMM@Z
.long ?SetXYZAnglesAndScale@MobileStatic@@UAEXMMMM@Z
.long ?SetJustScale@Object@@UAEXM@Z
.long ?SetYJustAngle@Object@@UAEXM@Z
.long ?SetYAngle@Object@@UAEXM@Z
.long ?UpdateFrom3DPosition@Object@@UAEXXZ
.long ?MoveAlongPath@Object@@UAEIXZ
.long ?IsReachable@Object@@UAE_NXZ
.long ?BlocksTownClearArea@MobileStatic@@UBE_NXZ
.long ?Create3DObject@Fixed@@UAEXXZ
.long ?GetMapChild@MultiMapFixed@@UAEPAVObject@@PBUMapCell@@@Z
.long ?SetMapChild@MultiMapFixed@@UAEXPAVObject@@PAUMapCell@@@Z
.long ?InsertMapObject@MultiMapFixed@@UAEXXZ
.long ?RemoveMapObject@MultiMapFixed@@UAEXXZ                                                                                                   // [0xf1fe0] 0x008a9000 + 0xf1fe0 = 0x0099afe0
.long ?InsertMapObjectToCell@Fixed@@UAEXPAUMapCell@@@Z
.long ?RemoveMapObjectFromCell@Object@@UAEXPAUMapCell@@@Z
.long ?IsObjectInMap@Object@@UAE_NPAUMapCell@@@Z
.long ?IsObjectInMapCheck@Object@@UAE_NXZ
.long ?MoveMapObject@MultiMapFixed@@UAEHPAUMapCoords@@@Z
.long ?ActualMoveMapObject@Rock@@UAEXPBUMapCoords@@@Z
.long ?GetPtr@Object@@UAEPAV1@XZ
.long ?GetMeshRadius@Object@@UAEMXZ
.long ?Get3DObjectForPSys@Object@@UAEPAVGame3DObject@@XZ
.long ?GetPSysFireFlameMatrix@Object@@UAE_NPAULHMatrix@@@Z
.long ?GetPSysFireLocalRndFlamePos@Object@@UAE_NPAULHPoint@@PAH@Z
.long ?GetPSysFireWorldFlamePos@Object@@UAE_NPBULHPoint@@HPAU2@@Z
.long ?GetPSysFireLocalFlameScale@Object@@UAEMXZ
.long ?GetPSysFireMaxFlames@Object@@UAEIXZ
.long ?GetSpotEffectPower@Object@@UAEMXZ
.long ?GetAggressorValueFromDamage@Object@@UAEMM@Z
.long ?GetHoldType@MobileStatic@@UAE?AW4HOLD_TYPE@@XZ
.long ?GetHoldRadius@Object@@UAEMXZ
.long ?GetHoldLoweringMultiplier@MobileStatic@@UAEMXZ
.long ?GetHoldYRotate@Object@@UAEMXZ
.long ?HandShouldFeelWithMeshIntersect@Object@@UAE_NXZ
.long ?SetSpecularColor@Object@@UAEXULH3DColor@@@Z
.long ?GetSpecularColor@Object@@UAE?AULH3DColor@@XZ
.long ?SetBeliefSprite@Object@@UAEXPAVLH3DSprite@@@Z
.long ?GetBeliefSprite@Object@@UAEPAVLH3DSprite@@XZ
.long ?SetLife@Object@@UAEXM@Z
.long ?IsAlive@Object@@UAE_NXZ
.long ?ReduceLife@MultiMapFixed@@UAEXMPAVGPlayer@@@Z
.long ?IncreaseLife@Object@@UAEXM@Z
.long ?GetSacrificeValue@Object@@UAEMXZ
.long ?ReduceLifeDueToBurning@Object@@UAEXMPAVGPlayer@@@Z
.long ?FillInEffectDefenceMultiplier@Object@@UAEXPAVEffectNumbers@@@Z
.long ?ApplyEffect@Object@@UAEXPBXPAVEffectValues@@@Z
.long ?GetDamageEffect@Object@@UAEMPAVEffectValues@@@Z
.long ?GetHealEffect@Object@@UAEMPAVEffectValues@@@Z
.long ?GetActualObjectToEffect@Object@@UAEPAXPAVGPlayer@@_N@Z
.long ?DrawValue@Object@@UAEXHM@Z
.long ?ScaffoldMoved@Object@@UAEXPAVScaffold@@@Z
.long ?GetHeatCapacity@Object@@UAEMXZ
.long ?GetFireGPHXDrawn@Object@@UAEXPA_N000@Z
.long ?GetRainCoolingMultiplier@Object@@UAEMXZ
.long ?GetDefaultFireCentrePos@Object@@UAEPAULHPoint@@PAU2@@Z
.long ?GetDefaultFireRadius@Object@@UAEMXZ
.long ?DestroyedByEffect@Object@@UAEIPAVGPlayer@@M@Z
.long ?Process@MultiMapFixed@@UAEIXZ
.long ?ProcessBySpell@Object@@UAEIPAVSpell@@@Z
.long ?ApplySingleEffect@Object@@UAEXW4EFFECT_TYPE@@MPAVGameThing@@PBUMapCoords@@@Z
.long ?GetMesh@MobileStatic@@UBEHXZ
.long ?GetDetailMesh@Object@@UAEHH@Z
.long ?Draw@Fragment@@UAEXXZ
.long ?DrawOutOfMap@Object@@UAEX_N@Z
.long ?IsG3DObjectDrawnInHand@Object@@UAE_NXZ
.long ?GetDrawRegion@Object@@UAEXPAULHRegion@@@Z
.long ?ProcessState@Object@@UAEIXZ
.long ?GetProjectileSpeed@Object@@UAEMXZ
.long ?CanBePickedUp@MobileStatic@@UAE_NXZ
.long ?CanBeCrushed@Fixed@@UAE_NXZ
.long ?GetTopPos@Object@@UAEMXZ
.long ?GetVillagerHugRadius@Object@@UAEMXZ
.long ?GetWeight@Object@@UAEMXZ
.long ?GetWorldMatrix@MobileStatic@@UAEXPAULHMatrix@@@Z
.long ?CanBeSuckedIntoVortex@Object@@UAE_NPAVLandscapeVortex@@@Z
.long ?GetDiscipleStateIfInteractedWith@MultiMapFixed@@UAEIPAVGInterfaceStatus@@PAVVillager@@@Z
.long ?GetWorkingPos@Object@@UAEPAUMapCoords@@PAU2@PAV1@@Z
.long ?GetHeightForHandAboveInteractObject@Object@@UAEMXZ
.long ?GetHandHelpMessageSet@Object@@UAEIXZ
.long ?GetHandHelpCondition@Object@@UAEIXZ
.long ?CallVirtualFunctionsForCreation@MobileStatic@@UAEXABUMapCoords@@@Z
.long ?Get3DType@Object@@UAE?AW4LH3DObject__ObjectType@@XZ
.long ?GetFoodValue@Object@@UAEMW4FOOD_TYPE@@@Z
.long ?GetWoodValue@Object@@UAEMXZ
.long ?GetFoodType@Object@@UAE?AW4FOOD_TYPE@@XZ
.long ?GetImpressiveValue@Object@@UAEMXZ
.long ?IsSpellSeedReturnPoint@Object@@UAE_NXZ
.long ?IsABeliever@Object@@UAE_NXZ
.long ?AsMultiMapFixed@MultiMapFixed@@UAEPAV1@XZ
.long ?ApplyWaterSpell@Object@@UAEMPAVSpellWater@@@Z
.long ?IsResourceStore@Rock@@UAE_NW4RESOURCE_TYPE@@@Z
.long ?DeleteObjectAndTakeResource@MultiMapFixed@@UAE_NPAVObject@@PAVGInterfaceStatus@@@Z
.long ?GetRadiusMultiplierForApplyingPotToPos@Object@@UAEMXZ
.long ?DoCreatureMimicAfterAddingResource@MultiMapFixed@@UAE_NW4RESOURCE_TYPE@@PAVGInterfaceStatus@@@Z
.long ?GetResourceType@Rock@@UAE?AW4RESOURCE_TYPE@@XZ
.long ?GetDefaultResource@Rock@@UAEHXZ
.long ?SetPoisonedResource@Object@@UAEXW4RESOURCE_TYPE@@H@Z
.long ?SetPoisoned@Object@@UAEXH@Z
.long ?IsLockedInInteract@Object@@UAE_NXZ
.long ?SetDying@Object@@UAE_NXZ
.long ?IsAttackable@Object@@UAE_NPAV1@@Z
.long ?IsAllied@Object@@UAE_NPAV1@@Z
.long ?IsTouching@Object@@UAE_NPAUMapCoords@@0@Z
.long ?IsTouching@Object@@UAE_NPAUMapCoords@@@Z
.long ?IsTouching@Object@@UAE_NPAV1@M@Z
.long ?StartOnFire@MultiMapFixed@@UAEXXZ
.long ?EndOnFire@Object@@UAEXXZ
.long ?GetDistanceFromObject@Object@@UAEMPAV1@@Z
.long ?GetTribalPower@Object@@UAEMW4TRIBE_TYPE@@@Z
.long ?ValidForLockedSelectProcess@Fixed@@UAE_NPAVGInterfaceStatus@@@Z, ?NetworkFriendlyStartLockedSelect@Fixed@@UAE_NPAVGInterfaceStatus@@@Z
.long ?NetworkUnfriendlyStartLockedSelect@Object@@UAE_NXZ
.long ?IsReadyForNetworkUnfriendlyLockedSelect@Object@@UAE_NXZ
.long ?NetworkUnfriendlyLockedSelect@Object@@UAE_NPAVControlHandUpdateInfo@@@Z
.long ?GetReadyForNetworkUnfriendlyEndLockedSelect@Object@@UAE_NXZ
.long ?IsReadyForNetworkUnfriendlyEndLockedSelect@Object@@UAE_NXZ
.long ?NetworkUnfriendlyEndLockedSelect@Object@@UAE_NXZ
.long ?NetworkFriendlyEndLockedSelect@Object@@UAE_NPAVGInterfaceStatus@@@Z
.long ?ValidAsInterfaceTarget@Object@@UAE_NXZ
.long ?ValidAsInterfaceLeashTarget@Object@@UAE_NXZ
.long ?SelectOnlyAfterRecSystem@Object@@UAE_NXZ
.long ?ValidForPlaceInHand@Fragment@@UAEIPAVGInterfaceStatus@@@Z
.long ?InterfaceSetInMagicHand@Fixed@@UAE_NPAVGInterfaceStatus@@@Z
.long ?InterfaceSetOutMagicHand@Object@@UAE_NPAVGInterfaceStatus@@@Z
.long ?ValidToRemoveFromHand@Object@@UAE_NPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?RemoveFromHand@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?ValidToShakeFromHand@Object@@UAE_NXZ
.long ?InterfaceMustBeInInfluenceForInteraction@Object@@UAE_NXZ
.long ?IsTuggable@Object@@UAE_NXZ
.long ?ValidToApplyThisToObject@MobileStatic@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z
.long ?ApplyThisToObject@MobileStatic@@UAEIPAVGInterfaceStatus@@PAVObject@@PAUGestureSystemPacketData@@@Z
.long ?ValidToApplyThisToMapCoord@MobileStatic@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@@Z
.long ?ApplyThisToMapCoord@MobileStatic@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@PAUGestureSystemPacketData@@@Z
.long ?ValidForLockedApplyProcess@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?ApplyUnlockProcess@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?IsInterfacePowerUpWhenInHand@Object@@UAEIXZ
.long ?ApplyOnlyAfterRecSystem@Object@@UAEIXZ
.long ?ApplyOnlyAfterReleased@MobileStatic@@UAEIXZ
.long ?InterfaceValidToTap@Fragment@@UAEIPAVGInterfaceStatus@@@Z
.long ?InterfaceTap@Rock@@UAEIPAVGInterfaceStatus@@@Z
.long ?InterfaceValidToGiveObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z
.long ?InterfaceGiveObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z
.long ?InterfaceValidToInteractAsMapCoordsObject@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?InterfaceInteractAsMapCoordsObject@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?ThrowObjectFromHand@Object@@UAEIPAVGInterfaceStatus@@H@Z
.long ?ValidToSelectFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?ValidToApplyFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?SelectFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?ApplyFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?ValidToFightThisToObject@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?FightThisToObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z
.long ?IsEffectReceiver@Object@@UAE_NPAVEffectValues@@@Z
.long ?CanBeDestroyedBySpell@Object@@UAE_NPAVSpell@@@Z
.long ?GetImportance@Object@@UAEMXZ
.long ?InitialisePhysicsFromHand@Object@@UAEIPAULHPoint@@0PAVGInterfaceStatus@@PAV1@H@Z
.long ?InitialisePhysics@Object@@UAEIPBULHPoint@@0PAV1@_NPAVGInterfaceStatus@@@Z
.long ?GetPhysicsConstantsType@Fragment@@UAEIXZ
.long ?SetUpPhysOb@Fragment@@UAEXPAUPhysOb@@@Z
.long ?EndPhysics@Fragment@@UAEXPAVPhysicsObject@@_N@Z
.long ?DropSfx@Object@@UAEIXZ
.long ?GetBoundingSphere@MobileStatic@@UAEXAAULHPoint@@AAM@Z
.long ?InteractsWithPhysicsObjects@Fragment@@UAE_NXZ
.long ?ChecksVerticesVObjects@MobileStatic@@UAEIXZ
.long ?ShouldPhysicsRaiseObjectUntilNotIntersectingThis@Object@@UAEXPAV1@@Z
.long ?PhysicallyDestroysAbodes@MobileStatic@@UAEIXZ
.long ?ReactToPhysicsImpact@Fragment@@UAEXPAVPhysicsObject@@_N@Z
.long ?CanBecomeAPhysicsObject@MobileStatic@@UAE_NXZ
.long ?GetAlwaysRemainsInPhysicsInternalSystem@Object@@UAE_NXZ
.long ?HasSunk@Object@@UAE_NXZ
.long ?CreatureMustAvoid@Fragment@@UAE_NPAVCreature@@@Z
.long ?AddToRoutePlan@MobileStatic@@UAEXPAURPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z
.long ?GetRoutePlanRadius@Object@@UAEMPAVCreature@@@Z
.long ?VillagerMustAvoid@Fixed@@UAE_NPAVVillager@@@Z
.long ?IsFireMan@Object@@UAE_NXZ
.long ?IsARootedObject@Object@@UAE_NXZ
.long ?GetCollideSoundType@Fragment@@UAE?AW4SOUND_COLLISION_TYPE@@XZ
.long ?IsSolidToNewAbode@MobileStatic@@UAEIXZ
.long ?RemoveFromGame@Object@@UAEIXZ
.long ?GetLandingPointCount@Object@@UAEHXZ
.long ?GetLandingPoint@Object@@UAE_NEPAULHPoint@@@Z
.long ?GetTastiness@MobileStatic@@UAEIXZ
.long ?IsScary@Object@@UAE_NXZ
.long ?GetInspectObjectPos@Object@@UAE_NPAVVillager@@PAUMapCoords@@@Z
.long ?DiscipleInHandNear@Object@@UAEXPAVVillager@@PAVGInterfaceStatus@@@Z
.long ?GetSpecialPos@Fixed@@UAE_NIPAUMapCoords@@@Z, ?GetTownArtifact@Fixed@@UAEPAVGameThing@@XZ, ?IsTownArtifact@Fixed@@UAE_NXZ
.long ?ProcessInHand@Object@@UAE_NXZ
.long ?ProcessInInteract@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?GetObjectCollide@Object@@UAEIXZ
.long ?CalculateForceAppliedBy@Object@@UAEMPAVLiving@@@Z
.long ?IsPushable@Object@@UAE_NXZ
.long ?PushObject@Object@@UAEXPAVLiving@@PAUMapCoords@@@Z
.long ?PushObject@Object@@UAEXPAVLiving@@@Z
.long ?GetCarriedTreeType@Object@@UAEIXZ
.long ?GetFacingPitch@Object@@UAEMXZ
.long ?SetHeadPos@Object@@UAEXPAUMapCoords@@@Z
.long ?SaveObject@MobileStatic@@UAEIAAULHOSFile@@ABUMapCoords@@@Z
.long ?IsAPotFromABuildingSite@Object@@UAE_NXZ
.long ?GetNearestEdgeOfObject@Object@@UAEXPAV1@@Z
.long ?GetNearestPosOfObject@Object@@UAEXPAV1@@Z
.long ?GetNearestEdgeToPos@Object@@UAEXPBUMapCoords@@@Z
.long ?GetNearestEdge@Object@@UAEXMM@Z
.long ?GetImmersionTexture@Object@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ
.long ?GetInHandImmersionTexture@Fragment@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ
.long ?ShouldFootpathsGoRound@Fragment@@UAE_NXZ                                                                                       // [0xf22e0] 0x008a9000 + 0xf22e0 = 0x0099b2e0
.long ?InitialiseIsFixedForMapList@Object@@UAEXH@Z
.long ?StandAnimation@Object@@UAEIXZ
.long ?GetCollideData@MultiMapFixed@@UAEPAVNewCollide@@XZ                                                                                                   // [0xf22f0] 0x008a9000 + 0xf22f0 = 0x0099b2f0
.long ?InsertMapObjectToCellAssumeFixed@Fixed@@UAEXPAUMapCell@@@Z
.long ?IsObjectFullyInMap@MultiMapFixed@@UAE_NXZ                                                                                                   // [0xf22f8] 0x008a9000 + 0xf22f8 = 0x0099b2f8
.long ?GetDoorPos@MultiMapFixed@@UAEPAUMapCoords@@PAU2@@Z
.long ?GetInfluence@MultiMapFixed@@UAEMXZ, ?IsPlaytimeStructure@MultiMapFixed@@UAE_NXZ, ?IsPlaytimeStarted@MultiMapFixed@@UAE_NXZ, ?AddPlaytimeVillager@MultiMapFixed@@UAE_NPAVVillager@@@Z                                                               // [0xf2300] 0x008a9000 + 0xf2300 = 0x0099b300
.long ?CheckMapObject@MultiMapFixed@@UAEXXZ, ?GetResourceDropPosForComputerPlayer@MultiMapFixed@@UAEXPAUMapCoords@@@Z, ?GetPercentBuilt@MultiMapFixed@@UAEMXZ, ?GetPercentRepaired@MultiMapFixed@@UAEMXZ                                                               // [0xf2310] 0x008a9000 + 0xf2310 = 0x0099b310
.long ?GetPercentRepairedFromWhenDamaged@MultiMapFixed@@UAEMXZ, ?IsRepaired@MultiMapFixed@@UAE_NXZ, ?IsBuilt@MultiMapFixed@@UAE_NXZ, ?GetPercentRepairedForNonFunctional@MultiMapFixed@@UAEMXZ                                                               // [0xf2320] 0x008a9000 + 0xf2320 = 0x0099b320
.long ?GetPercentForDrawBuilding@MultiMapFixed@@UAEMXZ, ?GetPercentAbodeFullWithAdults@MultiMapFixed@@UAEMXZ, ?GetPercentAbodeFullWithChildren@MultiMapFixed@@UAEMXZ, ?IsDrawBuilding@MultiMapFixed@@UAE_NXZ                                                               // [0xf2330] 0x008a9000 + 0xf2330 = 0x0099b330
.long ?Built@MultiMapFixed@@UAE_NXZ, ?Repaired@MultiMapFixed@@UAE_NXZ, ?GetBuildingSiteWood@MultiMapFixed@@UAEIPAI@Z, ?GetDestructionMesh@MultiMapFixed@@UAEPAVLH3DMesh@@XZ                                                               // [0xf2340] 0x008a9000 + 0xf2340 = 0x0099b340
.long ?RemoveDamage@MultiMapFixed@@UAEXXZ, ?GetBuildingObject@MultiMapFixed@@UAEPAXXZ, ?IsCivic@MultiMapFixed@@UAE_NXZ, ?GetAbodeType@MultiMapFixed@@UAE?AW4ABODE_TYPE@@XZ                                                               // [0xf2350] 0x008a9000 + 0xf2350 = 0x0099b350
.long ?SetPower@MultiMapFixed@@UAEXM@Z, ?GetResourcePos@MultiMapFixed@@UAEPAUMapCoords@@W4RESOURCE_TYPE@@H@Z, ?IsPoisonedResource@MultiMapFixed@@UAE_NXZ, ?GetResourceNearestEdge@MultiMapFixed@@UAEPAUMapCoords@@PAU2@W4RESOURCE_TYPE@@PAVObject@@H@Z                                                               // [0xf2360] 0x008a9000 + 0xf2360 = 0x0099b360
.long ?GetDesireToBeRepaired@MultiMapFixed@@UAEMXZ, ?AddToPlayer@MultiMapFixed@@UAEXXZ, ?RemoveFromPlayer@MultiMapFixed@@UAEXXZ, ?DoResourceAdding@MultiMapFixed@@UAEIW4RESOURCE_TYPE@@PAVGInterfaceStatus@@_NPAUMapCoords@@H@Z                                                               // [0xf2370] 0x008a9000 + 0xf2370 = 0x0099b370
.long ?DoResourceRemoving@MultiMapFixed@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_N@Z, ?CalulateAmountOverMaximum@MultiMapFixed@@UAEHW4RESOURCE_TYPE@@@Z, ?SetTown@MultiMapFixed@@UAEXPAVTown@@@Z, ?RemovePotFromStructure@MultiMapFixed@@UAEXPAVPotStructure@@@Z                                                               // [0xf2380] 0x008a9000 + 0xf2380 = 0x0099b380
.long ?GetShouldNotBeAddedToPlanned@MultiMapFixed@@UAE_NXZ, ?SetShouldNotBeAddedToPlanned@MultiMapFixed@@UAEX_N@Z, ?BuildBy@MultiMapFixed@@UAEXM@Z, ?ConvertToPlanned@MultiMapFixed@@UAEPAVPlannedMultiMapFixed@@XZ                                                               // [0xf2390] 0x008a9000 + 0xf2390 = 0x0099b390
.long ?CreateCollideData@MultiMapFixed@@UAEXXZ
.long ?IsMovable@Rock@@UAE_NXZ                                                                                                   // [0xf23a4] 0x008a9000 + 0xf23a4 = 0x0099b3a4

VftableAndRTTI VortexSave                                                                                          // [0xf23a8] 0x008a9000 + 0xf23a8 = 0x0099b3a8
.long ?Serialise@Base@@UAEXAAVArchive@@@Z
.long ??_GVortexSave@@UAEPAXI@Z                                                                                                   // [0xf23b0] 0x008a9000 + 0xf23b0 = 0x0099b3b0
.long ?Delete@Base@@UAEXH@Z
.long ?ToBeDeleted@GameThing@@UAEXH@Z
.long ?Get3DSoundPos@Base@@UAEHPAULHPoint@@@Z
.long ?CleanUpForSerialisation@Base@@UAEXXZ
.long ?Dump@Base@@UAEXXZ
.long ?GetPlayer@GameThing@@QAEPAVGPlayer@@XZ
.long ?SetPlayer@GameThing@@QAEXPAVGPlayer@@@Z
.long ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z
.long ?RemoveDance@GameThing@@QAEXXZ
.long ?IsAvailable@GameThing@@QAE_NXZ
.long ?IsCreature@GameThing@@QAE_NPAVCreature@@@Z
.long ?IsCreature@GameThing@@UAE_NXZ
.long ?IsCreatureNotTooNear@GameThing@@UAE_NPAVCreature@@@Z
.long ?GetDrawImportance@GameThing@@QAEMXZ
.long ?GetMaxAlignmentChangePerGameTurn@GameThing@@UAEMXZ
.long ?GetComputerSeen@GameThing@@UAE_NXZ
.long ?GetTown@GameThing@@QAEPAVTown@@XZ
.long ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z
.long ?SetVillagerActivity@GameThing@@UAEXPAVVillager@@@Z
.long ?UpdateVillagerActivityEffect@GameThing@@QAEIPAVVillager@@@Z
.long ?MaintainSpell@GameThing@@UAEXIM@Z
.long ?UpdateSpellInfo@GameThing@@QAEXPAVSpell@@PAVPSysProcessInfo@@@Z
.long ?GetRadius@GameThing@@QAEMXZ
.long ?Get2DRadius@GameThing@@QAEMXZ
.long ?GetPlayerWhoLastPickedMeUp@GameThing@@QAEPAVGPlayer@@XZ
.long ?GetPlayerWhoLastDroppedMe@GameThing@@QAEPAVGPlayer@@XZ
.long ?IsFootpathLink@GameThing@@QAE_NXZ
.long ?GetFootpathLink@GameThing@@QAEPAVGFootpathLink@@XZ
.long ?AddFootpathLink@GameThing@@QAEXPAVGFootpath@@@Z
.long ?GetNearestPathTo@GameThing@@QAEIABUMapCoords@@MH@Z
.long ?UseFootpathIfNecessary@GameThing@@QAEXPAVLiving@@ABUMapCoords@@E@Z
.long ?AddFootpath@GameThing@@QAEIPAVGFootpath@@@Z
.long ?RemoveFootpath@GameThing@@QAEIPAVGFootpath@@@Z
.long ?JustAddResource@GameThing@@QAEIW4RESOURCE_TYPE@@K_N@Z
.long ?JustRemoveResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z
.long ?JustGetResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z
.long ?GetResource@GameThing@@QAEIW4RESOURCE_TYPE@@@Z
.long ?AddResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPAVGInterfaceStatus@@_NABUMapCoords@@H@Z
.long ?RemoveResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPAVGInterfaceStatus@@PA_N@Z
.long ?CastCreature@GameThing@@QAEPAVCreature@@XZ
.long ?CastPlayer@GameThing@@QAEPAVGPlayer@@XZ
.long ?CastOneOffSpellSeed@GameThing@@UAEIXZ
.long ?CastAbode@GameThing@@QAEPAVAbode@@XZ
.long ?CastMultiMapFixed@GameThing@@QAEPAVMultiMapFixed@@XZ
.long ?CastSpellIcon@GameThing@@UAEIXZ
.long ?CastTree@GameThing@@UAEIXZ
.long ?IsDeletedOnNewMap@GameThing@@QAE_NXZ
.long ?GetNumberOfInstanceForGlobalList@GameThing@@QAEGXZ
.long ?GetTownArtifactValue@GameThing@@QAEMXZ
.long ?CanBecomeArtifact@GameThing@@QAE_NXZ
.long ?DrawInHand@GameThing@@QAEXPAVGInterfaceStatus@@@Z
.long ?IsFunctional@GameThing@@QAE_NXZ
.long ?GetDebugText@GameThing@@QAEPADXZ
.long ?GetSampleForAttack@GameThing@@UAEIXZ
.long ?GetGuidanceResourceType@GameThing@@UAEIXZ
.long ?GetShowNeedsPos@MultiMapFixed@@UAEIKPAUMapCoords@@@Z
.long ?Load@VortexSave@@UAEIAAVGameOSFile@@@Z
.long ?Save@VortexSave@@UAEIAAVGameOSFile@@@Z
.long ?GetSaveType@VortexSave@@UAEIXZ                                                                           // [0xf2494] 0x008a9000 + 0xf2494 = 0x0099b494
.long ?SaveExtraData@GameThing@@QAEXAAVGameOSFile@@@Z
.long ?ResolveLoad@VortexSave@@UAEXXZ                                                                                                   // [0xf24a4] 0x008a9000 + 0xf24a4 = 0x0099b4a4

VftableAndRTTI WayPoint                                                                                            // [0xf24a8] 0x008a9000 + 0xf24a8 = 0x0099b4a8
.long ?Serialise@Base@@UAEXAAVArchive@@@Z
.long ??_GWayPoint@@UAEPAXI@Z                                                                                                   // [0xf24b0] 0x008a9000 + 0xf24b0 = 0x0099b4b0
.long ?Delete@Base@@UAEXH@Z
.long ?ToBeDeleted@WayPoint@@UAEXH@Z
.long ?Get3DSoundPos@GameThingWithPos@@UAEHPAULHPoint@@@Z
.long ?CleanUpForSerialisation@Base@@UAEXXZ
.long ?Dump@Base@@UAEXXZ
.long ?GetPlayer@GameThing@@QAEPAVGPlayer@@XZ
.long ?SetPlayer@GameThing@@QAEXPAVGPlayer@@@Z
.long ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z
.long ?RemoveDance@GameThing@@QAEXXZ
.long ?IsAvailable@GameThing@@QAE_NXZ
.long ?IsCreature@GameThing@@QAE_NPAVCreature@@@Z
.long ?IsCreature@GameThing@@UAE_NXZ
.long ?IsCreatureNotTooNear@GameThing@@UAE_NPAVCreature@@@Z
.long ?GetDrawImportance@GameThing@@QAEMXZ
.long ?GetMaxAlignmentChangePerGameTurn@GameThing@@UAEMXZ
.long ?GetComputerSeen@GameThing@@UAE_NXZ
.long ?GetTown@GameThing@@QAEPAVTown@@XZ
.long ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z
.long ?SetVillagerActivity@GameThing@@UAEXPAVVillager@@@Z
.long ?UpdateVillagerActivityEffect@GameThing@@QAEIPAVVillager@@@Z
.long ?MaintainSpell@GameThing@@UAEXIM@Z
.long ?UpdateSpellInfo@GameThing@@QAEXPAVSpell@@PAVPSysProcessInfo@@@Z
.long ?GetRadius@GameThing@@QAEMXZ
.long ?Get2DRadius@GameThing@@QAEMXZ
.long ?GetPlayerWhoLastPickedMeUp@GameThing@@QAEPAVGPlayer@@XZ
.long ?GetPlayerWhoLastDroppedMe@GameThing@@QAEPAVGPlayer@@XZ
.long ?IsFootpathLink@GameThing@@QAE_NXZ
.long ?GetFootpathLink@GameThing@@QAEPAVGFootpathLink@@XZ
.long ?AddFootpathLink@GameThing@@QAEXPAVGFootpath@@@Z
.long ?GetNearestPathTo@GameThing@@QAEIABUMapCoords@@MH@Z
.long ?UseFootpathIfNecessary@GameThingWithPos@@QAEXPAVLiving@@ABUMapCoords@@E@Z
.long ?AddFootpath@GameThing@@QAEIPAVGFootpath@@@Z
.long ?RemoveFootpath@GameThing@@QAEIPAVGFootpath@@@Z
.long ?JustAddResource@GameThing@@QAEIW4RESOURCE_TYPE@@K_N@Z
.long ?JustRemoveResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z
.long ?JustGetResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z
.long ?GetResource@GameThing@@QAEIW4RESOURCE_TYPE@@@Z
.long ?AddResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPAVGInterfaceStatus@@_NABUMapCoords@@H@Z
.long ?RemoveResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPAVGInterfaceStatus@@PA_N@Z
.long ?CastCreature@GameThing@@QAEPAVCreature@@XZ
.long ?CastPlayer@GameThing@@QAEPAVGPlayer@@XZ
.long ?CastOneOffSpellSeed@GameThing@@UAEIXZ
.long ?CastAbode@GameThing@@QAEPAVAbode@@XZ
.long ?CastMultiMapFixed@GameThing@@QAEPAVMultiMapFixed@@XZ
.long ?CastSpellIcon@GameThing@@UAEIXZ
.long ?CastTree@GameThing@@UAEIXZ
.long ?IsDeletedOnNewMap@GameThing@@QAE_NXZ
.long ?GetNumberOfInstanceForGlobalList@GameThing@@QAEGXZ
.long ?GetTownArtifactValue@GameThing@@QAEMXZ
.long ?CanBecomeArtifact@GameThing@@QAE_NXZ
.long ?DrawInHand@GameThing@@QAEXPAVGInterfaceStatus@@@Z
.long ?IsFunctional@GameThing@@QAE_NXZ
.long ?GetDebugText@WayPoint@@UAEPADXZ                                                                                                   // [0xf2584] 0x008a9000 + 0xf2584 = 0x0099b584
.long ?GetSampleForAttack@GameThing@@UAEIXZ
.long ?GetGuidanceResourceType@GameThing@@UAEIXZ
.long ?GetShowNeedsPos@MultiMapFixed@@UAEIKPAUMapCoords@@@Z
.long ?Load@GameThingWithPos@@QAEIAAVGameOSFile@@@Z
.long ?Save@GameThingWithPos@@UAEXPAUGameOSFile@@@Z
.long ?GetSaveType@WayPoint@@UAEIXZ
.long ?SaveExtraData@GameThing@@QAEXAAVGameOSFile@@@Z
.long ?ResolveLoad@GameThing@@QAEXXZ
.long ?SetPos@GameThingWithPos@@QAEXABUMapCoords@@@Z
.long ?GetPos@GameThingWithPos@@QAEPAUMapCoords@@XZ
.long ?GetArrivePos@GameThingWithPos@@QAEPAUMapCoords@@XZ
.long ?PhysicsEditorCreate@GameThingWithPos@@QAEXH@Z
.long ?GetCreatureBeliefType@GameThingWithPos@@UAEIXZ
.long ?GetCreatureBeliefListType@GameThingWithPos@@UAEIXZ

.long ?GetCitadel@GameThingWithPos@@UAEPAUCitadel@@XZ
.long ?GetOrigin@GameThingWithPos@@UBEIXZ
.long ?GetLife@GameThingWithPos@@UBEMXZ
.long ?GetScale@GameThingWithPos@@UBEMXZ

.long ?SetScale@GameThingWithPos@@UAEXM@Z
.long ?GetPower@GameThingWithPos@@UBEMXZ
.long ?GetPSysPower@GameThingWithPos@@UBEMXZ
.long ?GetSpeedInMetres@GameThingWithPos@@UBEMXZ

.long ?SetSpeedInMetres@GameThingWithPos@@UAEXMH@Z
.long ?GetRunningSpeedInMetres@GameThingWithPos@@UBEMXZ
.long ?GetDistanceFromObject@GameThingWithPos@@UBEMPAUMapCoords@@@Z
.long ?GetDefaultSpeedInMetres@GameThingWithPos@@UAEMXZ

.long ?SetHeight@GameThingWithPos@@UAEXM@Z
.long ?SetMaxHeight@GameThingWithPos@@UAEXM@Z
.long ?GetMaxHeight@GameThingWithPos@@UAEMXZ
.long ?GetPSysBeamTargetPos@GameThingWithPos@@UAEXPAULHPoint@@@Z

.long ?GetSpeedInMetresPerSecond@GameThingWithPos@@UBEMXZ
.long ?SetSpeedInMetresPerSecond@GameThingWithPos@@UAEXMH@Z
.long ?GetRunningSpeedInMetresPerSecond@GameThingWithPos@@UAEMXZ
.long ?GetDefaultSpeedInMetresPerSecond@GameThingWithPos@@UAEMXZ

.long ?IsAnimate@GameThingWithPos@@UAE_NXZ
.long ?GetMovementDirection@GameThingWithPos@@UAEXPAULHPoint@@@Z
.long ?GetPhysicsMovementDirection@GameThingWithPos@@UAEXPAULHPoint@@@Z
.long ?GetInteractPos@GameThingWithPos@@UAEXPAULHPoint@@@Z

.long ?IsMoving@GameThingWithPos@@UBE_NXZ
.long ?IsObjectInMap@GameThingWithPos@@UAE_NXZ
.long ?IsDrowning@GameThingWithPos@@UAE_NXZ
.long ?IsCannotBePickedUp@GameThingWithPos@@UBE_NXZ

.long ?GetOverwritePickUpToolTip@GameThingWithPos@@UAEIXZ
.long ?IsStompable@GameThingWithPos@@UAE_NXZ
.long ?IsAvailableForStateChange@GameThingWithPos@@UAE_NXZ
.long ?IsInteractable@GameThingWithPos@@UAE_NXZ

.long ?GetOverwriteInteractableToolTip@GameThingWithPos@@UAEIXZ
.long ?GetOverwriteDropToolTip@GameThingWithPos@@UAEIXZ
.long ?GetOverwriteTapToolTip@GameThingWithPos@@UAEIXZ
.long ?IsCastShadowAtNight@GameThingWithPos@@UAE_NXZ

.long ?CleanupWhenDeleted@GameThingWithPos@@UAEXH@Z
.long ?GetImpressiveType@GameThingWithPos@@UAE?AW4IMPRESSIVE_TYPE@@XZ
.long ?GetImpressiveIntensity@GameThingWithPos@@UAEMW4IMPRESSIVE_TYPE@@@Z
.long ?GetImpressiveValue@GameThingWithPos@@UAEMPAULiving@@PAUReaction@@@Z

.long ?GetUpdateOfBoredomValue@GameThingWithPos@@UAEMPAUReaction@@PAV1@@Z
.long ?IsTown@GameThingWithPos@@UAE_NXZ
.long ?IsTown@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsActivityObjectWhichAngerAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsActivityObjectWhichCompassionAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsActivityObjectWhichPlayfulnessAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTownBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?TrueFunction@GameThingWithPos@@UAE_NXZ

.long ?FalseFunction@GameThingWithPos@@UAE_NXZ
.long ?IsNotLiving@GameThingWithPos@@UAE_NXZ
.long ?IsSuitableForCreatureActivity@GameThingWithPos@@UAE_NXZ
.long ?IsTownCentre@GameThingWithPos@@UAE_NXZ

.long ?IsTotemStatue@GameThingWithPos@@UAE_NXZ
.long ?IsTownDesireFlag@GameThingWithPos@@UAE_NXZ
.long ?IsRock@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsRock@GameThingWithPos@@UAE_NXZ

.long ?IsSpellDispenser@GameThingWithPos@@UAE_NXZ
.long ?IsMist@GameThingWithPos@@UAE_NXZ
.long ?IsQueryIcon@GameThingWithPos@@UAE_NXZ
.long ?IsStreetLight@GameThingWithPos@@UAE_NXZ

.long ?IsStreetLantern@GameThingWithPos@@UAE_NXZ
.long ?IsAbode@GameThingWithPos@@UAE_NXZ
.long ?IsField@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsField@GameThingWithPos@@UAE_NXZ

.long ?IsBuildingMaterial@GameThingWithPos@@UAE_NXZ
.long ?IsMagicFireBall@GameThingWithPos@@UAE_NXZ
.long ?IsSuitableForCreatureAction@GameThingWithPos@@UAE_NXZ
.long ?IsCitadelHeart@GameThingWithPos@@UAE_NXZ

.long ?IsDamaged@GameThingWithPos@@UAE_NXZ
.long ?CanBeHealedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeEatenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanCreatureEatMe@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeAttackedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeFrighteningToCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeHelpedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePlayedWithByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeImpressedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeInspectedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePoodUponByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeBefriendedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeSleptNextToByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePickedUpByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeStrokedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeKissedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeSetOnFire@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeStompedOnByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeThrownByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeGivenToVillager@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBePutInAStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeDestroyedByStoning@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeStonedAndEatenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeExaminedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeFoughtByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanReceiveGifts@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanActAsAContainer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsBeingBuilt@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?NeedsRepair@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOnFire@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsNotOnFire@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeUsedForBuilding@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsMushroom@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeUsedForRepair@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeGivenToTown@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeUsedToHoldWater@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBePutInFoodPile@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePutInWoodPile@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanHaveMagicFoodCastOnMe@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanHaveMagicWoodCastOnMe@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeBroughtBackToCitadel@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillager@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerFarFromHome@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerInTownWithoutManyBreeders@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsVillagerNotWorshipping@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCow@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePoodOn@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsVillagerWhoHasNotBeenImpressedRecently@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerWhoHasNotBeenDancedWithRecently@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?DoesVillagerBelongToATownWhichIsAlreadyImpressed@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?DoesTotemBelongToATownWhichIsVeryImpressedIndeed@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsDominantCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeDancedWith@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAggressive@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsWorshipSite@GameThingWithPos@@UAE_NXZ
.long ?IsWorshipSite@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?GetWorshipSite@GameThingWithPos@@UAEPAUWorshipSite@@XZ
.long ?IsWorkshop@GameThingWithPos@@UAE_NXZ

.long ?IsWorkshop@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsBuildingWhichIsBeingBuilt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStoragePitWithFoodInIt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsFieldWhichNeedsWatering@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsFieldWithFoodInIt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsFieldBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStoragePitBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStoragePitBelongingToMyPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?BenefitsFromHavingWaterSprinkledOnIt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTree@GameThingWithPos@@UAE_NXZ
.long ?IsTree@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTreeNotTooNearPlannedForest@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsTreeBigEnoughForCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAFoodPileOutsideStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAWoodPileOutsideStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsDoingSomethingInteresting@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeUsedForBuildingHomeByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPickupableRock@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCitadelPart@GameThingWithPos@@UAE_NXZ
.long ?IsCitadelPart@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsPlayingFootball@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPlayingFootballAndMySideHasJustScored@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPlayingFootballAndOtherSideHasJustScored@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeBroughtHomeByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsAnimalBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellAggressive@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellCompassionate@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsOneOffSpellPlayful@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellToRestoreHealth@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeKickedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeStolenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsStealableByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStealableSpell@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStealableScaffold@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTownBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsTotemWithStealableSpell@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCreatureAvailableForJointActivity@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCreatureNotAvailableForJointActivity@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToyAwayFromHome@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsToy@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToyBall@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToyDie@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToyCuddly@GameThingWithPos@@UBE_NPAVCreature@@@Z

.long ?IsLiving@GameThingWithPos@@UBE_NXZ
.long ?IsLiving@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?IsFence@GameThingWithPos@@UBE_NXZ
.long ?IsSpellIcon@GameThingWithPos@@UBE_NXZ

.long ?NothingScareyNearMe@GameThingWithPos@@UBE_NXZ
.long ?CanBeUsedForThrowingDamageByCreature@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?IsCreatureWhoSeemsFriendly@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?CanBeThrownInTheSeaPlayfully@GameThingWithPos@@UBE_NPAVCreature@@@Z

.long ?GetCreatureMimicType@GameThingWithPos@@UBEIXZ
.long ?GetHowMuchCreatureWantsToLookAtMe@GameThingWithPos@@UAEMXZ
.long ?IsFlock@GameThingWithPos@@UBE_NXZ
.long ?IsDance@GameThingWithPos@@UBE_NXZ

.long ?IsReward@GameThingWithPos@@UBE_NXZ
.long ?IsScriptContainer@GameThingWithPos@@UBE_NXZ
.long ?IsWeather@GameThingWithPos@@UBE_NXZ
.long ?IsSpell@GameThingWithPos@@UBE_NXZ

.long ?IsDeletedWhenReleasedFromScript@GameThingWithPos@@UAE_NXZ
.long ?IsMobileWallHug@GameThingWithPos@@UBE_NXZ
.long ?IsActive@GameThingWithPos@@UBE_NXZ
.long ?IsObjectTurningTooFastForCameraToFollowSmoothly@GameThingWithPos@@UBE_NXZ

.long ?CalculateWhereIWillBeAfterNSeconds@GameThingWithPos@@UAEXMPAULHPoint@@@Z
.long ?AttitudeToCreatureEating@GameThingWithPos@@UAEIXZ
.long ?GetText@WayPoint@@UAEPBDXZ
.long ?CalculateDesireForFood@GameThingWithPos@@UAEMXZ

.long ?CalculateDesireForRest@GameThingWithPos@@UAEMXZ
.long ?CalculatePeopleHidingIndicator@GameThingWithPos@@UAEMXZ
.long ?GetHeight@GameThingWithPos@@UBEMXZ
.long ?IsReadyForNewScriptAction@GameThingWithPos@@UBE_NXZ

.long ?ForDrawFXGetNumVertices@GameThingWithPos@@UAEHXZ
.long ?ForDrawFXGetVertexPos@GameThingWithPos@@UAEXHPAULHPoint@@@Z
.long ?SetInScript@GameThingWithPos@@UAEXH@Z
.long ?SetControlledByScript@GameThingWithPos@@UAEXH@Z

.long ?GetDeathReason@GameThingWithPos@@UAE?AW4DEATH_REASON@@XZ
.long ?IsInScript@GameThingWithPos@@UAE_NXZ
.long ?IsMaleVillager@GameThingWithPos@@UAE_NXZ
.long ?IsFemaleVillager@GameThingWithPos@@UAE_NXZ

.long ?IsAnimal@GameThingWithPos@@UAE_NXZ
.long ?IsAChild@GameThingWithPos@@UAE_NXZ
.long ?IsHouse@GameThingWithPos@@UAE_NXZ
.long ?IsObject@GameThingWithPos@@UBE_NXZ

.long ?IsFootball@GameThingWithPos@@UBE_NXZ
.long ?IsCitadel@GameThingWithPos@@UAE_NXZ
.long ?IsForest@GameThingWithPos@@UAE_NXZ
.long ?IsMobileObject@GameThingWithPos@@UAE_NXZ

.long ?IsMobileStatic@GameThingWithPos@@UAE_NXZ
.long ?IsAnyKindOfTree@GameThingWithPos@@UAE_NXZ
.long ?IsDeadTree@GameThingWithPos@@UAE_NXZ
.long ?IsPileFood@GameThingWithPos@@UAE_NXZ

.long ?IsFeature@GameThingWithPos@@UAE_NXZ
.long ?IsScriptMarker@GameThingWithPos@@UAE_NXZ
.long ?IsScriptHighlight@GameThingWithPos@@UAE_NXZ
.long ?IsWonder@GameThingWithPos@@UAE_NXZ

.long ?IsInfluenceRing@GameThingWithPos@@UAE_NXZ
.long ?IsPuzzleGame@GameThingWithPos@@UAE_NXZ
.long ?IsScaffold@GameThingWithPos@@UAE_NXZ
.long ?IsSkeleton@GameThingWithPos@@UBE_NXZ

.long ?IsPoisoned@GameThingWithPos@@UBE_NXZ
.long ?IsSpeedUp@GameThingWithPos@@UAE_NXZ
.long ?IsParticleContainer@GameThingWithPos@@UAE_NXZ
.long ?IsSacrificeAltar@GameThingWithPos@@UAE_NXZ

.long ?IsPot@GameThingWithPos@@UAE_NXZ
.long ?IsComputerPlayer@GameThingWithPos@@UBE_NXZ
.long ?CanBeThrownByPlayer@GameThingWithPos@@UBE_NXZ
.long ?SetSkeleton@GameThingWithPos@@UAEXH@Z

.long ?IsSpellSeed@GameThingWithPos@@UBE_NXZ
.long ?IsSpellShield@GameThingWithPos@@UBE_NXZ
.long ?IsPileResource@GameThingWithPos@@UBE_NXZ
.long ?IsScriptTimer@GameThingWithPos@@UBE_NXZ

.long ?CreateBuildingSite@GameThingWithPos@@UBE_NXZ
.long ?GetQueryFirstEnumText@GameThingWithPos@@UAE?AW4HELP_TEXT@@XZ
.long ?GetQueryLastEnumText@GameThingWithPos@@UAE?AW4HELP_TEXT@@XZ
.long ?GetFOVHelpMessageSet@GameThingWithPos@@UAEIXZ

.long ?GetFOVHelpCondition@GameThingWithPos@@UAEIXZ
.long ?GetScriptObjectType@GameThingWithPos@@UAEIXZ
.long ?GetFacingDirection@GameThingWithPos@@UAEMXZ
.long ?SetAffectedByWind@GameThingWithPos@@UAEXH@Z

.long ?GetReactionPower@GameThingWithPos@@UAEMXZ
.long ?GetSpellCastPos@GameThingWithPos@@UAEXPAUMapCoords@@@Z
.long ?CleanUpBeforeReset@GameThingWithPos@@UAEXXZ
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf29ac] 0x008a9000 + 0xf29ac = 0x0099b9ac

VftableAndRTTI GWeatherInfo                                                                                        // [0xf29b4] 0x008a9000 + 0xf29b4 = 0x0099b9b4
.long ?Serialise@Base@@UAEXAAVArchive@@@Z
.long ??_GGWeatherInfo@@UAEPAXI@Z                                                                                                   // [0xf29bc] 0x008a9000 + 0xf29bc = 0x0099b9bc
.long ?Delete@Base@@UAEXH@Z
.long ?ToBeDeleted@Base@@UAEXH@Z
.long ?Get3DSoundPos@Base@@UAEHPAULHPoint@@@Z
.long ?CleanUpForSerialisation@Base@@UAEXXZ
.long ?Dump@Base@@UAEXXZ
.long ?GetDebugText@GBaseInfo@@UBEPBDXZ
.long ?GetDebugColor@GBaseInfo@@UBE?AVLHColor@@XZ
.long ?GetBaseInfo@GWeatherInfo@@UAEPAVGBaseInfo@@AAI@Z                                                                                                   // [0xf29dc] 0x008a9000 + 0xf29dc = 0x0099b9dc
.long ?UpdateValue@GBaseInfo@@UAEXMKK@Z

VftableAndRTTI GWeather                                                                                            // [0xf29e4] 0x008a9000 + 0xf29e4 = 0x0099b9e4
.long ?Update@GWeather@@UAEXM@Z
.long ?DrawClouds@GWeather@@UAEXXZ                                                                                       // [0xf29e8] 0x008a9000 + 0xf29e8 = 0x0099b9e8
.long ?DebugDraw@GWeather@@UAEXXZ
.long ?CalcAtmos@GWeather@@UAEXPAULHPoint@@PAUWeatherInfo@@@Z
.long ??_GGWeather@@UAEPAXI@Z                                                                           // [0xf29f0] 0x008a9000 + 0xf29f0 = 0x0099b9f0

VftableAndRTTI GClimateInfo                                                                                        // [0xf29fc] 0x008a9000 + 0xf29fc = 0x0099b9fc
.long ?Serialise@Base@@UAEXAAVArchive@@@Z
.long ??_GGClimateInfo@@UAEPAXI@Z                                                                                                   // [0xf2a04] 0x008a9000 + 0xf2a04 = 0x0099ba04
.long ?Delete@Base@@UAEXH@Z
.long ?ToBeDeleted@Base@@UAEXH@Z
.long ?Get3DSoundPos@Base@@UAEHPAULHPoint@@@Z
.long ?CleanUpForSerialisation@Base@@UAEXXZ
.long ?Dump@Base@@UAEXXZ
.long ?GetDebugText@GBaseInfo@@UBEPBDXZ
.long ?GetDebugColor@GBaseInfo@@UBE?AVLHColor@@XZ
.long ?GetBaseInfo@GClimateInfo@@UAEPAVGBaseInfo@@AAI@Z                                                                                                   // [0xf2a24] 0x008a9000 + 0xf2a24 = 0x0099ba24
.long ?UpdateValue@GBaseInfo@@UAEXMKK@Z
.long 0x00000000                                                                                                   // [0xf2a2c] 0x008a9000 + 0xf2a2c = 0x0099ba2c
.long 0x11111111, 0x3fb11111, 0x00000000, 0x403e0000                                                               // [0xf2a30] 0x008a9000 + 0xf2a30 = 0x0099ba30
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf2a40] 0x008a9000 + 0xf2a40 = 0x0099ba40

VftableAndRTTI GClimateRainInfo                                                                                    // [0xf2a48] 0x008a9000 + 0xf2a48 = 0x0099ba48
.long ?Serialise@Base@@UAEXAAVArchive@@@Z
.long ??_GGClimateRainInfo@@UAEPAXI@Z                                                                                                   // [0xf2a50] 0x008a9000 + 0xf2a50 = 0x0099ba50
.long ?Delete@Base@@UAEXH@Z
.long ?ToBeDeleted@Base@@UAEXH@Z
.long ?Get3DSoundPos@Base@@UAEHPAULHPoint@@@Z
.long ?CleanUpForSerialisation@Base@@UAEXXZ
.long ?Dump@Base@@UAEXXZ
.long ?GetDebugText@GBaseInfo@@UBEPBDXZ
.long ?GetDebugColor@GBaseInfo@@UBE?AVLHColor@@XZ
.long ?GetBaseInfo@GClimateRainInfo@@UAEPAVGBaseInfo@@AAI@Z                                                                                                   // [0xf2a70] 0x008a9000 + 0xf2a70 = 0x0099ba70
.long ?UpdateValue@GBaseInfo@@UAEXMKK@Z
.long 0x47ae147b, 0x3f947ae1                                                                                       // [0xf2a78] 0x008a9000 + 0xf2a78 = 0x0099ba78
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf2a80] 0x008a9000 + 0xf2a80 = 0x0099ba80
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf2a88] 0x008a9000 + 0xf2a88 = 0x0099ba88
.long 0x41200000                                                                                                   // [0xf2a90] 0x008a9000 + 0xf2a90 = 0x0099ba90
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf2a94] 0x008a9000 + 0xf2a94 = 0x0099ba94
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf2a9c] 0x008a9000 + 0xf2a9c = 0x0099ba9c

.long 0x009ba170                                                                                                   // [0xf2aa4] 0x008a9000 + 0xf2aa4 = 0x0099baa4
.long 0x00777020, 0x00000000                                                                                       // [0xf2aa8] 0x008a9000 + 0xf2aa8 = 0x0099baa8
.long 0x0000005c                                                                                                   // [0xf2ab0] 0x008a9000 + 0xf2ab0 = 0x0099bab0

VftableAndRTTI ?$basic_filebuf@DU?$char_traits@D@std@@@std                                                         // [0xf2ab4] 0x008a9000 + 0xf2ab4 = 0x0099bab4
.long 0x007770d0, 0x007767f0                                                                                       // [0xf2ab8] 0x008a9000 + 0xf2ab8 = 0x0099bab8
.long 0x007769d0, 0x005810e0, 0x00776b70, 0x00776ba0                                                               // [0xf2ac0] 0x008a9000 + 0xf2ac0 = 0x0099bac0
.long 0x00581130, 0x005811d0, 0x00776d90, 0x00776e30                                                               // [0xf2ad0] 0x008a9000 + 0xf2ad0 = 0x0099bad0
.long 0x00776fd0, 0x00777000, 0x00581310                                                                           // [0xf2ae0] 0x008a9000 + 0xf2ae0 = 0x0099bae0

VftableAndRTTI ?$codecvt@DDH@std                                                                                   // [0xf2aec] 0x008a9000 + 0xf2aec = 0x0099baec
.long 0x007789a0, 0x00778910, 0x00778920, 0x00778930                                                               // [0xf2af0] 0x008a9000 + 0xf2af0 = 0x0099baf0
.long 0x00778940, 0x00778960, 0x00778980                                                                           // [0xf2b00] 0x008a9000 + 0xf2b00 = 0x0099bb00
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf2b0c] 0x008a9000 + 0xf2b0c = 0x0099bb0c
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf2b14] 0x008a9000 + 0xf2b14 = 0x0099bb14

VftableAndRTTI Workshop                                                                                            // [0xf2b1c] 0x008a9000 + 0xf2b1c = 0x0099bb1c
.long ?Serialise@Base@@UAEXAAVArchive@@@Z
.long ??_GWorkshop@@UAEPAXI@Z
.long ?Delete@Abode@@UAEXXZ
.long ?ToBeDeleted@Workshop@@UAEXH@Z                                                                           // [0xf2b24] 0x008a9000 + 0xf2b24 = 0x0099bb24
.long ?Get3DSoundPos@GameThingWithPos@@UAEHPAULHPoint@@@Z
.long ?CleanUpForSerialisation@Base@@UAEXXZ
.long ?Dump@Base@@UAEXXZ
.long ?GetPlayer@Abode@@UAEPAVGPlayer@@XZ                                                                                                   // [0xf2b3c] 0x008a9000 + 0xf2b3c = 0x0099bb3c
.long ?SetPlayer@GameThing@@QAEXPAVGPlayer@@@Z
.long ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z
.long ?RemoveDance@GameThing@@QAEXXZ
.long ?IsAvailable@GameThing@@QAE_NXZ
.long ?IsCreature@GameThing@@QAE_NPAVCreature@@@Z
.long ?IsCreature@GameThing@@UAE_NXZ
.long ?IsCreatureNotTooNear@GameThing@@UAE_NPAVCreature@@@Z
.long ?GetDrawImportance@Object@@UAEMXZ
.long ?GetMaxAlignmentChangePerGameTurn@GameThing@@UAEMXZ
.long ?GetComputerSeen@GameThing@@UAE_NXZ
.long ?GetTown@Abode@@UAEPAVTown@@XZ                                                                                                   // [0xf2b68] 0x008a9000 + 0xf2b68 = 0x0099bb68
.long ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z
.long ?SetVillagerActivity@GameThing@@UAEXPAVVillager@@@Z
.long ?UpdateVillagerActivityEffect@GameThing@@QAEIPAVVillager@@@Z
.long ?MaintainSpell@GameThing@@UAEXIM@Z
.long ?UpdateSpellInfo@GameThing@@QAEXPAVSpell@@PAVPSysProcessInfo@@@Z
.long ?GetRadius@Object@@UAEMXZ
.long ?Get2DRadius@Object@@UAEMXZ
.long ?GetPlayerWhoLastPickedMeUp@GameThing@@QAEPAVGPlayer@@XZ
.long ?GetPlayerWhoLastDroppedMe@GameThing@@QAEPAVGPlayer@@XZ
.long ?IsFootpathLink@MultiMapFixed@@UAE_NXZ, ?GetFootpathLink@MultiMapFixed@@UAEPAVGFootpathLink@@XZ                                                                                       // [0xf2b90] 0x008a9000 + 0xf2b90 = 0x0099bb90
.long ?AddFootpathLink@GameThing@@QAEXPAVGFootpath@@@Z
.long ?GetNearestPathTo@MultiMapFixed@@UAEIPAUMapCoords@@MH@Z                                                                                                   // [0xf2b9c] 0x008a9000 + 0xf2b9c = 0x0099bb9c
.long ?UseFootpathIfNecessary@MultiMapFixed@@UAEXPAVLiving@@PBUMapCoords@@E@Z                                                                                                   // [0xf2ba0] 0x008a9000 + 0xf2ba0 = 0x0099bba0
.long ?AddFootpathLink@MultiMapFixed@@QAEXPAVGFootpath@@@Z
.long ?RemoveFootpath@MultiMapFixed@@UAEIPAVGFootpath@@@Z, ?JustAddResource@Abode@@UAEIE@Z                                                                                       // [0xf2ba8] 0x008a9000 + 0xf2ba8 = 0x0099bba8
.long ?JustRemoveResource@Abode@@UAEIE@Z                                                                                                   // [0xf2bb0] 0x008a9000 + 0xf2bb0 = 0x0099bbb0
.long ?JustGetResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z
.long ?GetResource@Abode@@UAEIW4RESOURCE_TYPE@@@Z
.long ?AddResource@Workshop@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_NPBUMapCoords@@H@Z                                                                                       // [0xf2bb8] 0x008a9000 + 0xf2bb8 = 0x0099bbb8
.long ?RemoveResource@Workshop@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@PA_N@Z                                                                                                   // [0xf2bc0] 0x008a9000 + 0xf2bc0 = 0x0099bbc0
.long ?CastCreature@GameThing@@QAEPAVCreature@@XZ
.long ?CastPlayer@GameThing@@QAEPAVGPlayer@@XZ
.long ?CastOneOffSpellSeed@GameThing@@UAEIXZ
.long ?CastAbode@Abode@@UAEPAV1@XZ, ?CastMultiMapFixed@MultiMapFixed@@UAEPAV1@XZ                                                                                       // [0xf2bd0] 0x008a9000 + 0xf2bd0 = 0x0099bbd0
.long ?CastSpellIcon@GameThing@@UAEIXZ
.long ?CastTree@GameThing@@UAEIXZ
.long ?IsDeletedOnNewMap@GameThing@@QAE_NXZ
.long ?GetNumberOfInstanceForGlobalList@Abode@@UAEGXZ, ?GetTownArtifactValue@Fixed@@UAEMXZ
.long ?CanBecomeArtifact@Object@@UAE_NXZ
.long ?DrawInHand@Object@@UAEXPAVGInterfaceStatus@@@Z
.long ?IsFunctional@Abode@@UAE_NXZ
.long ?GetDebugText@Workshop@@UAEPADXZ
.long ?GetSampleForAttack@GameThing@@UAEIXZ
.long ?GetGuidanceResourceType@GameThing@@UAEIXZ
.long ?GetShowNeedsPos@Workshop@@UAEIIPAUMapCoords@@@Z
.long ?Load@Workshop@@UAEIAAVGameOSFile@@@Z
.long ?Save@Workshop@@UAEIAAVGameOSFile@@@Z                                                                           // [0xf2c04] 0x008a9000 + 0xf2c04 = 0x0099bc04
.long ?GetSaveType@Workshop@@UAEIXZ                                                                                                   // [0xf2c10] 0x008a9000 + 0xf2c10 = 0x0099bc10
.long ?SaveExtraData@GameThing@@QAEXAAVGameOSFile@@@Z
.long ?ResolveLoad@Workshop@@UAEXXZ                                                                                                   // [0xf2c18] 0x008a9000 + 0xf2c18 = 0x0099bc18
.long ?SetPos@GameThingWithPos@@QAEXABUMapCoords@@@Z
.long ?GetPos@GameThingWithPos@@QAEPAUMapCoords@@XZ
.long ?GetArrivePos@Abode@@UAEPAUMapCoords@@PAU2@@Z
.long ?PhysicsEditorCreate@GameThingWithPos@@QAEXH@Z
.long ?GetCreatureBeliefType@Abode@@UAEIXZ

.long ?GetCreatureBeliefListType@GameThingWithPos@@UAEIXZ
.long ?GetCitadel@GameThingWithPos@@UAEPAUCitadel@@XZ
.long ?GetOrigin@Abode@@UAEIXZ
.long ?GetLife@Object@@UAEMXZ
.long ?GetScale@Object@@UAEMXZ
.long ?SetScale@Object@@UAEXM@Z

.long ?GetPower@GameThingWithPos@@UBEMXZ
.long ?GetPSysPower@GameThingWithPos@@UBEMXZ

.long ?GetSpeedInMetres@GameThingWithPos@@UBEMXZ
.long ?SetSpeedInMetres@GameThingWithPos@@UAEXMH@Z
.long ?GetRunningSpeedInMetres@GameThingWithPos@@UBEMXZ
.long ?GetDistanceFromObject@Object@@UAEMPAUMapCoords@@@Z

.long ?GetDefaultSpeedInMetres@GameThingWithPos@@UAEMXZ
.long ?SetHeight@GameThingWithPos@@UAEXM@Z
.long ?SetMaxHeight@GameThingWithPos@@UAEXM@Z
.long ?GetMaxHeight@GameThingWithPos@@UAEMXZ

.long ?GetPSysBeamTargetPos@GameThingWithPos@@UAEXPAULHPoint@@@Z
.long ?GetSpeedInMetresPerSecond@GameThingWithPos@@UBEMXZ
.long ?SetSpeedInMetresPerSecond@GameThingWithPos@@UAEXMH@Z
.long ?GetRunningSpeedInMetresPerSecond@GameThingWithPos@@UAEMXZ

.long ?GetDefaultSpeedInMetresPerSecond@GameThingWithPos@@UAEMXZ
.long ?IsAnimate@GameThingWithPos@@UAE_NXZ
.long ?GetMovementDirection@GameThingWithPos@@UAEXPAULHPoint@@@Z
.long ?GetPhysicsMovementDirection@Object@@UAEXPAULHPoint@@@Z

.long ?GetInteractPos@GameThingWithPos@@UAEXPAULHPoint@@@Z
.long ?IsMoving@Object@@UAE_NXZ
.long ?IsObjectInMap@MultiMapFixed@@UAE_NXZ
.long ?IsDrowning@Object@@UAE_NXZ

.long ?IsCannotBePickedUp@GameThingWithPos@@UBE_NXZ
.long ?GetOverwritePickUpToolTip@GameThingWithPos@@UAEIXZ
.long ?IsStompable@GameThingWithPos@@UAE_NXZ
.long ?IsAvailableForStateChange@GameThingWithPos@@UAE_NXZ
.long ?IsInteractable@Abode@@UAE_NXZ
.long ?GetOverwriteInteractableToolTip@GameThingWithPos@@UAEIXZ
.long ?GetOverwriteDropToolTip@GameThingWithPos@@UAEIXZ
.long ?GetOverwriteTapToolTip@GameThingWithPos@@UAEIXZ
.long ?IsCastShadowAtNight@Abode@@UAE_NXZ                                                                                                   // [0xf2cc0] 0x008a9000 + 0xf2cc0 = 0x0099bcc0
.long ?CleanupWhenDeleted@Object@@UAEXH@Z

.long ?GetImpressiveType@GameThingWithPos@@UAE?AW4IMPRESSIVE_TYPE@@XZ
.long ?GetImpressiveIntensity@GameThingWithPos@@UAEMW4IMPRESSIVE_TYPE@@@Z
.long ?GetImpressiveValue@Object@@UAEMPAVLiving@@PAVReaction@@@Z
.long ?GetUpdateOfBoredomValue@Object@@UAEMPAVReaction@@PAVGameThingWithPos@@@Z
.long ?IsTown@GameThingWithPos@@UAE_NXZ
.long ?IsTown@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsActivityObjectWhichAngerAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsActivityObjectWhichCompassionAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsActivityObjectWhichPlayfulnessAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTownBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?TrueFunction@GameThingWithPos@@UAE_NXZ
.long ?FalseFunction@GameThingWithPos@@UAE_NXZ
.long ?IsNotLiving@GameThingWithPos@@UAE_NXZ
.long ?IsSuitableForCreatureActivity@GameThingWithPos@@UAE_NXZ

.long ?IsTownCentre@GameThingWithPos@@UAE_NXZ
.long ?IsTotemStatue@GameThingWithPos@@UAE_NXZ
.long ?IsTownDesireFlag@GameThingWithPos@@UAE_NXZ
.long ?IsRock@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsRock@GameThingWithPos@@UAE_NXZ
.long ?IsSpellDispenser@GameThingWithPos@@UAE_NXZ
.long ?IsMist@GameThingWithPos@@UAE_NXZ
.long ?IsQueryIcon@GameThingWithPos@@UAE_NXZ

.long ?IsStreetLight@GameThingWithPos@@UAE_NXZ
.long ?IsStreetLantern@GameThingWithPos@@UAE_NXZ
.long ?IsAbode@Abode@@UAE_NXZ
.long ?IsField@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsField@GameThingWithPos@@UAE_NXZ
.long ?IsBuildingMaterial@Object@@UAE_NXZ
.long ?IsMagicFireBall@GameThingWithPos@@UAE_NXZ
.long ?IsSuitableForCreatureAction@Object@@UAE_NXZ

.long ?IsCitadelHeart@GameThingWithPos@@UAE_NXZ
.long ?IsDamaged@GameThingWithPos@@UAE_NXZ
.long ?CanBeHealedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeEatenByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanCreatureEatMe@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeAttackedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeFrighteningToCreature@Fixed@@UAE_NPAVCreature@@@Z
.long ?CanBeHelpedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBePlayedWithByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeImpressedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeInspectedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBePoodUponByCreature@Object@@UAE_NPAVCreature@@@Z

.long ?CanBeBefriendedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeSleptNextToByCreature@Fixed@@UAE_NPAVCreature@@@Z, ?CanBePickedUpByCreature@Fixed@@UAE_NPAVCreature@@@Z
.long ?CanBeStrokedByCreature@Object@@UAE_NPAVCreature@@@Z

.long ?CanBeKissedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeSetOnFire@Fixed@@UAE_NPAVCreature@@@Z, ?CanBeStompedOnByCreature@Abode@@UAE_NPAVCreature@@@Z
.long ?CanBeThrownByCreature@Object@@UAE_NPAVCreature@@@Z

.long ?CanBeGivenToVillager@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePutInAStoragePit@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeDestroyedByStoning@Fixed@@UAE_NPAVCreature@@@Z
.long ?CanBeStonedAndEatenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeExaminedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeFoughtByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanReceiveGifts@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanActAsAContainer@Workshop@@UAEIPAVCreature@@@Z
.long ?IsBeingBuilt@MultiMapFixed@@UAE_NPAVCreature@@@Z, ?NeedsRepair@MultiMapFixed@@UAE_NPAVCreature@@@Z
.long ?IsOnFire@Object@@UAE_NPAVCreature@@@Z
.long ?IsNotOnFire@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeUsedForBuilding@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsMushroom@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeUsedForRepair@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeGivenToTown@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeUsedToHoldWater@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePutInFoodPile@Object@@UAE_NPAVCreature@@@Z
.long ?CanBePutInWoodPile@Object@@UAE_NPAVCreature@@@Z
.long ?CanHaveMagicFoodCastOnMe@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanHaveMagicWoodCastOnMe@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeBroughtBackToCitadel@Object@@UAE_NPAVCreature@@@Z
.long ?IsVillager@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerFarFromHome@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsVillagerInTownWithoutManyBreeders@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerNotWorshipping@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCow@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePoodOn@Object@@UAE_NPAVCreature@@@Z
.long ?IsVillagerWhoHasNotBeenImpressedRecently@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerWhoHasNotBeenDancedWithRecently@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?DoesVillagerBelongToATownWhichIsAlreadyImpressed@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?DoesTotemBelongToATownWhichIsVeryImpressedIndeed@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsDominantCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeDancedWith@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAggressive@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStoragePit@Workshop@@UAEIPAVCreature@@@Z
.long ?IsWorshipSite@GameThingWithPos@@UAE_NXZ
.long ?IsWorshipSite@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?GetWorshipSite@GameThingWithPos@@UAEPAUWorshipSite@@XZ
.long ?IsWorkshop@Workshop@@UAEIXZ
.long ?IsWorkshop@Workshop@@UAEIPAVCreature@@@Z
.long ?IsBuildingWhichIsBeingBuilt@MultiMapFixed@@UAE_NPAVCreature@@@Z
.long ?IsStoragePitWithFoodInIt@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsFieldWhichNeedsWatering@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsFieldWithFoodInIt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsFieldBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStoragePitBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsStoragePitBelongingToMyPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?BenefitsFromHavingWaterSprinkledOnIt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTree@GameThingWithPos@@UAE_NXZ
.long ?IsTree@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsTreeNotTooNearPlannedForest@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTreeBigEnoughForCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAFoodPileOutsideStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAWoodPileOutsideStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsDoingSomethingInteresting@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeUsedForBuildingHomeByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPickupableRock@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCitadelPart@GameThingWithPos@@UAE_NXZ

.long ?IsCitadelPart@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPlayingFootball@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPlayingFootballAndMySideHasJustScored@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPlayingFootballAndOtherSideHasJustScored@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeBroughtHomeByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAnimalBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellAggressive@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsOneOffSpellCompassionate@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellPlayful@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellToRestoreHealth@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeKickedByCreature@Abode@@UAE_NPAVCreature@@@Z

.long ?CanBeStolenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStealableByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStealableSpell@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStealableScaffold@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsTownBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTotemWithStealableSpell@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCreatureAvailableForJointActivity@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCreatureNotAvailableForJointActivity@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsToyAwayFromHome@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToy@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToyBall@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToyDie@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsToyCuddly@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?IsLiving@GameThingWithPos@@UBE_NXZ
.long ?IsLiving@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?IsFence@GameThingWithPos@@UBE_NXZ

.long ?IsSpellIcon@GameThingWithPos@@UBE_NXZ
.long ?NothingScareyNearMe@GameThingWithPos@@UBE_NXZ
.long ?CanBeUsedForThrowingDamageByCreature@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?IsCreatureWhoSeemsFriendly@GameThingWithPos@@UBE_NPAVCreature@@@Z

.long ?CanBeThrownInTheSeaPlayfully@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?GetCreatureMimicType@Abode@@UAEIXZ, ?GetHowMuchCreatureWantsToLookAtMe@Abode@@UAEMXZ
.long ?IsFlock@GameThingWithPos@@UBE_NXZ

.long ?IsDance@GameThingWithPos@@UBE_NXZ
.long ?IsReward@GameThingWithPos@@UBE_NXZ
.long ?IsScriptContainer@GameThingWithPos@@UBE_NXZ
.long ?IsWeather@GameThingWithPos@@UBE_NXZ

.long ?IsSpell@GameThingWithPos@@UBE_NXZ
.long ?IsDeletedWhenReleasedFromScript@GameThingWithPos@@UAE_NXZ
.long ?IsMobileWallHug@GameThingWithPos@@UBE_NXZ
.long ?IsActive@GameThingWithPos@@UBE_NXZ

.long ?IsObjectTurningTooFastForCameraToFollowSmoothly@GameThingWithPos@@UBE_NXZ
.long ?CalculateWhereIWillBeAfterNSeconds@Abode@@UAEXMPAULHPoint@@@Z
.long ?AttitudeToCreatureEating@GameThingWithPos@@UAEIXZ
.long ?GetText@Object@@UAEPBDXZ

.long ?CalculateDesireForFood@GameThingWithPos@@UAEMXZ
.long ?CalculateDesireForRest@GameThingWithPos@@UAEMXZ
.long ?CalculatePeopleHidingIndicator@GameThingWithPos@@UAEMXZ
.long ?GetHeight@Object@@UAEMXZ

.long ?IsReadyForNewScriptAction@GameThingWithPos@@UBE_NXZ
.long ?ForDrawFXGetNumVertices@GameThingWithPos@@UAEHXZ
.long ?ForDrawFXGetVertexPos@GameThingWithPos@@UAEXHPAULHPoint@@@Z
.long ?SetInScript@Object@@UAEXH@Z

.long ?SetControlledByScript@GameThingWithPos@@UAEXH@Z
.long ?GetDeathReason@GameThingWithPos@@UAE?AW4DEATH_REASON@@XZ
.long ?IsInScript@GameThingWithPos@@UAE_NXZ
.long ?IsMaleVillager@GameThingWithPos@@UAE_NXZ

.long ?IsFemaleVillager@GameThingWithPos@@UAE_NXZ
.long ?IsAnimal@GameThingWithPos@@UAE_NXZ
.long ?IsAChild@GameThingWithPos@@UAE_NXZ
.long ?IsHouse@Abode@@UAE_NXZ
.long ?IsObject@Object@@UAE_NXZ
.long ?IsFootball@GameThingWithPos@@UBE_NXZ
.long ?IsCitadel@GameThingWithPos@@UAE_NXZ
.long ?IsForest@GameThingWithPos@@UAE_NXZ

.long ?IsMobileObject@GameThingWithPos@@UAE_NXZ
.long ?IsMobileStatic@GameThingWithPos@@UAE_NXZ
.long ?IsAnyKindOfTree@GameThingWithPos@@UAE_NXZ
.long ?IsDeadTree@GameThingWithPos@@UAE_NXZ

.long ?IsPileFood@GameThingWithPos@@UAE_NXZ
.long ?IsFeature@GameThingWithPos@@UAE_NXZ
.long ?IsScriptMarker@GameThingWithPos@@UAE_NXZ
.long ?IsScriptHighlight@GameThingWithPos@@UAE_NXZ
.long ?IsWonder@Abode@@UAE_NXZ
.long ?IsInfluenceRing@GameThingWithPos@@UAE_NXZ
.long ?IsPuzzleGame@GameThingWithPos@@UAE_NXZ
.long ?IsScaffold@GameThingWithPos@@UAE_NXZ

.long ?IsSkeleton@GameThingWithPos@@UBE_NXZ
.long ?IsPoisoned@GameThingWithPos@@UBE_NXZ
.long ?IsSpeedUp@GameThingWithPos@@UAE_NXZ
.long ?IsParticleContainer@GameThingWithPos@@UAE_NXZ

.long ?IsSacrificeAltar@GameThingWithPos@@UAE_NXZ
.long ?IsPot@GameThingWithPos@@UAE_NXZ
.long ?IsComputerPlayer@GameThingWithPos@@UBE_NXZ
.long ?CanBeThrownByPlayer@GameThingWithPos@@UBE_NXZ

.long ?SetSkeleton@GameThingWithPos@@UAEXH@Z
.long ?IsSpellSeed@GameThingWithPos@@UBE_NXZ
.long ?IsSpellShield@GameThingWithPos@@UBE_NXZ
.long ?IsPileResource@GameThingWithPos@@UBE_NXZ

.long ?IsScriptTimer@GameThingWithPos@@UBE_NXZ
.long ?CreateBuildingSite@Workshop@@UAEIXZ
.long ?GetQueryFirstEnumText@Object@@UAE?AW4HELP_TEXT@@XZ
.long ?GetQueryLastEnumText@Object@@UAE?AW4HELP_TEXT@@XZ
.long ?GetFOVHelpMessageSet@Object@@UAEIXZ
.long ?GetFOVHelpCondition@Object@@UAEIXZ
.long ?GetScriptObjectType@Abode@@UAEIXZ
.long ?GetFacingDirection@GameThingWithPos@@UAEMXZ

.long ?SetAffectedByWind@GameThingWithPos@@UAEXH@Z
.long ?GetReactionPower@GameThingWithPos@@UAEMXZ
.long ?GetSpellCastPos@GameThingWithPos@@UAEXPAUMapCoords@@@Z
.long ?CleanUpBeforeReset@GameThingWithPos@@UAEXXZ
.long ?DestroyedByBeam@Abode@@UAEXXZ
.long ?GetXAngle@Object@@UAEMXZ
.long ?GetYAngle@Object@@UAEMXZ
.long ?GetZAngle@Object@@UAEMXZ
.long ?SetFocus@Object@@UAEXPBULHPoint@@@Z
.long ?SetXYZAngles@Object@@UAEXMMM@Z
.long ?SetXYZAnglesAndScale@Object@@UAEXMMMM@Z
.long ?SetJustScale@Object@@UAEXM@Z
.long ?SetYJustAngle@Object@@UAEXM@Z
.long ?SetYAngle@Object@@UAEXM@Z
.long ?UpdateFrom3DPosition@Object@@UAEXXZ
.long ?MoveAlongPath@Object@@UAEIXZ
.long ?IsReachable@Object@@UAE_NXZ
.long ?BlocksTownClearArea@Object@@UAE_NXZ
.long ?Create3DObject@Fixed@@UAEXXZ
.long ?GetMapChild@MultiMapFixed@@UAEPAVObject@@PBUMapCell@@@Z
.long ?SetMapChild@MultiMapFixed@@UAEXPAVObject@@PAUMapCell@@@Z
.long ?InsertMapObject@Abode@@UAEXXZ
.long ?RemoveMapObject@MultiMapFixed@@UAEXXZ                                                                                                   // [0xf3068] 0x008a9000 + 0xf3068 = 0x0099c068
.long ?InsertMapObjectToCell@Fixed@@UAEXPAUMapCell@@@Z
.long ?RemoveMapObjectFromCell@Object@@UAEXPAUMapCell@@@Z
.long ?IsObjectInMap@Object@@UAE_NPAUMapCell@@@Z
.long ?IsObjectInMapCheck@Object@@UAE_NXZ
.long ?MoveMapObject@MultiMapFixed@@UAEHPAUMapCoords@@@Z
.long ?ActualMoveMapObject@Object@@UAEXUMapCoords@@@Z
.long ?GetPtr@Object@@UAEPAV1@XZ
.long ?GetMeshRadius@Object@@UAEMXZ
.long ?Get3DObjectForPSys@Object@@UAEPAVGame3DObject@@XZ
.long ?GetPSysFireFlameMatrix@Object@@UAE_NPAULHMatrix@@@Z
.long ?GetPSysFireLocalRndFlamePos@Abode@@UAE_NPAULHPoint@@PAH@Z
.long ?GetPSysFireWorldFlamePos@Object@@UAE_NPBULHPoint@@HPAU2@@Z
.long ?GetPSysFireLocalFlameScale@Object@@UAEMXZ
.long ?GetPSysFireMaxFlames@Object@@UAEIXZ
.long ?GetSpotEffectPower@Object@@UAEMXZ
.long ?GetAggressorValueFromDamage@Object@@UAEMM@Z
.long ?GetHoldType@Object@@UAE?AW4HOLD_TYPE@@XZ
.long ?GetHoldRadius@Object@@UAEMXZ
.long ?GetHoldLoweringMultiplier@Object@@UAEMXZ
.long ?GetHoldYRotate@Object@@UAEMXZ
.long ?HandShouldFeelWithMeshIntersect@Object@@UAE_NXZ
.long ?SetSpecularColor@Object@@UAEXULH3DColor@@@Z
.long ?GetSpecularColor@Object@@UAE?AULH3DColor@@XZ
.long ?SetBeliefSprite@Object@@UAEXPAVLH3DSprite@@@Z
.long ?GetBeliefSprite@Object@@UAEPAVLH3DSprite@@XZ
.long ?SetLife@Object@@UAEXM@Z
.long ?IsAlive@Object@@UAE_NXZ
.long ?ReduceLife@Abode@@UAEXMPAVGPlayer@@@Z, ?IncreaseLife@Abode@@UAEXM@Z
.long ?GetSacrificeValue@Object@@UAEMXZ
.long ?ReduceLifeDueToBurning@Object@@UAEXMPAVGPlayer@@@Z
.long ?FillInEffectDefenceMultiplier@Object@@UAEXPAVEffectNumbers@@@Z
.long ?ApplyEffect@Object@@UAEXPBXPAVEffectValues@@@Z
.long ?GetDamageEffect@Object@@UAEMPAVEffectValues@@@Z
.long ?GetHealEffect@Object@@UAEMPAVEffectValues@@@Z
.long ?GetActualObjectToEffect@Object@@UAEPAXPAVGPlayer@@_N@Z
.long ?DrawValue@Object@@UAEXHM@Z
.long ?ScaffoldMoved@Workshop@@UAEXPAVScaffold@@@Z
.long ?GetHeatCapacity@Object@@UAEMXZ
.long ?GetFireGPHXDrawn@Object@@UAEXPA_N000@Z
.long ?GetRainCoolingMultiplier@Object@@UAEMXZ
.long ?GetDefaultFireCentrePos@Object@@UAEPAULHPoint@@PAU2@@Z
.long ?GetDefaultFireRadius@Object@@UAEMXZ
.long ?DestroyedByEffect@Abode@@UAEIPAVGPlayer@@M@Z
.long ?Process@Workshop@@UAEIXZ
.long ?ProcessBySpell@Object@@UAEIPAVSpell@@@Z
.long ?ApplySingleEffect@Object@@UAEXW4EFFECT_TYPE@@MPAVGameThing@@PBUMapCoords@@@Z
.long ?GetMesh@Abode@@UBEHXZ
.long ?GetDetailMesh@Object@@UAEHH@Z
.long ?Draw@Workshop@@UAEXXZ
.long ?DrawOutOfMap@Object@@UAEX_N@Z
.long ?IsG3DObjectDrawnInHand@Object@@UAE_NXZ
.long ?GetDrawRegion@Object@@UAEXPAULHRegion@@@Z
.long ?ProcessState@Object@@UAEIXZ
.long ?GetProjectileSpeed@Object@@UAEMXZ
.long ?CanBePickedUp@Object@@UAE_NXZ
.long ?CanBeCrushed@Fixed@@UAE_NXZ
.long ?GetTopPos@Object@@UAEMXZ
.long ?GetVillagerHugRadius@Object@@UAEMXZ
.long ?GetWeight@Object@@UAEMXZ
.long ?GetWorldMatrix@Object@@UAEXPAULHMatrix@@@Z
.long ?CanBeSuckedIntoVortex@Object@@UAE_NPAVLandscapeVortex@@@Z
.long ?GetDiscipleStateIfInteractedWith@Workshop@@UAEIPAVGInterfaceStatus@@PAVVillager@@@Z
.long ?GetWorkingPos@Object@@UAEPAUMapCoords@@PAU2@PAV1@@Z
.long ?GetHeightForHandAboveInteractObject@Object@@UAEMXZ
.long ?GetHandHelpMessageSet@Object@@UAEIXZ
.long ?GetHandHelpCondition@Object@@UAEIXZ
.long ?CallVirtualFunctionsForCreation@Workshop@@UAEXABUMapCoords@@@Z
.long ?Get3DType@Workshop@@UAE?AW4LH3DObject__ObjectType@@XZ
.long ?GetFoodValue@Object@@UAEMW4FOOD_TYPE@@@Z
.long ?GetWoodValue@Object@@UAEMXZ
.long ?GetFoodType@Object@@UAE?AW4FOOD_TYPE@@XZ
.long ?GetImpressiveValue@Object@@UAEMXZ
.long ?IsSpellSeedReturnPoint@Object@@UAE_NXZ
.long ?IsABeliever@Object@@UAE_NXZ
.long ?AsMultiMapFixed@MultiMapFixed@@UAEPAV1@XZ
.long ?ApplyWaterSpell@Object@@UAEMPAVSpellWater@@@Z
.long ?IsResourceStore@Workshop@@UAE_NW4RESOURCE_TYPE@@@Z
.long ?DeleteObjectAndTakeResource@Workshop@@UAE_NPAVObject@@PAVGInterfaceStatus@@@Z
.long ?GetRadiusMultiplierForApplyingPotToPos@Object@@UAEMXZ
.long ?DoCreatureMimicAfterAddingResource@Workshop@@UAE_NW4RESOURCE_TYPE@@AAVGInterfaceStatus@@@Z                                                               // [0xf31a0] 0x008a9000 + 0xf31a0 = 0x0099c1a0
.long ?GetResourceType@Object@@UAE?AW4RESOURCE_TYPE@@XZ
.long ?GetDefaultResource@Object@@UAEHXZ
.long ?SetPoisonedResource@Object@@UAEXW4RESOURCE_TYPE@@H@Z
.long ?SetPoisoned@Object@@UAEXH@Z
.long ?IsLockedInInteract@Object@@UAE_NXZ
.long ?SetDying@Object@@UAE_NXZ
.long ?IsAttackable@Object@@UAE_NPAV1@@Z
.long ?IsAllied@Object@@UAE_NPAV1@@Z
.long ?IsTouching@Object@@UAE_NPAUMapCoords@@0@Z
.long ?IsTouching@Object@@UAE_NPAUMapCoords@@@Z
.long ?IsTouching@Object@@UAE_NPAV1@M@Z
.long ?StartOnFire@MultiMapFixed@@UAEXXZ
.long ?EndOnFire@Object@@UAEXXZ
.long ?GetDistanceFromObject@Object@@UAEMPAV1@@Z
.long ?GetTribalPower@Object@@UAEMW4TRIBE_TYPE@@@Z
.long ?ValidForLockedSelectProcess@Fixed@@UAE_NPAVGInterfaceStatus@@@Z
.long ?NetworkFriendlyStartLockedSelect@Fixed@@UAE_NPAVGInterfaceStatus@@@Z
.long ?NetworkUnfriendlyStartLockedSelect@Object@@UAE_NXZ
.long ?IsReadyForNetworkUnfriendlyLockedSelect@Object@@UAE_NXZ
.long ?NetworkUnfriendlyLockedSelect@Object@@UAE_NPAVControlHandUpdateInfo@@@Z
.long ?GetReadyForNetworkUnfriendlyEndLockedSelect@Object@@UAE_NXZ
.long ?IsReadyForNetworkUnfriendlyEndLockedSelect@Object@@UAE_NXZ
.long ?NetworkUnfriendlyEndLockedSelect@Object@@UAE_NXZ
.long ?NetworkFriendlyEndLockedSelect@Object@@UAE_NPAVGInterfaceStatus@@@Z
.long ?ValidAsInterfaceTarget@Object@@UAE_NXZ
.long ?ValidAsInterfaceLeashTarget@Object@@UAE_NXZ
.long ?SelectOnlyAfterRecSystem@Object@@UAE_NXZ
.long ?ValidForPlaceInHand@Object@@UAE_NPAVGInterfaceStatus@@@Z
.long ?InterfaceSetInMagicHand@Fixed@@UAE_NPAVGInterfaceStatus@@@Z
.long ?InterfaceSetOutMagicHand@Object@@UAE_NPAVGInterfaceStatus@@@Z
.long ?ValidToRemoveFromHand@Object@@UAE_NPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?RemoveFromHand@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?ValidToShakeFromHand@Object@@UAE_NXZ
.long ?InterfaceMustBeInInfluenceForInteraction@Object@@UAE_NXZ
.long ?IsTuggable@Object@@UAE_NXZ
.long ?ValidToApplyThisToObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z
.long ?ApplyThisToObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@PAVGestureSystemPacketData@@@Z
.long ?ValidToApplyThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PAUMapCoords@@@Z
.long ?ApplyThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@PAVGestureSystemPacketData@@@Z
.long ?ValidForLockedApplyProcess@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?ApplyUnlockProcess@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?IsInterfacePowerUpWhenInHand@Object@@UAEIXZ
.long ?ApplyOnlyAfterRecSystem@Object@@UAEIXZ
.long ?ApplyOnlyAfterReleased@Object@@UAEIXZ
.long ?InterfaceValidToTap@Abode@@UAEIPAVGInterfaceStatus@@@Z, ?InterfaceTap@Abode@@UAEIPAVGInterfaceStatus@@@Z
.long ?InterfaceValidToGiveObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z
.long ?InterfaceGiveObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z
.long ?InterfaceValidToInteractAsMapCoordsObject@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?InterfaceInteractAsMapCoordsObject@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?ThrowObjectFromHand@Object@@UAEIPAVGInterfaceStatus@@H@Z
.long ?ValidToSelectFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?ValidToApplyFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?SelectFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?ApplyFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?ValidToFightThisToObject@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?FightThisToObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z
.long ?IsEffectReceiver@Object@@UAE_NPAVEffectValues@@@Z
.long ?CanBeDestroyedBySpell@Object@@UAE_NPAVSpell@@@Z
.long ?GetImportance@Object@@UAEMXZ
.long ?InitialisePhysicsFromHand@Object@@UAEIPAULHPoint@@0PAVGInterfaceStatus@@PAV1@H@Z
.long ?InitialisePhysics@Object@@UAEIPBULHPoint@@0PAV1@_NPAVGInterfaceStatus@@@Z
.long ?GetPhysicsConstantsType@Abode@@UAEIXZ, ?SetUpPhysOb@Abode@@UAEXPAVPhysOb@@@Z
.long ?EndPhysics@Fixed@@UAEXPAVPhysicsObject@@_N@Z
.long ?DropSfx@Object@@UAEIXZ
.long ?GetBoundingSphere@Object@@UAEXPAULHPoint@@PAM@Z
.long ?InteractsWithPhysicsObjects@MultiMapFixed@@UAE_NXZ
.long ?ChecksVerticesVObjects@Abode@@UAEIXZ
.long ?ShouldPhysicsRaiseObjectUntilNotIntersectingThis@Object@@UAEXPAV1@@Z
.long ?PhysicallyDestroysAbodes@Object@@UAEIXZ
.long ?ReactToPhysicsImpact@Abode@@UAEXPAVPhysicsObject@@_N@Z
.long ?CanBecomeAPhysicsObject@Abode@@UAE_NXZ
.long ?GetAlwaysRemainsInPhysicsInternalSystem@Object@@UAE_NXZ
.long ?HasSunk@Object@@UAE_NXZ
.long ?CreatureMustAvoid@MultiMapFixed@@UAE_NPAVCreature@@@Z
.long ?AddToRoutePlan@Object@@UAEXPAVRPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z
.long ?GetRoutePlanRadius@Object@@UAEMPAVCreature@@@Z
.long ?VillagerMustAvoid@Fixed@@UAE_NPAVVillager@@@Z
.long ?IsFireMan@Object@@UAE_NXZ
.long ?IsARootedObject@Object@@UAE_NXZ
.long ?GetCollideSoundType@Object@@UAE?AW4SOUND_COLLISION_TYPE@@XZ
.long ?IsSolidToNewAbode@MultiMapFixed@@UAE_NXZ
.long ?RemoveFromGame@Object@@UAEIXZ
.long ?GetLandingPointCount@Object@@UAEHXZ
.long ?GetLandingPoint@Object@@UAE_NEPAULHPoint@@@Z
.long ?GetTastiness@Object@@UAEIXZ
.long ?IsScary@Object@@UAE_NXZ
.long ?GetInspectObjectPos@Abode@@UAE_NPAVVillager@@PAUMapCoords@@@Z, ?DiscipleInHandNear@Abode@@UAEXPAVVillager@@PAVGInterfaceStatus@@@Z, ?GetSpecialPos@Fixed@@UAE_NIPAUMapCoords@@@Z, ?GetTownArtifact@Fixed@@UAEPAVGameThing@@XZ                                                               // [0xf3310] 0x008a9000 + 0xf3310 = 0x0099c310
.long ?IsTownArtifact@Fixed@@UAE_NXZ
.long ?ProcessInHand@Object@@UAE_NXZ
.long ?ProcessInInteract@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?GetObjectCollide@Object@@UAEIXZ
.long ?CalculateForceAppliedBy@Object@@UAEMPAVLiving@@@Z
.long ?IsPushable@Object@@UAE_NXZ
.long ?PushObject@Object@@UAEXPAVLiving@@PAUMapCoords@@@Z
.long ?PushObject@Object@@UAEXPAVLiving@@@Z
.long ?GetCarriedTreeType@Object@@UAEIXZ
.long ?GetFacingPitch@Object@@UAEMXZ
.long ?SetHeadPos@Object@@UAEXPAUMapCoords@@@Z
.long ?SaveObject@Abode@@UAEIPAVLHOSFile@@PBUMapCoords@@@Z
.long ?IsAPotFromABuildingSite@Object@@UAE_NXZ
.long ?GetNearestEdgeOfObject@Object@@UAEXPAV1@@Z
.long ?GetNearestPosOfObject@Object@@UAEXPAV1@@Z
.long ?GetNearestEdgeToPos@Object@@UAEXPBUMapCoords@@@Z
.long ?GetNearestEdge@Object@@UAEXMM@Z
.long ?GetImmersionTexture@Object@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ
.long ?GetInHandImmersionTexture@Object@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ
.long ?ShouldFootpathsGoRound@Abode@@UAE_NXZ
.long ?InitialiseIsFixedForMapList@Object@@UAEXH@Z
.long ?StandAnimation@Object@@UAEIXZ
.long ?GetCollideData@MultiMapFixed@@UAEPAVNewCollide@@XZ
.long ?InsertMapObjectToCellAssumeFixed@Fixed@@UAEXPAUMapCell@@@Z
.long ?IsObjectFullyInMap@MultiMapFixed@@UAE_NXZ                                                                                                   // [0xf3380] 0x008a9000 + 0xf3380 = 0x0099c380
.long ?GetDoorPos@MultiMapFixed@@UAEPAUMapCoords@@PAU2@@Z
.long ?GetInfluence@Abode@@UAEMXZ, ?IsPlaytimeStructure@MultiMapFixed@@UAE_NXZ                                                                                       // [0xf3388] 0x008a9000 + 0xf3388 = 0x0099c388
.long ?IsPlaytimeStarted@MultiMapFixed@@UAE_NXZ, ?AddPlaytimeVillager@MultiMapFixed@@UAE_NPAVVillager@@@Z, ?CheckMapObject@MultiMapFixed@@UAEXXZ, ?GetResourceDropPosForComputerPlayer@MultiMapFixed@@UAEXPAUMapCoords@@@Z                                                               // [0xf3390] 0x008a9000 + 0xf3390 = 0x0099c390
.long ?GetPercentBuilt@MultiMapFixed@@UAEMXZ, ?GetPercentRepaired@MultiMapFixed@@UAEMXZ, ?GetPercentRepairedFromWhenDamaged@MultiMapFixed@@UAEMXZ, ?IsRepaired@Abode@@UAE_NXZ                                                               // [0xf33a0] 0x008a9000 + 0xf33a0 = 0x0099c3a0
.long ?IsBuilt@Abode@@UAE_NXZ, ?GetPercentRepairedForNonFunctional@Abode@@UAEMXZ, ?GetPercentForDrawBuilding@MultiMapFixed@@UAEMXZ, ?GetPercentAbodeFullWithAdults@Abode@@UAEMXZ                                                               // [0xf33b0] 0x008a9000 + 0xf33b0 = 0x0099c3b0
.long ?GetPercentAbodeFullWithChildren@Abode@@UAEMXZ, ?IsDrawBuilding@MultiMapFixed@@UAE_NXZ, ?Built@Abode@@UAE_NXZ, ?Repaired@Abode@@UAE_NXZ                                                               // [0xf33c0] 0x008a9000 + 0xf33c0 = 0x0099c3c0
.long ?GetBuildingSiteWood@MultiMapFixed@@UAEIPAI@Z, ?GetDestructionMesh@Abode@@UAEPAVLH3DMesh@@XZ, ?RemoveDamage@Abode@@UAEXXZ, ?GetBuildingObject@MultiMapFixed@@UAEPAXXZ                                                               // [0xf33d0] 0x008a9000 + 0xf33d0 = 0x0099c3d0
.long ?IsCivic@Abode@@UAE_NXZ, ?GetAbodeType@Abode@@UAE?AW4ABODE_TYPE@@XZ, ?SetPower@MultiMapFixed@@UAEXM@Z, ?GetResourcePos@MultiMapFixed@@UAEPAUMapCoords@@W4RESOURCE_TYPE@@H@Z                                                               // [0xf33e0] 0x008a9000 + 0xf33e0 = 0x0099c3e0
.long ?IsPoisonedResource@MultiMapFixed@@UAE_NXZ, ?GetResourceNearestEdge@MultiMapFixed@@UAEPAUMapCoords@@PAU2@W4RESOURCE_TYPE@@PAVObject@@H@Z, ?GetDesireToBeRepaired@Abode@@UAEMXZ, ?AddToPlayer@MultiMapFixed@@UAEXXZ                                                               // [0xf33f0] 0x008a9000 + 0xf33f0 = 0x0099c3f0
.long ?RemoveFromPlayer@MultiMapFixed@@UAEXXZ, ?DoResourceAdding@Abode@@UAEIW4RESOURCE_TYPE@@PAVGInterfaceStatus@@_NPAUMapCoords@@H@Z, ?DoResourceRemoving@Abode@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_N@Z, ?CalulateAmountOverMaximum@MultiMapFixed@@UAEHW4RESOURCE_TYPE@@@Z                                                               // [0xf3400] 0x008a9000 + 0xf3400 = 0x0099c400
.long ?SetTown@Abode@@UAEXPAVTown@@@Z, 0x00779750, ?GetShouldNotBeAddedToPlanned@Abode@@UAE_NXZ, ?SetShouldNotBeAddedToPlanned@Abode@@UAEX_N@Z                                                               // [0xf3410] 0x008a9000 + 0xf3410 = 0x0099c410
.long ?BuildBy@MultiMapFixed@@UAEXM@Z, ?ConvertToPlanned@Abode@@UAEPAVPlannedMultiMapFixed@@XZ                                                                                       // [0xf3420] 0x008a9000 + 0xf3420 = 0x0099c420
.long ?CreateCollideData@MultiMapFixed@@UAEXXZ
.long ?MoveAbodeToPlannedAbodes@Abode@@UAEXXZ                                                                                                   // [0xf342c] 0x008a9000 + 0xf342c = 0x0099c42c
.long 0x007794f0, 0x007797b0, ?StopBeingFunctional@Abode@@UAEXPAVGPlayer@@@Z, ?RestartBeingFunctional@Abode@@UAEXXZ                                                               // [0xf3430] 0x008a9000 + 0xf3430 = 0x0099c430
.long ?CausesTownEmergencyIfDamaged@Abode@@UAE_NXZ, ?CanBeHiddenIn@Abode@@UAE_NXZ, ?GetTribe@Abode@@UAEPAUGTribeInfo@@XZ                                                                           // [0xf3440] 0x008a9000 + 0xf3440 = 0x0099c440
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf344c] 0x008a9000 + 0xf344c = 0x0099c44c
.long 0x447a0000, 0x41200000, 0x3fc00000                                                                           // [0xf3454] 0x008a9000 + 0xf3454 = 0x0099c454
.long 0x3f333333, 0x41100000, 0xc2180000, 0x40a00000                                                               // [0xf3460] 0x008a9000 + 0xf3460 = 0x0099c460
.long 0x41200000                                                                                                   // [0xf3470] 0x008a9000 + 0xf3470 = 0x0099c470

VftableAndRTTI GWorshipSiteInfo                                                                                    // [0xf3474] 0x008a9000 + 0xf3474 = 0x0099c474
.long ?Serialise@Base@@UAEXAAVArchive@@@Z
.long ??_GGWorshipSiteInfo@@UAEPAXI@Z                                                                                                   // [0xf347c] 0x008a9000 + 0xf347c = 0x0099c47c
.long ?Delete@Base@@UAEXH@Z
.long ?ToBeDeleted@Base@@UAEXH@Z
.long ?Get3DSoundPos@Base@@UAEHPAULHPoint@@@Z
.long ?CleanUpForSerialisation@Base@@UAEXXZ
.long ?Dump@Base@@UAEXXZ
.long ?GetDebugText@GObjectInfo@@UBEPBDXZ
.long ?GetDebugColor@GBaseInfo@@UBE?AVLHColor@@XZ
.long ?GetBaseInfo@GWorshipSiteInfo@@UAEPAVGBaseInfo@@AAI@Z                                                                                                   // [0xf349c] 0x008a9000 + 0xf349c = 0x0099c49c
.long ?UpdateValue@GBaseInfo@@UAEXMKK@Z
.long ?GetMesh@GWorshipSiteInfo@@UBEIXZ                                                                                                   // [0xf34a4] 0x008a9000 + 0xf34a4 = 0x0099c4a4
.long ?GetMesh@GObjectInfo@@UBE?AW4MeshId@@W4TRIBE_TYPE@@@Z                                                                                                   // [0xf34a8] 0x008a9000 + 0xf34a8 = 0x0099c4a8
.long ?GetAlignmentType@GObjectInfo@@UBE?AW4ALIGNMENT_TYPE@@XZ                                                                                                   // [0xf34ac] 0x008a9000 + 0xf34ac = 0x0099c4ac
.long ?GetFoodType@GObjectInfo@@UBE?AW4FOOD_TYPE@@XZ                                                                                                   // [0xf34b0] 0x008a9000 + 0xf34b0 = 0x0099c4b0
.long ?IsOkToCreateAtPos@GMultiMapFixedInfo@@UBE_NABUMapCoords@@MM@Z                                                                                                   // [0xf34b4] 0x008a9000 + 0xf34b4 = 0x0099c4b4
.long ?GetAbodeType@GWorshipSiteInfo@@UBE?AW4ABODE_TYPE@@XZ
.long ?GetAbodeNumber@GFeatureInfo@@UBE?AW4ABODE_NUMBER@@XZ                                                                                       // [0xf34b8] 0x008a9000 + 0xf34b8 = 0x0099c4b8

VftableAndRTTI PlannedWorshipSite                                                                                  // [0xf34c0] 0x008a9000 + 0xf34c0 = 0x0099c4c0
.long ?Serialise@Base@@UAEXAAVArchive@@@Z
.long ??_GPlannedWorshipSite@@UAEPAXI@Z                                                                                                   // [0xf34c8] 0x008a9000 + 0xf34c8 = 0x0099c4c8
.long ?Delete@Base@@UAEXH@Z
.long ?ToBeDeleted@PlannedCitadelPart@@UAEXH@Z
.long ?Get3DSoundPos@GameThingWithPos@@UAEHPAULHPoint@@@Z
.long ?CleanUpForSerialisation@Base@@UAEXXZ
.long ?Dump@Base@@UAEXXZ
.long ?GetPlayer@GameThing@@QAEPAVGPlayer@@XZ
.long ?SetPlayer@GameThing@@QAEXPAVGPlayer@@@Z
.long ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z
.long ?RemoveDance@GameThing@@QAEXXZ
.long ?IsAvailable@GameThing@@QAE_NXZ
.long ?IsCreature@GameThing@@QAE_NPAVCreature@@@Z
.long ?IsCreature@GameThing@@UAE_NXZ
.long ?IsCreatureNotTooNear@GameThing@@UAE_NPAVCreature@@@Z
.long ?GetDrawImportance@GameThing@@QAEMXZ
.long ?GetMaxAlignmentChangePerGameTurn@GameThing@@UAEMXZ
.long ?GetComputerSeen@GameThing@@UAE_NXZ
.long ?GetTown@GameThing@@QAEPAVTown@@XZ
.long ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z
.long ?SetVillagerActivity@GameThing@@UAEXPAVVillager@@@Z
.long ?UpdateVillagerActivityEffect@GameThing@@QAEIPAVVillager@@@Z
.long ?MaintainSpell@GameThing@@UAEXIM@Z
.long ?UpdateSpellInfo@GameThing@@QAEXPAVSpell@@PAVPSysProcessInfo@@@Z
.long ?GetRadius@GameThing@@QAEMXZ
.long ?Get2DRadius@GameThing@@QAEMXZ
.long ?GetPlayerWhoLastPickedMeUp@GameThing@@QAEPAVGPlayer@@XZ
.long ?GetPlayerWhoLastDroppedMe@GameThing@@QAEPAVGPlayer@@XZ
.long ?IsFootpathLink@GameThing@@QAE_NXZ
.long ?GetFootpathLink@GameThing@@QAEPAVGFootpathLink@@XZ
.long ?AddFootpathLink@GameThing@@QAEXPAVGFootpath@@@Z
.long ?GetNearestPathTo@GameThing@@QAEIABUMapCoords@@MH@Z
.long ?UseFootpathIfNecessary@GameThingWithPos@@QAEXPAVLiving@@ABUMapCoords@@E@Z
.long ?AddFootpath@GameThing@@QAEIPAVGFootpath@@@Z
.long ?RemoveFootpath@GameThing@@QAEIPAVGFootpath@@@Z
.long ?JustAddResource@GameThing@@QAEIW4RESOURCE_TYPE@@K_N@Z
.long ?JustRemoveResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z
.long ?JustGetResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z
.long ?GetResource@GameThing@@QAEIW4RESOURCE_TYPE@@@Z
.long ?AddResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPAVGInterfaceStatus@@_NABUMapCoords@@H@Z
.long ?RemoveResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPAVGInterfaceStatus@@PA_N@Z
.long ?CastCreature@GameThing@@QAEPAVCreature@@XZ
.long ?CastPlayer@GameThing@@QAEPAVGPlayer@@XZ
.long ?CastOneOffSpellSeed@GameThing@@UAEIXZ
.long ?CastAbode@GameThing@@QAEPAVAbode@@XZ
.long ?CastMultiMapFixed@GameThing@@QAEPAVMultiMapFixed@@XZ
.long ?CastSpellIcon@GameThing@@UAEIXZ
.long ?CastTree@GameThing@@UAEIXZ
.long ?IsDeletedOnNewMap@GameThing@@QAE_NXZ
.long ?GetNumberOfInstanceForGlobalList@GameThing@@QAEGXZ
.long ?GetTownArtifactValue@GameThing@@QAEMXZ
.long ?CanBecomeArtifact@GameThing@@QAE_NXZ
.long ?DrawInHand@GameThing@@QAEXPAVGInterfaceStatus@@@Z
.long ?IsFunctional@GameThing@@QAE_NXZ
.long ?GetDebugText@PlannedWorshipSite@@UAEPADXZ                                                                                                   // [0xf359c] 0x008a9000 + 0xf359c = 0x0099c59c
.long ?GetSampleForAttack@GameThing@@UAEIXZ
.long ?GetGuidanceResourceType@GameThing@@UAEIXZ
.long ?GetShowNeedsPos@MultiMapFixed@@UAEIKPAUMapCoords@@@Z
.long ?Load@PlannedWorshipSite@@UAEIAAVGameOSFile@@@Z                                                                                                   // [0xf35ac] 0x008a9000 + 0xf35ac = 0x0099c5ac
.long ?Save@PlannedWorshipSite@@UAEIAAVGameOSFile@@@Z
.long ?GetSaveType@PlannedWorshipSite@@UAEIXZ                                                                                       // [0xf35b0] 0x008a9000 + 0xf35b0 = 0x0099c5b0
.long ?SaveExtraData@GameThing@@QAEXAAVGameOSFile@@@Z
.long ?ResolveLoad@GameThing@@QAEXXZ
.long ?SetPos@GameThingWithPos@@QAEXABUMapCoords@@@Z
.long ?GetPos@GameThingWithPos@@QAEPAUMapCoords@@XZ
.long ?GetArrivePos@GameThingWithPos@@QAEPAUMapCoords@@XZ
.long ?PhysicsEditorCreate@GameThingWithPos@@QAEXH@Z

.long ?GetCreatureBeliefType@GameThingWithPos@@UAEIXZ
.long ?GetCreatureBeliefListType@GameThingWithPos@@UAEIXZ
.long ?GetCitadel@GameThingWithPos@@UAEPAUCitadel@@XZ
.long ?GetOrigin@GameThingWithPos@@UBEIXZ

.long ?GetLife@GameThingWithPos@@UBEMXZ
.long ?GetScale@PlannedMultiMapFixed@@UBEMXZ, ?SetScale@PlannedMultiMapFixed@@UAEXM@Z
.long ?GetPower@GameThingWithPos@@UBEMXZ

.long ?GetPSysPower@GameThingWithPos@@UBEMXZ
.long ?GetSpeedInMetres@GameThingWithPos@@UBEMXZ
.long ?SetSpeedInMetres@GameThingWithPos@@UAEXMH@Z
.long ?GetRunningSpeedInMetres@GameThingWithPos@@UBEMXZ

.long ?GetDistanceFromObject@GameThingWithPos@@UBEMPAUMapCoords@@@Z
.long ?GetDefaultSpeedInMetres@GameThingWithPos@@UAEMXZ
.long ?SetHeight@GameThingWithPos@@UAEXM@Z
.long ?SetMaxHeight@GameThingWithPos@@UAEXM@Z

.long ?GetMaxHeight@GameThingWithPos@@UAEMXZ
.long ?GetPSysBeamTargetPos@GameThingWithPos@@UAEXPAULHPoint@@@Z
.long ?GetSpeedInMetresPerSecond@GameThingWithPos@@UBEMXZ
.long ?SetSpeedInMetresPerSecond@GameThingWithPos@@UAEXMH@Z

.long ?GetRunningSpeedInMetresPerSecond@GameThingWithPos@@UAEMXZ
.long ?GetDefaultSpeedInMetresPerSecond@GameThingWithPos@@UAEMXZ
.long ?IsAnimate@GameThingWithPos@@UAE_NXZ
.long ?GetMovementDirection@GameThingWithPos@@UAEXPAULHPoint@@@Z

.long ?GetPhysicsMovementDirection@GameThingWithPos@@UAEXPAULHPoint@@@Z
.long ?GetInteractPos@GameThingWithPos@@UAEXPAULHPoint@@@Z
.long ?IsMoving@GameThingWithPos@@UBE_NXZ
.long ?IsObjectInMap@GameThingWithPos@@UAE_NXZ

.long ?IsDrowning@GameThingWithPos@@UAE_NXZ
.long ?IsCannotBePickedUp@GameThingWithPos@@UBE_NXZ
.long ?GetOverwritePickUpToolTip@GameThingWithPos@@UAEIXZ
.long ?IsStompable@GameThingWithPos@@UAE_NXZ

.long ?IsAvailableForStateChange@GameThingWithPos@@UAE_NXZ
.long ?IsInteractable@GameThingWithPos@@UAE_NXZ
.long ?GetOverwriteInteractableToolTip@GameThingWithPos@@UAEIXZ
.long ?GetOverwriteDropToolTip@GameThingWithPos@@UAEIXZ

.long ?GetOverwriteTapToolTip@GameThingWithPos@@UAEIXZ
.long ?IsCastShadowAtNight@GameThingWithPos@@UAE_NXZ
.long ?CleanupWhenDeleted@GameThingWithPos@@UAEXH@Z
.long ?GetImpressiveType@GameThingWithPos@@UAE?AW4IMPRESSIVE_TYPE@@XZ

.long ?GetImpressiveIntensity@GameThingWithPos@@UAEMW4IMPRESSIVE_TYPE@@@Z
.long ?GetImpressiveValue@GameThingWithPos@@UAEMPAULiving@@PAUReaction@@@Z
.long ?GetUpdateOfBoredomValue@GameThingWithPos@@UAEMPAUReaction@@PAV1@@Z
.long ?IsTown@GameThingWithPos@@UAE_NXZ

.long ?IsTown@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsActivityObjectWhichAngerAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsActivityObjectWhichCompassionAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsActivityObjectWhichPlayfulnessAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsTownBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?TrueFunction@GameThingWithPos@@UAE_NXZ
.long ?FalseFunction@GameThingWithPos@@UAE_NXZ
.long ?IsNotLiving@GameThingWithPos@@UAE_NXZ

.long ?IsSuitableForCreatureActivity@GameThingWithPos@@UAE_NXZ
.long ?IsTownCentre@GameThingWithPos@@UAE_NXZ
.long ?IsTotemStatue@GameThingWithPos@@UAE_NXZ
.long ?IsTownDesireFlag@GameThingWithPos@@UAE_NXZ

.long ?IsRock@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsRock@GameThingWithPos@@UAE_NXZ
.long ?IsSpellDispenser@GameThingWithPos@@UAE_NXZ
.long ?IsMist@GameThingWithPos@@UAE_NXZ

.long ?IsQueryIcon@GameThingWithPos@@UAE_NXZ
.long ?IsStreetLight@GameThingWithPos@@UAE_NXZ
.long ?IsStreetLantern@GameThingWithPos@@UAE_NXZ
.long ?IsAbode@GameThingWithPos@@UAE_NXZ

.long ?IsField@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsField@GameThingWithPos@@UAE_NXZ
.long ?IsBuildingMaterial@GameThingWithPos@@UAE_NXZ
.long ?IsMagicFireBall@GameThingWithPos@@UAE_NXZ

.long ?IsSuitableForCreatureAction@GameThingWithPos@@UAE_NXZ
.long ?IsCitadelHeart@GameThingWithPos@@UAE_NXZ
.long ?IsDamaged@GameThingWithPos@@UAE_NXZ
.long ?CanBeHealedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeEatenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanCreatureEatMe@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeAttackedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeFrighteningToCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeHelpedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePlayedWithByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeImpressedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeInspectedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBePoodUponByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeBefriendedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeSleptNextToByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePickedUpByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeStrokedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeKissedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeSetOnFire@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeStompedOnByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeThrownByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeGivenToVillager@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePutInAStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeDestroyedByStoning@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeStonedAndEatenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeExaminedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeFoughtByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanReceiveGifts@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanActAsAContainer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsBeingBuilt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?NeedsRepair@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOnFire@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsNotOnFire@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeUsedForBuilding@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsMushroom@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeUsedForRepair@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeGivenToTown@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeUsedToHoldWater@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePutInFoodPile@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePutInWoodPile@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanHaveMagicFoodCastOnMe@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanHaveMagicWoodCastOnMe@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeBroughtBackToCitadel@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillager@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsVillagerFarFromHome@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerInTownWithoutManyBreeders@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerNotWorshipping@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsCow@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePoodOn@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerWhoHasNotBeenImpressedRecently@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerWhoHasNotBeenDancedWithRecently@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?DoesVillagerBelongToATownWhichIsAlreadyImpressed@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?DoesTotemBelongToATownWhichIsVeryImpressedIndeed@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsDominantCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeDancedWith@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsAggressive@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsWorshipSite@GameThingWithPos@@UAE_NXZ
.long ?IsWorshipSite@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?GetWorshipSite@GameThingWithPos@@UAEPAUWorshipSite@@XZ
.long ?IsWorkshop@GameThingWithPos@@UAE_NXZ
.long ?IsWorkshop@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsBuildingWhichIsBeingBuilt@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsStoragePitWithFoodInIt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsFieldWhichNeedsWatering@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsFieldWithFoodInIt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsFieldBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsStoragePitBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStoragePitBelongingToMyPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?BenefitsFromHavingWaterSprinkledOnIt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTree@GameThingWithPos@@UAE_NXZ

.long ?IsTree@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTreeNotTooNearPlannedForest@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTreeBigEnoughForCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAFoodPileOutsideStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsAWoodPileOutsideStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsDoingSomethingInteresting@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeUsedForBuildingHomeByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPickupableRock@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsCitadelPart@GameThingWithPos@@UAE_NXZ
.long ?IsCitadelPart@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPlayingFootball@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPlayingFootballAndMySideHasJustScored@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsPlayingFootballAndOtherSideHasJustScored@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeBroughtHomeByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAnimalBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsOneOffSpellAggressive@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellCompassionate@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellPlayful@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellToRestoreHealth@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeKickedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeStolenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStealableByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStealableSpell@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsStealableScaffold@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTownBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTotemWithStealableSpell@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCreatureAvailableForJointActivity@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsCreatureNotAvailableForJointActivity@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToyAwayFromHome@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToy@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToyBall@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsToyDie@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToyCuddly@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?IsLiving@GameThingWithPos@@UBE_NXZ
.long ?IsLiving@GameThingWithPos@@UBE_NPAVCreature@@@Z

.long ?IsFence@GameThingWithPos@@UBE_NXZ
.long ?IsSpellIcon@GameThingWithPos@@UBE_NXZ
.long ?NothingScareyNearMe@GameThingWithPos@@UBE_NXZ
.long ?CanBeUsedForThrowingDamageByCreature@GameThingWithPos@@UBE_NPAVCreature@@@Z

.long ?IsCreatureWhoSeemsFriendly@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?CanBeThrownInTheSeaPlayfully@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?GetCreatureMimicType@GameThingWithPos@@UBEIXZ
.long ?GetHowMuchCreatureWantsToLookAtMe@GameThingWithPos@@UAEMXZ

.long ?IsFlock@GameThingWithPos@@UBE_NXZ
.long ?IsDance@GameThingWithPos@@UBE_NXZ
.long ?IsReward@GameThingWithPos@@UBE_NXZ
.long ?IsScriptContainer@GameThingWithPos@@UBE_NXZ

.long ?IsWeather@GameThingWithPos@@UBE_NXZ
.long ?IsSpell@GameThingWithPos@@UBE_NXZ
.long ?IsDeletedWhenReleasedFromScript@GameThingWithPos@@UAE_NXZ
.long ?IsMobileWallHug@GameThingWithPos@@UBE_NXZ

.long ?IsActive@GameThingWithPos@@UBE_NXZ
.long ?IsObjectTurningTooFastForCameraToFollowSmoothly@GameThingWithPos@@UBE_NXZ
.long ?CalculateWhereIWillBeAfterNSeconds@GameThingWithPos@@UAEXMPAULHPoint@@@Z
.long ?AttitudeToCreatureEating@GameThingWithPos@@UAEIXZ
.long ?GetText@PlannedMultiMapFixed@@UAEPBDXZ
.long ?CalculateDesireForFood@GameThingWithPos@@UAEMXZ
.long ?CalculateDesireForRest@GameThingWithPos@@UAEMXZ
.long ?CalculatePeopleHidingIndicator@GameThingWithPos@@UAEMXZ

.long ?GetHeight@GameThingWithPos@@UBEMXZ
.long ?IsReadyForNewScriptAction@GameThingWithPos@@UBE_NXZ
.long ?ForDrawFXGetNumVertices@GameThingWithPos@@UAEHXZ
.long ?ForDrawFXGetVertexPos@GameThingWithPos@@UAEXHPAULHPoint@@@Z

.long ?SetInScript@GameThingWithPos@@UAEXH@Z
.long ?SetControlledByScript@GameThingWithPos@@UAEXH@Z
.long ?GetDeathReason@GameThingWithPos@@UAE?AW4DEATH_REASON@@XZ
.long ?IsInScript@GameThingWithPos@@UAE_NXZ

.long ?IsMaleVillager@GameThingWithPos@@UAE_NXZ
.long ?IsFemaleVillager@GameThingWithPos@@UAE_NXZ
.long ?IsAnimal@GameThingWithPos@@UAE_NXZ
.long ?IsAChild@GameThingWithPos@@UAE_NXZ

.long ?IsHouse@GameThingWithPos@@UAE_NXZ
.long ?IsObject@GameThingWithPos@@UBE_NXZ
.long ?IsFootball@GameThingWithPos@@UBE_NXZ
.long ?IsCitadel@GameThingWithPos@@UAE_NXZ

.long ?IsForest@GameThingWithPos@@UAE_NXZ
.long ?IsMobileObject@GameThingWithPos@@UAE_NXZ
.long ?IsMobileStatic@GameThingWithPos@@UAE_NXZ
.long ?IsAnyKindOfTree@GameThingWithPos@@UAE_NXZ

.long ?IsDeadTree@GameThingWithPos@@UAE_NXZ
.long ?IsPileFood@GameThingWithPos@@UAE_NXZ
.long ?IsFeature@GameThingWithPos@@UAE_NXZ
.long ?IsScriptMarker@GameThingWithPos@@UAE_NXZ

.long ?IsScriptHighlight@GameThingWithPos@@UAE_NXZ
.long ?IsWonder@PlannedMultiMapFixed@@UAE_NXZ
.long ?IsInfluenceRing@GameThingWithPos@@UAE_NXZ
.long ?IsPuzzleGame@GameThingWithPos@@UAE_NXZ

.long ?IsScaffold@GameThingWithPos@@UAE_NXZ
.long ?IsSkeleton@GameThingWithPos@@UBE_NXZ
.long ?IsPoisoned@GameThingWithPos@@UBE_NXZ
.long ?IsSpeedUp@GameThingWithPos@@UAE_NXZ

.long ?IsParticleContainer@GameThingWithPos@@UAE_NXZ
.long ?IsSacrificeAltar@GameThingWithPos@@UAE_NXZ
.long ?IsPot@GameThingWithPos@@UAE_NXZ
.long ?IsComputerPlayer@GameThingWithPos@@UBE_NXZ

.long ?CanBeThrownByPlayer@GameThingWithPos@@UBE_NXZ
.long ?SetSkeleton@GameThingWithPos@@UAEXH@Z
.long ?IsSpellSeed@GameThingWithPos@@UBE_NXZ
.long ?IsSpellShield@GameThingWithPos@@UBE_NXZ

.long ?IsPileResource@GameThingWithPos@@UBE_NXZ
.long ?IsScriptTimer@GameThingWithPos@@UBE_NXZ
.long ?CreateBuildingSite@PlannedMultiMapFixed@@UBE_NXZ
.long ?GetQueryFirstEnumText@GameThingWithPos@@UAE?AW4HELP_TEXT@@XZ

.long ?GetQueryLastEnumText@GameThingWithPos@@UAE?AW4HELP_TEXT@@XZ
.long ?GetFOVHelpMessageSet@GameThingWithPos@@UAEIXZ
.long ?GetFOVHelpCondition@GameThingWithPos@@UAEIXZ
.long ?GetScriptObjectType@GameThingWithPos@@UAEIXZ

.long ?GetFacingDirection@GameThingWithPos@@UAEMXZ
.long ?SetAffectedByWind@GameThingWithPos@@UAEXH@Z
.long ?GetReactionPower@GameThingWithPos@@UAEMXZ
.long ?GetSpellCastPos@GameThingWithPos@@UAEXPAUMapCoords@@@Z

.long ?CleanUpBeforeReset@GameThingWithPos@@UAEXXZ
.long 0x0077c070, ?CreatePlannedNoFixedCheck@PlannedMultiMapFixed@@QAEPAVMultiMapFixed@@M@Z, ?PostCreatePlanned@PlannedMultiMapFixed@@QAEXAAVMultiMapFixed@@@Z
.long ?IsCivic@PlannedMultiMapFixed@@QAE_NXZ, 0x0077bee0, ?GetDesireToBeRepaired@PlannedMultiMapFixed@@QAEMXZ, ?Draw@PlannedMultiMapFixed@@QAEXXZ                                                               // [0xf39d0] 0x008a9000 + 0xf39d0 = 0x0099c9d0
.long 0x49742400, 0x41d0cccd, 0x4148cccd, 0x41600000                                                               // [0xf39e0] 0x008a9000 + 0xf39e0 = 0x0099c9e0

VftableAndRTTI GWorshipSiteUpgradeInfo                                                                             // [0xf39f0] 0x008a9000 + 0xf39f0 = 0x0099c9f0
.long ?Serialise@Base@@UAEXAAVArchive@@@Z
.long ??_GGWorshipSiteUpgradeInfo@@UAEPAXI@Z                                                                                                   // [0xf39f8] 0x008a9000 + 0xf39f8 = 0x0099c9f8
.long ?Delete@Base@@UAEXH@Z
.long ?ToBeDeleted@Base@@UAEXH@Z
.long ?Get3DSoundPos@Base@@UAEHPAULHPoint@@@Z
.long ?CleanUpForSerialisation@Base@@UAEXXZ
.long ?Dump@Base@@UAEXXZ
.long ?GetDebugText@GObjectInfo@@UBEPBDXZ
.long ?GetDebugColor@GBaseInfo@@UBE?AVLHColor@@XZ
.long ?GetBaseInfo@GWorshipSiteUpgradeInfo@@UAEPAVGBaseInfo@@AAI@Z                                                                                                   // [0xf3a18] 0x008a9000 + 0xf3a18 = 0x0099ca18
.long ?UpdateValue@GBaseInfo@@UAEXMKK@Z
.long ?GetMesh@GFeatureInfo@@UBEIXZ                                                                                                   // [0xf3a20] 0x008a9000 + 0xf3a20 = 0x0099ca20
.long ?GetMesh@GObjectInfo@@UBE?AW4MeshId@@W4TRIBE_TYPE@@@Z                                                                                                   // [0xf3a24] 0x008a9000 + 0xf3a24 = 0x0099ca24
.long ?GetAlignmentType@GObjectInfo@@UBE?AW4ALIGNMENT_TYPE@@XZ                                                                                                   // [0xf3a28] 0x008a9000 + 0xf3a28 = 0x0099ca28
.long ?GetFoodType@GObjectInfo@@UBE?AW4FOOD_TYPE@@XZ                                                                                                   // [0xf3a2c] 0x008a9000 + 0xf3a2c = 0x0099ca2c
.long ?IsOkToCreateAtPos@GMultiMapFixedInfo@@UBE_NABUMapCoords@@MM@Z                                                                                                   // [0xf3a30] 0x008a9000 + 0xf3a30 = 0x0099ca30
.long ?GetAbodeType@GFeatureInfo@@UBE?AW4ABODE_TYPE@@XZ
.long ?GetAbodeNumber@GFeatureInfo@@UBE?AW4ABODE_NUMBER@@XZ                                                                                       // [0xf3a34] 0x008a9000 + 0xf3a34 = 0x0099ca34

VftableAndRTTI WorshipSiteUpgrade                                                                                  // [0xf3a3c] 0x008a9000 + 0xf3a3c = 0x0099ca3c
.long ?Serialise@Base@@UAEXAAVArchive@@@Z
.long ??_GWorshipSiteUpgrade@@UAEPAXI@Z
.long ?Delete@Object@@UAEXH@Z
.long ?ToBeDeleted@WorshipSiteUpgrade@@UAEXH@Z
.long ?Get3DSoundPos@GameThingWithPos@@UAEHPAULHPoint@@@Z
.long ?CleanUpForSerialisation@Base@@UAEXXZ
.long ?Dump@Base@@UAEXXZ
.long ?GetPlayer@WorshipSiteUpgrade@@UAEPAVGPlayer@@XZ                                                                                                   // [0xf3a5c] 0x008a9000 + 0xf3a5c = 0x0099ca5c
.long ?SetPlayer@GameThing@@QAEXPAVGPlayer@@@Z
.long ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z
.long ?RemoveDance@GameThing@@QAEXXZ
.long ?IsAvailable@GameThing@@QAE_NXZ
.long ?IsCreature@GameThing@@QAE_NPAVCreature@@@Z
.long ?IsCreature@GameThing@@UAE_NXZ
.long ?IsCreatureNotTooNear@GameThing@@UAE_NPAVCreature@@@Z
.long ?GetDrawImportance@Object@@UAEMXZ
.long ?GetMaxAlignmentChangePerGameTurn@GameThing@@UAEMXZ
.long ?GetComputerSeen@GameThing@@UAE_NXZ
.long ?GetTown@MultiMapFixed@@UAEPAVTown@@XZ                                                                                                   // [0xf3a88] 0x008a9000 + 0xf3a88 = 0x0099ca88
.long ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z
.long ?SetVillagerActivity@GameThing@@UAEXPAVVillager@@@Z
.long ?UpdateVillagerActivityEffect@GameThing@@QAEIPAVVillager@@@Z
.long ?MaintainSpell@GameThing@@UAEXIM@Z
.long ?UpdateSpellInfo@GameThing@@QAEXPAVSpell@@PAVPSysProcessInfo@@@Z
.long ?GetRadius@Object@@UAEMXZ
.long ?Get2DRadius@Object@@UAEMXZ
.long ?GetPlayerWhoLastPickedMeUp@GameThing@@QAEPAVGPlayer@@XZ
.long ?GetPlayerWhoLastDroppedMe@GameThing@@QAEPAVGPlayer@@XZ
.long ?IsFootpathLink@MultiMapFixed@@UAE_NXZ, ?GetFootpathLink@MultiMapFixed@@UAEPAVGFootpathLink@@XZ                                                                                       // [0xf3ab0] 0x008a9000 + 0xf3ab0 = 0x0099cab0
.long ?AddFootpathLink@GameThing@@QAEXPAVGFootpath@@@Z
.long ?GetNearestPathTo@MultiMapFixed@@UAEIPAUMapCoords@@MH@Z                                                                                                   // [0xf3abc] 0x008a9000 + 0xf3abc = 0x0099cabc
.long ?UseFootpathIfNecessary@MultiMapFixed@@UAEXPAVLiving@@PBUMapCoords@@E@Z                                                                                                   // [0xf3ac0] 0x008a9000 + 0xf3ac0 = 0x0099cac0
.long ?AddFootpathLink@MultiMapFixed@@QAEXPAVGFootpath@@@Z
.long ?RemoveFootpath@MultiMapFixed@@UAEIPAVGFootpath@@@Z                                                                                                   // [0xf3ac8] 0x008a9000 + 0xf3ac8 = 0x0099cac8
.long ?JustAddResource@GameThing@@QAEIW4RESOURCE_TYPE@@K_N@Z
.long ?JustRemoveResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z
.long ?JustGetResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z
.long ?GetResource@Object@@UAEIW4RESOURCE_TYPE@@@Z
.long ?AddResource@MultiMapFixed@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_NPBUMapCoords@@H@Z
.long ?RemoveResource@MultiMapFixed@@UAEIEEE@Z                                                                                                   // [0xf3ae0] 0x008a9000 + 0xf3ae0 = 0x0099cae0
.long ?CastCreature@GameThing@@QAEPAVCreature@@XZ
.long ?CastPlayer@GameThing@@QAEPAVGPlayer@@XZ
.long ?CastOneOffSpellSeed@GameThing@@UAEIXZ
.long ?CastAbode@GameThing@@QAEPAVAbode@@XZ
.long ?CastMultiMapFixed@MultiMapFixed@@UAEPAV1@XZ                                                                                                   // [0xf3af4] 0x008a9000 + 0xf3af4 = 0x0099caf4
.long ?CastSpellIcon@GameThing@@UAEIXZ
.long ?CastTree@GameThing@@UAEIXZ
.long ?IsDeletedOnNewMap@GameThing@@QAE_NXZ
.long ?GetNumberOfInstanceForGlobalList@GameThing@@QAEGXZ
.long ?GetTownArtifactValue@Fixed@@UAEMXZ
.long ?CanBecomeArtifact@Object@@UAE_NXZ
.long ?DrawInHand@Object@@UAEXPAVGInterfaceStatus@@@Z
.long ?IsFunctional@MultiMapFixed@@UAE_NXZ
.long ?GetDebugText@Feature@@UAEPADXZ
.long ?GetSampleForAttack@GameThing@@UAEIXZ
.long ?GetGuidanceResourceType@GameThing@@UAEIXZ
.long ?GetShowNeedsPos@MultiMapFixed@@UAEIKPAUMapCoords@@@Z
.long _Load__13MultiMapFixedFR10GameOSFile
.long ?Save@MultiMapFixed@@UAEIPAVGameOSFile@@@Z                                                                                                   // [0xf3b2c] 0x008a9000 + 0xf3b2c = 0x0099cb2c
.long ?GetSaveType@Feature@@UAEIXZ                                                                                                   // [0xf3b30] 0x008a9000 + 0xf3b30 = 0x0099cb30
.long ?SaveExtraData@GameThing@@QAEXAAVGameOSFile@@@Z
.long ?ResolveLoad@Object@@UAEXXZ
.long ?SetPos@GameThingWithPos@@QAEXABUMapCoords@@@Z
.long ?GetPos@GameThingWithPos@@QAEPAUMapCoords@@XZ
.long ?GetArrivePos@MultiMapFixed@@UAEPAUMapCoords@@PAU2@@Z
.long ?PhysicsEditorCreate@GameThingWithPos@@QAEXH@Z
.long ?GetCreatureBeliefType@Feature@@UAEIXZ

.long ?GetCreatureBeliefListType@GameThingWithPos@@UAEIXZ
.long ?GetCitadel@GameThingWithPos@@UAEPAUCitadel@@XZ
.long ?GetOrigin@GameThingWithPos@@UBEIXZ
.long ?GetLife@Object@@UAEMXZ
.long ?GetScale@Object@@UAEMXZ
.long ?SetScale@Object@@UAEXM@Z

.long ?GetPower@GameThingWithPos@@UBEMXZ
.long ?GetPSysPower@GameThingWithPos@@UBEMXZ

.long ?GetSpeedInMetres@GameThingWithPos@@UBEMXZ
.long ?SetSpeedInMetres@GameThingWithPos@@UAEXMH@Z
.long ?GetRunningSpeedInMetres@GameThingWithPos@@UBEMXZ
.long ?GetDistanceFromObject@Object@@UAEMPAUMapCoords@@@Z

.long ?GetDefaultSpeedInMetres@GameThingWithPos@@UAEMXZ
.long ?SetHeight@GameThingWithPos@@UAEXM@Z
.long ?SetMaxHeight@GameThingWithPos@@UAEXM@Z
.long ?GetMaxHeight@GameThingWithPos@@UAEMXZ

.long ?GetPSysBeamTargetPos@GameThingWithPos@@UAEXPAULHPoint@@@Z
.long ?GetSpeedInMetresPerSecond@GameThingWithPos@@UBEMXZ
.long ?SetSpeedInMetresPerSecond@GameThingWithPos@@UAEXMH@Z
.long ?GetRunningSpeedInMetresPerSecond@GameThingWithPos@@UAEMXZ

.long ?GetDefaultSpeedInMetresPerSecond@GameThingWithPos@@UAEMXZ
.long ?IsAnimate@GameThingWithPos@@UAE_NXZ
.long ?GetMovementDirection@GameThingWithPos@@UAEXPAULHPoint@@@Z
.long ?GetPhysicsMovementDirection@Object@@UAEXPAULHPoint@@@Z

.long ?GetInteractPos@GameThingWithPos@@UAEXPAULHPoint@@@Z
.long ?IsMoving@Object@@UAE_NXZ
.long ?IsObjectInMap@MultiMapFixed@@UAE_NXZ
.long ?IsDrowning@Object@@UAE_NXZ

.long ?IsCannotBePickedUp@GameThingWithPos@@UBE_NXZ
.long ?GetOverwritePickUpToolTip@GameThingWithPos@@UAEIXZ
.long ?IsStompable@GameThingWithPos@@UAE_NXZ
.long ?IsAvailableForStateChange@GameThingWithPos@@UAE_NXZ

.long ?IsInteractable@GameThingWithPos@@UAE_NXZ
.long ?GetOverwriteInteractableToolTip@GameThingWithPos@@UAEIXZ
.long ?GetOverwriteDropToolTip@GameThingWithPos@@UAEIXZ
.long ?GetOverwriteTapToolTip@GameThingWithPos@@UAEIXZ

.long ?IsCastShadowAtNight@GameThingWithPos@@UAE_NXZ
.long ?CleanupWhenDeleted@Object@@UAEXH@Z

.long ?GetImpressiveType@GameThingWithPos@@UAE?AW4IMPRESSIVE_TYPE@@XZ
.long ?GetImpressiveIntensity@GameThingWithPos@@UAEMW4IMPRESSIVE_TYPE@@@Z
.long ?GetImpressiveValue@Object@@UAEMPAVLiving@@PAVReaction@@@Z
.long ?GetUpdateOfBoredomValue@Object@@UAEMPAVReaction@@PAVGameThingWithPos@@@Z
.long ?IsTown@GameThingWithPos@@UAE_NXZ
.long ?IsTown@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsActivityObjectWhichAngerAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsActivityObjectWhichCompassionAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsActivityObjectWhichPlayfulnessAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTownBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?TrueFunction@GameThingWithPos@@UAE_NXZ
.long ?FalseFunction@GameThingWithPos@@UAE_NXZ
.long ?IsNotLiving@GameThingWithPos@@UAE_NXZ
.long ?IsSuitableForCreatureActivity@GameThingWithPos@@UAE_NXZ

.long ?IsTownCentre@GameThingWithPos@@UAE_NXZ
.long ?IsTotemStatue@GameThingWithPos@@UAE_NXZ
.long ?IsTownDesireFlag@GameThingWithPos@@UAE_NXZ
.long ?IsRock@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsRock@GameThingWithPos@@UAE_NXZ
.long ?IsSpellDispenser@GameThingWithPos@@UAE_NXZ
.long ?IsMist@GameThingWithPos@@UAE_NXZ
.long ?IsQueryIcon@GameThingWithPos@@UAE_NXZ

.long ?IsStreetLight@GameThingWithPos@@UAE_NXZ
.long ?IsStreetLantern@GameThingWithPos@@UAE_NXZ
.long ?IsAbode@GameThingWithPos@@UAE_NXZ
.long ?IsField@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsField@GameThingWithPos@@UAE_NXZ
.long ?IsBuildingMaterial@Object@@UAE_NXZ
.long ?IsMagicFireBall@GameThingWithPos@@UAE_NXZ
.long ?IsSuitableForCreatureAction@Object@@UAE_NXZ

.long ?IsCitadelHeart@GameThingWithPos@@UAE_NXZ
.long ?IsDamaged@GameThingWithPos@@UAE_NXZ
.long ?CanBeHealedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeEatenByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanCreatureEatMe@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeAttackedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeFrighteningToCreature@Fixed@@UAE_NPAVCreature@@@Z
.long ?CanBeHelpedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBePlayedWithByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeImpressedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeInspectedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBePoodUponByCreature@Object@@UAE_NPAVCreature@@@Z

.long ?CanBeBefriendedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeSleptNextToByCreature@Fixed@@UAE_NPAVCreature@@@Z
.long ?CanBePickedUpByCreature@Feature@@UAEIPAVCreature@@@Z
.long ?CanBeStrokedByCreature@Object@@UAE_NPAVCreature@@@Z

.long ?CanBeKissedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeSetOnFire@Fixed@@UAE_NPAVCreature@@@Z
.long ?CanBeStompedOnByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeThrownByCreature@Object@@UAE_NPAVCreature@@@Z

.long ?CanBeGivenToVillager@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePutInAStoragePit@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeDestroyedByStoning@Fixed@@UAE_NPAVCreature@@@Z
.long ?CanBeStonedAndEatenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeExaminedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeFoughtByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanReceiveGifts@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanActAsAContainer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsBeingBuilt@MultiMapFixed@@UAE_NPAVCreature@@@Z, ?NeedsRepair@MultiMapFixed@@UAE_NPAVCreature@@@Z
.long ?IsOnFire@Object@@UAE_NPAVCreature@@@Z
.long ?IsNotOnFire@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeUsedForBuilding@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsMushroom@Feature@@UAEIPAVCreature@@@Z
.long ?CanBeUsedForRepair@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeGivenToTown@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeUsedToHoldWater@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePutInFoodPile@Object@@UAE_NPAVCreature@@@Z
.long ?CanBePutInWoodPile@Object@@UAE_NPAVCreature@@@Z
.long ?CanHaveMagicFoodCastOnMe@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanHaveMagicWoodCastOnMe@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeBroughtBackToCitadel@Object@@UAE_NPAVCreature@@@Z
.long ?IsVillager@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerFarFromHome@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsVillagerInTownWithoutManyBreeders@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerNotWorshipping@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCow@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePoodOn@Object@@UAE_NPAVCreature@@@Z
.long ?IsVillagerWhoHasNotBeenImpressedRecently@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerWhoHasNotBeenDancedWithRecently@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?DoesVillagerBelongToATownWhichIsAlreadyImpressed@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?DoesTotemBelongToATownWhichIsVeryImpressedIndeed@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsDominantCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeDancedWith@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAggressive@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsWorshipSite@GameThingWithPos@@UAE_NXZ
.long ?IsWorshipSite@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?GetWorshipSite@WorshipSiteUpgrade@@UAEPAVWorshipSite@@XZ

.long ?IsWorkshop@GameThingWithPos@@UAE_NXZ
.long ?IsWorkshop@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsBuildingWhichIsBeingBuilt@MultiMapFixed@@UAE_NPAVCreature@@@Z
.long ?IsStoragePitWithFoodInIt@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsFieldWhichNeedsWatering@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsFieldWithFoodInIt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsFieldBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStoragePitBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsStoragePitBelongingToMyPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?BenefitsFromHavingWaterSprinkledOnIt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTree@GameThingWithPos@@UAE_NXZ
.long ?IsTree@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsTreeNotTooNearPlannedForest@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTreeBigEnoughForCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAFoodPileOutsideStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAWoodPileOutsideStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsDoingSomethingInteresting@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeUsedForBuildingHomeByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPickupableRock@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCitadelPart@GameThingWithPos@@UAE_NXZ

.long ?IsCitadelPart@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPlayingFootball@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPlayingFootballAndMySideHasJustScored@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPlayingFootballAndOtherSideHasJustScored@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeBroughtHomeByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAnimalBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellAggressive@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsOneOffSpellCompassionate@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellPlayful@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellToRestoreHealth@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeKickedByCreature@Object@@UAE_NPAVCreature@@@Z

.long ?CanBeStolenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStealableByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStealableSpell@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStealableScaffold@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsTownBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTotemWithStealableSpell@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCreatureAvailableForJointActivity@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCreatureNotAvailableForJointActivity@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsToyAwayFromHome@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToy@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToyBall@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToyDie@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsToyCuddly@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?IsLiving@GameThingWithPos@@UBE_NXZ
.long ?IsLiving@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?IsFence@GameThingWithPos@@UBE_NXZ

.long ?IsSpellIcon@GameThingWithPos@@UBE_NXZ
.long ?NothingScareyNearMe@GameThingWithPos@@UBE_NXZ
.long ?CanBeUsedForThrowingDamageByCreature@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?IsCreatureWhoSeemsFriendly@GameThingWithPos@@UBE_NPAVCreature@@@Z

.long ?CanBeThrownInTheSeaPlayfully@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?GetCreatureMimicType@GameThingWithPos@@UBEIXZ
.long ?GetHowMuchCreatureWantsToLookAtMe@Fixed@@UAEMXZ
.long ?IsFlock@GameThingWithPos@@UBE_NXZ

.long ?IsDance@GameThingWithPos@@UBE_NXZ
.long ?IsReward@GameThingWithPos@@UBE_NXZ
.long ?IsScriptContainer@GameThingWithPos@@UBE_NXZ
.long ?IsWeather@GameThingWithPos@@UBE_NXZ

.long ?IsSpell@GameThingWithPos@@UBE_NXZ
.long ?IsDeletedWhenReleasedFromScript@GameThingWithPos@@UAE_NXZ
.long ?IsMobileWallHug@GameThingWithPos@@UBE_NXZ
.long ?IsActive@GameThingWithPos@@UBE_NXZ

.long ?IsObjectTurningTooFastForCameraToFollowSmoothly@GameThingWithPos@@UBE_NXZ
.long ?CalculateWhereIWillBeAfterNSeconds@Object@@UAEXMPAULHPoint@@@Z
.long ?AttitudeToCreatureEating@GameThingWithPos@@UAEIXZ
.long ?GetText@Object@@UAEPBDXZ

.long ?CalculateDesireForFood@GameThingWithPos@@UAEMXZ
.long ?CalculateDesireForRest@GameThingWithPos@@UAEMXZ
.long ?CalculatePeopleHidingIndicator@GameThingWithPos@@UAEMXZ
.long ?GetHeight@Object@@UAEMXZ

.long ?IsReadyForNewScriptAction@GameThingWithPos@@UBE_NXZ
.long ?ForDrawFXGetNumVertices@GameThingWithPos@@UAEHXZ
.long ?ForDrawFXGetVertexPos@GameThingWithPos@@UAEXHPAULHPoint@@@Z
.long ?SetInScript@Object@@UAEXH@Z

.long ?SetControlledByScript@GameThingWithPos@@UAEXH@Z
.long ?GetDeathReason@GameThingWithPos@@UAE?AW4DEATH_REASON@@XZ
.long ?IsInScript@GameThingWithPos@@UAE_NXZ
.long ?IsMaleVillager@GameThingWithPos@@UAE_NXZ

.long ?IsFemaleVillager@GameThingWithPos@@UAE_NXZ
.long ?IsAnimal@GameThingWithPos@@UAE_NXZ
.long ?IsAChild@GameThingWithPos@@UAE_NXZ
.long ?IsHouse@GameThingWithPos@@UAE_NXZ
.long ?IsObject@Object@@UAE_NXZ
.long ?IsFootball@GameThingWithPos@@UBE_NXZ
.long ?IsCitadel@GameThingWithPos@@UAE_NXZ
.long ?IsForest@GameThingWithPos@@UAE_NXZ

.long ?IsMobileObject@GameThingWithPos@@UAE_NXZ
.long ?IsMobileStatic@GameThingWithPos@@UAE_NXZ
.long ?IsAnyKindOfTree@GameThingWithPos@@UAE_NXZ
.long ?IsDeadTree@GameThingWithPos@@UAE_NXZ

.long ?IsPileFood@GameThingWithPos@@UAE_NXZ
.long ?IsFeature@Feature@@UAEIXZ
.long ?IsScriptMarker@GameThingWithPos@@UAE_NXZ
.long ?IsScriptHighlight@GameThingWithPos@@UAE_NXZ
.long ?IsWonder@MultiMapFixed@@UAE_NXZ
.long ?IsInfluenceRing@GameThingWithPos@@UAE_NXZ
.long ?IsPuzzleGame@GameThingWithPos@@UAE_NXZ
.long ?IsScaffold@GameThingWithPos@@UAE_NXZ

.long ?IsSkeleton@GameThingWithPos@@UBE_NXZ
.long ?IsPoisoned@GameThingWithPos@@UBE_NXZ
.long ?IsSpeedUp@GameThingWithPos@@UAE_NXZ
.long ?IsParticleContainer@GameThingWithPos@@UAE_NXZ

.long ?IsSacrificeAltar@GameThingWithPos@@UAE_NXZ
.long ?IsPot@GameThingWithPos@@UAE_NXZ
.long ?IsComputerPlayer@GameThingWithPos@@UBE_NXZ
.long ?CanBeThrownByPlayer@GameThingWithPos@@UBE_NXZ

.long ?SetSkeleton@GameThingWithPos@@UAEXH@Z
.long ?IsSpellSeed@GameThingWithPos@@UBE_NXZ
.long ?IsSpellShield@GameThingWithPos@@UBE_NXZ
.long ?IsPileResource@GameThingWithPos@@UBE_NXZ

.long ?IsScriptTimer@GameThingWithPos@@UBE_NXZ
.long ?CreateBuildingSite@MultiMapFixed@@UAE_NXZ
.long ?GetQueryFirstEnumText@Feature@@UAE?AW4HELP_TEXT@@XZ
.long ?GetQueryLastEnumText@Feature@@UAE?AW4HELP_TEXT@@XZ
.long ?GetFOVHelpMessageSet@Object@@UAEIXZ
.long ?GetFOVHelpCondition@Object@@UAEIXZ
.long ?GetScriptObjectType@Feature@@UAEIXZ
.long ?GetFacingDirection@GameThingWithPos@@UAEMXZ

.long ?SetAffectedByWind@GameThingWithPos@@UAEXH@Z
.long ?GetReactionPower@GameThingWithPos@@UAEMXZ
.long ?GetSpellCastPos@GameThingWithPos@@UAEXPAUMapCoords@@@Z
.long ?CleanUpBeforeReset@GameThingWithPos@@UAEXXZ
.long ?DestroyedByBeam@Object@@UAEXXZ
.long ?GetXAngle@Object@@UAEMXZ
.long ?GetYAngle@Object@@UAEMXZ
.long ?GetZAngle@Object@@UAEMXZ
.long ?SetFocus@Object@@UAEXPBULHPoint@@@Z
.long ?SetXYZAngles@Object@@UAEXMMM@Z
.long ?SetXYZAnglesAndScale@Object@@UAEXMMMM@Z
.long ?SetJustScale@Object@@UAEXM@Z
.long ?SetYJustAngle@Object@@UAEXM@Z
.long ?SetYAngle@Object@@UAEXM@Z
.long ?UpdateFrom3DPosition@Object@@UAEXXZ
.long ?MoveAlongPath@Object@@UAEIXZ
.long ?IsReachable@Object@@UAE_NXZ
.long ?BlocksTownClearArea@Object@@UAE_NXZ
.long ?Create3DObject@Fixed@@UAEXXZ
.long ?GetMapChild@MultiMapFixed@@UAEPAVObject@@PBUMapCell@@@Z
.long ?SetMapChild@MultiMapFixed@@UAEXPAVObject@@PAUMapCell@@@Z
.long ?InsertMapObject@MultiMapFixed@@UAEXXZ
.long ?RemoveMapObject@MultiMapFixed@@UAEXXZ                                                                                                   // [0xf3f88] 0x008a9000 + 0xf3f88 = 0x0099cf88
.long ?InsertMapObjectToCell@Fixed@@UAEXPAUMapCell@@@Z
.long ?RemoveMapObjectFromCell@Object@@UAEXPAUMapCell@@@Z
.long ?IsObjectInMap@Object@@UAE_NPAUMapCell@@@Z
.long ?IsObjectInMapCheck@Object@@UAE_NXZ
.long ?MoveMapObject@MultiMapFixed@@UAEHPAUMapCoords@@@Z
.long ?ActualMoveMapObject@Object@@UAEXUMapCoords@@@Z
.long ?GetPtr@Object@@UAEPAV1@XZ
.long ?GetMeshRadius@Object@@UAEMXZ
.long ?Get3DObjectForPSys@Object@@UAEPAVGame3DObject@@XZ
.long ?GetPSysFireFlameMatrix@Object@@UAE_NPAULHMatrix@@@Z
.long ?GetPSysFireLocalRndFlamePos@Object@@UAE_NPAULHPoint@@PAH@Z
.long ?GetPSysFireWorldFlamePos@Object@@UAE_NPBULHPoint@@HPAU2@@Z
.long ?GetPSysFireLocalFlameScale@Object@@UAEMXZ
.long ?GetPSysFireMaxFlames@Object@@UAEIXZ
.long ?GetSpotEffectPower@Object@@UAEMXZ
.long ?GetAggressorValueFromDamage@Object@@UAEMM@Z
.long ?GetHoldType@Object@@UAE?AW4HOLD_TYPE@@XZ
.long ?GetHoldRadius@Object@@UAEMXZ
.long ?GetHoldLoweringMultiplier@Object@@UAEMXZ
.long ?GetHoldYRotate@Object@@UAEMXZ
.long ?HandShouldFeelWithMeshIntersect@Object@@UAE_NXZ
.long ?SetSpecularColor@Object@@UAEXULH3DColor@@@Z
.long ?GetSpecularColor@Object@@UAE?AULH3DColor@@XZ
.long ?SetBeliefSprite@Object@@UAEXPAVLH3DSprite@@@Z
.long ?GetBeliefSprite@Object@@UAEPAVLH3DSprite@@XZ
.long ?SetLife@Object@@UAEXM@Z
.long ?IsAlive@Object@@UAE_NXZ
.long ?ReduceLife@MultiMapFixed@@UAEXMPAVGPlayer@@@Z
.long ?IncreaseLife@Object@@UAEXM@Z
.long ?GetSacrificeValue@Object@@UAEMXZ
.long ?ReduceLifeDueToBurning@Object@@UAEXMPAVGPlayer@@@Z
.long ?FillInEffectDefenceMultiplier@Object@@UAEXPAVEffectNumbers@@@Z
.long ?ApplyEffect@Object@@UAEXPBXPAVEffectValues@@@Z
.long ?GetDamageEffect@Object@@UAEMPAVEffectValues@@@Z
.long ?GetHealEffect@Object@@UAEMPAVEffectValues@@@Z
.long ?GetActualObjectToEffect@Object@@UAEPAXPAVGPlayer@@_N@Z
.long ?DrawValue@Object@@UAEXHM@Z
.long ?ScaffoldMoved@Object@@UAEXPAVScaffold@@@Z
.long ?GetHeatCapacity@Object@@UAEMXZ
.long ?GetFireGPHXDrawn@Object@@UAEXPA_N000@Z
.long ?GetRainCoolingMultiplier@Object@@UAEMXZ
.long ?GetDefaultFireCentrePos@Object@@UAEPAULHPoint@@PAU2@@Z
.long ?GetDefaultFireRadius@Object@@UAEMXZ
.long ?DestroyedByEffect@Object@@UAEIPAVGPlayer@@M@Z
.long ?Process@MultiMapFixed@@UAEIXZ
.long ?ProcessBySpell@Object@@UAEIPAVSpell@@@Z
.long ?ApplySingleEffect@Object@@UAEXW4EFFECT_TYPE@@MPAVGameThing@@PBUMapCoords@@@Z
.long ?GetMesh@Feature@@UBEHXZ
.long ?GetDetailMesh@Object@@UAEHH@Z
.long ?Draw@Feature@@UAEXXZ
.long ?DrawOutOfMap@Object@@UAEX_N@Z
.long ?IsG3DObjectDrawnInHand@Object@@UAE_NXZ
.long ?GetDrawRegion@Object@@UAEXPAULHRegion@@@Z
.long ?ProcessState@Object@@UAEIXZ
.long ?GetProjectileSpeed@Object@@UAEMXZ
.long ?CanBePickedUp@Object@@UAE_NXZ
.long ?CanBeCrushed@Fixed@@UAE_NXZ
.long ?GetTopPos@Object@@UAEMXZ
.long ?GetVillagerHugRadius@Object@@UAEMXZ
.long ?GetWeight@Object@@UAEMXZ
.long ?GetWorldMatrix@Object@@UAEXPAULHMatrix@@@Z
.long ?CanBeSuckedIntoVortex@Object@@UAE_NPAVLandscapeVortex@@@Z
.long ?GetDiscipleStateIfInteractedWith@MultiMapFixed@@UAEIPAVGInterfaceStatus@@PAVVillager@@@Z
.long ?GetWorkingPos@Object@@UAEPAUMapCoords@@PAU2@PAV1@@Z
.long ?GetHeightForHandAboveInteractObject@Object@@UAEMXZ
.long ?GetHandHelpMessageSet@Object@@UAEIXZ
.long ?GetHandHelpCondition@Object@@UAEIXZ
.long ?CallVirtualFunctionsForCreation@MultiMapFixed@@UAEXABUMapCoords@@@Z
.long ?Get3DType@Object@@UAE?AW4LH3DObject__ObjectType@@XZ
.long ?GetFoodValue@Object@@UAEMW4FOOD_TYPE@@@Z
.long ?GetWoodValue@Object@@UAEMXZ
.long ?GetFoodType@Object@@UAE?AW4FOOD_TYPE@@XZ
.long ?GetImpressiveValue@Object@@UAEMXZ
.long ?IsSpellSeedReturnPoint@Object@@UAE_NXZ
.long ?IsABeliever@Object@@UAE_NXZ
.long ?AsMultiMapFixed@MultiMapFixed@@UAEPAV1@XZ
.long ?ApplyWaterSpell@Object@@UAEMPAVSpellWater@@@Z
.long ?IsResourceStore@MultiMapFixed@@UAE_NW4RESOURCE_TYPE@@@Z
.long ?DeleteObjectAndTakeResource@MultiMapFixed@@UAE_NPAVObject@@PAVGInterfaceStatus@@@Z
.long ?GetRadiusMultiplierForApplyingPotToPos@Object@@UAEMXZ
.long ?DoCreatureMimicAfterAddingResource@MultiMapFixed@@UAE_NW4RESOURCE_TYPE@@PAVGInterfaceStatus@@@Z
.long ?GetResourceType@Object@@UAE?AW4RESOURCE_TYPE@@XZ
.long ?GetDefaultResource@Object@@UAEHXZ
.long ?SetPoisonedResource@Object@@UAEXW4RESOURCE_TYPE@@H@Z
.long ?SetPoisoned@Object@@UAEXH@Z
.long ?IsLockedInInteract@Object@@UAE_NXZ
.long ?SetDying@Object@@UAE_NXZ
.long ?IsAttackable@Object@@UAE_NPAV1@@Z
.long ?IsAllied@Object@@UAE_NPAV1@@Z
.long ?IsTouching@Object@@UAE_NPAUMapCoords@@0@Z
.long ?IsTouching@Object@@UAE_NPAUMapCoords@@@Z
.long ?IsTouching@Object@@UAE_NPAV1@M@Z
.long ?StartOnFire@MultiMapFixed@@UAEXXZ
.long ?EndOnFire@Object@@UAEXXZ
.long ?GetDistanceFromObject@Object@@UAEMPAV1@@Z
.long ?GetTribalPower@Object@@UAEMW4TRIBE_TYPE@@@Z
.long ?ValidForLockedSelectProcess@Fixed@@UAE_NPAVGInterfaceStatus@@@Z
.long ?NetworkFriendlyStartLockedSelect@Fixed@@UAE_NPAVGInterfaceStatus@@@Z
.long ?NetworkUnfriendlyStartLockedSelect@Object@@UAE_NXZ
.long ?IsReadyForNetworkUnfriendlyLockedSelect@Object@@UAE_NXZ
.long ?NetworkUnfriendlyLockedSelect@Object@@UAE_NPAVControlHandUpdateInfo@@@Z
.long ?GetReadyForNetworkUnfriendlyEndLockedSelect@Object@@UAE_NXZ
.long ?IsReadyForNetworkUnfriendlyEndLockedSelect@Object@@UAE_NXZ
.long ?NetworkUnfriendlyEndLockedSelect@Object@@UAE_NXZ
.long ?NetworkFriendlyEndLockedSelect@Object@@UAE_NPAVGInterfaceStatus@@@Z
.long ?ValidAsInterfaceTarget@Object@@UAE_NXZ
.long ?ValidAsInterfaceLeashTarget@Object@@UAE_NXZ
.long ?SelectOnlyAfterRecSystem@Object@@UAE_NXZ
.long ?ValidForPlaceInHand@Object@@UAE_NPAVGInterfaceStatus@@@Z
.long ?InterfaceSetInMagicHand@Fixed@@UAE_NPAVGInterfaceStatus@@@Z
.long ?InterfaceSetOutMagicHand@Object@@UAE_NPAVGInterfaceStatus@@@Z
.long ?ValidToRemoveFromHand@Object@@UAE_NPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?RemoveFromHand@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?ValidToShakeFromHand@Object@@UAE_NXZ
.long ?InterfaceMustBeInInfluenceForInteraction@Object@@UAE_NXZ
.long ?IsTuggable@Object@@UAE_NXZ
.long ?ValidToApplyThisToObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z
.long ?ApplyThisToObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@PAVGestureSystemPacketData@@@Z
.long ?ValidToApplyThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PAUMapCoords@@@Z
.long ?ApplyThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@PAVGestureSystemPacketData@@@Z
.long ?ValidForLockedApplyProcess@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?ApplyUnlockProcess@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?IsInterfacePowerUpWhenInHand@Object@@UAEIXZ
.long ?ApplyOnlyAfterRecSystem@Object@@UAEIXZ
.long ?ApplyOnlyAfterReleased@Object@@UAEIXZ
.long ?InterfaceValidToTap@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?InterfaceTap@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?InterfaceValidToGiveObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z
.long ?InterfaceGiveObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z
.long ?InterfaceValidToInteractAsMapCoordsObject@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?InterfaceInteractAsMapCoordsObject@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?ThrowObjectFromHand@Object@@UAEIPAVGInterfaceStatus@@H@Z
.long ?ValidToSelectFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?ValidToApplyFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?SelectFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?ApplyFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?ValidToFightThisToObject@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?FightThisToObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z
.long ?IsEffectReceiver@Object@@UAE_NPAVEffectValues@@@Z
.long ?CanBeDestroyedBySpell@Object@@UAE_NPAVSpell@@@Z
.long ?GetImportance@Object@@UAEMXZ
.long ?InitialisePhysicsFromHand@Object@@UAEIPAULHPoint@@0PAVGInterfaceStatus@@PAV1@H@Z
.long ?InitialisePhysics@Object@@UAEIPBULHPoint@@0PAV1@_NPAVGInterfaceStatus@@@Z
.long ?GetPhysicsConstantsType@Object@@UAEIXZ
.long ?SetUpPhysOb@Object@@UAEXPAVPhysOb@@@Z
.long ?EndPhysics@Fixed@@UAEXPAVPhysicsObject@@_N@Z
.long ?DropSfx@Object@@UAEIXZ
.long ?GetBoundingSphere@Object@@UAEXPAULHPoint@@PAM@Z
.long ?InteractsWithPhysicsObjects@MultiMapFixed@@UAE_NXZ
.long ?ChecksVerticesVObjects@Object@@UAEIXZ
.long ?ShouldPhysicsRaiseObjectUntilNotIntersectingThis@Object@@UAEXPAV1@@Z
.long ?PhysicallyDestroysAbodes@Object@@UAEIXZ
.long ?ReactToPhysicsImpact@Object@@UAEXPAVPhysicsObject@@_N@Z
.long ?CanBecomeAPhysicsObject@Object@@UAE_NXZ
.long ?GetAlwaysRemainsInPhysicsInternalSystem@Object@@UAE_NXZ
.long ?HasSunk@Object@@UAE_NXZ
.long ?CreatureMustAvoid@MultiMapFixed@@UAE_NPAVCreature@@@Z
.long ?AddToRoutePlan@Object@@UAEXPAVRPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z
.long ?GetRoutePlanRadius@Object@@UAEMPAVCreature@@@Z
.long ?VillagerMustAvoid@Fixed@@UAE_NPAVVillager@@@Z
.long ?IsFireMan@Object@@UAE_NXZ
.long ?IsARootedObject@Object@@UAE_NXZ
.long ?GetCollideSoundType@Object@@UAE?AW4SOUND_COLLISION_TYPE@@XZ
.long ?IsSolidToNewAbode@MultiMapFixed@@UAE_NXZ
.long ?RemoveFromGame@Object@@UAEIXZ
.long ?GetLandingPointCount@Object@@UAEHXZ
.long ?GetLandingPoint@Object@@UAE_NEPAULHPoint@@@Z
.long ?GetTastiness@Object@@UAEIXZ
.long ?IsScary@Object@@UAE_NXZ
.long ?GetInspectObjectPos@Object@@UAE_NPAVVillager@@PAUMapCoords@@@Z
.long ?DiscipleInHandNear@Object@@UAEXPAVVillager@@PAVGInterfaceStatus@@@Z
.long ?GetSpecialPos@Fixed@@UAE_NIPAUMapCoords@@@Z, ?GetTownArtifact@Fixed@@UAEPAVGameThing@@XZ
.long ?IsTownArtifact@Fixed@@UAE_NXZ
.long ?ProcessInHand@Object@@UAE_NXZ
.long ?ProcessInInteract@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?GetObjectCollide@Object@@UAEIXZ
.long ?CalculateForceAppliedBy@Object@@UAEMPAVLiving@@@Z
.long ?IsPushable@Object@@UAE_NXZ
.long ?PushObject@Object@@UAEXPAVLiving@@PAUMapCoords@@@Z
.long ?PushObject@Object@@UAEXPAVLiving@@@Z
.long ?GetCarriedTreeType@Object@@UAEIXZ
.long ?GetFacingPitch@Object@@UAEMXZ
.long ?SetHeadPos@Object@@UAEXPAUMapCoords@@@Z
.long ?SaveObject@WorshipSiteUpgrade@@UAEIAAULHOSFile@@ABUMapCoords@@@Z
.long ?IsAPotFromABuildingSite@Object@@UAE_NXZ
.long ?GetNearestEdgeOfObject@Object@@UAEXPAV1@@Z
.long ?GetNearestPosOfObject@Object@@UAEXPAV1@@Z
.long ?GetNearestEdgeToPos@Object@@UAEXPBUMapCoords@@@Z
.long ?GetNearestEdge@Object@@UAEXMM@Z
.long ?GetImmersionTexture@Object@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ
.long ?GetInHandImmersionTexture@Object@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ
.long ?ShouldFootpathsGoRound@Object@@UAE_NXZ
.long ?InitialiseIsFixedForMapList@Object@@UAEXH@Z
.long ?StandAnimation@Object@@UAEIXZ
.long ?GetCollideData@MultiMapFixed@@UAEPAVNewCollide@@XZ
.long ?InsertMapObjectToCellAssumeFixed@Fixed@@UAEXPAUMapCell@@@Z
.long ?IsObjectFullyInMap@MultiMapFixed@@UAE_NXZ                                                                                                   // [0xf42a0] 0x008a9000 + 0xf42a0 = 0x0099d2a0
.long ?GetDoorPos@MultiMapFixed@@UAEPAUMapCoords@@PAU2@@Z
.long ?GetInfluence@MultiMapFixed@@UAEMXZ, ?IsPlaytimeStructure@MultiMapFixed@@UAE_NXZ                                                                                       // [0xf42a8] 0x008a9000 + 0xf42a8 = 0x0099d2a8
.long ?IsPlaytimeStarted@MultiMapFixed@@UAE_NXZ, ?AddPlaytimeVillager@MultiMapFixed@@UAE_NPAVVillager@@@Z, ?CheckMapObject@MultiMapFixed@@UAEXXZ, ?GetResourceDropPosForComputerPlayer@MultiMapFixed@@UAEXPAUMapCoords@@@Z                                                               // [0xf42b0] 0x008a9000 + 0xf42b0 = 0x0099d2b0
.long ?GetPercentBuilt@MultiMapFixed@@UAEMXZ, ?GetPercentRepaired@MultiMapFixed@@UAEMXZ, ?GetPercentRepairedFromWhenDamaged@MultiMapFixed@@UAEMXZ
.long ?IsRepaired@WorshipSiteUpgrade@@UAE_NXZ                                                               // [0xf42c0] 0x008a9000 + 0xf42c0 = 0x0099d2c0
.long ?IsBuilt@WorshipSiteUpgrade@@UAE_NXZ
.long ?GetPercentRepairedForNonFunctional@MultiMapFixed@@UAEMXZ, ?GetPercentForDrawBuilding@MultiMapFixed@@UAEMXZ, ?GetPercentAbodeFullWithAdults@MultiMapFixed@@UAEMXZ                                                               // [0xf42d0] 0x008a9000 + 0xf42d0 = 0x0099d2d0
.long ?GetPercentAbodeFullWithChildren@MultiMapFixed@@UAEMXZ
.long ?IsDrawBuilding@WorshipSiteUpgrade@@UAE_NXZ
.long ?Built@MultiMapFixed@@UAE_NXZ, ?Repaired@MultiMapFixed@@UAE_NXZ                                                               // [0xf42e0] 0x008a9000 + 0xf42e0 = 0x0099d2e0
.long ?GetBuildingSiteWood@MultiMapFixed@@UAEIPAI@Z, ?GetDestructionMesh@MultiMapFixed@@UAEPAVLH3DMesh@@XZ, ?RemoveDamage@MultiMapFixed@@UAEXXZ, ?GetBuildingObject@MultiMapFixed@@UAEPAXXZ                                                               // [0xf42f0] 0x008a9000 + 0xf42f0 = 0x0099d2f0
.long ?IsCivic@MultiMapFixed@@UAE_NXZ, ?GetAbodeType@MultiMapFixed@@UAE?AW4ABODE_TYPE@@XZ, ?SetPower@MultiMapFixed@@UAEXM@Z, ?GetResourcePos@MultiMapFixed@@UAEPAUMapCoords@@W4RESOURCE_TYPE@@H@Z                                                               // [0xf4300] 0x008a9000 + 0xf4300 = 0x0099d300
.long ?IsPoisonedResource@MultiMapFixed@@UAE_NXZ, ?GetResourceNearestEdge@MultiMapFixed@@UAEPAUMapCoords@@PAU2@W4RESOURCE_TYPE@@PAVObject@@H@Z, ?GetDesireToBeRepaired@MultiMapFixed@@UAEMXZ, ?AddToPlayer@MultiMapFixed@@UAEXXZ                                                               // [0xf4310] 0x008a9000 + 0xf4310 = 0x0099d310
.long ?RemoveFromPlayer@MultiMapFixed@@UAEXXZ, ?DoResourceAdding@MultiMapFixed@@UAEIW4RESOURCE_TYPE@@PAVGInterfaceStatus@@_NPAUMapCoords@@H@Z, ?DoResourceRemoving@MultiMapFixed@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_N@Z, ?CalulateAmountOverMaximum@MultiMapFixed@@UAEHW4RESOURCE_TYPE@@@Z                                                               // [0xf4320] 0x008a9000 + 0xf4320 = 0x0099d320
.long ?SetTown@MultiMapFixed@@UAEXPAVTown@@@Z, ?RemovePotFromStructure@MultiMapFixed@@UAEXPAVPotStructure@@@Z, ?GetShouldNotBeAddedToPlanned@MultiMapFixed@@UAE_NXZ, ?SetShouldNotBeAddedToPlanned@MultiMapFixed@@UAEX_N@Z                                                               // [0xf4330] 0x008a9000 + 0xf4330 = 0x0099d330
.long ?BuildBy@MultiMapFixed@@UAEXM@Z
.long ?ConvertToPlanned@WorshipSiteUpgrade@@UAEPAVPlannedMultiMapFixed@@XZ                                                                                       // [0xf4340] 0x008a9000 + 0xf4340 = 0x0099d340
.long ?CreateCollideData@MultiMapFixed@@UAEXXZ

VftableAndRTTI PlannedWorshipSiteUpgrade                                                                           // [0xf434c] 0x008a9000 + 0xf434c = 0x0099d34c
.long ?Serialise@Base@@UAEXAAVArchive@@@Z
.long ??_GPlannedWorshipSiteUpgrade@@UAEPAXI@Z                                                                                                   // [0xf4354] 0x008a9000 + 0xf4354 = 0x0099d354
.long ?Delete@Base@@UAEXH@Z
.long ?ToBeDeleted@GameThingWithPos@@UAEXH@Z
.long ?Get3DSoundPos@GameThingWithPos@@UAEHPAULHPoint@@@Z
.long ?CleanUpForSerialisation@Base@@UAEXXZ
.long ?Dump@Base@@UAEXXZ
.long ?GetPlayer@GameThing@@QAEPAVGPlayer@@XZ
.long ?SetPlayer@GameThing@@QAEXPAVGPlayer@@@Z
.long ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z
.long ?RemoveDance@GameThing@@QAEXXZ
.long ?IsAvailable@GameThing@@QAE_NXZ
.long ?IsCreature@GameThing@@QAE_NPAVCreature@@@Z
.long ?IsCreature@GameThing@@UAE_NXZ
.long ?IsCreatureNotTooNear@GameThing@@UAE_NPAVCreature@@@Z
.long ?GetDrawImportance@GameThing@@QAEMXZ
.long ?GetMaxAlignmentChangePerGameTurn@GameThing@@UAEMXZ
.long ?GetComputerSeen@GameThing@@UAE_NXZ
.long ?GetTown@GameThing@@QAEPAVTown@@XZ
.long ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z
.long ?SetVillagerActivity@GameThing@@UAEXPAVVillager@@@Z
.long ?UpdateVillagerActivityEffect@GameThing@@QAEIPAVVillager@@@Z
.long ?MaintainSpell@GameThing@@UAEXIM@Z
.long ?UpdateSpellInfo@GameThing@@QAEXPAVSpell@@PAVPSysProcessInfo@@@Z
.long ?GetRadius@GameThing@@QAEMXZ
.long ?Get2DRadius@GameThing@@QAEMXZ
.long ?GetPlayerWhoLastPickedMeUp@GameThing@@QAEPAVGPlayer@@XZ
.long ?GetPlayerWhoLastDroppedMe@GameThing@@QAEPAVGPlayer@@XZ
.long ?IsFootpathLink@GameThing@@QAE_NXZ
.long ?GetFootpathLink@GameThing@@QAEPAVGFootpathLink@@XZ
.long ?AddFootpathLink@GameThing@@QAEXPAVGFootpath@@@Z
.long ?GetNearestPathTo@GameThing@@QAEIABUMapCoords@@MH@Z
.long ?UseFootpathIfNecessary@GameThingWithPos@@QAEXPAVLiving@@ABUMapCoords@@E@Z
.long ?AddFootpath@GameThing@@QAEIPAVGFootpath@@@Z
.long ?RemoveFootpath@GameThing@@QAEIPAVGFootpath@@@Z
.long ?JustAddResource@GameThing@@QAEIW4RESOURCE_TYPE@@K_N@Z
.long ?JustRemoveResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z
.long ?JustGetResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z
.long ?GetResource@GameThing@@QAEIW4RESOURCE_TYPE@@@Z
.long ?AddResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPAVGInterfaceStatus@@_NABUMapCoords@@H@Z
.long ?RemoveResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPAVGInterfaceStatus@@PA_N@Z
.long ?CastCreature@GameThing@@QAEPAVCreature@@XZ
.long ?CastPlayer@GameThing@@QAEPAVGPlayer@@XZ
.long ?CastOneOffSpellSeed@GameThing@@UAEIXZ
.long ?CastAbode@GameThing@@QAEPAVAbode@@XZ
.long ?CastMultiMapFixed@GameThing@@QAEPAVMultiMapFixed@@XZ
.long ?CastSpellIcon@GameThing@@UAEIXZ
.long ?CastTree@GameThing@@UAEIXZ
.long ?IsDeletedOnNewMap@GameThing@@QAE_NXZ
.long ?GetNumberOfInstanceForGlobalList@GameThing@@QAEGXZ
.long ?GetTownArtifactValue@GameThing@@QAEMXZ
.long ?CanBecomeArtifact@GameThing@@QAE_NXZ
.long ?DrawInHand@GameThing@@QAEXPAVGInterfaceStatus@@@Z
.long ?IsFunctional@GameThing@@QAE_NXZ
.long ?GetDebugText@PlannedFeature@@UAEPADXZ                                                                                                   // [0xf4428] 0x008a9000 + 0xf4428 = 0x0099d428
.long ?GetSampleForAttack@GameThing@@UAEIXZ
.long ?GetGuidanceResourceType@GameThing@@UAEIXZ
.long ?GetShowNeedsPos@MultiMapFixed@@UAEIKPAUMapCoords@@@Z
.long ?Load@PlannedFeature@@UAEIAAVGameOSFile@@@Z
.long ?Save@PlannedFeature@@UAEIAAVGameOSFile@@@Z                                                                                       // [0xf4438] 0x008a9000 + 0xf4438 = 0x0099d438
.long ?GetSaveType@PlannedFeature@@UAEIXZ                                                                                                   // [0xf4440] 0x008a9000 + 0xf4440 = 0x0099d440
.long ?SaveExtraData@GameThing@@QAEXAAVGameOSFile@@@Z
.long ?ResolveLoad@GameThing@@QAEXXZ
.long ?SetPos@GameThingWithPos@@QAEXABUMapCoords@@@Z
.long ?GetPos@GameThingWithPos@@QAEPAUMapCoords@@XZ
.long ?GetArrivePos@GameThingWithPos@@QAEPAUMapCoords@@XZ
.long ?PhysicsEditorCreate@GameThingWithPos@@QAEXH@Z
.long ?GetCreatureBeliefType@GameThingWithPos@@UAEIXZ

.long ?GetCreatureBeliefListType@GameThingWithPos@@UAEIXZ
.long ?GetCitadel@GameThingWithPos@@UAEPAUCitadel@@XZ
.long ?GetOrigin@GameThingWithPos@@UBEIXZ
.long ?GetLife@GameThingWithPos@@UBEMXZ
.long ?GetScale@PlannedMultiMapFixed@@UBEMXZ, ?SetScale@PlannedMultiMapFixed@@UAEXM@Z
.long ?GetPower@GameThingWithPos@@UBEMXZ
.long ?GetPSysPower@GameThingWithPos@@UBEMXZ

.long ?GetSpeedInMetres@GameThingWithPos@@UBEMXZ
.long ?SetSpeedInMetres@GameThingWithPos@@UAEXMH@Z
.long ?GetRunningSpeedInMetres@GameThingWithPos@@UBEMXZ
.long ?GetDistanceFromObject@GameThingWithPos@@UBEMPAUMapCoords@@@Z

.long ?GetDefaultSpeedInMetres@GameThingWithPos@@UAEMXZ
.long ?SetHeight@GameThingWithPos@@UAEXM@Z
.long ?SetMaxHeight@GameThingWithPos@@UAEXM@Z
.long ?GetMaxHeight@GameThingWithPos@@UAEMXZ

.long ?GetPSysBeamTargetPos@GameThingWithPos@@UAEXPAULHPoint@@@Z
.long ?GetSpeedInMetresPerSecond@GameThingWithPos@@UBEMXZ
.long ?SetSpeedInMetresPerSecond@GameThingWithPos@@UAEXMH@Z
.long ?GetRunningSpeedInMetresPerSecond@GameThingWithPos@@UAEMXZ

.long ?GetDefaultSpeedInMetresPerSecond@GameThingWithPos@@UAEMXZ
.long ?IsAnimate@GameThingWithPos@@UAE_NXZ
.long ?GetMovementDirection@GameThingWithPos@@UAEXPAULHPoint@@@Z
.long ?GetPhysicsMovementDirection@GameThingWithPos@@UAEXPAULHPoint@@@Z

.long ?GetInteractPos@GameThingWithPos@@UAEXPAULHPoint@@@Z
.long ?IsMoving@GameThingWithPos@@UBE_NXZ
.long ?IsObjectInMap@GameThingWithPos@@UAE_NXZ
.long ?IsDrowning@GameThingWithPos@@UAE_NXZ

.long ?IsCannotBePickedUp@GameThingWithPos@@UBE_NXZ
.long ?GetOverwritePickUpToolTip@GameThingWithPos@@UAEIXZ
.long ?IsStompable@GameThingWithPos@@UAE_NXZ
.long ?IsAvailableForStateChange@GameThingWithPos@@UAE_NXZ

.long ?IsInteractable@GameThingWithPos@@UAE_NXZ
.long ?GetOverwriteInteractableToolTip@GameThingWithPos@@UAEIXZ
.long ?GetOverwriteDropToolTip@GameThingWithPos@@UAEIXZ
.long ?GetOverwriteTapToolTip@GameThingWithPos@@UAEIXZ

.long ?IsCastShadowAtNight@GameThingWithPos@@UAE_NXZ
.long ?CleanupWhenDeleted@GameThingWithPos@@UAEXH@Z
.long ?GetImpressiveType@GameThingWithPos@@UAE?AW4IMPRESSIVE_TYPE@@XZ
.long ?GetImpressiveIntensity@GameThingWithPos@@UAEMW4IMPRESSIVE_TYPE@@@Z

.long ?GetImpressiveValue@GameThingWithPos@@UAEMPAULiving@@PAUReaction@@@Z
.long ?GetUpdateOfBoredomValue@GameThingWithPos@@UAEMPAUReaction@@PAV1@@Z
.long ?IsTown@GameThingWithPos@@UAE_NXZ
.long ?IsTown@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsActivityObjectWhichAngerAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsActivityObjectWhichCompassionAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsActivityObjectWhichPlayfulnessAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTownBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?TrueFunction@GameThingWithPos@@UAE_NXZ
.long ?FalseFunction@GameThingWithPos@@UAE_NXZ
.long ?IsNotLiving@GameThingWithPos@@UAE_NXZ
.long ?IsSuitableForCreatureActivity@GameThingWithPos@@UAE_NXZ

.long ?IsTownCentre@GameThingWithPos@@UAE_NXZ
.long ?IsTotemStatue@GameThingWithPos@@UAE_NXZ
.long ?IsTownDesireFlag@GameThingWithPos@@UAE_NXZ
.long ?IsRock@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsRock@GameThingWithPos@@UAE_NXZ
.long ?IsSpellDispenser@GameThingWithPos@@UAE_NXZ
.long ?IsMist@GameThingWithPos@@UAE_NXZ
.long ?IsQueryIcon@GameThingWithPos@@UAE_NXZ

.long ?IsStreetLight@GameThingWithPos@@UAE_NXZ
.long ?IsStreetLantern@GameThingWithPos@@UAE_NXZ
.long ?IsAbode@GameThingWithPos@@UAE_NXZ
.long ?IsField@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsField@GameThingWithPos@@UAE_NXZ
.long ?IsBuildingMaterial@GameThingWithPos@@UAE_NXZ
.long ?IsMagicFireBall@GameThingWithPos@@UAE_NXZ
.long ?IsSuitableForCreatureAction@GameThingWithPos@@UAE_NXZ

.long ?IsCitadelHeart@GameThingWithPos@@UAE_NXZ
.long ?IsDamaged@GameThingWithPos@@UAE_NXZ
.long ?CanBeHealedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeEatenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanCreatureEatMe@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeAttackedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeFrighteningToCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeHelpedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBePlayedWithByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeImpressedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeInspectedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePoodUponByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeBefriendedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeSleptNextToByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePickedUpByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeStrokedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeKissedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeSetOnFire@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeStompedOnByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeThrownByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeGivenToVillager@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePutInAStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeDestroyedByStoning@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeStonedAndEatenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeExaminedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeFoughtByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanReceiveGifts@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanActAsAContainer@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsBeingBuilt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?NeedsRepair@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOnFire@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsNotOnFire@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeUsedForBuilding@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsMushroom@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeUsedForRepair@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeGivenToTown@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeUsedToHoldWater@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePutInFoodPile@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePutInWoodPile@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanHaveMagicFoodCastOnMe@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanHaveMagicWoodCastOnMe@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeBroughtBackToCitadel@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillager@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerFarFromHome@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsVillagerInTownWithoutManyBreeders@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerNotWorshipping@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCow@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBePoodOn@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerWhoHasNotBeenImpressedRecently@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerWhoHasNotBeenDancedWithRecently@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?DoesVillagerBelongToATownWhichIsAlreadyImpressed@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?DoesTotemBelongToATownWhichIsVeryImpressedIndeed@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsDominantCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeDancedWith@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAggressive@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsWorshipSite@GameThingWithPos@@UAE_NXZ
.long ?IsWorshipSite@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?GetWorshipSite@GameThingWithPos@@UAEPAUWorshipSite@@XZ

.long ?IsWorkshop@GameThingWithPos@@UAE_NXZ
.long ?IsWorkshop@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsBuildingWhichIsBeingBuilt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStoragePitWithFoodInIt@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsFieldWhichNeedsWatering@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsFieldWithFoodInIt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsFieldBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStoragePitBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsStoragePitBelongingToMyPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?BenefitsFromHavingWaterSprinkledOnIt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTree@GameThingWithPos@@UAE_NXZ
.long ?IsTree@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsTreeNotTooNearPlannedForest@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTreeBigEnoughForCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAFoodPileOutsideStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAWoodPileOutsideStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsDoingSomethingInteresting@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeUsedForBuildingHomeByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPickupableRock@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCitadelPart@GameThingWithPos@@UAE_NXZ

.long ?IsCitadelPart@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPlayingFootball@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPlayingFootballAndMySideHasJustScored@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPlayingFootballAndOtherSideHasJustScored@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeBroughtHomeByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAnimalBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellAggressive@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsOneOffSpellCompassionate@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellPlayful@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellToRestoreHealth@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeKickedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeStolenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStealableByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStealableSpell@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStealableScaffold@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsTownBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTotemWithStealableSpell@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCreatureAvailableForJointActivity@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCreatureNotAvailableForJointActivity@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsToyAwayFromHome@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToy@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToyBall@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToyDie@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsToyCuddly@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?IsLiving@GameThingWithPos@@UBE_NXZ
.long ?IsLiving@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?IsFence@GameThingWithPos@@UBE_NXZ

.long ?IsSpellIcon@GameThingWithPos@@UBE_NXZ
.long ?NothingScareyNearMe@GameThingWithPos@@UBE_NXZ
.long ?CanBeUsedForThrowingDamageByCreature@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?IsCreatureWhoSeemsFriendly@GameThingWithPos@@UBE_NPAVCreature@@@Z

.long ?CanBeThrownInTheSeaPlayfully@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?GetCreatureMimicType@GameThingWithPos@@UBEIXZ
.long ?GetHowMuchCreatureWantsToLookAtMe@GameThingWithPos@@UAEMXZ
.long ?IsFlock@GameThingWithPos@@UBE_NXZ

.long ?IsDance@GameThingWithPos@@UBE_NXZ
.long ?IsReward@GameThingWithPos@@UBE_NXZ
.long ?IsScriptContainer@GameThingWithPos@@UBE_NXZ
.long ?IsWeather@GameThingWithPos@@UBE_NXZ

.long ?IsSpell@GameThingWithPos@@UBE_NXZ
.long ?IsDeletedWhenReleasedFromScript@GameThingWithPos@@UAE_NXZ
.long ?IsMobileWallHug@GameThingWithPos@@UBE_NXZ
.long ?IsActive@GameThingWithPos@@UBE_NXZ

.long ?IsObjectTurningTooFastForCameraToFollowSmoothly@GameThingWithPos@@UBE_NXZ
.long ?CalculateWhereIWillBeAfterNSeconds@GameThingWithPos@@UAEXMPAULHPoint@@@Z
.long ?AttitudeToCreatureEating@GameThingWithPos@@UAEIXZ
.long ?GetText@PlannedMultiMapFixed@@UAEPBDXZ

.long ?CalculateDesireForFood@GameThingWithPos@@UAEMXZ
.long ?CalculateDesireForRest@GameThingWithPos@@UAEMXZ
.long ?CalculatePeopleHidingIndicator@GameThingWithPos@@UAEMXZ
.long ?GetHeight@GameThingWithPos@@UBEMXZ

.long ?IsReadyForNewScriptAction@GameThingWithPos@@UBE_NXZ
.long ?ForDrawFXGetNumVertices@GameThingWithPos@@UAEHXZ
.long ?ForDrawFXGetVertexPos@GameThingWithPos@@UAEXHPAULHPoint@@@Z
.long ?SetInScript@GameThingWithPos@@UAEXH@Z

.long ?SetControlledByScript@GameThingWithPos@@UAEXH@Z
.long ?GetDeathReason@GameThingWithPos@@UAE?AW4DEATH_REASON@@XZ
.long ?IsInScript@GameThingWithPos@@UAE_NXZ
.long ?IsMaleVillager@GameThingWithPos@@UAE_NXZ

.long ?IsFemaleVillager@GameThingWithPos@@UAE_NXZ
.long ?IsAnimal@GameThingWithPos@@UAE_NXZ
.long ?IsAChild@GameThingWithPos@@UAE_NXZ
.long ?IsHouse@GameThingWithPos@@UAE_NXZ

.long ?IsObject@GameThingWithPos@@UBE_NXZ
.long ?IsFootball@GameThingWithPos@@UBE_NXZ
.long ?IsCitadel@GameThingWithPos@@UAE_NXZ
.long ?IsForest@GameThingWithPos@@UAE_NXZ

.long ?IsMobileObject@GameThingWithPos@@UAE_NXZ
.long ?IsMobileStatic@GameThingWithPos@@UAE_NXZ
.long ?IsAnyKindOfTree@GameThingWithPos@@UAE_NXZ
.long ?IsDeadTree@GameThingWithPos@@UAE_NXZ

.long ?IsPileFood@GameThingWithPos@@UAE_NXZ
.long ?IsFeature@GameThingWithPos@@UAE_NXZ
.long ?IsScriptMarker@GameThingWithPos@@UAE_NXZ
.long ?IsScriptHighlight@GameThingWithPos@@UAE_NXZ
.long ?IsWonder@PlannedMultiMapFixed@@UAE_NXZ
.long ?IsInfluenceRing@GameThingWithPos@@UAE_NXZ
.long ?IsPuzzleGame@GameThingWithPos@@UAE_NXZ
.long ?IsScaffold@GameThingWithPos@@UAE_NXZ

.long ?IsSkeleton@GameThingWithPos@@UBE_NXZ
.long ?IsPoisoned@GameThingWithPos@@UBE_NXZ
.long ?IsSpeedUp@GameThingWithPos@@UAE_NXZ
.long ?IsParticleContainer@GameThingWithPos@@UAE_NXZ

.long ?IsSacrificeAltar@GameThingWithPos@@UAE_NXZ
.long ?IsPot@GameThingWithPos@@UAE_NXZ
.long ?IsComputerPlayer@GameThingWithPos@@UBE_NXZ
.long ?CanBeThrownByPlayer@GameThingWithPos@@UBE_NXZ

.long ?SetSkeleton@GameThingWithPos@@UAEXH@Z
.long ?IsSpellSeed@GameThingWithPos@@UBE_NXZ
.long ?IsSpellShield@GameThingWithPos@@UBE_NXZ
.long ?IsPileResource@GameThingWithPos@@UBE_NXZ

.long ?IsScriptTimer@GameThingWithPos@@UBE_NXZ
.long ?CreateBuildingSite@PlannedMultiMapFixed@@UBE_NXZ
.long ?GetQueryFirstEnumText@GameThingWithPos@@UAE?AW4HELP_TEXT@@XZ
.long ?GetQueryLastEnumText@GameThingWithPos@@UAE?AW4HELP_TEXT@@XZ

.long ?GetFOVHelpMessageSet@GameThingWithPos@@UAEIXZ
.long ?GetFOVHelpCondition@GameThingWithPos@@UAEIXZ
.long ?GetScriptObjectType@GameThingWithPos@@UAEIXZ
.long ?GetFacingDirection@GameThingWithPos@@UAEMXZ

.long ?SetAffectedByWind@GameThingWithPos@@UAEXH@Z
.long ?GetReactionPower@GameThingWithPos@@UAEMXZ
.long ?GetSpellCastPos@GameThingWithPos@@UAEXPAUMapCoords@@@Z
.long ?CleanUpBeforeReset@GameThingWithPos@@UAEXXZ
.long ?CreatePlanned@PlannedWorshipSiteUpgrade@@UAEPAVMultiMapFixed@@M@Z
.long ?CreatePlannedNoFixedCheck@PlannedMultiMapFixed@@QAEPAVMultiMapFixed@@M@Z, ?PostCreatePlanned@PlannedMultiMapFixed@@QAEXAAVMultiMapFixed@@@Z, ?IsCivic@PlannedMultiMapFixed@@QAE_NXZ                                                               // [0xf4850] 0x008a9000 + 0xf4850 = 0x0099d850
.long ?GetAbodeType@PlannedMultiMapFixed@@QAE?AW4ABODE_TYPE@@XZ, ?GetDesireToBeRepaired@PlannedMultiMapFixed@@QAEMXZ, ?Draw@PlannedMultiMapFixed@@QAEXXZ                                                                           // [0xf4860] 0x008a9000 + 0xf4860 = 0x0099d860
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf486c] 0x008a9000 + 0xf486c = 0x0099d86c

VftableAndRTTI WorshipSpellIcon                                                                                    // [0xf4874] 0x008a9000 + 0xf4874 = 0x0099d874
.long ?Serialise@Base@@UAEXAAVArchive@@@Z
.long ??_GWorshipSpellIcon@@UAEPAXI@Z                                                                                                   // [0xf487c] 0x008a9000 + 0xf487c = 0x0099d87c
.long ?Delete@Object@@UAEXH@Z
.long ?ToBeDeleted@WorshipSpellIcon@@UAEXH@Z
.long ?Get3DSoundPos@GameThingWithPos@@UAEHPAULHPoint@@@Z
.long ?CleanUpForSerialisation@Base@@UAEXXZ
.long ?Dump@Base@@UAEXXZ
.long ?GetPlayer@SpellIcon@@UAEPAVGPlayer@@XZ
.long ?SetPlayer@SpellIcon@@UAEXPAVGPlayer@@@Z                                                                                       // [0xf4894] 0x008a9000 + 0xf4894 = 0x0099d894
.long ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z
.long ?RemoveDance@GameThing@@QAEXXZ
.long ?IsAvailable@GameThing@@QAE_NXZ
.long ?IsCreature@GameThing@@QAE_NPAVCreature@@@Z
.long ?IsCreature@GameThing@@UAE_NXZ
.long ?IsCreatureNotTooNear@GameThing@@UAE_NPAVCreature@@@Z
.long ?GetDrawImportance@Object@@UAEMXZ
.long ?GetMaxAlignmentChangePerGameTurn@GameThing@@UAEMXZ
.long ?GetComputerSeen@GameThing@@UAE_NXZ
.long ?GetTown@MultiMapFixed@@UAEPAVTown@@XZ                                                                                                   // [0xf48c0] 0x008a9000 + 0xf48c0 = 0x0099d8c0
.long ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z
.long ?SetVillagerActivity@GameThing@@UAEXPAVVillager@@@Z
.long ?UpdateVillagerActivityEffect@GameThing@@QAEIPAVVillager@@@Z
.long ?MaintainSpell@WorshipSpellIcon@@UAEXIM@Z
.long ?UpdateSpellInfo@WorshipSpellIcon@@UAEXPAVSpell@@PAUPSysProcessInfo@@@Z
.long ?GetRadius@Object@@UAEMXZ
.long ?Get2DRadius@Object@@UAEMXZ
.long ?GetPlayerWhoLastPickedMeUp@GameThing@@QAEPAVGPlayer@@XZ
.long ?GetPlayerWhoLastDroppedMe@GameThing@@QAEPAVGPlayer@@XZ
.long ?IsFootpathLink@MultiMapFixed@@UAE_NXZ, ?GetFootpathLink@MultiMapFixed@@UAEPAVGFootpathLink@@XZ                                                                                       // [0xf48e8] 0x008a9000 + 0xf48e8 = 0x0099d8e8
.long ?AddFootpathLink@GameThing@@QAEXPAVGFootpath@@@Z
.long ?GetNearestPathTo@MultiMapFixed@@UAEIPAUMapCoords@@MH@Z, ?UseFootpathIfNecessary@MultiMapFixed@@UAEXPAVLiving@@PBUMapCoords@@E@Z                                                                                       // [0xf48f4] 0x008a9000 + 0xf48f4 = 0x0099d8f4
.long ?AddFootpathLink@MultiMapFixed@@QAEXPAVGFootpath@@@Z
.long ?RemoveFootpath@MultiMapFixed@@UAEIPAVGFootpath@@@Z                                                                                                   // [0xf4900] 0x008a9000 + 0xf4900 = 0x0099d900
.long ?JustAddResource@GameThing@@QAEIW4RESOURCE_TYPE@@K_N@Z
.long ?JustRemoveResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z
.long ?JustGetResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z
.long ?GetResource@Object@@UAEIW4RESOURCE_TYPE@@@Z
.long ?AddResource@MultiMapFixed@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_NPBUMapCoords@@H@Z, ?RemoveResource@MultiMapFixed@@UAEIEEE@Z
.long ?CastCreature@GameThing@@QAEPAVCreature@@XZ
.long ?CastPlayer@GameThing@@QAEPAVGPlayer@@XZ
.long ?CastOneOffSpellSeed@GameThing@@UAEIXZ
.long ?CastAbode@GameThing@@QAEPAVAbode@@XZ
.long ?CastMultiMapFixed@MultiMapFixed@@UAEPAV1@XZ                                                                                                   // [0xf492c] 0x008a9000 + 0xf492c = 0x0099d92c
.long ?CastSpellIcon@SpellIcon@@UAEPAVSpellIcon@@XZ                                                                                                   // [0xf4930] 0x008a9000 + 0xf4930 = 0x0099d930
.long ?CastTree@GameThing@@UAEIXZ
.long ?IsDeletedOnNewMap@GameThing@@QAE_NXZ
.long ?GetNumberOfInstanceForGlobalList@GameThing@@QAEGXZ
.long ?GetTownArtifactValue@Fixed@@UAEMXZ
.long ?CanBecomeArtifact@Object@@UAE_NXZ
.long ?DrawInHand@Object@@UAEXPAVGInterfaceStatus@@@Z
.long ?IsFunctional@MultiMapFixed@@UAE_NXZ
.long ?GetDebugText@WorshipSpellIcon@@UAEPADXZ                                                                                                   // [0xf4950] 0x008a9000 + 0xf4950 = 0x0099d950
.long ?GetSampleForAttack@GameThing@@UAEIXZ
.long ?GetGuidanceResourceType@GameThing@@UAEIXZ
.long ?GetShowNeedsPos@MultiMapFixed@@UAEIKPAUMapCoords@@@Z
.long ?Load@WorshipSpellIcon@@UAEIAAVGameOSFile@@@Z
.long ?Save@WorshipSpellIcon@@UAEIAAVGameOSFile@@@Z
.long ?GetSaveType@WorshipSpellIcon@@UAEIXZ                                                                           // [0xf4960] 0x008a9000 + 0xf4960 = 0x0099d960
.long ?SaveExtraData@GameThing@@QAEXAAVGameOSFile@@@Z
.long ?ResolveLoad@Object@@UAEXXZ
.long ?SetPos@GameThingWithPos@@QAEXABUMapCoords@@@Z
.long ?GetPos@GameThingWithPos@@QAEPAUMapCoords@@XZ
.long ?GetArrivePos@MultiMapFixed@@UAEPAUMapCoords@@PAU2@@Z
.long ?PhysicsEditorCreate@GameThingWithPos@@QAEXH@Z
.long ?GetCreatureBeliefType@SpellIcon@@UAEIXZ
.long ?GetCreatureBeliefListType@GameThingWithPos@@UAEIXZ
.long ?GetCitadel@GameThingWithPos@@UAEPAUCitadel@@XZ

.long ?GetOrigin@GameThingWithPos@@UBEIXZ
.long ?GetLife@Object@@UAEMXZ
.long ?GetScale@Object@@UAEMXZ
.long ?SetScale@Object@@UAEXM@Z

.long ?GetPower@GameThingWithPos@@UBEMXZ
.long ?GetPSysPower@GameThingWithPos@@UBEMXZ
.long ?GetSpeedInMetres@GameThingWithPos@@UBEMXZ
.long ?SetSpeedInMetres@GameThingWithPos@@UAEXMH@Z

.long ?GetRunningSpeedInMetres@GameThingWithPos@@UBEMXZ
.long ?GetDistanceFromObject@Object@@UAEMPAUMapCoords@@@Z
.long ?GetDefaultSpeedInMetres@GameThingWithPos@@UAEMXZ
.long ?SetHeight@GameThingWithPos@@UAEXM@Z

.long ?SetMaxHeight@GameThingWithPos@@UAEXM@Z
.long ?GetMaxHeight@GameThingWithPos@@UAEMXZ
.long ?GetPSysBeamTargetPos@GameThingWithPos@@UAEXPAULHPoint@@@Z
.long ?GetSpeedInMetresPerSecond@GameThingWithPos@@UBEMXZ

.long ?SetSpeedInMetresPerSecond@GameThingWithPos@@UAEXMH@Z
.long ?GetRunningSpeedInMetresPerSecond@GameThingWithPos@@UAEMXZ
.long ?GetDefaultSpeedInMetresPerSecond@GameThingWithPos@@UAEMXZ
.long ?IsAnimate@GameThingWithPos@@UAE_NXZ

.long ?GetMovementDirection@GameThingWithPos@@UAEXPAULHPoint@@@Z
.long ?GetPhysicsMovementDirection@Object@@UAEXPAULHPoint@@@Z
.long ?GetInteractPos@GameThingWithPos@@UAEXPAULHPoint@@@Z
.long ?IsMoving@Object@@UAE_NXZ
.long ?IsObjectInMap@MultiMapFixed@@UAE_NXZ
.long ?IsDrowning@Object@@UAE_NXZ
.long ?IsCannotBePickedUp@GameThingWithPos@@UBE_NXZ
.long ?GetOverwritePickUpToolTip@GameThingWithPos@@UAEIXZ

.long ?IsStompable@GameThingWithPos@@UAE_NXZ
.long ?IsAvailableForStateChange@GameThingWithPos@@UAE_NXZ
.long ?IsInteractable@GameThingWithPos@@UAE_NXZ
.long ?GetOverwriteInteractableToolTip@GameThingWithPos@@UAEIXZ

.long ?GetOverwriteDropToolTip@GameThingWithPos@@UAEIXZ
.long ?GetOverwriteTapToolTip@SpellIcon@@UAEIXZ
.long ?IsCastShadowAtNight@GameThingWithPos@@UAE_NXZ
.long ?CleanupWhenDeleted@Object@@UAEXH@Z

.long ?GetImpressiveType@GameThingWithPos@@UAE?AW4IMPRESSIVE_TYPE@@XZ
.long ?GetImpressiveIntensity@GameThingWithPos@@UAEMW4IMPRESSIVE_TYPE@@@Z
.long ?GetImpressiveValue@Object@@UAEMPAVLiving@@PAVReaction@@@Z
.long ?GetUpdateOfBoredomValue@Object@@UAEMPAVReaction@@PAVGameThingWithPos@@@Z

.long ?IsTown@GameThingWithPos@@UAE_NXZ
.long ?IsTown@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsActivityObjectWhichAngerAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsActivityObjectWhichCompassionAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsActivityObjectWhichPlayfulnessAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTownBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?TrueFunction@GameThingWithPos@@UAE_NXZ
.long ?FalseFunction@GameThingWithPos@@UAE_NXZ

.long ?IsNotLiving@GameThingWithPos@@UAE_NXZ
.long ?IsSuitableForCreatureActivity@GameThingWithPos@@UAE_NXZ
.long ?IsTownCentre@GameThingWithPos@@UAE_NXZ
.long ?IsTotemStatue@GameThingWithPos@@UAE_NXZ

.long ?IsTownDesireFlag@GameThingWithPos@@UAE_NXZ
.long ?IsRock@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsRock@GameThingWithPos@@UAE_NXZ
.long ?IsSpellDispenser@GameThingWithPos@@UAE_NXZ

.long ?IsMist@GameThingWithPos@@UAE_NXZ
.long ?IsQueryIcon@GameThingWithPos@@UAE_NXZ
.long ?IsStreetLight@GameThingWithPos@@UAE_NXZ
.long ?IsStreetLantern@GameThingWithPos@@UAE_NXZ

.long ?IsAbode@GameThingWithPos@@UAE_NXZ
.long ?IsField@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsField@GameThingWithPos@@UAE_NXZ
.long ?IsBuildingMaterial@Object@@UAE_NXZ

.long ?IsMagicFireBall@GameThingWithPos@@UAE_NXZ
.long ?IsSuitableForCreatureAction@Object@@UAE_NXZ
.long ?IsCitadelHeart@GameThingWithPos@@UAE_NXZ
.long ?IsDamaged@GameThingWithPos@@UAE_NXZ

.long ?CanBeHealedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeEatenByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanCreatureEatMe@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeAttackedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeFrighteningToCreature@SpellIcon@@UAEIPAVCreature@@@Z
.long ?CanBeHelpedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBePlayedWithByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeImpressedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeInspectedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBePoodUponByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeBefriendedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeSleptNextToByCreature@Fixed@@UAE_NPAVCreature@@@Z
.long ?CanBePickedUpByCreature@Fixed@@UAE_NPAVCreature@@@Z
.long ?CanBeStrokedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeKissedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeSetOnFire@Fixed@@UAE_NPAVCreature@@@Z
.long ?CanBeStompedOnByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeThrownByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeGivenToVillager@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePutInAStoragePit@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeDestroyedByStoning@Fixed@@UAE_NPAVCreature@@@Z
.long ?CanBeStonedAndEatenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeExaminedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeFoughtByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanReceiveGifts@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanActAsAContainer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsBeingBuilt@MultiMapFixed@@UAE_NPAVCreature@@@Z, ?NeedsRepair@MultiMapFixed@@UAE_NPAVCreature@@@Z
.long ?IsOnFire@Object@@UAE_NPAVCreature@@@Z
.long ?IsNotOnFire@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeUsedForBuilding@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsMushroom@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeUsedForRepair@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeGivenToTown@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeUsedToHoldWater@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePutInFoodPile@Object@@UAE_NPAVCreature@@@Z
.long ?CanBePutInWoodPile@Object@@UAE_NPAVCreature@@@Z
.long ?CanHaveMagicFoodCastOnMe@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanHaveMagicWoodCastOnMe@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeBroughtBackToCitadel@Object@@UAE_NPAVCreature@@@Z

.long ?IsVillager@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerFarFromHome@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerInTownWithoutManyBreeders@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerNotWorshipping@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsVillagerBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCow@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePoodOn@Object@@UAE_NPAVCreature@@@Z
.long ?IsVillagerWhoHasNotBeenImpressedRecently@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsVillagerWhoHasNotBeenDancedWithRecently@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?DoesVillagerBelongToATownWhichIsAlreadyImpressed@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?DoesTotemBelongToATownWhichIsVeryImpressedIndeed@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsDominantCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeDancedWith@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAggressive@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsWorshipSite@GameThingWithPos@@UAE_NXZ

.long ?IsWorshipSite@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?GetWorshipSite@WorshipSpellIcon@@UAEPAVWorshipSite@@XZ
.long ?IsWorkshop@GameThingWithPos@@UAE_NXZ
.long ?IsWorkshop@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsBuildingWhichIsBeingBuilt@MultiMapFixed@@UAE_NPAVCreature@@@Z
.long ?IsStoragePitWithFoodInIt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsFieldWhichNeedsWatering@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsFieldWithFoodInIt@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsFieldBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStoragePitBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStoragePitBelongingToMyPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?BenefitsFromHavingWaterSprinkledOnIt@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsTree@GameThingWithPos@@UAE_NXZ
.long ?IsTree@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTreeNotTooNearPlannedForest@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTreeBigEnoughForCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsAFoodPileOutsideStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAWoodPileOutsideStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsDoingSomethingInteresting@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeUsedForBuildingHomeByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsPickupableRock@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCitadelPart@GameThingWithPos@@UAE_NXZ
.long ?IsCitadelPart@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPlayingFootball@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsPlayingFootballAndMySideHasJustScored@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPlayingFootballAndOtherSideHasJustScored@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeBroughtHomeByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAnimalBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsOneOffSpellBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellAggressive@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellCompassionate@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellPlayful@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsOneOffSpellToRestoreHealth@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeKickedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeStolenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStealableByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsStealableSpell@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStealableScaffold@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTownBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTotemWithStealableSpell@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsCreatureAvailableForJointActivity@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCreatureNotAvailableForJointActivity@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToyAwayFromHome@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToy@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsToyBall@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToyDie@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToyCuddly@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?IsLiving@GameThingWithPos@@UBE_NXZ

.long ?IsLiving@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?IsFence@GameThingWithPos@@UBE_NXZ
.long ?IsSpellIcon@SpellIcon@@UAEIXZ
.long ?NothingScareyNearMe@GameThingWithPos@@UBE_NXZ

.long ?CanBeUsedForThrowingDamageByCreature@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?IsCreatureWhoSeemsFriendly@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?CanBeThrownInTheSeaPlayfully@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?GetCreatureMimicType@GameThingWithPos@@UBEIXZ
.long ?GetHowMuchCreatureWantsToLookAtMe@Fixed@@UAEMXZ
.long ?IsFlock@GameThingWithPos@@UBE_NXZ
.long ?IsDance@GameThingWithPos@@UBE_NXZ
.long ?IsReward@GameThingWithPos@@UBE_NXZ

.long ?IsScriptContainer@GameThingWithPos@@UBE_NXZ
.long ?IsWeather@GameThingWithPos@@UBE_NXZ
.long ?IsSpell@GameThingWithPos@@UBE_NXZ
.long ?IsDeletedWhenReleasedFromScript@GameThingWithPos@@UAE_NXZ

.long ?IsMobileWallHug@GameThingWithPos@@UBE_NXZ
.long ?IsActive@GameThingWithPos@@UBE_NXZ
.long ?IsObjectTurningTooFastForCameraToFollowSmoothly@GameThingWithPos@@UBE_NXZ
.long ?CalculateWhereIWillBeAfterNSeconds@Object@@UAEXMPAULHPoint@@@Z

.long ?AttitudeToCreatureEating@GameThingWithPos@@UAEIXZ
.long ?GetText@Object@@UAEPBDXZ
.long ?CalculateDesireForFood@GameThingWithPos@@UAEMXZ
.long ?CalculateDesireForRest@GameThingWithPos@@UAEMXZ

.long ?CalculatePeopleHidingIndicator@GameThingWithPos@@UAEMXZ
.long ?GetHeight@Object@@UAEMXZ
.long ?IsReadyForNewScriptAction@GameThingWithPos@@UBE_NXZ
.long ?ForDrawFXGetNumVertices@GameThingWithPos@@UAEHXZ

.long ?ForDrawFXGetVertexPos@GameThingWithPos@@UAEXHPAULHPoint@@@Z
.long ?SetInScript@Object@@UAEXH@Z
.long ?SetControlledByScript@GameThingWithPos@@UAEXH@Z
.long ?GetDeathReason@GameThingWithPos@@UAE?AW4DEATH_REASON@@XZ

.long ?IsInScript@GameThingWithPos@@UAE_NXZ
.long ?IsMaleVillager@GameThingWithPos@@UAE_NXZ
.long ?IsFemaleVillager@GameThingWithPos@@UAE_NXZ
.long ?IsAnimal@GameThingWithPos@@UAE_NXZ

.long ?IsAChild@GameThingWithPos@@UAE_NXZ
.long ?IsHouse@GameThingWithPos@@UAE_NXZ
.long ?IsObject@Object@@UAE_NXZ
.long ?IsFootball@GameThingWithPos@@UBE_NXZ

.long ?IsCitadel@GameThingWithPos@@UAE_NXZ
.long ?IsForest@GameThingWithPos@@UAE_NXZ
.long ?IsMobileObject@GameThingWithPos@@UAE_NXZ
.long ?IsMobileStatic@GameThingWithPos@@UAE_NXZ

.long ?IsAnyKindOfTree@GameThingWithPos@@UAE_NXZ
.long ?IsDeadTree@GameThingWithPos@@UAE_NXZ
.long ?IsPileFood@GameThingWithPos@@UAE_NXZ
.long ?IsFeature@GameThingWithPos@@UAE_NXZ

.long ?IsScriptMarker@GameThingWithPos@@UAE_NXZ
.long ?IsScriptHighlight@GameThingWithPos@@UAE_NXZ
.long ?IsWonder@MultiMapFixed@@UAE_NXZ
.long ?IsInfluenceRing@GameThingWithPos@@UAE_NXZ

.long ?IsPuzzleGame@GameThingWithPos@@UAE_NXZ
.long ?IsScaffold@GameThingWithPos@@UAE_NXZ
.long ?IsSkeleton@GameThingWithPos@@UBE_NXZ
.long ?IsPoisoned@GameThingWithPos@@UBE_NXZ

.long ?IsSpeedUp@GameThingWithPos@@UAE_NXZ
.long ?IsParticleContainer@GameThingWithPos@@UAE_NXZ
.long ?IsSacrificeAltar@GameThingWithPos@@UAE_NXZ
.long ?IsPot@GameThingWithPos@@UAE_NXZ

.long ?IsComputerPlayer@GameThingWithPos@@UBE_NXZ
.long ?CanBeThrownByPlayer@GameThingWithPos@@UBE_NXZ
.long ?SetSkeleton@GameThingWithPos@@UAEXH@Z
.long ?IsSpellSeed@GameThingWithPos@@UBE_NXZ

.long ?IsSpellShield@GameThingWithPos@@UBE_NXZ
.long ?IsPileResource@GameThingWithPos@@UBE_NXZ
.long ?IsScriptTimer@GameThingWithPos@@UBE_NXZ
.long ?CreateBuildingSite@MultiMapFixed@@UAE_NXZ
.long ?GetQueryFirstEnumText@Object@@UAE?AW4HELP_TEXT@@XZ
.long ?GetQueryLastEnumText@Object@@UAE?AW4HELP_TEXT@@XZ
.long ?GetFOVHelpMessageSet@Object@@UAEIXZ
.long ?GetFOVHelpCondition@Object@@UAEIXZ

.long ?GetScriptObjectType@GameThingWithPos@@UAEIXZ
.long ?GetFacingDirection@GameThingWithPos@@UAEMXZ
.long ?SetAffectedByWind@GameThingWithPos@@UAEXH@Z
.long ?GetReactionPower@GameThingWithPos@@UAEMXZ

.long ?GetSpellCastPos@GameThingWithPos@@UAEXPAUMapCoords@@@Z
.long ?CleanUpBeforeReset@GameThingWithPos@@UAEXXZ
.long ?DestroyedByBeam@Object@@UAEXXZ
.long ?GetXAngle@Object@@UAEMXZ
.long ?GetYAngle@Object@@UAEMXZ
.long ?GetZAngle@Object@@UAEMXZ
.long ?SetFocus@Object@@UAEXPBULHPoint@@@Z
.long ?SetXYZAngles@Object@@UAEXMMM@Z
.long ?SetXYZAnglesAndScale@Object@@UAEXMMMM@Z
.long ?SetJustScale@Object@@UAEXM@Z
.long ?SetYJustAngle@Object@@UAEXM@Z
.long ?SetYAngle@Object@@UAEXM@Z
.long ?UpdateFrom3DPosition@Object@@UAEXXZ
.long ?MoveAlongPath@Object@@UAEIXZ
.long ?IsReachable@Object@@UAE_NXZ
.long ?BlocksTownClearArea@Object@@UAE_NXZ
.long ?Create3DObject@SpellIcon@@UAEXXZ                                                                                                   // [0xf4db0] 0x008a9000 + 0xf4db0 = 0x0099ddb0
.long ?GetMapChild@MultiMapFixed@@UAEPAVObject@@PBUMapCell@@@Z
.long ?SetMapChild@MultiMapFixed@@UAEXPAVObject@@PAUMapCell@@@Z
.long ?InsertMapObject@MultiMapFixed@@UAEXXZ
.long ?RemoveMapObject@MultiMapFixed@@UAEXXZ                                                                                                   // [0xf4dc0] 0x008a9000 + 0xf4dc0 = 0x0099ddc0
.long ?InsertMapObjectToCell@Fixed@@UAEXPAUMapCell@@@Z
.long ?RemoveMapObjectFromCell@Object@@UAEXPAUMapCell@@@Z
.long ?IsObjectInMap@Object@@UAE_NPAUMapCell@@@Z
.long ?IsObjectInMapCheck@Object@@UAE_NXZ
.long ?MoveMapObject@SpellIcon@@UAEHPBUMapCoords@@@Z
.long ?ActualMoveMapObject@Object@@UAEXUMapCoords@@@Z
.long ?GetPtr@Object@@UAEPAV1@XZ
.long ?GetMeshRadius@Object@@UAEMXZ
.long ?Get3DObjectForPSys@Object@@UAEPAVGame3DObject@@XZ
.long ?GetPSysFireFlameMatrix@Object@@UAE_NPAULHMatrix@@@Z
.long ?GetPSysFireLocalRndFlamePos@Object@@UAE_NPAULHPoint@@PAH@Z
.long ?GetPSysFireWorldFlamePos@Object@@UAE_NPBULHPoint@@HPAU2@@Z
.long ?GetPSysFireLocalFlameScale@Object@@UAEMXZ
.long ?GetPSysFireMaxFlames@Object@@UAEIXZ
.long ?GetSpotEffectPower@Object@@UAEMXZ
.long ?GetAggressorValueFromDamage@Object@@UAEMM@Z
.long ?GetHoldType@Object@@UAE?AW4HOLD_TYPE@@XZ
.long ?GetHoldRadius@Object@@UAEMXZ
.long ?GetHoldLoweringMultiplier@Object@@UAEMXZ
.long ?GetHoldYRotate@Object@@UAEMXZ
.long ?HandShouldFeelWithMeshIntersect@Object@@UAE_NXZ
.long ?SetSpecularColor@SpellIcon@@UAEXULH3DColor@@@Z
.long ?GetSpecularColor@SpellIcon@@UAE?AULH3DColor@@XZ
.long ?SetBeliefSprite@Object@@UAEXPAVLH3DSprite@@@Z
.long ?GetBeliefSprite@Object@@UAEPAVLH3DSprite@@XZ
.long ?SetLife@Object@@UAEXM@Z
.long ?IsAlive@Object@@UAE_NXZ
.long ?ReduceLife@MultiMapFixed@@UAEXMPAVGPlayer@@@Z
.long ?IncreaseLife@Object@@UAEXM@Z
.long ?GetSacrificeValue@Object@@UAEMXZ
.long ?ReduceLifeDueToBurning@Object@@UAEXMPAVGPlayer@@@Z
.long ?FillInEffectDefenceMultiplier@Object@@UAEXPAVEffectNumbers@@@Z
.long ?ApplyEffect@WorshipSpellIcon@@UAEXAAVEffectValues@@H@Z
.long ?GetDamageEffect@Object@@UAEMPAVEffectValues@@@Z
.long ?GetHealEffect@Object@@UAEMPAVEffectValues@@@Z
.long ?GetActualObjectToEffect@Object@@UAEPAXPAVGPlayer@@_N@Z
.long ?DrawValue@Object@@UAEXHM@Z
.long ?ScaffoldMoved@Object@@UAEXPAVScaffold@@@Z
.long ?GetHeatCapacity@Object@@UAEMXZ
.long ?GetFireGPHXDrawn@Object@@UAEXPA_N000@Z
.long ?GetRainCoolingMultiplier@Object@@UAEMXZ
.long ?GetDefaultFireCentrePos@Object@@UAEPAULHPoint@@PAU2@@Z
.long ?GetDefaultFireRadius@Object@@UAEMXZ
.long ?DestroyedByEffect@Object@@UAEIPAVGPlayer@@M@Z
.long ?Process@WorshipSpellIcon@@UAEIXZ
.long ?ProcessBySpell@Object@@UAEIPAVSpell@@@Z
.long ?ApplySingleEffect@Object@@UAEXW4EFFECT_TYPE@@MPAVGameThing@@PBUMapCoords@@@Z
.long ?GetMesh@SpellIcon@@UBEHXZ
.long ?GetDetailMesh@Object@@UAEHH@Z
.long ?Draw@SpellIcon@@UAEXXZ
.long ?DrawOutOfMap@Object@@UAEX_N@Z
.long ?IsG3DObjectDrawnInHand@Object@@UAE_NXZ
.long ?GetDrawRegion@Object@@UAEXPAULHRegion@@@Z
.long ?ProcessState@Object@@UAEIXZ
.long ?GetProjectileSpeed@Object@@UAEMXZ
.long ?CanBePickedUp@Object@@UAE_NXZ
.long ?CanBeCrushed@Fixed@@UAE_NXZ
.long ?GetTopPos@Object@@UAEMXZ
.long ?GetVillagerHugRadius@Object@@UAEMXZ
.long ?GetWeight@Object@@UAEMXZ
.long ?GetWorldMatrix@Object@@UAEXPAULHMatrix@@@Z
.long ?CanBeSuckedIntoVortex@Object@@UAE_NPAVLandscapeVortex@@@Z
.long ?GetDiscipleStateIfInteractedWith@MultiMapFixed@@UAEIPAVGInterfaceStatus@@PAVVillager@@@Z
.long ?GetWorkingPos@Object@@UAEPAUMapCoords@@PAU2@PAV1@@Z
.long ?GetHeightForHandAboveInteractObject@Object@@UAEMXZ
.long ?GetHandHelpMessageSet@Object@@UAEIXZ
.long ?GetHandHelpCondition@Object@@UAEIXZ
.long ?CallVirtualFunctionsForCreation@WorshipSpellIcon@@UAEXABUMapCoords@@@Z
.long ?Get3DType@Object@@UAE?AW4LH3DObject__ObjectType@@XZ
.long ?GetFoodValue@Object@@UAEMW4FOOD_TYPE@@@Z
.long ?GetWoodValue@Object@@UAEMXZ
.long ?GetFoodType@Object@@UAE?AW4FOOD_TYPE@@XZ
.long ?GetImpressiveValue@Object@@UAEMXZ
.long ?IsSpellSeedReturnPoint@SpellIcon@@UBE_NXZ
.long ?IsABeliever@Object@@UAE_NXZ
.long ?AsMultiMapFixed@MultiMapFixed@@UAEPAV1@XZ
.long ?ApplyWaterSpell@Object@@UAEMPAVSpellWater@@@Z
.long ?IsResourceStore@MultiMapFixed@@UAE_NW4RESOURCE_TYPE@@@Z, ?DeleteObjectAndTakeResource@MultiMapFixed@@UAE_NPAVObject@@PAVGInterfaceStatus@@@Z
.long ?GetRadiusMultiplierForApplyingPotToPos@Object@@UAEMXZ
.long ?DoCreatureMimicAfterAddingResource@MultiMapFixed@@UAE_NW4RESOURCE_TYPE@@PAVGInterfaceStatus@@@Z
.long ?GetResourceType@Object@@UAE?AW4RESOURCE_TYPE@@XZ
.long ?GetDefaultResource@Object@@UAEHXZ
.long ?SetPoisonedResource@Object@@UAEXW4RESOURCE_TYPE@@H@Z
.long ?SetPoisoned@Object@@UAEXH@Z
.long ?IsLockedInInteract@Object@@UAE_NXZ
.long ?SetDying@Object@@UAE_NXZ
.long ?IsAttackable@Object@@UAE_NPAV1@@Z
.long ?IsAllied@Object@@UAE_NPAV1@@Z
.long ?IsTouching@Object@@UAE_NPAUMapCoords@@0@Z
.long ?IsTouching@Object@@UAE_NPAUMapCoords@@@Z
.long ?IsTouching@Object@@UAE_NPAV1@M@Z
.long ?StartOnFire@MultiMapFixed@@UAEXXZ
.long ?EndOnFire@Object@@UAEXXZ
.long ?GetDistanceFromObject@Object@@UAEMPAV1@@Z
.long ?GetTribalPower@Object@@UAEMW4TRIBE_TYPE@@@Z
.long ?ValidForLockedSelectProcess@Fixed@@UAE_NPAVGInterfaceStatus@@@Z, ?NetworkFriendlyStartLockedSelect@Fixed@@UAE_NPAVGInterfaceStatus@@@Z
.long ?NetworkUnfriendlyStartLockedSelect@Object@@UAE_NXZ
.long ?IsReadyForNetworkUnfriendlyLockedSelect@Object@@UAE_NXZ
.long ?NetworkUnfriendlyLockedSelect@Object@@UAE_NPAVControlHandUpdateInfo@@@Z
.long ?GetReadyForNetworkUnfriendlyEndLockedSelect@Object@@UAE_NXZ
.long ?IsReadyForNetworkUnfriendlyEndLockedSelect@Object@@UAE_NXZ
.long ?NetworkUnfriendlyEndLockedSelect@Object@@UAE_NXZ
.long ?NetworkFriendlyEndLockedSelect@Object@@UAE_NPAVGInterfaceStatus@@@Z
.long ?ValidAsInterfaceTarget@Object@@UAE_NXZ
.long ?ValidAsInterfaceLeashTarget@SpellIcon@@UAEIXZ
.long ?SelectOnlyAfterRecSystem@Object@@UAE_NXZ
.long ?ValidForPlaceInHand@Object@@UAE_NPAVGInterfaceStatus@@@Z
.long ?InterfaceSetInMagicHand@Fixed@@UAE_NPAVGInterfaceStatus@@@Z
.long ?InterfaceSetOutMagicHand@Object@@UAE_NPAVGInterfaceStatus@@@Z
.long ?ValidToRemoveFromHand@Object@@UAE_NPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?RemoveFromHand@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?ValidToShakeFromHand@Object@@UAE_NXZ
.long ?InterfaceMustBeInInfluenceForInteraction@Object@@UAE_NXZ
.long ?IsTuggable@Object@@UAE_NXZ
.long ?ValidToApplyThisToObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z
.long ?ApplyThisToObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@PAVGestureSystemPacketData@@@Z
.long ?ValidToApplyThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PAUMapCoords@@@Z
.long ?ApplyThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@PAVGestureSystemPacketData@@@Z
.long ?ValidForLockedApplyProcess@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?ApplyUnlockProcess@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?IsInterfacePowerUpWhenInHand@Object@@UAEIXZ
.long ?ApplyOnlyAfterRecSystem@Object@@UAEIXZ
.long ?ApplyOnlyAfterReleased@Object@@UAEIXZ
.long ?InterfaceValidToTap@SpellIcon@@UAEIPAVGInterfaceStatus@@@Z
.long ?InterfaceTap@SpellIcon@@UAEIPAVGInterfaceStatus@@@Z
.long ?InterfaceValidToGiveObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z
.long ?InterfaceGiveObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z
.long ?InterfaceValidToInteractAsMapCoordsObject@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?InterfaceInteractAsMapCoordsObject@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?ThrowObjectFromHand@Object@@UAEIPAVGInterfaceStatus@@H@Z
.long ?ValidToSelectFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?ValidToApplyFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?SelectFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?ApplyFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?ValidToFightThisToObject@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?FightThisToObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z
.long ?IsEffectReceiver@WorshipSpellIcon@@UAEIPAVEffectValues@@@Z
.long ?CanBeDestroyedBySpell@Object@@UAE_NPAVSpell@@@Z
.long ?GetImportance@Object@@UAEMXZ
.long ?InitialisePhysicsFromHand@Object@@UAEIPAULHPoint@@0PAVGInterfaceStatus@@PAV1@H@Z
.long ?InitialisePhysics@Object@@UAEIPBULHPoint@@0PAV1@_NPAVGInterfaceStatus@@@Z
.long ?GetPhysicsConstantsType@Object@@UAEIXZ
.long ?SetUpPhysOb@Object@@UAEXPAVPhysOb@@@Z
.long ?EndPhysics@Fixed@@UAEXPAVPhysicsObject@@_N@Z
.long ?DropSfx@Object@@UAEIXZ
.long ?GetBoundingSphere@Object@@UAEXPAULHPoint@@PAM@Z
.long ?InteractsWithPhysicsObjects@SpellIcon@@UAE_NXZ
.long ?ChecksVerticesVObjects@Object@@UAEIXZ
.long ?ShouldPhysicsRaiseObjectUntilNotIntersectingThis@Object@@UAEXPAV1@@Z
.long ?PhysicallyDestroysAbodes@Object@@UAEIXZ
.long ?ReactToPhysicsImpact@Object@@UAEXPAVPhysicsObject@@_N@Z
.long ?CanBecomeAPhysicsObject@Object@@UAE_NXZ
.long ?GetAlwaysRemainsInPhysicsInternalSystem@Object@@UAE_NXZ
.long ?HasSunk@Object@@UAE_NXZ
.long ?CreatureMustAvoid@MultiMapFixed@@UAE_NPAVCreature@@@Z
.long ?AddToRoutePlan@Object@@UAEXPAVRPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z
.long ?GetRoutePlanRadius@Object@@UAEMPAVCreature@@@Z
.long ?VillagerMustAvoid@Fixed@@UAE_NPAVVillager@@@Z
.long ?IsFireMan@Object@@UAE_NXZ
.long ?IsARootedObject@Object@@UAE_NXZ
.long ?GetCollideSoundType@Object@@UAE?AW4SOUND_COLLISION_TYPE@@XZ
.long ?IsSolidToNewAbode@MultiMapFixed@@UAE_NXZ
.long ?RemoveFromGame@Object@@UAEIXZ
.long ?GetLandingPointCount@Object@@UAEHXZ
.long ?GetLandingPoint@Object@@UAE_NEPAULHPoint@@@Z
.long ?GetTastiness@Object@@UAEIXZ
.long ?IsScary@Object@@UAE_NXZ
.long ?GetInspectObjectPos@Object@@UAE_NPAVVillager@@PAUMapCoords@@@Z
.long ?DiscipleInHandNear@Object@@UAEXPAVVillager@@PAVGInterfaceStatus@@@Z
.long ?GetSpecialPos@Fixed@@UAE_NIPAUMapCoords@@@Z, ?GetTownArtifact@Fixed@@UAEPAVGameThing@@XZ, ?IsTownArtifact@Fixed@@UAE_NXZ
.long ?ProcessInHand@Object@@UAE_NXZ
.long ?ProcessInInteract@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?GetObjectCollide@Object@@UAEIXZ
.long ?CalculateForceAppliedBy@Object@@UAEMPAVLiving@@@Z
.long ?IsPushable@Object@@UAE_NXZ
.long ?PushObject@Object@@UAEXPAVLiving@@PAUMapCoords@@@Z
.long ?PushObject@Object@@UAEXPAVLiving@@@Z
.long ?GetCarriedTreeType@Object@@UAEIXZ
.long ?GetFacingPitch@Object@@UAEMXZ
.long ?SetHeadPos@Object@@UAEXPAUMapCoords@@@Z
.long ?SaveObject@WorshipSpellIcon@@UAEIAAULHOSFile@@ABUMapCoords@@@Z
.long ?IsAPotFromABuildingSite@Object@@UAE_NXZ
.long ?GetNearestEdgeOfObject@Object@@UAEXPAV1@@Z
.long ?GetNearestPosOfObject@Object@@UAEXPAV1@@Z
.long ?GetNearestEdgeToPos@Object@@UAEXPBUMapCoords@@@Z
.long ?GetNearestEdge@Object@@UAEXMM@Z
.long ?GetImmersionTexture@Object@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ
.long ?GetInHandImmersionTexture@Object@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ
.long ?ShouldFootpathsGoRound@Object@@UAE_NXZ
.long ?InitialiseIsFixedForMapList@Object@@UAEXH@Z
.long ?StandAnimation@Object@@UAEIXZ
.long ?GetCollideData@MultiMapFixed@@UAEPAVNewCollide@@XZ                                                                                                   // [0xf50d0] 0x008a9000 + 0xf50d0 = 0x0099e0d0
.long ?InsertMapObjectToCellAssumeFixed@Fixed@@UAEXPAUMapCell@@@Z
.long ?IsObjectFullyInMap@MultiMapFixed@@UAE_NXZ                                                                                                   // [0xf50d8] 0x008a9000 + 0xf50d8 = 0x0099e0d8
.long ?GetDoorPos@MultiMapFixed@@UAEPAUMapCoords@@PAU2@@Z
.long ?GetInfluence@MultiMapFixed@@UAEMXZ, ?IsPlaytimeStructure@MultiMapFixed@@UAE_NXZ, ?IsPlaytimeStarted@MultiMapFixed@@UAE_NXZ, ?AddPlaytimeVillager@MultiMapFixed@@UAE_NPAVVillager@@@Z                                                               // [0xf50e0] 0x008a9000 + 0xf50e0 = 0x0099e0e0
.long ?CheckMapObject@MultiMapFixed@@UAEXXZ, ?GetResourceDropPosForComputerPlayer@MultiMapFixed@@UAEXPAUMapCoords@@@Z, ?GetPercentBuilt@MultiMapFixed@@UAEMXZ, ?GetPercentRepaired@MultiMapFixed@@UAEMXZ                                                               // [0xf50f0] 0x008a9000 + 0xf50f0 = 0x0099e0f0
.long ?GetPercentRepairedFromWhenDamaged@MultiMapFixed@@UAEMXZ
.long ?IsRepaired@SpellIcon@@UAE_NXZ
.long 0x0077fee0, ?GetPercentRepairedForNonFunctional@MultiMapFixed@@UAEMXZ                                                               // [0xf5100] 0x008a9000 + 0xf5100 = 0x0099e100
.long 0x0077f0c0, ?GetPercentAbodeFullWithAdults@MultiMapFixed@@UAEMXZ, ?GetPercentAbodeFullWithChildren@MultiMapFixed@@UAEMXZ, ?IsDrawBuilding@MultiMapFixed@@UAE_NXZ                                                               // [0xf5110] 0x008a9000 + 0xf5110 = 0x0099e110
.long ?Built@MultiMapFixed@@UAE_NXZ, ?Repaired@MultiMapFixed@@UAE_NXZ, ?GetBuildingSiteWood@MultiMapFixed@@UAEIPAI@Z, ?GetDestructionMesh@MultiMapFixed@@UAEPAVLH3DMesh@@XZ                                                               // [0xf5120] 0x008a9000 + 0xf5120 = 0x0099e120
.long ?RemoveDamage@MultiMapFixed@@UAEXXZ, 0x0077fca0, ?IsCivic@MultiMapFixed@@UAE_NXZ, ?GetAbodeType@MultiMapFixed@@UAE?AW4ABODE_TYPE@@XZ                                                               // [0xf5130] 0x008a9000 + 0xf5130 = 0x0099e130
.long ?SetPower@MultiMapFixed@@UAEXM@Z, ?GetResourcePos@MultiMapFixed@@UAEPAUMapCoords@@W4RESOURCE_TYPE@@H@Z, ?IsPoisonedResource@MultiMapFixed@@UAE_NXZ, ?GetResourceNearestEdge@MultiMapFixed@@UAEPAUMapCoords@@PAU2@W4RESOURCE_TYPE@@PAVObject@@H@Z                                                               // [0xf5140] 0x008a9000 + 0xf5140 = 0x0099e140
.long ?GetDesireToBeRepaired@MultiMapFixed@@UAEMXZ, ?AddToPlayer@MultiMapFixed@@UAEXXZ, ?RemoveFromPlayer@MultiMapFixed@@UAEXXZ, ?DoResourceAdding@MultiMapFixed@@UAEIW4RESOURCE_TYPE@@PAVGInterfaceStatus@@_NPAUMapCoords@@H@Z                                                               // [0xf5150] 0x008a9000 + 0xf5150 = 0x0099e150
.long ?DoResourceRemoving@MultiMapFixed@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_N@Z, ?CalulateAmountOverMaximum@MultiMapFixed@@UAEHW4RESOURCE_TYPE@@@Z, ?SetTown@MultiMapFixed@@UAEXPAVTown@@@Z, ?RemovePotFromStructure@MultiMapFixed@@UAEXPAVPotStructure@@@Z                                                               // [0xf5160] 0x008a9000 + 0xf5160 = 0x0099e160
.long ?GetShouldNotBeAddedToPlanned@MultiMapFixed@@UAE_NXZ, ?SetShouldNotBeAddedToPlanned@MultiMapFixed@@UAEX_N@Z, ?BuildBy@MultiMapFixed@@UAEXM@Z, ?ConvertToPlanned@MultiMapFixed@@UAEPAVPlannedMultiMapFixed@@XZ                                                               // [0xf5170] 0x008a9000 + 0xf5170 = 0x0099e170
.long ?CreateCollideData@MultiMapFixed@@UAEXXZ
.long 0x00726130, 0x0077fc90, 0x0077f090                                                                           // [0xf5184] 0x008a9000 + 0xf5184 = 0x0099e184
.long 0x007262e0, 0x41200000, 0x40490fdb                                                                           // [0xf5190] 0x008a9000 + 0xf5190 = 0x0099e190
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf519c] 0x008a9000 + 0xf519c = 0x0099e19c
.long 0x3eb33333, 0x3f333333, 0x41200000                                                                           // [0xf51a4] 0x008a9000 + 0xf51a4 = 0x0099e1a4
.long 0x3fc00000, 0x40400000                                                                                       // [0xf51b0] 0x008a9000 + 0xf51b0 = 0x0099e1b0

VftableAndRTTI WorshipTotem                                                                                        // [0xf51b8] 0x008a9000 + 0xf51b8 = 0x0099e1b8
.long ?Serialise@Base@@UAEXAAVArchive@@@Z
.long ??_GWorshipTotem@@UAEPAXI@Z
.long ?Delete@Object@@UAEXH@Z
.long ?ToBeDeleted@WorshipTotem@@UAEXH@Z
.long ?Get3DSoundPos@GameThingWithPos@@UAEHPAULHPoint@@@Z
.long ?CleanUpForSerialisation@Base@@UAEXXZ
.long ?Dump@Base@@UAEXXZ
.long ?GetPlayer@CitadelPart@@UAEPAVGPlayer@@XZ                                                                                                   // [0xf51d8] 0x008a9000 + 0xf51d8 = 0x0099e1d8
.long ?SetPlayer@GameThing@@QAEXPAVGPlayer@@@Z
.long ?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z
.long ?RemoveDance@GameThing@@QAEXXZ
.long ?IsAvailable@GameThing@@QAE_NXZ
.long ?IsCreature@GameThing@@QAE_NPAVCreature@@@Z
.long ?IsCreature@GameThing@@UAE_NXZ
.long ?IsCreatureNotTooNear@GameThing@@UAE_NPAVCreature@@@Z
.long ?GetDrawImportance@Object@@UAEMXZ
.long ?GetMaxAlignmentChangePerGameTurn@GameThing@@UAEMXZ
.long ?GetComputerSeen@GameThing@@UAE_NXZ
.long ?GetTown@MultiMapFixed@@UAEPAVTown@@XZ                                                                                                   // [0xf5204] 0x008a9000 + 0xf5204 = 0x0099e204
.long ?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z
.long ?SetVillagerActivity@GameThing@@UAEXPAVVillager@@@Z
.long ?UpdateVillagerActivityEffect@GameThing@@QAEIPAVVillager@@@Z
.long ?MaintainSpell@GameThing@@UAEXIM@Z
.long ?UpdateSpellInfo@GameThing@@QAEXPAVSpell@@PAVPSysProcessInfo@@@Z
.long ?GetRadius@Object@@UAEMXZ
.long ?Get2DRadius@Object@@UAEMXZ
.long ?GetPlayerWhoLastPickedMeUp@GameThing@@QAEPAVGPlayer@@XZ
.long ?GetPlayerWhoLastDroppedMe@GameThing@@QAEPAVGPlayer@@XZ
.long ?IsFootpathLink@MultiMapFixed@@UAE_NXZ                                                                                                   // [0xf522c] 0x008a9000 + 0xf522c = 0x0099e22c
.long ?GetFootpathLink@MultiMapFixed@@UAEPAVGFootpathLink@@XZ                                                                                                   // [0xf5230] 0x008a9000 + 0xf5230 = 0x0099e230
.long ?AddFootpathLink@GameThing@@QAEXPAVGFootpath@@@Z
.long ?GetNearestPathTo@MultiMapFixed@@UAEIPAUMapCoords@@MH@Z, ?UseFootpathIfNecessary@MultiMapFixed@@UAEXPAVLiving@@PBUMapCoords@@E@Z                                                                                       // [0xf5238] 0x008a9000 + 0xf5238 = 0x0099e238
.long ?AddFootpathLink@MultiMapFixed@@QAEXPAVGFootpath@@@Z
.long ?RemoveFootpath@MultiMapFixed@@UAEIPAVGFootpath@@@Z                                                                                                   // [0xf5244] 0x008a9000 + 0xf5244 = 0x0099e244
.long ?JustAddResource@GameThing@@QAEIW4RESOURCE_TYPE@@K_N@Z
.long ?JustRemoveResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z
.long ?JustGetResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z
.long ?GetResource@Object@@UAEIW4RESOURCE_TYPE@@@Z
.long ?AddResource@MultiMapFixed@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_NPBUMapCoords@@H@Z, ?RemoveResource@MultiMapFixed@@UAEIEEE@Z
.long ?CastCreature@GameThing@@QAEPAVCreature@@XZ
.long ?CastPlayer@GameThing@@QAEPAVGPlayer@@XZ
.long ?CastOneOffSpellSeed@GameThing@@UAEIXZ
.long ?CastAbode@GameThing@@QAEPAVAbode@@XZ
.long ?CastMultiMapFixed@MultiMapFixed@@UAEPAV1@XZ                                                                                                   // [0xf5270] 0x008a9000 + 0xf5270 = 0x0099e270
.long ?CastSpellIcon@GameThing@@UAEIXZ
.long ?CastTree@GameThing@@UAEIXZ
.long ?IsDeletedOnNewMap@GameThing@@QAE_NXZ
.long ?GetNumberOfInstanceForGlobalList@GameThing@@QAEGXZ
.long ?GetTownArtifactValue@Fixed@@UAEMXZ
.long ?CanBecomeArtifact@Object@@UAE_NXZ
.long ?DrawInHand@Object@@UAEXPAVGInterfaceStatus@@@Z
.long ?IsFunctional@MultiMapFixed@@UAE_NXZ
.long ?GetDebugText@WorshipTotem@@UAEPADXZ                                                                                       // [0xf5290] 0x008a9000 + 0xf5290 = 0x0099e290
.long ?GetSampleForAttack@GameThing@@UAEIXZ
.long ?GetGuidanceResourceType@GameThing@@UAEIXZ
.long ?GetShowNeedsPos@MultiMapFixed@@UAEIKPAUMapCoords@@@Z
.long ?Load@WorshipTotem@@UAEIAAVGameOSFile@@@Z
.long ?Save@WorshipTotem@@UAEIAAVGameOSFile@@@Z
.long ?GetSaveType@WorshipTotem@@UAEIXZ                                                                           // [0xf52a4] 0x008a9000 + 0xf52a4 = 0x0099e2a4
.long ?SaveExtraData@GameThing@@QAEXAAVGameOSFile@@@Z
.long ?ResolveLoad@WorshipTotem@@UAEXXZ                                                                                                   // [0xf52b4] 0x008a9000 + 0xf52b4 = 0x0099e2b4
.long ?SetPos@GameThingWithPos@@QAEXABUMapCoords@@@Z
.long ?GetPos@GameThingWithPos@@QAEPAUMapCoords@@XZ
.long ?GetArrivePos@MultiMapFixed@@UAEPAUMapCoords@@PAU2@@Z
.long ?PhysicsEditorCreate@GameThingWithPos@@QAEXH@Z
.long ?GetCreatureBeliefType@CitadelPart@@UAEIXZ
.long ?GetCreatureBeliefListType@GameThingWithPos@@UAEIXZ
.long ?GetCitadel@CitadelPart@@UAEPAVCitadel@@XZ
.long ?GetOrigin@GameThingWithPos@@UBEIXZ
.long ?GetLife@Object@@UAEMXZ
.long ?GetScale@Object@@UAEMXZ
.long ?SetScale@Object@@UAEXM@Z

.long ?GetPower@GameThingWithPos@@UBEMXZ
.long ?GetPSysPower@WorshipTotem@@UBEMXZ
.long ?GetSpeedInMetres@GameThingWithPos@@UBEMXZ

.long ?SetSpeedInMetres@GameThingWithPos@@UAEXMH@Z
.long ?GetRunningSpeedInMetres@GameThingWithPos@@UBEMXZ
.long ?GetDistanceFromObject@Object@@UAEMPAUMapCoords@@@Z
.long ?GetDefaultSpeedInMetres@GameThingWithPos@@UAEMXZ

.long ?SetHeight@GameThingWithPos@@UAEXM@Z
.long ?SetMaxHeight@GameThingWithPos@@UAEXM@Z
.long ?GetMaxHeight@GameThingWithPos@@UAEMXZ
.long ?GetPSysBeamTargetPos@GameThingWithPos@@UAEXPAULHPoint@@@Z

.long ?GetSpeedInMetresPerSecond@GameThingWithPos@@UBEMXZ
.long ?SetSpeedInMetresPerSecond@GameThingWithPos@@UAEXMH@Z
.long ?GetRunningSpeedInMetresPerSecond@GameThingWithPos@@UAEMXZ
.long ?GetDefaultSpeedInMetresPerSecond@GameThingWithPos@@UAEMXZ

.long ?IsAnimate@GameThingWithPos@@UAE_NXZ
.long ?GetMovementDirection@GameThingWithPos@@UAEXPAULHPoint@@@Z
.long ?GetPhysicsMovementDirection@Object@@UAEXPAULHPoint@@@Z
.long ?GetInteractPos@GameThingWithPos@@UAEXPAULHPoint@@@Z
.long ?IsMoving@Object@@UAE_NXZ
.long ?IsObjectInMap@MultiMapFixed@@UAE_NXZ
.long ?IsDrowning@Object@@UAE_NXZ
.long ?IsCannotBePickedUp@GameThingWithPos@@UBE_NXZ

.long ?GetOverwritePickUpToolTip@GameThingWithPos@@UAEIXZ
.long ?IsStompable@GameThingWithPos@@UAE_NXZ
.long ?IsAvailableForStateChange@GameThingWithPos@@UAE_NXZ
.long ?IsInteractable@GameThingWithPos@@UAE_NXZ

.long ?GetOverwriteInteractableToolTip@GameThingWithPos@@UAEIXZ
.long ?GetOverwriteDropToolTip@GameThingWithPos@@UAEIXZ
.long ?GetOverwriteTapToolTip@GameThingWithPos@@UAEIXZ
.long ?IsCastShadowAtNight@GameThingWithPos@@UAE_NXZ
.long ?CleanupWhenDeleted@Object@@UAEXH@Z

.long ?GetImpressiveType@GameThingWithPos@@UAE?AW4IMPRESSIVE_TYPE@@XZ
.long ?GetImpressiveIntensity@GameThingWithPos@@UAEMW4IMPRESSIVE_TYPE@@@Z
.long ?GetImpressiveValue@Object@@UAEMPAVLiving@@PAVReaction@@@Z
.long ?GetUpdateOfBoredomValue@Object@@UAEMPAVReaction@@PAVGameThingWithPos@@@Z
.long ?IsTown@GameThingWithPos@@UAE_NXZ
.long ?IsTown@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsActivityObjectWhichAngerAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsActivityObjectWhichCompassionAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsActivityObjectWhichPlayfulnessAppliesTo@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTownBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?TrueFunction@GameThingWithPos@@UAE_NXZ

.long ?FalseFunction@GameThingWithPos@@UAE_NXZ
.long ?IsNotLiving@GameThingWithPos@@UAE_NXZ
.long ?IsSuitableForCreatureActivity@GameThingWithPos@@UAE_NXZ
.long ?IsTownCentre@GameThingWithPos@@UAE_NXZ

.long ?IsTotemStatue@GameThingWithPos@@UAE_NXZ
.long ?IsTownDesireFlag@GameThingWithPos@@UAE_NXZ
.long ?IsRock@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsRock@GameThingWithPos@@UAE_NXZ

.long ?IsSpellDispenser@GameThingWithPos@@UAE_NXZ
.long ?IsMist@GameThingWithPos@@UAE_NXZ
.long ?IsQueryIcon@GameThingWithPos@@UAE_NXZ
.long ?IsStreetLight@GameThingWithPos@@UAE_NXZ

.long ?IsStreetLantern@GameThingWithPos@@UAE_NXZ
.long ?IsAbode@GameThingWithPos@@UAE_NXZ
.long ?IsField@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsField@GameThingWithPos@@UAE_NXZ
.long ?IsBuildingMaterial@Object@@UAE_NXZ
.long ?IsMagicFireBall@GameThingWithPos@@UAE_NXZ
.long ?IsSuitableForCreatureAction@Object@@UAE_NXZ
.long ?IsCitadelHeart@GameThingWithPos@@UAE_NXZ

.long ?IsDamaged@GameThingWithPos@@UAE_NXZ
.long ?CanBeHealedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeEatenByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanCreatureEatMe@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeAttackedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeFrighteningToCreature@Fixed@@UAE_NPAVCreature@@@Z
.long ?CanBeHelpedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBePlayedWithByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeImpressedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeInspectedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBePoodUponByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeBefriendedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeSleptNextToByCreature@Fixed@@UAE_NPAVCreature@@@Z, ?CanBePickedUpByCreature@Fixed@@UAE_NPAVCreature@@@Z
.long ?CanBeStrokedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeKissedByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeSetOnFire@Fixed@@UAE_NPAVCreature@@@Z
.long ?CanBeStompedOnByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeThrownByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeGivenToVillager@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePutInAStoragePit@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeDestroyedByStoning@Fixed@@UAE_NPAVCreature@@@Z
.long ?CanBeStonedAndEatenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeExaminedByCreature@Object@@UAE_NPAVCreature@@@Z

.long ?CanBeFoughtByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanReceiveGifts@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanActAsAContainer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsBeingBuilt@MultiMapFixed@@UAE_NPAVCreature@@@Z
.long ?NeedsRepair@MultiMapFixed@@UAE_NPAVCreature@@@Z
.long ?IsOnFire@Object@@UAE_NPAVCreature@@@Z
.long ?IsNotOnFire@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeUsedForBuilding@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsMushroom@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeUsedForRepair@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeGivenToTown@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeUsedToHoldWater@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePutInFoodPile@Object@@UAE_NPAVCreature@@@Z
.long ?CanBePutInWoodPile@Object@@UAE_NPAVCreature@@@Z
.long ?CanHaveMagicFoodCastOnMe@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanHaveMagicWoodCastOnMe@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeBroughtBackToCitadel@Object@@UAE_NPAVCreature@@@Z
.long ?IsVillager@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerFarFromHome@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerInTownWithoutManyBreeders@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsVillagerNotWorshipping@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCow@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBePoodOn@Object@@UAE_NPAVCreature@@@Z

.long ?IsVillagerWhoHasNotBeenImpressedRecently@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsVillagerWhoHasNotBeenDancedWithRecently@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?DoesVillagerBelongToATownWhichIsAlreadyImpressed@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?DoesTotemBelongToATownWhichIsVeryImpressedIndeed@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsDominantCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeDancedWith@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAggressive@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsWorshipSite@GameThingWithPos@@UAE_NXZ
.long ?IsWorshipSite@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?GetWorshipSite@GameThingWithPos@@UAEPAUWorshipSite@@XZ
.long ?IsWorkshop@GameThingWithPos@@UAE_NXZ

.long ?IsWorkshop@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsBuildingWhichIsBeingBuilt@MultiMapFixed@@UAE_NPAVCreature@@@Z
.long ?IsStoragePitWithFoodInIt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsFieldWhichNeedsWatering@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsFieldWithFoodInIt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsFieldBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStoragePitBelongingToAnotherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStoragePitBelongingToMyPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?BenefitsFromHavingWaterSprinkledOnIt@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTree@GameThingWithPos@@UAE_NXZ
.long ?IsTree@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTreeNotTooNearPlannedForest@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsTreeBigEnoughForCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAFoodPileOutsideStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsAWoodPileOutsideStoragePit@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsDoingSomethingInteresting@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?CanBeUsedForBuildingHomeByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPickupableRock@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCitadelPart@CitadelPart@@UAEIXZ
.long ?IsCitadelPart@CitadelPart@@UAEIPAVCreature@@@Z

.long ?IsPlayingFootball@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPlayingFootballAndMySideHasJustScored@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsPlayingFootballAndOtherSideHasJustScored@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeBroughtHomeByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsAnimalBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellAggressive@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellCompassionate@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsOneOffSpellPlayful@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsOneOffSpellToRestoreHealth@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?CanBeKickedByCreature@Object@@UAE_NPAVCreature@@@Z
.long ?CanBeStolenByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsStealableByCreature@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStealableSpell@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsStealableScaffold@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsTownBelongingToOtherPlayer@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsTotemWithStealableSpell@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCreatureAvailableForJointActivity@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsCreatureNotAvailableForJointActivity@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToyAwayFromHome@GameThingWithPos@@UAE_NPAVCreature@@@Z

.long ?IsToy@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToyBall@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToyDie@GameThingWithPos@@UAE_NPAVCreature@@@Z
.long ?IsToyCuddly@GameThingWithPos@@UBE_NPAVCreature@@@Z

.long ?IsLiving@GameThingWithPos@@UBE_NXZ
.long ?IsLiving@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?IsFence@GameThingWithPos@@UBE_NXZ
.long ?IsSpellIcon@GameThingWithPos@@UBE_NXZ

.long ?NothingScareyNearMe@GameThingWithPos@@UBE_NXZ
.long ?CanBeUsedForThrowingDamageByCreature@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?IsCreatureWhoSeemsFriendly@GameThingWithPos@@UBE_NPAVCreature@@@Z
.long ?CanBeThrownInTheSeaPlayfully@GameThingWithPos@@UBE_NPAVCreature@@@Z

.long ?GetCreatureMimicType@GameThingWithPos@@UBEIXZ
.long ?GetHowMuchCreatureWantsToLookAtMe@Fixed@@UAEMXZ
.long ?IsFlock@GameThingWithPos@@UBE_NXZ
.long ?IsDance@GameThingWithPos@@UBE_NXZ

.long ?IsReward@GameThingWithPos@@UBE_NXZ
.long ?IsScriptContainer@GameThingWithPos@@UBE_NXZ
.long ?IsWeather@GameThingWithPos@@UBE_NXZ
.long ?IsSpell@GameThingWithPos@@UBE_NXZ

.long ?IsDeletedWhenReleasedFromScript@GameThingWithPos@@UAE_NXZ
.long ?IsMobileWallHug@GameThingWithPos@@UBE_NXZ
.long ?IsActive@GameThingWithPos@@UBE_NXZ
.long ?IsObjectTurningTooFastForCameraToFollowSmoothly@GameThingWithPos@@UBE_NXZ
.long ?CalculateWhereIWillBeAfterNSeconds@Object@@UAEXMPAULHPoint@@@Z
.long ?AttitudeToCreatureEating@GameThingWithPos@@UAEIXZ
.long ?GetText@Object@@UAEPBDXZ
.long ?CalculateDesireForFood@WorshipTotem@@UAEMXZ
.long ?CalculateDesireForRest@WorshipTotem@@UAEMXZ
.long ?CalculatePeopleHidingIndicator@WorshipTotem@@UAEMXZ
.long ?GetHeight@Object@@UAEMXZ
.long ?IsReadyForNewScriptAction@GameThingWithPos@@UBE_NXZ

.long ?ForDrawFXGetNumVertices@GameThingWithPos@@UAEHXZ
.long ?ForDrawFXGetVertexPos@GameThingWithPos@@UAEXHPAULHPoint@@@Z
.long ?SetInScript@Object@@UAEXH@Z
.long ?SetControlledByScript@GameThingWithPos@@UAEXH@Z

.long ?GetDeathReason@GameThingWithPos@@UAE?AW4DEATH_REASON@@XZ
.long ?IsInScript@GameThingWithPos@@UAE_NXZ
.long ?IsMaleVillager@GameThingWithPos@@UAE_NXZ
.long ?IsFemaleVillager@GameThingWithPos@@UAE_NXZ

.long ?IsAnimal@GameThingWithPos@@UAE_NXZ
.long ?IsAChild@GameThingWithPos@@UAE_NXZ
.long ?IsHouse@GameThingWithPos@@UAE_NXZ
.long ?IsObject@Object@@UAE_NXZ

.long ?IsFootball@GameThingWithPos@@UBE_NXZ
.long ?IsCitadel@GameThingWithPos@@UAE_NXZ
.long ?IsForest@GameThingWithPos@@UAE_NXZ
.long ?IsMobileObject@GameThingWithPos@@UAE_NXZ

.long ?IsMobileStatic@GameThingWithPos@@UAE_NXZ
.long ?IsAnyKindOfTree@GameThingWithPos@@UAE_NXZ
.long ?IsDeadTree@GameThingWithPos@@UAE_NXZ
.long ?IsPileFood@GameThingWithPos@@UAE_NXZ

.long ?IsFeature@GameThingWithPos@@UAE_NXZ
.long ?IsScriptMarker@GameThingWithPos@@UAE_NXZ
.long ?IsScriptHighlight@GameThingWithPos@@UAE_NXZ
.long ?IsWonder@MultiMapFixed@@UAE_NXZ

.long ?IsInfluenceRing@GameThingWithPos@@UAE_NXZ
.long ?IsPuzzleGame@GameThingWithPos@@UAE_NXZ
.long ?IsScaffold@GameThingWithPos@@UAE_NXZ
.long ?IsSkeleton@GameThingWithPos@@UBE_NXZ

.long ?IsPoisoned@GameThingWithPos@@UBE_NXZ
.long ?IsSpeedUp@GameThingWithPos@@UAE_NXZ
.long ?IsParticleContainer@GameThingWithPos@@UAE_NXZ
.long ?IsSacrificeAltar@WorshipTotem@@UAEIXZ

.long ?IsPot@GameThingWithPos@@UAE_NXZ
.long ?IsComputerPlayer@GameThingWithPos@@UBE_NXZ
.long ?CanBeThrownByPlayer@GameThingWithPos@@UBE_NXZ
.long ?SetSkeleton@GameThingWithPos@@UAEXH@Z

.long ?IsSpellSeed@GameThingWithPos@@UBE_NXZ
.long ?IsSpellShield@GameThingWithPos@@UBE_NXZ
.long ?IsPileResource@GameThingWithPos@@UBE_NXZ
.long ?IsScriptTimer@GameThingWithPos@@UBE_NXZ
.long ?CreateBuildingSite@MultiMapFixed@@UAE_NXZ
.long ?GetQueryFirstEnumText@Object@@UAE?AW4HELP_TEXT@@XZ
.long ?GetQueryLastEnumText@Object@@UAE?AW4HELP_TEXT@@XZ
.long ?GetFOVHelpMessageSet@Object@@UAEIXZ
.long ?GetFOVHelpCondition@Object@@UAEIXZ
.long ?GetScriptObjectType@GameThingWithPos@@UAEIXZ
.long ?GetFacingDirection@GameThingWithPos@@UAEMXZ
.long ?SetAffectedByWind@GameThingWithPos@@UAEXH@Z

.long ?GetReactionPower@GameThingWithPos@@UAEMXZ
.long ?GetSpellCastPos@GameThingWithPos@@UAEXPAUMapCoords@@@Z
.long ?CleanUpBeforeReset@GameThingWithPos@@UAEXXZ
.long ?DestroyedByBeam@Object@@UAEXXZ
.long ?GetXAngle@Object@@UAEMXZ
.long ?GetYAngle@Object@@UAEMXZ
.long ?GetZAngle@Object@@UAEMXZ
.long ?SetFocus@Object@@UAEXPBULHPoint@@@Z
.long ?SetXYZAngles@Object@@UAEXMMM@Z
.long ?SetXYZAnglesAndScale@Object@@UAEXMMMM@Z
.long ?SetJustScale@Object@@UAEXM@Z
.long ?SetYJustAngle@Object@@UAEXM@Z
.long ?SetYAngle@Object@@UAEXM@Z
.long ?UpdateFrom3DPosition@Object@@UAEXXZ
.long ?MoveAlongPath@Object@@UAEIXZ
.long ?IsReachable@Object@@UAE_NXZ
.long ?BlocksTownClearArea@Object@@UAE_NXZ
.long ?Create3DObject@Fixed@@UAEXXZ
.long ?GetMapChild@MultiMapFixed@@UAEPAVObject@@PBUMapCell@@@Z
.long ?SetMapChild@MultiMapFixed@@UAEXPAVObject@@PAUMapCell@@@Z
.long ?InsertMapObject@MultiMapFixed@@UAEXXZ
.long ?RemoveMapObject@MultiMapFixed@@UAEXXZ                                                                                                   // [0xf5704] 0x008a9000 + 0xf5704 = 0x0099e704
.long ?InsertMapObjectToCell@Fixed@@UAEXPAUMapCell@@@Z
.long ?RemoveMapObjectFromCell@Object@@UAEXPAUMapCell@@@Z
.long ?IsObjectInMap@Object@@UAE_NPAUMapCell@@@Z
.long ?IsObjectInMapCheck@Object@@UAE_NXZ
.long ?MoveMapObject@MultiMapFixed@@UAEHPAUMapCoords@@@Z
.long ?ActualMoveMapObject@Object@@UAEXUMapCoords@@@Z
.long ?GetPtr@Object@@UAEPAV1@XZ
.long ?GetMeshRadius@Object@@UAEMXZ
.long ?Get3DObjectForPSys@Object@@UAEPAVGame3DObject@@XZ
.long ?GetPSysFireFlameMatrix@Object@@UAE_NPAULHMatrix@@@Z
.long ?GetPSysFireLocalRndFlamePos@Object@@UAE_NPAULHPoint@@PAH@Z
.long ?GetPSysFireWorldFlamePos@Object@@UAE_NPBULHPoint@@HPAU2@@Z
.long ?GetPSysFireLocalFlameScale@Object@@UAEMXZ
.long ?GetPSysFireMaxFlames@Object@@UAEIXZ
.long ?GetSpotEffectPower@Object@@UAEMXZ
.long ?GetAggressorValueFromDamage@Object@@UAEMM@Z
.long ?GetHoldType@Object@@UAE?AW4HOLD_TYPE@@XZ
.long ?GetHoldRadius@Object@@UAEMXZ
.long ?GetHoldLoweringMultiplier@Object@@UAEMXZ
.long ?GetHoldYRotate@Object@@UAEMXZ
.long ?HandShouldFeelWithMeshIntersect@Object@@UAE_NXZ
.long ?SetSpecularColor@WorshipTotem@@UAEXULH3DColor@@@Z
.long ?GetSpecularColor@WorshipTotem@@UAE?AULH3DColor@@XZ
.long ?SetBeliefSprite@Object@@UAEXPAVLH3DSprite@@@Z
.long ?GetBeliefSprite@Object@@UAEPAVLH3DSprite@@XZ
.long ?SetLife@Object@@UAEXM@Z
.long ?IsAlive@Object@@UAE_NXZ
.long ?ReduceLife@MultiMapFixed@@UAEXMPAVGPlayer@@@Z
.long ?IncreaseLife@Object@@UAEXM@Z
.long ?GetSacrificeValue@Object@@UAEMXZ
.long ?ReduceLifeDueToBurning@Object@@UAEXMPAVGPlayer@@@Z
.long ?FillInEffectDefenceMultiplier@Object@@UAEXPAVEffectNumbers@@@Z
.long ?ApplyEffect@Object@@UAEXPBXPAVEffectValues@@@Z
.long ?GetDamageEffect@Object@@UAEMPAVEffectValues@@@Z
.long ?GetHealEffect@Object@@UAEMPAVEffectValues@@@Z
.long ?GetActualObjectToEffect@CitadelPart@@UAEPAXPAVGPlayer@@_N@Z
.long ?DrawValue@Object@@UAEXHM@Z
.long ?ScaffoldMoved@Object@@UAEXPAVScaffold@@@Z
.long ?GetHeatCapacity@Object@@UAEMXZ
.long ?GetFireGPHXDrawn@Object@@UAEXPA_N000@Z
.long ?GetRainCoolingMultiplier@Object@@UAEMXZ
.long ?GetDefaultFireCentrePos@Object@@UAEPAULHPoint@@PAU2@@Z
.long ?GetDefaultFireRadius@Object@@UAEMXZ
.long ?DestroyedByEffect@CitadelPart@@UAEIPAVGPlayer@@M@Z
.long ?Process@CitadelPart@@UAEIXZ
.long ?ProcessBySpell@Object@@UAEIPAVSpell@@@Z
.long ?ApplySingleEffect@Object@@UAEXW4EFFECT_TYPE@@MPAVGameThing@@PBUMapCoords@@@Z
.long ?GetMesh@WorshipTotem@@UBEHXZ
.long ?GetDetailMesh@Object@@UAEHH@Z
.long ?Draw@WorshipTotem@@UAEXXZ
.long ?DrawOutOfMap@Object@@UAEX_N@Z
.long ?IsG3DObjectDrawnInHand@Object@@UAE_NXZ
.long ?GetDrawRegion@Object@@UAEXPAULHRegion@@@Z
.long ?ProcessState@Object@@UAEIXZ
.long ?GetProjectileSpeed@Object@@UAEMXZ
.long ?CanBePickedUp@Object@@UAE_NXZ
.long ?CanBeCrushed@Fixed@@UAE_NXZ
.long ?GetTopPos@Object@@UAEMXZ
.long ?GetVillagerHugRadius@Object@@UAEMXZ
.long ?GetWeight@Object@@UAEMXZ
.long ?GetWorldMatrix@Object@@UAEXPAULHMatrix@@@Z
.long ?CanBeSuckedIntoVortex@Object@@UAE_NPAVLandscapeVortex@@@Z
.long ?GetDiscipleStateIfInteractedWith@MultiMapFixed@@UAEIPAVGInterfaceStatus@@PAVVillager@@@Z
.long ?GetWorkingPos@Object@@UAEPAUMapCoords@@PAU2@PAV1@@Z
.long ?GetHeightForHandAboveInteractObject@Object@@UAEMXZ
.long ?GetHandHelpMessageSet@Object@@UAEIXZ
.long ?GetHandHelpCondition@Object@@UAEIXZ
.long ?CallVirtualFunctionsForCreation@WorshipTotem@@UAEXABUMapCoords@@@Z
.long ?Get3DType@WorshipTotem@@UAE?AW4LH3DObject__ObjectType@@XZ
.long ?GetFoodValue@Object@@UAEMW4FOOD_TYPE@@@Z
.long ?GetWoodValue@Object@@UAEMXZ
.long ?GetFoodType@Object@@UAE?AW4FOOD_TYPE@@XZ
.long ?GetImpressiveValue@Object@@UAEMXZ
.long ?IsSpellSeedReturnPoint@WorshipTotem@@UBE_NXZ
.long ?IsABeliever@Object@@UAE_NXZ
.long ?AsMultiMapFixed@MultiMapFixed@@UAEPAV1@XZ
.long ?ApplyWaterSpell@Object@@UAEMPAVSpellWater@@@Z
.long ?IsResourceStore@MultiMapFixed@@UAE_NW4RESOURCE_TYPE@@@Z
.long ?DeleteObjectAndTakeResource@MultiMapFixed@@UAE_NPAVObject@@PAVGInterfaceStatus@@@Z
.long ?GetRadiusMultiplierForApplyingPotToPos@Object@@UAEMXZ
.long ?DoCreatureMimicAfterAddingResource@MultiMapFixed@@UAE_NW4RESOURCE_TYPE@@PAVGInterfaceStatus@@@Z
.long ?GetResourceType@Object@@UAE?AW4RESOURCE_TYPE@@XZ
.long ?GetDefaultResource@Object@@UAEHXZ
.long ?SetPoisonedResource@Object@@UAEXW4RESOURCE_TYPE@@H@Z
.long ?SetPoisoned@Object@@UAEXH@Z
.long ?IsLockedInInteract@Object@@UAE_NXZ
.long ?SetDying@Object@@UAE_NXZ
.long ?IsAttackable@Object@@UAE_NPAV1@@Z
.long ?IsAllied@Object@@UAE_NPAV1@@Z
.long ?IsTouching@Object@@UAE_NPAUMapCoords@@0@Z
.long ?IsTouching@Object@@UAE_NPAUMapCoords@@@Z
.long ?IsTouching@Object@@UAE_NPAV1@M@Z
.long ?StartOnFire@MultiMapFixed@@UAEXXZ
.long ?EndOnFire@Object@@UAEXXZ
.long ?GetDistanceFromObject@Object@@UAEMPAV1@@Z
.long ?GetTribalPower@Object@@UAEMW4TRIBE_TYPE@@@Z
.long ?ValidForLockedSelectProcess@Fixed@@UAE_NPAVGInterfaceStatus@@@Z, ?NetworkFriendlyStartLockedSelect@Fixed@@UAE_NPAVGInterfaceStatus@@@Z
.long ?NetworkUnfriendlyStartLockedSelect@Object@@UAE_NXZ
.long ?IsReadyForNetworkUnfriendlyLockedSelect@Object@@UAE_NXZ
.long ?NetworkUnfriendlyLockedSelect@Object@@UAE_NPAVControlHandUpdateInfo@@@Z
.long ?GetReadyForNetworkUnfriendlyEndLockedSelect@Object@@UAE_NXZ
.long ?IsReadyForNetworkUnfriendlyEndLockedSelect@Object@@UAE_NXZ
.long ?NetworkUnfriendlyEndLockedSelect@Object@@UAE_NXZ
.long ?NetworkFriendlyEndLockedSelect@Object@@UAE_NPAVGInterfaceStatus@@@Z
.long ?ValidAsInterfaceTarget@Object@@UAE_NXZ
.long ?ValidAsInterfaceLeashTarget@Object@@UAE_NXZ
.long ?SelectOnlyAfterRecSystem@Object@@UAE_NXZ
.long ?ValidForPlaceInHand@Object@@UAE_NPAVGInterfaceStatus@@@Z
.long ?InterfaceSetInMagicHand@Fixed@@UAE_NPAVGInterfaceStatus@@@Z
.long ?InterfaceSetOutMagicHand@Object@@UAE_NPAVGInterfaceStatus@@@Z
.long ?ValidToRemoveFromHand@Object@@UAE_NPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?RemoveFromHand@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?ValidToShakeFromHand@Object@@UAE_NXZ
.long ?InterfaceMustBeInInfluenceForInteraction@Object@@UAE_NXZ
.long ?IsTuggable@Object@@UAE_NXZ
.long ?ValidToApplyThisToObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z
.long ?ApplyThisToObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@PAVGestureSystemPacketData@@@Z
.long ?ValidToApplyThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PAUMapCoords@@@Z
.long ?ApplyThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@PAVGestureSystemPacketData@@@Z
.long ?ValidForLockedApplyProcess@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?ApplyUnlockProcess@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?IsInterfacePowerUpWhenInHand@Object@@UAEIXZ
.long ?ApplyOnlyAfterRecSystem@Object@@UAEIXZ
.long ?ApplyOnlyAfterReleased@Object@@UAEIXZ
.long ?InterfaceValidToTap@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?InterfaceTap@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?InterfaceValidToGiveObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z
.long ?InterfaceGiveObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z
.long ?InterfaceValidToInteractAsMapCoordsObject@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?InterfaceInteractAsMapCoordsObject@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?ThrowObjectFromHand@Object@@UAEIPAVGInterfaceStatus@@H@Z
.long ?ValidToSelectFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?ValidToApplyFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?SelectFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?ApplyFightThisToMapCoord@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?ValidToFightThisToObject@Object@@UAEIPAVGInterfaceStatus@@PBUMapCoords@@@Z
.long ?FightThisToObject@Object@@UAEIPAVGInterfaceStatus@@PAV1@@Z
.long ?IsEffectReceiver@WorshipTotem@@UAEIPAVEffectValues@@@Z
.long ?CanBeDestroyedBySpell@CitadelPart@@UAEIPAVSpell@@@Z
.long ?GetImportance@Object@@UAEMXZ
.long ?InitialisePhysicsFromHand@Object@@UAEIPAULHPoint@@0PAVGInterfaceStatus@@PAV1@H@Z
.long ?InitialisePhysics@Object@@UAEIPBULHPoint@@0PAV1@_NPAVGInterfaceStatus@@@Z
.long ?GetPhysicsConstantsType@Object@@UAEIXZ
.long ?SetUpPhysOb@Object@@UAEXPAVPhysOb@@@Z
.long ?EndPhysics@Fixed@@UAEXPAVPhysicsObject@@_N@Z
.long ?DropSfx@Object@@UAEIXZ
.long ?GetBoundingSphere@Object@@UAEXPAULHPoint@@PAM@Z
.long ?InteractsWithPhysicsObjects@MultiMapFixed@@UAE_NXZ
.long ?ChecksVerticesVObjects@Object@@UAEIXZ
.long ?ShouldPhysicsRaiseObjectUntilNotIntersectingThis@Object@@UAEXPAV1@@Z
.long ?PhysicallyDestroysAbodes@Object@@UAEIXZ
.long ?ReactToPhysicsImpact@CitadelPart@@UAEXPAVPhysicsObject@@_N@Z
.long ?CanBecomeAPhysicsObject@Object@@UAE_NXZ
.long ?GetAlwaysRemainsInPhysicsInternalSystem@Object@@UAE_NXZ
.long ?HasSunk@Object@@UAE_NXZ
.long ?CreatureMustAvoid@MultiMapFixed@@UAE_NPAVCreature@@@Z
.long ?AddToRoutePlan@Object@@UAEXPAVRPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z
.long ?GetRoutePlanRadius@Object@@UAEMPAVCreature@@@Z
.long ?VillagerMustAvoid@Fixed@@UAE_NPAVVillager@@@Z
.long ?IsFireMan@Object@@UAE_NXZ
.long ?IsARootedObject@Object@@UAE_NXZ
.long ?GetCollideSoundType@Object@@UAE?AW4SOUND_COLLISION_TYPE@@XZ
.long ?IsSolidToNewAbode@MultiMapFixed@@UAE_NXZ
.long ?RemoveFromGame@Object@@UAEIXZ
.long ?GetLandingPointCount@Object@@UAEHXZ
.long ?GetLandingPoint@Object@@UAE_NEPAULHPoint@@@Z
.long ?GetTastiness@Object@@UAEIXZ
.long ?IsScary@Object@@UAE_NXZ
.long ?GetInspectObjectPos@Object@@UAE_NPAVVillager@@PAUMapCoords@@@Z
.long 0x00781010, ?GetSpecialPos@Fixed@@UAE_NIPAUMapCoords@@@Z, ?GetTownArtifact@Fixed@@UAEPAVGameThing@@XZ, ?IsTownArtifact@Fixed@@UAE_NXZ                                                               // [0xf59b0] 0x008a9000 + 0xf59b0 = 0x0099e9b0
.long ?ProcessInHand@Object@@UAE_NXZ
.long ?ProcessInInteract@Object@@UAEIPAVGInterfaceStatus@@@Z
.long ?GetObjectCollide@Object@@UAEIXZ
.long ?CalculateForceAppliedBy@Object@@UAEMPAVLiving@@@Z
.long ?IsPushable@Object@@UAE_NXZ
.long ?PushObject@Object@@UAEXPAVLiving@@PAUMapCoords@@@Z
.long ?PushObject@Object@@UAEXPAVLiving@@@Z
.long ?GetCarriedTreeType@Object@@UAEIXZ
.long ?GetFacingPitch@Object@@UAEMXZ
.long ?SetHeadPos@Object@@UAEXPAUMapCoords@@@Z
.long ?SaveObject@CitadelPart@@UAEIAAULHOSFile@@ABUMapCoords@@@Z
.long ?IsAPotFromABuildingSite@Object@@UAE_NXZ
.long ?GetNearestEdgeOfObject@Object@@UAEXPAV1@@Z
.long ?GetNearestPosOfObject@Object@@UAEXPAV1@@Z
.long ?GetNearestEdgeToPos@Object@@UAEXPBUMapCoords@@@Z
.long ?GetNearestEdge@Object@@UAEXMM@Z
.long ?GetImmersionTexture@Object@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ
.long ?GetInHandImmersionTexture@Object@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ
.long ?ShouldFootpathsGoRound@CitadelPart@@UAE_NXZ
.long ?InitialiseIsFixedForMapList@Object@@UAEXH@Z
.long ?StandAnimation@Object@@UAEIXZ
.long ?GetCollideData@MultiMapFixed@@UAEPAVNewCollide@@XZ
.long ?InsertMapObjectToCellAssumeFixed@Fixed@@UAEXPAUMapCell@@@Z
.long ?IsObjectFullyInMap@MultiMapFixed@@UAE_NXZ                                                                                                   // [0xf5a1c] 0x008a9000 + 0xf5a1c = 0x0099ea1c
.long ?GetDoorPos@MultiMapFixed@@UAEPAUMapCoords@@PAU2@@Z
.long ?GetInfluence@MultiMapFixed@@UAEMXZ, ?IsPlaytimeStructure@MultiMapFixed@@UAE_NXZ, ?IsPlaytimeStarted@MultiMapFixed@@UAE_NXZ                                                                           // [0xf5a24] 0x008a9000 + 0xf5a24 = 0x0099ea24
.long ?AddPlaytimeVillager@MultiMapFixed@@UAE_NPAVVillager@@@Z, ?CheckMapObject@MultiMapFixed@@UAEXXZ, ?GetResourceDropPosForComputerPlayer@MultiMapFixed@@UAEXPAUMapCoords@@@Z, ?GetPercentBuilt@MultiMapFixed@@UAEMXZ                                                               // [0xf5a30] 0x008a9000 + 0xf5a30 = 0x0099ea30
.long ?GetPercentRepaired@MultiMapFixed@@UAEMXZ, ?GetPercentRepairedFromWhenDamaged@MultiMapFixed@@UAEMXZ
.long ?IsRepaired@CitadelPart@@UAE_NXZ
.long ?IsBuilt@CitadelPart@@UAE_NXZ                                                               // [0xf5a40] 0x008a9000 + 0xf5a40 = 0x0099ea40
.long ?GetPercentRepairedForNonFunctional@MultiMapFixed@@UAEMXZ, ?GetPercentForDrawBuilding@MultiMapFixed@@UAEMXZ, ?GetPercentAbodeFullWithAdults@MultiMapFixed@@UAEMXZ, ?GetPercentAbodeFullWithChildren@MultiMapFixed@@UAEMXZ                                                               // [0xf5a50] 0x008a9000 + 0xf5a50 = 0x0099ea50
.long ?IsDrawBuilding@MultiMapFixed@@UAE_NXZ, ?Built@MultiMapFixed@@UAE_NXZ, ?Repaired@MultiMapFixed@@UAE_NXZ, ?GetBuildingSiteWood@MultiMapFixed@@UAEIPAI@Z                                                               // [0xf5a60] 0x008a9000 + 0xf5a60 = 0x0099ea60
.long ?GetDestructionMesh@MultiMapFixed@@UAEPAVLH3DMesh@@XZ, ?RemoveDamage@MultiMapFixed@@UAEXXZ, ?GetBuildingObject@MultiMapFixed@@UAEPAXXZ, ?IsCivic@MultiMapFixed@@UAE_NXZ                                                               // [0xf5a70] 0x008a9000 + 0xf5a70 = 0x0099ea70
.long ?GetAbodeType@MultiMapFixed@@UAE?AW4ABODE_TYPE@@XZ, ?SetPower@MultiMapFixed@@UAEXM@Z, ?GetResourcePos@MultiMapFixed@@UAEPAUMapCoords@@W4RESOURCE_TYPE@@H@Z, ?IsPoisonedResource@MultiMapFixed@@UAE_NXZ                                                               // [0xf5a80] 0x008a9000 + 0xf5a80 = 0x0099ea80
.long ?GetResourceNearestEdge@MultiMapFixed@@UAEPAUMapCoords@@PAU2@W4RESOURCE_TYPE@@PAVObject@@H@Z, ?GetDesireToBeRepaired@MultiMapFixed@@UAEMXZ, ?AddToPlayer@MultiMapFixed@@UAEXXZ, ?RemoveFromPlayer@MultiMapFixed@@UAEXXZ                                                               // [0xf5a90] 0x008a9000 + 0xf5a90 = 0x0099ea90
.long ?DoResourceAdding@MultiMapFixed@@UAEIW4RESOURCE_TYPE@@PAVGInterfaceStatus@@_NPAUMapCoords@@H@Z, ?DoResourceRemoving@MultiMapFixed@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_N@Z, ?CalulateAmountOverMaximum@MultiMapFixed@@UAEHW4RESOURCE_TYPE@@@Z, ?SetTown@MultiMapFixed@@UAEXPAVTown@@@Z                                                               // [0xf5aa0] 0x008a9000 + 0xf5aa0 = 0x0099eaa0
.long ?RemovePotFromStructure@MultiMapFixed@@UAEXPAVPotStructure@@@Z, ?GetShouldNotBeAddedToPlanned@MultiMapFixed@@UAE_NXZ, ?SetShouldNotBeAddedToPlanned@MultiMapFixed@@UAEX_N@Z, ?BuildBy@MultiMapFixed@@UAEXM@Z                                                               // [0xf5ab0] 0x008a9000 + 0xf5ab0 = 0x0099eab0
.long ?ConvertToPlanned@CitadelPart@@UAEPAVPlannedMultiMapFixed@@XZ                                                                                                   // [0xf5ac0] 0x008a9000 + 0xf5ac0 = 0x0099eac0
.long ?CreateCollideData@MultiMapFixed@@UAEXXZ
.long 0x38bea672                                                                                                   // [0xf5ac8] 0x008a9000 + 0xf5ac8 = 0x0099eac8
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf5acc] 0x008a9000 + 0xf5acc = 0x0099eacc

VftableAndRTTI ChallengeRoom                                                                                       // [0xf5ad4] 0x008a9000 + 0xf5ad4 = 0x0099ead4
.long 0x00784b60
.long ?DrawAdditional@GameOptionsRoom@@UAEX_N@Z                                                                                       // [0xf5ad8] 0x008a9000 + 0xf5ad8 = 0x0099ead8
.long 0x00781d20, 0x00781d30
.long ?DrawHand@GameOptionsRoom@@UAEXXZ
.long 0x00782170                                                               // [0xf5ae0] 0x008a9000 + 0xf5ae0 = 0x0099eae0
.long 0x007821b0, 0x007821d0, 0x0079a290, 0x00781bc0                                                               // [0xf5af0] 0x008a9000 + 0xf5af0 = 0x0099eaf0
.long 0x007989e0, 0x00781b80, 0x0078d9a0, 0x00781cc0                                                               // [0xf5b00] 0x008a9000 + 0xf5b00 = 0x0099eb00
.long 0x00799f50, 0x00784f00, 0x3feccccd, 0x3c0a74d3                                                               // [0xf5b10] 0x008a9000 + 0xf5b10 = 0x0099eb10
.long 0x3f333333                                                                                                   // [0xf5b20] 0x008a9000 + 0xf5b20 = 0x0099eb20
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf5b24] 0x008a9000 + 0xf5b24 = 0x0099eb24

VftableAndRTTI CreatureRoom                                                                                        // [0xf5b2c] 0x008a9000 + 0xf5b2c = 0x0099eb2c
.long 0x00789b30, 0x00788630
.long ?PreDraw@GameOptionsRoom@@UAEXXZ
.long 0x00786840                                                               // [0xf5b30] 0x008a9000 + 0xf5b30 = 0x0099eb30
.long ?DrawHand@GameOptionsRoom@@UAEXXZ
.long 0x00787120, 0x00787160, 0x00787180                                                               // [0xf5b40] 0x008a9000 + 0xf5b40 = 0x0099eb40
.long 0x0079a290                                                                                                   // [0xf5b50] 0x008a9000 + 0xf5b50 = 0x0099eb50
.long _InitEngine__12CreatureRoomFv
.long 0x007989e0, 0x007871a0                                                                                       // [0xf5b58] 0x008a9000 + 0xf5b58 = 0x0099eb58
.long 0x0078d9a0, 0x007866c0, 0x00799f50, 0x0079a800                                                               // [0xf5b60] 0x008a9000 + 0xf5b60 = 0x0099eb60
.long 0x007866a0, 0x00787420, 0x37b02928, 0x00000000                                                               // [0xf5b70] 0x008a9000 + 0xf5b70 = 0x0099eb70
.long 0x00000000, 0x40410000                                                                                       // [0xf5b80] 0x008a9000 + 0xf5b80 = 0x0099eb80

VftableAndRTTI CreatureRoomCamera                                                                                  // [0xf5b88] 0x008a9000 + 0xf5b88 = 0x0099eb88
.long _ReloadCamera__11InnerCameraFPc
.long _PreDraw__11InnerCameraFv
.long ?Init@CreatureRoomCamera@@UAEXPAD@Z                                                                                                   // [0xf5b94] 0x008a9000 + 0xf5b94 = 0x0099eb94
.long _Reinit__11InnerCameraFv
.long ?Close@CreatureRoomCamera@@UAEXXZ                                                                                                   // [0xf5b9c] 0x008a9000 + 0xf5b9c = 0x0099eb9c
.long _CalcDoorHit__11InnerCameraFP9InnerRoom7LHCoordfb
.long ?Update@CreatureRoomCamera@@UAEXPAUInnerRoom@@MHHABULHCoord@@_N@Z
.long ?UpdateMain@CreatureRoomCamera@@UAEXPAUInnerRoom@@MHHABULHCoord@@_N@Z
.long ?UpdateState@CreatureRoomCamera@@UAEXPAUInnerRoom@@MHHABULHCoord@@_N@Z                                                                           // [0xf5ba4] 0x008a9000 + 0xf5ba4 = 0x0099eba4
.long _FocusOnSubMesh__11InnerCameraFP8LH3DMeshifff
.long _TriggerIntro__11InnerCameraFbP8Zoomer3dP8Zoomer3d
.long 0x00788610, 0xc2340000                                                                                       // [0xf5bb8] 0x008a9000 + 0xf5bb8 = 0x0099ebb8
.long 0x42e60000, 0xc1c80000, 0x42f60000                                                                           // [0xf5bc0] 0x008a9000 + 0xf5bc0 = 0x0099ebc0

VftableAndRTTI CreatureCitadel                                                                                     // [0xf5bcc] 0x008a9000 + 0xf5bcc = 0x0099ebcc
.long ?SetAnimTime@CreatureFalling@@UAEXHH@Z                                                                                                   // [0xf5bd0] 0x008a9000 + 0xf5bd0 = 0x0099ebd0
.long _LoadBase__12LH3DCreatureFPc
.long 0x00480530, 0x0048d790                                                                                       // [0xf5bd8] 0x008a9000 + 0xf5bd8 = 0x0099ebd8
.long 0x0048d540, 0x00481df0, 0x004ed320, 0x0048e1c0                                                               // [0xf5be0] 0x008a9000 + 0xf5be0 = 0x0099ebe0
.long 0x004eb430, 0x004ed640, 0x007865d0                                                                           // [0xf5bf0] 0x008a9000 + 0xf5bf0 = 0x0099ebf0
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf5bfc] 0x008a9000 + 0xf5bfc = 0x0099ebfc
.long 0x00000000, 0x00000000, 0x0000002d                                                                           // [0xf5c04] 0x008a9000 + 0xf5c04 = 0x0099ec04
.long 0x0000003c, 0x00000041, 0x00000023, 0x00000041                                                               // [0xf5c10] 0x008a9000 + 0xf5c10 = 0x0099ec10
.long 0x00000023, 0x00000028, 0x00000032, 0xbfbf7cd1                                                               // [0xf5c20] 0x008a9000 + 0xf5c20 = 0x0099ec20
.long 0x429e0000                                                                                                   // [0xf5c30] 0x008a9000 + 0xf5c30 = 0x0099ec30
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf5c34] 0x008a9000 + 0xf5c34 = 0x0099ec34

VftableAndRTTI CreditsRoom                                                                                         // [0xf5c3c] 0x008a9000 + 0xf5c3c = 0x0099ec3c
.long 0x0078cbe0
.long ?DrawAdditional@GameOptionsRoom@@UAEX_N@Z
.long ?PreDraw@GameOptionsRoom@@UAEXXZ
.long 0x0078b2d0                                                               // [0xf5c40] 0x008a9000 + 0xf5c40 = 0x0099ec40
.long ?DrawHand@GameOptionsRoom@@UAEXXZ
.long 0x0078f5d0, 0x0078b520, 0x0078b540                                                               // [0xf5c50] 0x008a9000 + 0xf5c50 = 0x0099ec50
.long 0x0078b240, 0x0078c7d0, 0x007989e0, 0x0078cab0                                                               // [0xf5c60] 0x008a9000 + 0xf5c60 = 0x0099ec60
.long 0x0078d9a0, 0x0078b280, 0x00799f50, 0x0079a800                                                               // [0xf5c70] 0x008a9000 + 0xf5c70 = 0x0099ec70
.long 0x0078b230                                                                                                   // [0xf5c80] 0x008a9000 + 0xf5c80 = 0x0099ec80
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf5c84] 0x008a9000 + 0xf5c84 = 0x0099ec84

VftableAndRTTI GameOptionsRoom                                                                                     // [0xf5c8c] 0x008a9000 + 0xf5c8c = 0x0099ec8c
.long ?IsAvailable@GameOptionsRoom@@UAE_NXZ
.long ?DrawAdditional@GameOptionsRoom@@UAEX_N@Z
.long ?PreDraw@GameOptionsRoom@@UAEXXZ
.long ?Draw@GameOptionsRoom@@UAEXXZ                                                               // [0xf5c90] 0x008a9000 + 0xf5c90 = 0x0099ec90
.long ?DrawHand@GameOptionsRoom@@UAEXXZ
.long ?Update@GameOptionsRoom@@UAEXXZ
.long ?UpdateMouse@GameOptionsRoom@@UAEXULHCoord@@W4INTERFACE_MESSAGE_TYPES@@@Z
.long ?UpdateKeyboard@GameOptionsRoom@@UAEXW4LH_KEY@@G@Z                                                               // [0xf5ca0] 0x008a9000 + 0xf5ca0 = 0x0099eca0
.long 0x0079a290, 0x0078d7e0, 0x007989e0, 0x0078f2d0                                                               // [0xf5cb0] 0x008a9000 + 0xf5cb0 = 0x0099ecb0
.long 0x0078d9a0, 0x00799f40, 0x00799f50, 0x0079a800                                                               // [0xf5cc0] 0x008a9000 + 0xf5cc0 = 0x0099ecc0
.long 0x0078d7d0                                                                                                   // [0xf5cd0] 0x008a9000 + 0xf5cd0 = 0x0099ecd0

VftableAndRTTI SubOptionEntry                                                                                      // [0xf5cd4] 0x008a9000 + 0xf5cd4 = 0x0099ecd4

.long __purecall
.long __purecall

.long __purecall

VftableAndRTTI SubOptionEntryButton                                                                                // [0xf5ce4] 0x008a9000 + 0xf5ce4 = 0x0099ece4
.long ?GetSubMeshData@SubOptionEntryButton@@UAEXAAUSubMeshDrawData@@HH@Z
.long ?UpdateMouse@SubOptionEntryButton@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z                                                                                       // [0xf5ce8] 0x008a9000 + 0xf5ce8 = 0x0099ece8
.long ?UpdateKeyboard@SubOptionEntryButton@@UAEIW4LH_KEY@@G@Z                                                                                                   // [0xf5cf0] 0x008a9000 + 0xf5cf0 = 0x0099ecf0

VftableAndRTTI SubOptionEntryCheckBoxUnChecked                                                                     // [0xf5cf4] 0x008a9000 + 0xf5cf4 = 0x0099ecf4
.long ?GetSubMeshData@SubOptionEntryCheckBoxUnChecked@@UAEXAAUSubMeshDrawData@@HH@Z
.long ?UpdateMouse@SubOptionEntryCheckBoxUnChecked@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z                                                                                       // [0xf5cf8] 0x008a9000 + 0xf5cf8 = 0x0099ecf8
.long ?UpdateKeyboard@SubOptionEntryCheckBoxUnChecked@@UAEIW4LH_KEY@@G@Z                                                                                                   // [0xf5d00] 0x008a9000 + 0xf5d00 = 0x0099ed00

VftableAndRTTI SubOptionEntryCheckBoxChecked                                                                       // [0xf5d04] 0x008a9000 + 0xf5d04 = 0x0099ed04
.long ?GetSubMeshData@SubOptionEntryCheckBoxChecked@@UAEXAAUSubMeshDrawData@@HH@Z
.long ?UpdateMouse@SubOptionEntryCheckBoxChecked@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z                                                                                       // [0xf5d08] 0x008a9000 + 0xf5d08 = 0x0099ed08
.long ?UpdateKeyboard@SubOptionEntryCheckBoxChecked@@UAEIW4LH_KEY@@G@Z                                                                                                   // [0xf5d10] 0x008a9000 + 0xf5d10 = 0x0099ed10

VftableAndRTTI SubOptionEntrySlider                                                                                // [0xf5d14] 0x008a9000 + 0xf5d14 = 0x0099ed14
.long ?GetSubMeshData@SubOptionEntrySlider@@UAEXAAUSubMeshDrawData@@HH@Z
.long ?UpdateMouse@SubOptionEntrySlider@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z                                                                                       // [0xf5d18] 0x008a9000 + 0xf5d18 = 0x0099ed18
.long ?UpdateKeyboard@SubOptionEntrySlider@@UAEIW4LH_KEY@@G@Z                                                                                                   // [0xf5d20] 0x008a9000 + 0xf5d20 = 0x0099ed20

VftableAndRTTI SubOptionEntryPicture                                                                               // [0xf5d24] 0x008a9000 + 0xf5d24 = 0x0099ed24
.long ?GetSubMeshData@SubOptionEntryPicture@@UAEXAAUSubMeshDrawData@@HH@Z
.long ?UpdateMouse@SubOptionEntryPicture@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z                                                                                       // [0xf5d28] 0x008a9000 + 0xf5d28 = 0x0099ed28
.long ?UpdateKeyboard@SubOptionEntryPicture@@UAEIW4LH_KEY@@G@Z                                                                                                   // [0xf5d30] 0x008a9000 + 0xf5d30 = 0x0099ed30

VftableAndRTTI SubOptionEntryScroll                                                                                // [0xf5d34] 0x008a9000 + 0xf5d34 = 0x0099ed34
.long ?GetSubMeshData@SubOptionEntryScroll@@UAEXAAUSubMeshDrawData@@HH@Z
.long ?UpdateMouse@SubOptionEntryScroll@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z                                                                                       // [0xf5d38] 0x008a9000 + 0xf5d38 = 0x0099ed38
.long ?UpdateKeyboard@SubOptionEntryScroll@@UAEIW4LH_KEY@@G@Z                                                                                                   // [0xf5d40] 0x008a9000 + 0xf5d40 = 0x0099ed40

VftableAndRTTI SubOptionEntryText                                                                                  // [0xf5d44] 0x008a9000 + 0xf5d44 = 0x0099ed44
.long ?GetSubMeshData@SubOptionEntryText@@UAEXAAUSubMeshDrawData@@HH@Z
.long ?UpdateMouse@SubOptionEntryText@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z                                                                                       // [0xf5d48] 0x008a9000 + 0xf5d48 = 0x0099ed48
.long ?UpdateKeyboard@SubOptionEntryText@@UAEIW4LH_KEY@@G@Z                                                                                                   // [0xf5d50] 0x008a9000 + 0xf5d50 = 0x0099ed50

VftableAndRTTI SubOptionEntryListBox                                                                               // [0xf5d54] 0x008a9000 + 0xf5d54 = 0x0099ed54
.long ?GetSubMeshData@SubOptionEntryListBox@@UAEXAAUSubMeshDrawData@@HH@Z
.long ?UpdateMouse@SubOptionEntryListBox@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z                                                                                       // [0xf5d58] 0x008a9000 + 0xf5d58 = 0x0099ed58
.long ?UpdateKeyboard@SubOptionEntryListBox@@UAEIW4LH_KEY@@G@Z                                                                                                   // [0xf5d60] 0x008a9000 + 0xf5d60 = 0x0099ed60

VftableAndRTTI SubOptionEntryFrame                                                                                 // [0xf5d64] 0x008a9000 + 0xf5d64 = 0x0099ed64
.long ?GetSubMeshData@SubOptionEntryFrame@@UAEXAAUSubMeshDrawData@@HH@Z
.long ?UpdateMouse@SubOptionEntryFrame@@UAEIULHCoord@@W4INTERFACE_MESSAGE_TYPES@@H@Z                                                                                       // [0xf5d68] 0x008a9000 + 0xf5d68 = 0x0099ed68
.long ?UpdateKeyboard@SubOptionEntryFrame@@UAEIW4LH_KEY@@G@Z                                                                                                   // [0xf5d70] 0x008a9000 + 0xf5d70 = 0x0099ed70

VftableAndRTTI PictureRoomBase                                                                                     // [0xf5d74] 0x008a9000 + 0xf5d74 = 0x0099ed74
.long 0x0078f1d0
.long ?DrawAdditional@GameOptionsRoom@@UAEX_N@Z                                                                                       // [0xf5d78] 0x008a9000 + 0xf5d78 = 0x0099ed78
.long ?PreDraw@GameOptionsRoom@@UAEXXZ
.long 0x0078f1f0
.long ?DrawHand@GameOptionsRoom@@UAEXXZ
.long 0x0078f5d0                                                               // [0xf5d80] 0x008a9000 + 0xf5d80 = 0x0099ed80
.long 0x0078f5e0, 0x0078f600, 0x0079a290, 0x0078f320                                                               // [0xf5d90] 0x008a9000 + 0xf5d90 = 0x0099ed90
.long 0x007989e0, 0x0078f2d0, 0x0078d9a0, 0x00799f40                                                               // [0xf5da0] 0x008a9000 + 0xf5da0 = 0x0099eda0
.long 0x00799f50, 0x0079a800                                                                                       // [0xf5db0] 0x008a9000 + 0xf5db0 = 0x0099edb0

VftableAndRTTI ChallengeRoomCamera                                                                                 // [0xf5db8] 0x008a9000 + 0xf5db8 = 0x0099edb8
.long _ReloadCamera__11InnerCameraFPc
.long _PreDraw__11InnerCameraFv
.long ?Init@ChallengeRoomCamera@@UAEXPAD@Z
.long ?Reinit@ChallengeRoomCamera@@UAEXXZ
.long ?Close@ChallengeRoomCamera@@UAEXXZ                                                                           // [0xf5dc4] 0x008a9000 + 0xf5dc4 = 0x0099edc4
.long _CalcDoorHit__11InnerCameraFP9InnerRoom7LHCoordfb
.long 0x007854d0, 0x007859d0, 0x00785500                                                                           // [0xf5dd4] 0x008a9000 + 0xf5dd4 = 0x0099edd4
.long _FocusOnSubMesh__11InnerCameraFP8LH3DMeshifff
.long _TriggerIntro__11InnerCameraFbP8Zoomer3dP8Zoomer3d
.long 0x0078f5b0, 0x3f333333                                                                                       // [0xf5de8] 0x008a9000 + 0xf5de8 = 0x0099ede8
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf5df0] 0x008a9000 + 0xf5df0 = 0x0099edf0

VftableAndRTTI SaveGameRoom                                                                                        // [0xf5df8] 0x008a9000 + 0xf5df8 = 0x0099edf8
.long 0x007937e0                                                                                                   // [0xf5dfc] 0x008a9000 + 0xf5dfc = 0x0099edfc
.long ?DrawAdditional@GameOptionsRoom@@UAEX_N@Z
.long ?PreDraw@GameOptionsRoom@@UAEXXZ
.long 0x00790240
.long ?DrawHand@GameOptionsRoom@@UAEXXZ                                                               // [0xf5e00] 0x008a9000 + 0xf5e00 = 0x0099ee00
.long 0x007908f0, 0x00790900, 0x00790920, 0x0079a290                                                               // [0xf5e10] 0x008a9000 + 0xf5e10 = 0x0099ee10
.long 0x0078fd10, 0x007989e0, 0x0078fb00, 0x0078d9a0                                                               // [0xf5e20] 0x008a9000 + 0xf5e20 = 0x0099ee20
.long 0x007901e0, 0x00799f50, 0x007938e0                                                                           // [0xf5e30] 0x008a9000 + 0xf5e30 = 0x0099ee30
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf5e3c] 0x008a9000 + 0xf5e3c = 0x0099ee3c
.long 0x40060a92, 0x00000000, 0x40260000                                                                           // [0xf5e44] 0x008a9000 + 0xf5e44 = 0x0099ee44
.long 0x00000000, 0x55000000, 0xaa000000, 0xff000000                                                               // [0xf5e50] 0x008a9000 + 0xf5e50 = 0x0099ee50
.long 0x55555555, 0x3fe65718, 0x40cea975                                                                           // [0xf5e60] 0x008a9000 + 0xf5e60 = 0x0099ee60

VftableAndRTTI InnerCamera                                                                                         // [0xf5e6c] 0x008a9000 + 0xf5e6c = 0x0099ee6c
.long _ReloadCamera__11InnerCameraFPc
.long _PreDraw__11InnerCameraFv
.long _Init__11InnerCameraFPc
.long _Reinit__11InnerCameraFv
.long _Close__11InnerCameraFv
.long _CalcDoorHit__11InnerCameraFP9InnerRoom7LHCoordfb
.long _Update__11InnerCameraFP9InnerRoomfiiRC7LHCoordb
.long _UpdateMain__11InnerCameraFP9InnerRoomfiiRC7LHCoordb
.long _UpdateState__11InnerCameraFP9InnerRoomfiiRC7LHCoordb
.long _FocusOnSubMesh__11InnerCameraFP8LH3DMeshifff
.long _TriggerIntro__11InnerCameraFbP8Zoomer3dP8Zoomer3d
.long ??_GInnerCamera@@UAEPAXI@Z
.long 0x3c4ccccd                                                                                                   // [0xf5ea0] 0x008a9000 + 0xf5ea0 = 0x0099eea0
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf5ea4] 0x008a9000 + 0xf5ea4 = 0x0099eea4
.long 0x3e570a3d                                                                                                   // [0xf5eac] 0x008a9000 + 0xf5eac = 0x0099eeac
.long 0x00000000, 0x406cc000, 0x00000000, 0x40380000                                                               // [0xf5eb0] 0x008a9000 + 0xf5eb0 = 0x0099eeb0

VftableAndRTTI TempleRoom                                                                                          // [0xf5ec0] 0x008a9000 + 0xf5ec0 = 0x0099eec0

.long __purecall
.long ?DrawAdditional@GameOptionsRoom@@UAEX_N@Z
.long ?PreDraw@GameOptionsRoom@@UAEXXZ
.long 0x00799fe0
.long ?DrawHand@GameOptionsRoom@@UAEXXZ
.long 0x00799e60, 0x0079a3a0                                                               // [0xf5ed0] 0x008a9000 + 0xf5ed0 = 0x0099eed0
.long 0x0079a5a0, 0x0079a290, 0x00798990, 0x007989e0                                                               // [0xf5ee0] 0x008a9000 + 0xf5ee0 = 0x0099eee0
.long 0x00798af0, 0x0078d9a0, 0x00799f40, 0x00799f50                                                               // [0xf5ef0] 0x008a9000 + 0xf5ef0 = 0x0099eef0
.long 0x0079a800, 0x00000000, 0x00000000, 0x3ffc0000                                                               // [0xf5f00] 0x008a9000 + 0xf5f00 = 0x0099ef00
.long 0x3f333333                                                                                                   // [0xf5f10] 0x008a9000 + 0xf5f10 = 0x0099ef10
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf5f14] 0x008a9000 + 0xf5f14 = 0x0099ef14
.float 1000.0                                                                                                      // [0xf5f1c] 0x008a9000 + 0xf5f1c = 0x0099ef1c
.long 0x43660000                                                                                                   // [0xf5f20] 0x008a9000 + 0xf5f20 = 0x0099ef20
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf5f24] 0x008a9000 + 0xf5f24 = 0x0099ef24

VftableAndRTTI UniverseRoom                                                                                        // [0xf5f2c] 0x008a9000 + 0xf5f2c = 0x0099ef2c
.long 0x0079d0a0, 0x0079ced0
.long ?PreDraw@GameOptionsRoom@@UAEXXZ
.long 0x0079cfa0                                                               // [0xf5f30] 0x008a9000 + 0xf5f30 = 0x0099ef30
.long ?DrawHand@GameOptionsRoom@@UAEXXZ
.long 0x0079d000, 0x0079cfb0, 0x0079cfd0                                                               // [0xf5f40] 0x008a9000 + 0xf5f40 = 0x0099ef40
.long 0x0079a290, 0x0079ce90, 0x007989e0, 0x0078f2d0                                                               // [0xf5f50] 0x008a9000 + 0xf5f50 = 0x0099ef50
.long 0x0078d9a0, 0x00799f40, 0x00799f50, 0x0079a800                                                               // [0xf5f60] 0x008a9000 + 0xf5f60 = 0x0099ef60
.long 0x0079ceb0, 0x41200000                                                                                       // [0xf5f70] 0x008a9000 + 0xf5f70 = 0x0099ef70
.float 365.25, 86400.0                                             // days in year and seconds in day              // [0xf5f78] 0x008a9000 + 0xf5f78 = 0x0099ef78

VftableAndRTTI WorldRoom                                                                                           // [0xf5f80] 0x008a9000 + 0xf5f80 = 0x0099ef80
.long 0x0079d260, 0x0079e140, 0x0079f430                                                                           // [0xf5f84] 0x008a9000 + 0xf5f84 = 0x0099ef84
.long 0x0079e280
.long ?DrawHand@GameOptionsRoom@@UAEXXZ
.long 0x0079e250, 0x0079e900                                                               // [0xf5f90] 0x008a9000 + 0xf5f90 = 0x0099ef90
.long 0x0079e920, 0x0079a290, 0x0079d280, 0x007989e0                                                               // [0xf5fa0] 0x008a9000 + 0xf5fa0 = 0x0099efa0
.long 0x0079d6c0, 0x0078d9a0, 0x0079f440, 0x00799f50                                                               // [0xf5fb0] 0x008a9000 + 0xf5fb0 = 0x0099efb0
.long 0x0079a800, 0x0079d7a0                                                                                       // [0xf5fc0] 0x008a9000 + 0xf5fc0 = 0x0099efc0

VftableAndRTTI WorldRoomCamera                                                                                     // [0xf5fc8] 0x008a9000 + 0xf5fc8 = 0x0099efc8
.long _ReloadCamera__11InnerCameraFPc
.long _PreDraw__11InnerCameraFv
.long 0x0079f960                                                                                                   // [0xf5fd4] 0x008a9000 + 0xf5fd4 = 0x0099efd4
.long _Reinit__11InnerCameraFv
.long 0x0079fa30                                                                                                   // [0xf5fdc] 0x008a9000 + 0xf5fdc = 0x0099efdc
.long _CalcDoorHit__11InnerCameraFP9InnerRoom7LHCoordfb
.long 0x0079fb90, 0x0079fcf0, 0x0079fbc0                                                                           // [0xf5fe4] 0x008a9000 + 0xf5fe4 = 0x0099efe4
.long _FocusOnSubMesh__11InnerCameraFP8LH3DMeshifff
.long 0x0079fa40, 0x0079d6a0, 0x3c4ccccd                                                                           // [0xf5ff4] 0x008a9000 + 0xf5ff4 = 0x0099eff4
.long 0x9999999a, 0x40019999, 0x3be56042, 0xbe99999a                                                               // [0xf6000] 0x008a9000 + 0xf6000 = 0x0099f000
.long 0x3f96cbe4, 0x007add70, 0x007ad4b0, 0x00000000                                                               // [0xf6010] 0x008a9000 + 0xf6010 = 0x0099f010
.long 0x5959df60, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf6020] 0x008a9000 + 0xf6020 = 0x0099f020
.long 0x5959df61, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf6030] 0x008a9000 + 0xf6030 = 0x0099f030
.long 0x5959df62, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf6040] 0x008a9000 + 0xf6040 = 0x0099f040
.long 0x5959df63, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf6050] 0x008a9000 + 0xf6050 = 0x0099f050
.long 0x5959df64, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf6060] 0x008a9000 + 0xf6060 = 0x0099f060
.long 0x900c39e0, 0x11d2cc5c, 0x10005d8c, 0xd18a175a                                                               // [0xf6070] 0x008a9000 + 0xf6070 = 0x0099f070
.long 0x5959df65, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf6080] 0x008a9000 + 0xf6080 = 0x0099f080
.long 0x5959df66, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf6090] 0x008a9000 + 0xf6090 = 0x0099f090
.long 0x5959df67, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf60a0] 0x008a9000 + 0xf60a0 = 0x0099f0a0
.long 0x5959df68, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf60b0] 0x008a9000 + 0xf60b0 = 0x0099f0b0
.long 0x5959df69, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf60c0] 0x008a9000 + 0xf60c0 = 0x0099f0c0
.long 0x5959df6a, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf60d0] 0x008a9000 + 0xf60d0 = 0x0099f0d0
.long 0x5959df6b, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf60e0] 0x008a9000 + 0xf60e0 = 0x0099f0e0
.long 0x5959df6c, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf60f0] 0x008a9000 + 0xf60f0 = 0x0099f0f0
.long 0x5959df6d, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf6100] 0x008a9000 + 0xf6100 = 0x0099f100
.long 0x5959df6e, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf6110] 0x008a9000 + 0xf6110 = 0x0099f110
.long 0x5959df6f, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf6120] 0x008a9000 + 0xf6120 = 0x0099f120
.long 0x99bb5400, 0x11d12b94, 0x200049b0, 0x9a2630af                                                               // [0xf6130] 0x008a9000 + 0xf6130 = 0x0099f130
.long 0x5959df71, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf6140] 0x008a9000 + 0xf6140 = 0x0099f140
.long 0x5959df72, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf6150] 0x008a9000 + 0xf6150 = 0x0099f150
.long 0x5959df73, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf6160] 0x008a9000 + 0xf6160 = 0x0099f160
.long 0x5959df74, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf6170] 0x008a9000 + 0xf6170 = 0x0099f170
.long 0x5959df75, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf6180] 0x008a9000 + 0xf6180 = 0x0099f180
.long 0x5959df76, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf6190] 0x008a9000 + 0xf6190 = 0x0099f190
.long 0x5959df77, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf61a0] 0x008a9000 + 0xf61a0 = 0x0099f1a0
.long 0x5959df78, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf61b0] 0x008a9000 + 0xf61b0 = 0x0099f1b0
.long 0x5959df83, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf61c0] 0x008a9000 + 0xf61c0 = 0x0099f1c0
.long 0x5959df79, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf61d0] 0x008a9000 + 0xf61d0 = 0x0099f1d0
.long 0x5959df7a, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf61e0] 0x008a9000 + 0xf61e0 = 0x0099f1e0
.long 0x5959df7b, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf61f0] 0x008a9000 + 0xf61f0 = 0x0099f1f0
.long 0x5959df7c, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf6200] 0x008a9000 + 0xf6200 = 0x0099f200
.long 0x5959df7d, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf6210] 0x008a9000 + 0xf6210 = 0x0099f210
.long 0x5959df7f, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf6220] 0x008a9000 + 0xf6220 = 0x0099f220
.long 0x5959df82, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf6230] 0x008a9000 + 0xf6230 = 0x0099f230
.long 0x5959df7e, 0x11d12911, 0x200049b0, 0x9a2630af                                                               // [0xf6240] 0x008a9000 + 0xf6240 = 0x0099f240
