#include "Windmill.h"

__attribute__((aligned(8)))
struct RTTITypeDescriptor __RTTITypeDescriptor__8Windmill = {
    .pVFTable = &__vt__9type_info,
    .spare = 0,
    .name = ".?AVWindmill@@",
};

__attribute__((aligned(4)))
char windmill_column[] asm("??_C@_09ABCDEFGH@Windmill?$AA@") = "Windmill:\0";
__attribute__((aligned(4)))
char windmill_underscore_join[] = "%s_%s\0";

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8Windmill = {
    .pTypeDescriptor = &__RTTITypeDescriptor__8Windmill,
    .numContainedBases = 0x00000007,
    .where = {
        .mdisp = 0x00000000,
        .pdisp = 0xFFFFFFFF,
        .vdisp = 0x00000000,
    },
    .attributes = 0x0000000,
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIBaseClassArray __RTTIBaseClassArray__8Windmill = {
    .arrayOfBaseClassDescriptors = {
        (void*)0x009a6508,
        &__RTTIBaseClassDescriptor__5Abode,
        &__RTTIBaseClassDescriptor__13MultiMapFixed,
        &__RTTIBaseClassDescriptor__11FixedObject,
        &__RTTIBaseClassDescriptor__6Object,
        &__RTTIBaseClassDescriptor__16GameThingWithPos,
        &__RTTIBaseClassDescriptor__9GameThing,
        &__RTTIBaseClassDescriptor__4Base,
        NULL,
    }
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8Windmill = {
  .signature = 0x00000000,
  .attributes = 0x00000000,
  .numBaseClasses = 0x00000008,
  .pBaseClassArray = &__RTTIBaseClassArray__8Windmill,
};

__attribute__((section(".rdata$r"), aligned(8)))
const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8Windmill = {
  .signature = 0x00000000,
  .offset = 0x00000000,
  .cdOffset = 0x00000000,
  .pTypeDescriptor = &__RTTITypeDescriptor__8Windmill,
  .pClassDescriptor = &__RTTIClassHierarchyDescriptor__8Windmill,
};

__attribute__((XOR32rr_REV))
struct Windmill* __cdecl Create__8WindmillFRC9MapCoordsPC10GAbodeInfoP4Townfffi(const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float y_angle, float scale, float food, int wood)
{
    asm("push               esi");                                           // 0x00405890    56
    asm("push               0x000005c4");                                    // 0x00405891    68c4050000
    asm("push               0x009c7fbc");                                    // 0x00405896    68bc7f9c00
    asm("push               0x000000c4");                                    // 0x0040589b    68c4000000
    asm("call               ?__nw@Base@@SAPAXK@Z");                               // 0x004058a0    e84b0e0300
    asm("mov.s              esi, eax");                                      // 0x004058a5    8bf0
    asm("add                esp, 0x0c");                                     // 0x004058a7    83c40c
    asm("test               esi, esi");                                      // 0x004058aa    85f6
    asm("{disp8} je         _jmp_addr_0x004058ed");                          // 0x004058ac    743f
    asm("{disp8} mov        eax, dword ptr [esp + 0x20]");                   // 0x004058ae    8b442420
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");                   // 0x004058b2    8b4c241c
    asm("{disp8} mov        edx, dword ptr [esp + 0x18]");                   // 0x004058b6    8b542418
    asm("push               edi");                                           // 0x004058ba    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x0c]");                   // 0x004058bb    8b7c240c
    asm("push               eax");                                           // 0x004058bf    50
    asm("{disp8} mov        eax, dword ptr [esp + 0x1c]");                   // 0x004058c0    8b44241c
    asm("push               ecx");                                           // 0x004058c4    51
    asm("{disp8} mov        ecx, dword ptr [esp + 0x1c]");                   // 0x004058c5    8b4c241c
    asm("push               edx");                                           // 0x004058c9    52
    asm("{disp8} mov        edx, dword ptr [esp + 0x1c]");                   // 0x004058ca    8b54241c
    asm("push               eax");                                           // 0x004058ce    50
    asm("push               ecx");                                           // 0x004058cf    51
    asm("push               edx");                                           // 0x004058d0    52
    asm("push               edi");                                           // 0x004058d1    57
    asm("mov.s              ecx, esi");                                      // 0x004058d2    8bce
    asm("call               ??0Abode@@QAE@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z");                          // 0x004058d4    e877baffff
    asm("push               edi");                                           // 0x004058d9    57
    asm("mov.s              ecx, esi");                                      // 0x004058da    8bce
    asm("mov                dword ptr [esi], 0x008aa8e4");                   // 0x004058dc    c706e4a88a00
    asm("call               dword ptr [rdata_bytes + 0x1f3c]");              // 0x004058e2    ff153caf8a00
    asm("pop                edi");                                           // 0x004058e8    5f
    asm("mov.s              eax, esi");                                      // 0x004058e9    8bc6
    asm("pop                esi");                                           // 0x004058eb    5e
    asm("ret");                                                              // 0x004058ec    c3
    asm("_jmp_addr_0x004058ed:");
    asm("xor.s              eax, eax");                                      // 0x004058ed    33c0
    asm("pop                esi");                                           // 0x004058ef    5e
    asm("ret");                                                              // 0x004058f0    c3
    __builtin_unreachable();
}

uint32_t __fastcall GetSaveType__8WindmillFv(struct GameThing* this)
{
    return 0xf8;
}

char* __fastcall GetDebugText__8WindmillFv(struct GameThing* this)
{
    return (char*)0x009c8048;  // ??_C@_09ABCDEFGH@Windmill?$AA@
}

void __fastcall __dt__8WindmillFv(struct Base* this, const void* edx, uint32_t param_1)
{
    asm("push               esi");                                           // 0x00405920    56
    asm("mov.s              esi, ecx");                                      // 0x00405921    8bf1
    asm("call               ??1Abode@@UAE@XZ");                              // 0x00405923    e838d2ffff
    asm("test               byte ptr [esp + 0x08], 0x01");                   // 0x00405928    f644240801
    asm("{disp8} je         _jmp_addr_0x0040593d");                          // 0x0040592d    740e
    asm("push               0x000000c4");                                    // 0x0040592f    68c4000000
    asm("push               esi");                                           // 0x00405934    56
    asm("call               ??3Base@@SAXPAXK@Z");                          // 0x00405935    e836100300
    asm("add                esp, 0x08");                                     // 0x0040593a    83c408
    asm("_jmp_addr_0x0040593d:");
    asm("mov.s              eax, esi");                                      // 0x0040593d    8bc6
    asm("pop                esi");                                           // 0x0040593f    5e
    asm("ret                0x0004");                                        // 0x00405940    c20400
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
void __fastcall CallVirtualFunctionsForCreation__8WindmillFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1)
{
    asm("{disp8} mov        eax, dword ptr [esp + 0x04]");                   // 0x00405950    8b442404
    asm("push               esi");                                           // 0x00405954    56
    asm("mov.s              esi, ecx");                                      // 0x00405955    8bf1
    asm("push               eax");                                           // 0x00405957    50
    asm("call               ?CallVirtualFunctionsForCreation@Abode@@UAEXABUMapCoords@@@Z");  // 0x00405958    e8a3d8ffff
    asm("test               byte ptr [esi + 0x0a], 0x01");                   // 0x0040595d    f6460a01
    asm("{disp8} jne        _jmp_addr_0x0040597c");                          // 0x00405961    7519
    asm("push               0x0");                                           // 0x00405963    6a00
    asm("push               0x1");                                           // 0x00405965    6a01
    asm("push               0x1");                                           // 0x00405967    6a01
    asm("push               0x0");                                           // 0x00405969    6a00
    asm("push               -0x1");                                          // 0x0040596b    6aff
    asm("push               0x2");                                           // 0x0040596d    6a02
    asm("push               0x0");                                           // 0x0040596f    6a00
    asm("push               0xd");                                           // 0x00405971    6a0d
    asm("push               esi");                                           // 0x00405973    56
    asm("call               ?Create@SoundTag@@SAPAV1@PAVGameThingWithPos@@K_NKKHHW4AUDIO_SFX_BANK_TYPE@@H@Z");                          // 0x00405974    e8c78e3100
    asm("add                esp, 0x24");                                     // 0x00405979    83c424
    asm("_jmp_addr_0x0040597c:");
    asm("pop                esi");                                           // 0x0040597c    5e
    asm("ret                0x0004");                                        // 0x0040597d    c20400
    __builtin_unreachable();
}

const struct RTTICompleteObjectLocator* const p__RTTICompleteObjectLocator__8Windmill = &__RTTICompleteObjectLocator__8Windmill;

const struct AbodeVftable __vt__8Windmill = {
  Serialise__4BaseFR7Archive,
  __dt__8WindmillFv,
  Delete__5AbodeFv,
  ToBeDeleted__5AbodeFi,
  Get3DSoundPos__16GameThingWithPosFP7LHPoint,
  CleanUpForSerialisation__4BaseFv,
  Dump__4BaseFv,
  GetPlayer__5AbodeFv,
  SetPlayer__9GameThingFP7GPlayer,
  CalculateInfluence__9GameThingFRC9MapCoords,
  RemoveDance__9GameThingFv,
  IsAvailable__9GameThingFv,
  IsCreature__9GameThingFP8Creature,
  IsCreature__9GameThingFv,
  IsCreatureNotTooNear__9GameThingFP8Creature,
  GetDrawImportance__6ObjectFv,
  GetMaxAlignmentChangePerGameTurn__9GameThingFv,
  GetComputerSeen__9GameThingFv,
  GetTown__5AbodeFv,
  GetVillagerActivityDesire__9GameThingFP8Villager,
  SetVillagerActivity__9GameThingFP8Villager,
  UpdateVillagerActivityEffect__9GameThingFP8Villager,
  MaintainSpell__9GameThingFP5Spellf,
  UpdateSpellInfo__9GameThingFP5SpellP15PSysProcessInfo,
  GetRadius__6ObjectFv,
  Get2DRadius__6ObjectFv,
  GetPlayerWhoLastPickedMeUp__9GameThingFv,
  GetPlayerWhoLastDroppedMe__9GameThingFv,
  IsFootpathLink__13MultiMapFixedFv,
  GetFootpathLink__13MultiMapFixedFv,
  AddFootpathLink__9GameThingFP9GFootpath,
  GetNearestPathTo__13MultiMapFixedFRC9MapCoordsfi,
  UseFootpathIfNecessary__13MultiMapFixedFP6LivingRC9MapCoordsUc,
  AddFootpath__13MultiMapFixedFP9GFootpath,
  RemoveFootpath__13MultiMapFixedFP9GFootpath,
  JustAddResource__5AbodeF13RESOURCE_TYPEUlb,
  JustRemoveResource__5AbodeF13RESOURCE_TYPEUlPb,
  JustGetResource__9GameThingF13RESOURCE_TYPEUlPb,
  GetResource__5AbodeF13RESOURCE_TYPE,
  AddResource__5AbodeF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi,
  RemoveResource__5AbodeF13RESOURCE_TYPEUlP16GInterfaceStatusPb,
  CastCreature__9GameThingFv,
  CastPlayer__9GameThingFv,
  CastOneOffSpellSeed__9GameThingFv,
  CastAbode__5AbodeFv,
  CastMultiMapFixed__13MultiMapFixedFv,
  CastSpellIcon__9GameThingFv,
  CastTree__9GameThingFv,
  IsDeletedOnNewMap__9GameThingFv,
  GetNumberOfInstanceForGlobalList__5AbodeFv,
  GetTownArtifactValue__11FixedObjectFv,
  CanBecomeArtifact__6ObjectFv,
  DrawInHand__6ObjectFP16GInterfaceStatus,
  IsFunctional__5AbodeFv,
  GetDebugText__8WindmillFv,
  GetSampleForAttack__9GameThingFv,
  GetGuidanceResourceType__9GameThingFv,
  GetShowNeedsPos__9GameThingFUlP9MapCoords,
  Load__5AbodeFR10GameOSFile,
  Save__5AbodeFR10GameOSFile,
  GetSaveType__8WindmillFv,
  SaveExtraData__9GameThingFR10GameOSFile,
  ResolveLoad__6ObjectFv,
  SetPos__16GameThingWithPosFRC9MapCoords,
  GetPos__16GameThingWithPosFv,
  GetArrivePos__5AbodeFv,
  PhysicsEditorCreate__16GameThingWithPosFi,
  GetCreatureBeliefType__5AbodeFv,
  GetCreatureBeliefListType__16GameThingWithPosFv,
  GetCitadel__16GameThingWithPosFv,
  GetOrigin__5AbodeFv,
  GetLife__6ObjectFv,
  GetScale__6ObjectFv,
  SetScale__6ObjectFf,
  GetPower__16GameThingWithPosCFv,
  GetPSysPower__16GameThingWithPosCFv,
  GetSpeedInMetres__16GameThingWithPosCFv,
  SetSpeedInMetres__16GameThingWithPosFfi,
  GetRunningSpeedInMetres__16GameThingWithPosFv,
  GetDistanceFromObject__6ObjectFRC9MapCoords,
  GetDefaultSpeedInMetres__16GameThingWithPosFv,
  SetHeight__16GameThingWithPosFf,
  SetMaxHeight__16GameThingWithPosFf,
  GetMaxHeight__16GameThingWithPosFv,
  GetPSysBeamTargetPos__16GameThingWithPosFP7LHPoint,
  GetSpeedInMetresPerSecond__16GameThingWithPosCFv,
  SetSpeedInMetresPerSecond__16GameThingWithPosFfi,
  GetRunningSpeedInMetresPerSecond__16GameThingWithPosFv,
  GetDefaultSpeedInMetresPerSecond__16GameThingWithPosFv,
  IsAnimate__16GameThingWithPosFv,
  GetMovementDirection__16GameThingWithPosFP7LHPoint,
  GetPhysicsMovementDirection__6ObjectFP7LHPoint,
  GetInteractPos__16GameThingWithPosFv,
  IsMoving__6ObjectCFv,
  IsObjectInMap__13MultiMapFixedFv,
  IsDrowning__6ObjectFv,
  IsCannotBePickedUp__16GameThingWithPosCFv,
  GetOverwritePickUpToolTip__16GameThingWithPosFv,
  IsStompable__16GameThingWithPosFv,
  IsAvailableForStateChange__16GameThingWithPosFv,
  IsInteractable__5AbodeFv,
  GetOverwriteInteractableToolTip__16GameThingWithPosFv,
  GetOverwriteDropToolTip__16GameThingWithPosFv,
  GetOverwriteTapToolTip__16GameThingWithPosFv,
  IsCastShadowAtNight__5AbodeFv,
  CleanupWhenDeleted__6ObjectFi,
  GetImpressiveType__16GameThingWithPosFv,
  GetImpressiveIntensity__16GameThingWithPosF15IMPRESSIVE_TYPE,
  GetImpressiveValue__6ObjectFP6LivingP8Reaction,
  GetUpdateOfBoredomValue__6ObjectFP8ReactionP16GameThingWithPos,
  IsTown__16GameThingWithPosFv,
  IsTown__16GameThingWithPosFP8Creature,
  IsActivityObjectWhichAngerAppliesTo__16GameThingWithPosFP8Creature,
  IsActivityObjectWhichCompassionAppliesTo__16GameThingWithPosFP8Creature,
  IsActivityObjectWhichPlayfulnessAppliesTo__16GameThingWithPosFP8Creature,
  IsTownBelongingToAnotherPlayer__16GameThingWithPosFP8Creature,
  TrueFunction__16GameThingWithPosFv,
  FalseFunction__16GameThingWithPosFv,
  IsNotLiving__16GameThingWithPosFv,
  IsSuitableForCreatureActivity__16GameThingWithPosFv,
  IsTownCentre__16GameThingWithPosFv,
  IsTotemStatue__16GameThingWithPosFv,
  IsTownDesireFlag__16GameThingWithPosFv,
  IsRock__16GameThingWithPosFP8Creature,
  IsRock__16GameThingWithPosFv,
  IsSpellDispenser__16GameThingWithPosFv,
  IsMist__16GameThingWithPosFv,
  IsQueryIcon__16GameThingWithPosFv,
  IsStreetLight__16GameThingWithPosFv,
  IsStreetLantern__16GameThingWithPosFv,
  IsAbode__5AbodeFv,
  IsField__16GameThingWithPosFP8Creature,
  IsField__16GameThingWithPosFv,
  IsBuildingMaterial__6ObjectFv,
  IsMagicFireBall__16GameThingWithPosFv,
  IsSuitableForCreatureAction__6ObjectFv,
  IsCitadelHeart__16GameThingWithPosFv,
  IsDamaged__16GameThingWithPosFv,
  CanBeHealedByCreature__16GameThingWithPosFP8Creature,
  CanBeEatenByCreature__6ObjectFP8Creature,
  CanCreatureEatMe__16GameThingWithPosFP8Creature,
  CanBeAttackedByCreature__6ObjectFP8Creature,
  CanBeFrighteningToCreature__11FixedObjectFP8Creature,
  CanBeHelpedByCreature__6ObjectFP8Creature,
  CanBePlayedWithByCreature__6ObjectFP8Creature,
  CanBeImpressedByCreature__6ObjectFP8Creature,
  CanBeInspectedByCreature__6ObjectFP8Creature,
  CanBePoodUponByCreature__6ObjectFP8Creature,
  CanBeBefriendedByCreature__16GameThingWithPosFP8Creature,
  CanBeSleptNextToByCreature__11FixedObjectFP8Creature,
  CanBePickedUpByCreature__11FixedObjectFP8Creature,
  CanBeStrokedByCreature__6ObjectFP8Creature,
  CanBeKissedByCreature__16GameThingWithPosFP8Creature,
  CanBeSetOnFire__11FixedObjectFP8Creature,
  CanBeStompedOnByCreature__5AbodeFP8Creature,
  CanBeThrownByCreature__6ObjectFP8Creature,
  CanBeGivenToVillager__16GameThingWithPosFP8Creature,
  CanBePutInAStoragePit__6ObjectFP8Creature,
  CanBeDestroyedByStoning__11FixedObjectFP8Creature,
  CanBeStonedAndEatenByCreature__16GameThingWithPosFP8Creature,
  CanBeExaminedByCreature__6ObjectFP8Creature,
  CanBeFoughtByCreature__16GameThingWithPosFP8Creature,
  CanReceiveGifts__16GameThingWithPosFP8Creature,
  CanActAsAContainer__16GameThingWithPosFP8Creature,
  IsBeingBuilt__13MultiMapFixedFP8Creature,
  NeedsRepair__13MultiMapFixedFP8Creature,
  IsOnFire__6ObjectFP8Creature,
  IsNotOnFire__16GameThingWithPosFP8Creature,
  CanBeUsedForBuilding__16GameThingWithPosFP8Creature,
  IsMushroom__16GameThingWithPosFP8Creature,
  CanBeUsedForRepair__16GameThingWithPosFP8Creature,
  CanBeGivenToTown__16GameThingWithPosFP8Creature,
  CanBeUsedToHoldWater__16GameThingWithPosFP8Creature,
  CanBePutInFoodPile__6ObjectFP8Creature,
  CanBePutInWoodPile__6ObjectFP8Creature,
  CanHaveMagicFoodCastOnMe__16GameThingWithPosFP8Creature,
  CanHaveMagicWoodCastOnMe__16GameThingWithPosFP8Creature,
  CanBeBroughtBackToCitadel__6ObjectFP8Creature,
  IsVillager__16GameThingWithPosFP8Creature,
  IsVillagerFarFromHome__16GameThingWithPosFP8Creature,
  IsVillagerInTownWithoutManyBreeders__16GameThingWithPosFP8Creature,
  IsVillagerNotWorshipping__16GameThingWithPosFP8Creature,
  IsVillagerBelongingToOtherPlayer__16GameThingWithPosFP8Creature,
  IsCow__16GameThingWithPosFP8Creature,
  CanBePoodOn__6ObjectFP8Creature,
  IsVillagerWhoHasNotBeenImpressedRecently__16GameThingWithPosFP8Creature,
  IsVillagerWhoHasNotBeenDancedWithRecently__16GameThingWithPosFP8Creature,
  DoesVillagerBelongToATownWhichIsAlreadyImpressed__16GameThingWithPosFP8Creature,
  DoesTotemBelongToATownWhichIsVeryImpressedIndeed__16GameThingWithPosFP8Creature,
  IsDominantCreature__16GameThingWithPosFP8Creature,
  CanBeDancedWith__16GameThingWithPosFP8Creature,
  IsAggressive__16GameThingWithPosFP8Creature,
  IsStoragePit__16GameThingWithPosFP8Creature,
  IsWorshipSite__16GameThingWithPosFP8Creature,
  IsWorshipSite__16GameThingWithPosFv,
  GetWorshipSite__16GameThingWithPosFv,
  IsWorkshop__16GameThingWithPosFP8Creature,
  IsWorkshop__16GameThingWithPosFv,
  IsBuildingWhichIsBeingBuilt__13MultiMapFixedFP8Creature,
  IsStoragePitWithFoodInIt__16GameThingWithPosFP8Creature,
  IsFieldWhichNeedsWatering__16GameThingWithPosFP8Creature,
  IsFieldWithFoodInIt__16GameThingWithPosFP8Creature,
  IsFieldBelongingToAnotherPlayer__16GameThingWithPosFP8Creature,
  IsStoragePitBelongingToAnotherPlayer__16GameThingWithPosFP8Creature,
  IsStoragePitBelongingToMyPlayer__16GameThingWithPosFP8Creature,
  BenefitsFromHavingWaterSprinkledOnIt__16GameThingWithPosFP8Creature,
  IsTree__16GameThingWithPosFv,
  IsTree__16GameThingWithPosFP8Creature,
  IsTreeNotTooNearPlannedForest__16GameThingWithPosFP8Creature,
  IsTreeBigEnoughForCreature__16GameThingWithPosFP8Creature,
  IsAFoodPileOutsideStoragePit__16GameThingWithPosFP8Creature,
  IsAWoodPileOutsideStoragePit__16GameThingWithPosFP8Creature,
  IsDoingSomethingInteresting__16GameThingWithPosFP8Creature,
  CanBeUsedForBuildingHomeByCreature__16GameThingWithPosFP8Creature,
  IsPickupableRock__16GameThingWithPosFP8Creature,
  IsCitadelPart__16GameThingWithPosFP8Creature,
  IsCitadelPart__16GameThingWithPosFv,
  IsPlayingFootball__16GameThingWithPosFP8Creature,
  IsPlayingFootballAndMySideHasJustScored__16GameThingWithPosFP8Creature,
  IsPlayingFootballAndOtherSideHasJustScored__16GameThingWithPosFP8Creature,
  CanBeBroughtHomeByCreature__16GameThingWithPosFP8Creature,
  IsAnimalBelongingToOtherPlayer__16GameThingWithPosFP8Creature,
  IsOneOffSpellBelongingToOtherPlayer__16GameThingWithPosFP8Creature,
  IsOneOffSpellAggressive__16GameThingWithPosFP8Creature,
  IsOneOffSpellCompassionate__16GameThingWithPosFP8Creature,
  IsOneOffSpellPlayful__16GameThingWithPosFP8Creature,
  IsOneOffSpellToRestoreHealth__16GameThingWithPosFP8Creature,
  CanBeKickedByCreature__5AbodeFP8Creature,
  CanBeStolenByCreature__16GameThingWithPosFP8Creature,
  IsStealableByCreature__16GameThingWithPosFP8Creature,
  IsStealableSpell__16GameThingWithPosFP8Creature,
  IsStealableScaffold__16GameThingWithPosFP8Creature,
  IsTownBelongingToOtherPlayer__16GameThingWithPosFP8Creature,
  IsTotemWithStealableSpell__16GameThingWithPosFP8Creature,
  IsCreatureAvailableForJointActivity__16GameThingWithPosFP8Creature,
  IsCreatureNotAvailableForJointActivity__16GameThingWithPosFP8Creature,
  IsToyAwayFromHome__16GameThingWithPosFP8Creature,
  IsToy__16GameThingWithPosFP8Creature,
  IsToyBall__16GameThingWithPosFP8Creature,
  IsToyDie__16GameThingWithPosFP8Creature,
  IsToyCuddly__16GameThingWithPosFP8Creature,
  IsLiving__16GameThingWithPosFv,
  IsLiving__16GameThingWithPosFP8Creature,
  IsFence__16GameThingWithPosFv,
  IsSpellIcon__16GameThingWithPosFv,
  NothingScareyNearMe__16GameThingWithPosFP8Creature,
  CanBeUsedForThrowingDamageByCreature__16GameThingWithPosFP8Creature,
  IsCreatureWhoSeemsFriendly__16GameThingWithPosFP8Creature,
  CanBeThrownInTheSeaPlayfully__16GameThingWithPosFP8Creature,
  GetCreatureMimicType__5AbodeFv,
  GetHowMuchCreatureWantsToLookAtMe__5AbodeFv,
  IsFlock__16GameThingWithPosCFv,
  IsDance__16GameThingWithPosCFv,
  IsReward__16GameThingWithPosCFv,
  IsScriptContainer__16GameThingWithPosCFv,
  IsWeather__16GameThingWithPosCFv,
  IsSpell__16GameThingWithPosCFv,
  IsDeletedWhenReleasedFromScript__16GameThingWithPosFv,
  IsMobileWallHug__16GameThingWithPosCFv,
  IsActive__16GameThingWithPosCFv,
  IsObjectTurningTooFastForCameraToFollowSmoothly__16GameThingWithPosFv,
  CalculateWhereIWillBeAfterNSeconds__5AbodeFfP7LHPoint,
  AttitudeToCreatureEating__16GameThingWithPosFv,
  GetText__6ObjectFv,
  CalculateDesireForFood__16GameThingWithPosFv,
  CalculateDesireForRest__16GameThingWithPosFv,
  CalculatePeopleHidingIndicator__16GameThingWithPosFv,
  GetHeight__6ObjectFv,
  IsReadyForNewScriptAction__16GameThingWithPosFv,
  ForDrawFXGetNumVertices__16GameThingWithPosFv,
  ForDrawFXGetVertexPos__16GameThingWithPosFlP7LHPoint,
  SetInScript__6ObjectFi,
  SetControlledByScript__16GameThingWithPosFi,
  GetDeathReason__16GameThingWithPosFv,
  IsInScript__16GameThingWithPosFv,
  IsMaleVillager__16GameThingWithPosFv,
  IsFemaleVillager__16GameThingWithPosFv,
  IsAnimal__16GameThingWithPosFv,
  IsAChild__16GameThingWithPosFv,
  IsHouse__5AbodeFv,
  IsObject__6ObjectCFv,
  IsFootball__16GameThingWithPosFv,
  IsCitadel__16GameThingWithPosFv,
  IsForest__16GameThingWithPosFv,
  IsMobileObject__16GameThingWithPosFv,
  IsMobileStatic__16GameThingWithPosFv,
  IsAnyKindOfTree__16GameThingWithPosFv,
  IsDeadTree__16GameThingWithPosFv,
  IsPileFood__16GameThingWithPosFv,
  IsFeature__16GameThingWithPosFv,
  IsScriptMarker__16GameThingWithPosFv,
  IsScriptHighlight__16GameThingWithPosFv,
  IsWonder__5AbodeFv,
  IsInfluenceRing__16GameThingWithPosFv,
  IsPuzzleGame__16GameThingWithPosFv,
  IsScaffold__16GameThingWithPosFv,
  IsSkeleton__16GameThingWithPosCFv,
  IsPoisoned__16GameThingWithPosFv,
  IsSpeedUp__16GameThingWithPosFv,
  IsParticleContainer__16GameThingWithPosFv,
  IsSacrificeAltar__16GameThingWithPosFv,
  IsPot__16GameThingWithPosFv,
  IsComputerPlayer__16GameThingWithPosFv,
  CanBeThrownByPlayer__16GameThingWithPosFv,
  SetSkeleton__16GameThingWithPosFi,
  IsSpellSeed__16GameThingWithPosFv,
  IsSpellShield__16GameThingWithPosFv,
  IsPileResource__16GameThingWithPosFv,
  IsScriptTimer__16GameThingWithPosFv,
  CreateBuildingSite__13MultiMapFixedFv,
  GetQueryFirstEnumText__6ObjectFv,
  GetQueryLastEnumText__6ObjectFv,
  GetFOVHelpMessageSet__6ObjectFv,
  GetFOVHelpCondition__6ObjectFv,
  GetScriptObjectType__5AbodeFv,
  GetFacingDirection__16GameThingWithPosFv,
  SetAffectedByWind__16GameThingWithPosFi,
  GetReactionPower__16GameThingWithPosFv,
  GetSpellCastPos__16GameThingWithPosFv,
  CleanUpBeforeReset__16GameThingWithPosFv,
  DestroyedByBeam__5AbodeFv,
  GetXAngle__6ObjectFv,
  GetYAngle__6ObjectFv,
  GetZAngle__6ObjectFv,
  SetFocus__6ObjectFRC7LHPoint,
  SetXYZAngles__6ObjectFfff,
  SetXYZAnglesAndScale__6ObjectFffff,
  SetJustScale__6ObjectFf,
  SetYJustAngle__6ObjectFf,
  SetYAngle__6ObjectFf,
  UpdateFrom3DPosition__6ObjectFv,
  MoveAlongPath__6ObjectFv,
  IsReachable__6ObjectFv,
  BlocksTownClearArea__6ObjectCFv,
  Create3DObject__11FixedObjectFv,
  GetMapChild__13MultiMapFixedFRC7MapCell,
  SetMapChild__13MultiMapFixedFP6ObjectP7MapCell,
  InsertMapObject__5AbodeFv,
  RemoveMapObject__13MultiMapFixedFv,
  InsertMapObjectToCell__11FixedObjectFP7MapCell,
  RemoveMapObjectFromCell__6ObjectFP7MapCell,
  IsObjectInMap__6ObjectFP7MapCell,
  IsObjectInMapCheck__6ObjectFv,
  MoveMapObject__13MultiMapFixedFRC9MapCoords,
  ActualMoveMapObject__6ObjectFRC9MapCoords,
  GetPtr__6ObjectFv,
  GetMeshRadius__6ObjectCFv,
  Get3DObjectForPSys__6ObjectFv,
  GetPSysFireFlameMatrix__6ObjectFP8LHMatrix,
  GetPSysFireLocalRndFlamePos__5AbodeFP7LHPointPl,
  GetPSysFireWorldFlamePos__6ObjectFRC7LHPointlP7LHPoint,
  GetPSysFireLocalFlameScale__6ObjectFv,
  GetPSysFireMaxFlames__6ObjectFv,
  GetSpotEffectPower__6ObjectFv,
  GetAggressorValueFromDamage__6ObjectFf,
  GetHoldType__6ObjectFv,
  GetHoldRadius__6ObjectFv,
  GetHoldLoweringMultiplier__6ObjectFv,
  GetHoldYRotate__6ObjectFv,
  HandShouldFeelWithMeshIntersect__6ObjectFv,
  SetSpecularColor__6ObjectFUl,
  GetSpecularColor__6ObjectFv,
  SetBeliefSprite__6ObjectFP12BeliefSprite,
  GetBeliefSprite__6ObjectFv,
  SetLife__6ObjectFf,
  IsAlive__6ObjectFv,
  ReduceLife__5AbodeFfP7GPlayer,
  IncreaseLife__5AbodeFf,
  GetSacrificeValue__6ObjectFv,
  ReduceLifeDueToBurning__6ObjectFfP7GPlayer,
  FillInEffectDefenceMultiplier__6ObjectFR13EffectNumbers,
  ApplyEffect__6ObjectFR12EffectValuesi,
  GetDamageEffect__6ObjectFR12EffectValues,
  GetHealEffect__6ObjectFR12EffectValues,
  GetActualObjectToEffect__6ObjectFP7GPlayerb,
  DrawValue__6ObjectFlf,
  ScaffoldMoved__6ObjectFP8Scaffold,
  GetHeatCapacity__6ObjectFv,
  GetFireGPHXDrawn__6ObjectFPbPbPbPb,
  GetRainCoolingMultiplier__6ObjectFv,
  GetDefaultFireCentrePos__6ObjectFP9MapCoords,
  GetDefaultFireRadius__6ObjectFv,
  DestroyedByEffect__5AbodeFP7GPlayerf,
  Process__5AbodeFv,
  ProcessBySpell__6ObjectFP5Spell,
  ApplySingleEffect__6ObjectF11EFFECT_TYPEfP9GameThingRC9MapCoords,
  GetMesh__5AbodeCFv,
  GetDetailMesh__6ObjectCF12DETAIL_LEVEL,
  Draw__8WindmillFv,
  DrawOutOfMap__6ObjectFb,
  IsG3DObjectDrawnInHand__6ObjectFv,
  GetDrawRegion__6ObjectFP8LHRegion,
  ProcessState__6ObjectFv,
  GetProjectileSpeed__6ObjectFv,
  CanBePickedUp__6ObjectFv,
  CanBeCrushed__11FixedObjectFv,
  GetTopPos__6ObjectFv,
  GetVillagerHugRadius__6ObjectFv,
  GetWeight__6ObjectFv,
  GetWorldMatrix__6ObjectFP8LHMatrix,
  CanBeSuckedIntoVortex__6ObjectFP15LandscapeVortex,
  GetDiscipleStateIfInteractedWith__5AbodeFP16GInterfaceStatusP8Villager,
  GetWorkingPos__6ObjectFP6Object,
  GetHeightForHandAboveInteractObject__6ObjectFv,
  GetHandHelpMessageSet__6ObjectFv,
  GetHandHelpCondition__6ObjectFv,
  CallVirtualFunctionsForCreation__8WindmillFRC9MapCoords,
  Get3DType__6ObjectFv,
  GetFoodValue__6ObjectF9FOOD_TYPE,
  GetWoodValue__6ObjectFv,
  GetFoodType__6ObjectFv,
  GetImpressiveValue__6ObjectFv,
  IsSpellSeedReturnPoint__6ObjectCFv,
  IsABeliever__6ObjectFv,
  AsMultiMapFixed__13MultiMapFixedFv,
  ApplyWaterSpell__6ObjectFP10SpellWater,
  IsResourceStore__13MultiMapFixedF13RESOURCE_TYPE,
  DeleteObjectAndTakeResource__13MultiMapFixedFP6ObjectP16GInterfaceStatus,
  GetRadiusMultiplierForApplyingPotToPos__6ObjectFv,
  DoCreatureMimicAfterAddingResource__13MultiMapFixedF13RESOURCE_TYPER16GInterfaceStatus,
  GetResourceType__6ObjectFv,
  GetDefaultResource__6ObjectFv,
  SetPoisonedResource__6ObjectF13RESOURCE_TYPEi,
  SetPoisoned__6ObjectFi,
  IsLockedInInteract__6ObjectFv,
  SetDying__6ObjectFv,
  IsAttackable__6ObjectFP6Object,
  IsAllied__6ObjectFP6Object,
  IsTouching__6ObjectFRC9MapCoordsRC9MapCoords,
  IsTouching__6ObjectFRC9MapCoords,
  IsTouching__6ObjectFP6Objectf,
  StartOnFire__13MultiMapPFixedFv,
  EndOnFire__6ObjectFv,
  GetDistanceFromObject__6ObjectFP6Object,
  GetTribalPower__6ObjectF10TRIBE_TYPE,
  ValidForLockedSelectProcess__11FixedObjectFP16GInterfaceStatus,
  NetworkFriendlyStartLockedSelect__11FixedObjectFP16GInterfaceStatus,
  NetworkUnfriendlyStartLockedSelect__6ObjectFv,
  IsReadyForNetworkUnfriendlyLockedSelect__6ObjectFv,
  NetworkUnfriendlyLockedSelect__6ObjectFP21ControlHandUpdateInfo,
  GetReadyForNetworkUnfriendlyEndLockedSelect__6ObjectFv,
  IsReadyForNetworkUnfriendlyEndLockedSelect__6ObjectFv,
  NetworkUnfriendlyEndLockedSelect__6ObjectFv,
  NetworkFriendlyEndLockedSelect__6ObjectFP16GInterfaceStatus,
  ValidAsInterfaceTarget__6ObjectFv,
  ValidAsInterfaceLeashTarget__6ObjectFv,
  SelectOnlyAfterRecSystem__6ObjectFv,
  ValidForPlaceInHand__6ObjectFP16GInterfaceStatus,
  InterfaceSetInMagicHand__11FixedObjectFP16GInterfaceStatus,
  InterfaceSetOutMagicHand__6ObjectFP16GInterfaceStatus,
  ValidToRemoveFromHand__6ObjectFP16GInterfaceStatusRC9MapCoords,
  RemoveFromHand__6ObjectFP16GInterfaceStatusRC9MapCoords,
  ValidToShakeFromHand__6ObjectFv,
  InterfaceMustBeInInfluenceForInteraction__6ObjectFv,
  IsTuggable__6ObjectFv,
  ValidToApplyThisToObject__6ObjectFP16GInterfaceStatusP6Object,
  ApplyThisToObject__6ObjectFP16GInterfaceStatusP6ObjectP23GestureSystemPacketData,
  ValidToApplyThisToMapCoord__6ObjectFP16GInterfaceStatusRC9MapCoords,
  ApplyThisToMapCoord__6ObjectFP16GInterfaceStatusRC9MapCoordsP23GestureSystemPacketData,
  ValidForLockedApplyProcess__6ObjectFP16GInterfaceStatus,
  ApplyUnlockProcess__6ObjectFP16GInterfaceStatus,
  IsInterfacePowerUpWhenInHand__6ObjectCFv,
  ApplyOnlyAfterRecSystem__6ObjectFv,
  ApplyOnlyAfterReleased__6ObjectFv,
  InterfaceValidToTap__5AbodeFP16GInterfaceStatus,
  InterfaceTap__5AbodeFP16GInterfaceStatus,
  InterfaceValidToGiveObject__6ObjectFP16GInterfaceStatusP6Object,
  InterfaceGiveObject__6ObjectFP16GInterfaceStatusP6Object,
  InterfaceValidToInteractAsMapCoordsObject__6ObjectFP16GInterfaceStatus,
  InterfaceInteractAsMapCoordsObject__6ObjectFP16GInterfaceStatus,
  ThrowObjectFromHand__6ObjectFP16GInterfaceStatusi,
  ValidToSelectFightThisToMapCoord__6ObjectFP16GInterfaceStatusRC9MapCoords,
  ValidToApplyFightThisToMapCoord__6ObjectFP16GInterfaceStatusRC9MapCoords,
  SelectFightThisToMapCoord__6ObjectFP16GInterfaceStatusRC9MapCoords,
  ApplyFightThisToMapCoord__6ObjectFP16GInterfaceStatusRC9MapCoords,
  ValidToFightThisToObject__6ObjectFP16GInterfaceStatusRC9MapCoords,
  FightThisToObject__6ObjectFP16GInterfaceStatusP6Object,
  IsEffectReceiver__6ObjectFP12EffectValues,
  CanBeDestroyedBySpell__6ObjectFP5Spell,
  GetImportance__6ObjectFv,
  InitialisePhysicsFromHand__6ObjectFR7LHPointR7LHPointP16GInterfaceStatusP6Objecti,
  InitialisePhysics__6ObjectFRC7LHPointRC7LHPointP6ObjectbP16GInterfaceStatus,
  GetPhysicsConstantsType__5AbodeFv,
  SetUpPhysOb__5AbodeFP6PhysOb,
  EndPhysics__11FixedObjectFP13PhysicsObjectb,
  DropSfx__6ObjectFv,
  GetBoundingSphere__6ObjectFR7LHPointRf,
  InteractsWithPhysicsObjects__13MultiMapFixedFv,
  ChecksVerticesVObjects__5AbodeFv,
  ShouldPhysicsRaiseObjectUntilNotIntersectingThis__6ObjectFP6Object,
  PhysicallyDestroysAbodes__6ObjectFv,
  ReactToPhysicsImpact__5AbodeFP13PhysicsObjectb,
  CanBecomeAPhysicsObject__5AbodeFv,
  GetAlwaysRemainsInPhysicsInternalSystem__6ObjectFv,
  HasSunk__6ObjectFv,
  CreatureMustAvoid__13MultiMapFixedFP8Creature,
  AddToRoutePlan__6ObjectFP8RPHolderP8CreatureiPFi7Point2Dfi_v,
  GetRoutePlanRadius__6ObjectFP8Creature,
  VillagerMustAvoid__11FixedObjectFP8Villager,
  IsFireMan__6ObjectFv,
  IsARootedObject__6ObjectFv,
  GetCollideSoundType__6ObjectFv,
  IsSolidToNewAbode__13MultiMapFixedFv,
  RemoveFromGame__6ObjectFv,
  GetLandingPointCount__6ObjectFv,
  GetLandingPoint__6ObjectFUcP7LHPoint,
  GetTastiness__6ObjectFv,
  IsScary__6ObjectFv,
  GetInspectObjectPos__5AbodeFP8VillagerP9MapCoords,
  DiscipleInHandNear__5AbodeFR8VillagerR16GInterfaceStatus,
  GetSpecialPos__11FixedObjectFUlP9MapCoords,
  GetTownArtifact__11FixedObjectFv,
  IsTownArtifact__11FixedObjectFv,
  ProcessInHand__6ObjectFv,
  ProcessInInteract__6ObjectFP16GInterfaceStatus,
  GetObjectCollide__6ObjectFv,
  CalculateForceAppliedBy__6ObjectFP6Living,
  IsPushable__6ObjectFv,
  PushObject__6ObjectFP6LivingR9MapCoords,
  PushObject__6ObjectFP6Living,
  GetCarriedTreeType__6ObjectFv,
  GetFacingPitch__6ObjectFv,
  SetHeadPos__6ObjectFP9MapCoords,
  SaveObject__5AbodeFR8LHOSFileRC9MapCoords,
  IsAPotFromABuildingSite__6ObjectFv,
  GetNearestEdgeOfObject__6ObjectFP6Object,
  GetNearestPosOfObject__6ObjectFP6Object,
  GetNearestEdgeToPos__6ObjectFRC9MapCoords,
  GetNearestEdge__6ObjectFff,
  GetImmersionTexture__6ObjectFv,
  GetInHandImmersionTexture__6ObjectFv,
  ShouldFootpathsGoRound__5AbodeFv,
  InitialiseIsFixedForMapList__6ObjectFv,
  StandAnimation__6ObjectFv,
  GetCollideData__13MultiMapFixedFv,
  InsertMapObjectToCellAssumeFixed__11FixedObjectFP7MapCell,
  IsObjectFullyInMap__13MultiMapFixedFv,
  GetDoorPos__13MultiMapFixedFv,
  GetInfluence__5AbodeFv,
  IsPlaytimeStructure__13MultiMapFixedFv,
  IsPlaytimeStarted__13MultiMapFixedFv,
  AddPlaytimeVillager__13MultiMapFixedFP8Villager,
  CheckMapObject__13MultiMapFixedFv,
  GetResourceDropPosForComputerPlayer__13MultiMapFixedF13RESOURCE_TYPE,
  GetPercentBuilt__13MultiMapFixedFv,
  GetPercentRepaired__13MultiMapFixedFv,
  GetPercentRepairedFromWhenDamaged__13MultiMapFixedFv,
  IsRepaired__5AbodeFv,
  IsBuilt__5AbodeFv,
  GetPercentRepairedForNonFunctional__5AbodeFv,
  GetPercentForDrawBuilding__13MultiMapFixedFv,
  GetPercentAbodeFullWithAdults__5AbodeFv,
  GetPercentAbodeFullWithChildren__5AbodeFv,
  IsDrawBuilding__13MultiMapFixedFv,
  Built__5AbodeFv,
  Repaired__5AbodeFv,
  GetBuildingSiteWood__13MultiMapFixedFPUl,
  GetDestructionMesh__5AbodeFv,
  RemoveDamage__5AbodeFv,
  GetBuildingObject__13MultiMapFixedFv,
  IsCivic__5AbodeFv,
  GetAbodeType__5AbodeFv,
  SetPower__13MultiMapFixedFf,
  GetResourcePos__13MultiMapFixedF13RESOURCE_TYPEl,
  IsPoisonedResource__13MultiMapFixedF13RESOURCE_TYPE,
  GetResourceNearestEdge__13MultiMapFixedF13RESOURCE_TYPEP6Objecti,
  GetDesireToBeRepaired__5AbodeFv,
  AddToPlayer__13MultiMapFixedFv,
  RemoveFromPlayer__13MultiMapFixedFv,
  DoResourceAdding__5AbodeF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi,
  DoResourceRemoving__5AbodeF13RESOURCE_TYPEUlP16GInterfaceStatusPb,
  CalulateAmountOverMaximum__13MultiMapFixedF13RESOURCE_TYPE,
  SetTown__5AbodeFP4Town,
  RemovePotFromStructure__13MultiMapFixedFP12PotStructure,
  GetShouldNotBeAddedToPlanned__5AbodeFv,
  SetShouldNotBeAddedToPlanned__5AbodeFi,
  BuildBy__13MultiMapFixedFf,
  ConvertToPlanned__5AbodeFv,
  CreateCollideData__13MultiMapFixedFv,
  MoveAbodeToPlannedAbodes__5AbodeFv,
  DeleteDependancys__5AbodeFv,
  MakeFunctional__5AbodeFv,
  StopBeingFunctional__5AbodeFP7GPlayer,
  RestartBeingFunctional__5AbodeFv,
  CausesTownEmergencyIfDamaged__5AbodeFv,
  CanBeHiddenIn__5AbodeFv,
  GetTribe__5AbodeFv,
};

const float rdata_float_6_2831855 asm("__real@40c90fdb") = 6.2831855f;
const float rdata_float_0_00075075077 asm("__real@3a440441") = 0.00075075077f;
const float rdata_float_0_0022522523 asm("__real@3b130c31") = 0.0022522523f;
const double rdata_double_0_100000001490116119385 asm("__real@3fb999999999999a") = 0.100000001490116119385;

__attribute__((section(".bss"))) struct LH3DObject* windmill_lh3d_object_00c4cc70;
__attribute__((section(".bss"))) float windmill_float_00c4cc74;
__attribute__((section(".bss"))) float windmill_float_00c4cc78;
__attribute__((section(".bss"))) int windmill_int_00c4cc7c;

__attribute__((XOR32rr_REV))
void __fastcall Open__8WindmillFv(struct Windmill* this)
{
    asm("push               esi");                                           // 0x00405980    56
    asm("xor.s              ecx, ecx");                                      // 0x00405981    33c9
    asm("call               @Create__10LH3DObjectFQ210LH3DObject10ObjectType@4");                          // 0x00405983    e8485b4000
    asm("{disp32} mov       edx, dword ptr [?g_current_pack@LH3DMesh@@2PAULH3DPack@@A]");        // 0x00405988    8b1534fee900
    asm("{disp32} mov       dword ptr [_windmill_lh3d_object_00c4cc70], eax");        // 0x0040598e    a370ccc400
    asm("mov                esi, dword ptr [edx]");                          // 0x00405993    8b32
    asm("mov                ecx, 0x00000085");                               // 0x00405995    b985000000
    asm("cmp.s              esi, ecx");                                      // 0x0040599a    3bf1
    asm("{disp8} jg         _jmp_addr_0x004059a0");                          // 0x0040599c    7f02
    asm("xor.s              ecx, ecx");                                      // 0x0040599e    33c9
    asm("_jmp_addr_0x004059a0:");
    asm("{disp8} mov        edx, dword ptr [edx + ecx * 0x4 + 0x04]");       // 0x004059a0    8b548a04
    asm("mov                esi, dword ptr [eax]");                          // 0x004059a4    8b30
    asm("push               0x0");                                           // 0x004059a6    6a00
    asm("push               0x0");                                           // 0x004059a8    6a00
    asm("mov.s              ecx, eax");                                      // 0x004059aa    8bc8
    asm("call               dword ptr [esi + 0xf4]");                        // 0x004059ac    ff96f4000000
    asm("{disp32} mov       ecx, dword ptr [_windmill_lh3d_object_00c4cc70]");        // 0x004059b2    8b0d70ccc400
    asm("mov                eax, dword ptr [ecx]");                          // 0x004059b8    8b01
    asm("mov                edx, 0x00000001");                               // 0x004059ba    ba01000000
    asm("pop                esi");                                           // 0x004059bf    5e
    asm("{disp8} jmp        dword ptr [eax + 0x58]");                        // 0x004059c0    ff6058
    __builtin_unreachable();
}

void __fastcall Close__8WindmillFv(struct Windmill* this)
{
    asm("{disp32} mov       ecx, dword ptr [_windmill_lh3d_object_00c4cc70]");        // 0x004059d0    8b0d70ccc400
    asm("test               ecx, ecx");                                      // 0x004059d6    85c9
    asm("{disp8} je         _jmp_addr_0x004059e9");                          // 0x004059d8    740f
    asm("mov                eax, dword ptr [ecx]");                          // 0x004059da    8b01
    asm("call               dword ptr [eax + 4]");                           // 0x004059dc    ff5004
    asm("{disp32} mov       dword ptr [_windmill_lh3d_object_00c4cc70], 0x00000000"); // 0x004059df    c70570ccc40000000000
    asm("_jmp_addr_0x004059e9:");
    asm("ret");                                                              // 0x004059e9    c3
    asm("call               dword ptr [__imp__RegSetValueExA@4]");           // 0x004059ea    ff1514908a00
    __builtin_unreachable();
}

void __fastcall PreDraw__8WindmillFv(struct Windmill* this)
{
    asm("{disp32} fild      dword ptr [data_bytes + 0x4e3ec0]");             // 0x004059f0    db05c09eea00
    asm("{disp32} fld       dword ptr [_windmill_float_00c4cc78]");          // 0x004059f6    d90578ccc400
    asm("fcos");                                                             // 0x004059fc    d9ff
    asm("fabs");                                                             // 0x004059fe    d9e1
    asm("{disp32} fmul      qword ptr [__real@3fb999999999999a]");           // 0x00405a00    dc0d20b28a00
    asm("fld                st(1)");                                         // 0x00405a06    d9c1
    asm("{disp32} fmul      dword ptr [__real@3b130c31]");                   // 0x00405a08    d80d18b28a00
    asm("faddp              st(1), st");                                     // 0x00405a0e    dec1
    asm("{disp32} fsubr     dword ptr [_windmill_float_00c4cc74]");          // 0x00405a10    d82d74ccc400
    asm("{disp32} fstp      dword ptr [_windmill_float_00c4cc74]");          // 0x00405a16    d91d74ccc400
    asm("{disp32} fmul      dword ptr [__real@3a440441]");                   // 0x00405a1c    d80d14b28a00
    asm("{disp32} fadd      dword ptr [_windmill_float_00c4cc78]");          // 0x00405a22    d80578ccc400
    asm("{disp32} fcom      dword ptr [__real@40c90fdb]     ");              // 0x00405a28    d81510b28a00
    asm("{disp32} fst       dword ptr [_windmill_float_00c4cc78]");          // 0x00405a2e    d91578ccc400
    asm("fnstsw             ax");                                            // 0x00405a34    dfe0
    asm("test               ah, 0x41");                                      // 0x00405a36    f6c441
    asm("{disp8} jne        _jmp_addr_0x00405a55");                          // 0x00405a39    751a
    asm("_jmp_addr_0x00405a3b:");
    asm("{disp32} fsub      dword ptr [__real@40c90fdb]     ");              // 0x00405a3b    d82510b28a00
    asm("{disp32} fcom      dword ptr [__real@40c90fdb]     ");              // 0x00405a41    d81510b28a00
    asm("fnstsw             ax");                                            // 0x00405a47    dfe0
    asm("test               ah, 0x41");                                      // 0x00405a49    f6c441
    asm("{disp8} je         _jmp_addr_0x00405a3b");                          // 0x00405a4c    74ed
    asm("{disp32} fstp      dword ptr [_windmill_float_00c4cc78]");          // 0x00405a4e    d91d78ccc400
    asm("ret");                                                              // 0x00405a54    c3
    asm("_jmp_addr_0x00405a55:");
    asm("fstp               st(0)");                                         // 0x00405a55    ddd8
    asm("ret");                                                              // 0x00405a57    c3
    __builtin_unreachable();
}
