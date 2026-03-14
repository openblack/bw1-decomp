#include "CreatureActionsKnownAbout.h"
#include "CreatureObjectsInspected.h"
#include "Object.h"
#include "Villager.h"
#include "Creature.h"
#include "Totem.h"
#include "TotemStatue.h"
#include "GameThingWithPos.h"
#include "Abode.h"
#include "Scaffold.h"
#include "OneOffSpellSeed.h"
#include "Citadel.h"
#include "Town.h"
#include "MultiMapFixed.h"
#include "Tree.h"
#include "MobileStatic.h"
#include "Field.h"
#include "StoragePit.h"
#include "MagicFood.h"
#include "Animal.h"
#include "WorshipSite.h"
#include "MobileObject.h"
#include "CreatureMimicInfo.h"

// win1.41 004e2230 mac 10266a40 CreatureActionsKnownAbout::_dt(void)
CreatureActionsKnownAbout::~CreatureActionsKnownAbout()
{
}

// win1.41 004e3520 mac 102466c0 CreatureObjectsInspected::_dt(void)
CreatureObjectsInspected::~CreatureObjectsInspected()
{
}

// win1.41 004e3a20 mac 105e7240 Object::CanBePickedUpByCreature(Creature *)
bool32_t Object::CanBePickedUpByCreature(Creature* creature)
{
    return 0;
}

// win1.41 004e3b00 mac 105e7170 Object::CanBeStrokedByCreature(Creature *)
bool32_t Object::CanBeStrokedByCreature(Creature* creature)
{
    return 0;
}

// win1.41 004e3b40 mac 105e70f0 Object::CanBeInspectedByCreature(Creature *)
bool32_t Object::CanBeInspectedByCreature(Creature* creature)
{
    return 0;
}

// win1.41 004e3b60 mac 105e7030 Villager::IsDoingSomethingInteresting(Creature *)
bool32_t Villager::IsDoingSomethingInteresting(Creature* param_1)
{
    return 0;
}

// win1.41 004e3bb0 mac 105e6f50 Object::CanBeBroughtBackToCitadel(Creature *)
bool32_t Object::CanBeBroughtBackToCitadel(Creature* creature)
{
    return 0;
}

// win1.41 004e3c10 mac 105e6e70 Object::CanBeStompedOnByCreature(Creature *)
bool32_t Object::CanBeStompedOnByCreature(Creature* creature)
{
    return 0;
}

// win1.41 004e3c70 mac 105e6d70 Creature::CanBeStompedOnByCreature(Creature *)
bool32_t Creature::CanBeStompedOnByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 004e3cf0 mac 105e6cb0 Object::CanBeThrownByCreature(Creature *)
bool32_t Object::CanBeThrownByCreature(Creature* creature)
{
    return 0;
}

// win1.41 004e3d40 mac 105e6b50 Object::CanBePutInAStoragePit(Creature *)
bool32_t Object::CanBePutInAStoragePit(Creature* creature)
{
    return 0;
}

// win1.41 004e3d90 mac 105e6a70 Object::CanBePutInFoodPile(Creature *)
bool32_t Object::CanBePutInFoodPile(Creature* creature)
{
    return 0;
}

// win1.41 004e3dd0 mac 105e69a0 Object::CanBePutInWoodPile(Creature *)
bool32_t Object::CanBePutInWoodPile(Creature* creature)
{
    return 0;
}

// win1.41 004e3e20 mac 105e68c0 Villager::DoesVillagerBelongToATownWhichIsAlreadyImpressed(Creature *)
bool32_t Villager::DoesVillagerBelongToATownWhichIsAlreadyImpressed(Creature* param_1)
{
    return 0;
}

// win1.41 004e3e60 mac 105e6830 Totem::DoesTotemBelongToATownWhichIsVeryImpressedIndeed(Creature *)
bool32_t Totem::DoesTotemBelongToATownWhichIsVeryImpressedIndeed(Creature* param_1)
{
    return 0;
}

// win1.41 004e3e70 mac 105e6740 TotemStatue::DoesTotemBelongToATownWhichIsVeryImpressedIndeed(Creature *)
bool32_t TotemStatue::DoesTotemBelongToATownWhichIsVeryImpressedIndeed(Creature* param_1)
{
    return 0;
}

// win1.41 004e3eb0 mac 105e66c0 Object::CanBePoodUponByCreature(Creature *)
bool32_t Object::CanBePoodUponByCreature(Creature* creature)
{
    return 0;
}

// win1.41 004e3f10 mac 105e6580 Creature::CanBeKissedByCreature(Creature *)
bool32_t Creature::CanBeKissedByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 004e3f30 mac 105e6470 GameThingWithPos::CanBeBroughtHomeByCreature(Creature *)
bool32_t GameThingWithPos::CanBeBroughtHomeByCreature(Creature* creature)
{
    return 0;
}

// win1.41 004e3fa0 mac 105e63e0 Abode::CanBeKickedByCreature(Creature *)
bool32_t Abode::CanBeKickedByCreature(Creature* creature)
{
    return 0;
}

// win1.41 004e3fc0 mac 105e6330 Scaffold::CanBePickedUpByCreature(Creature *)
bool32_t Scaffold::CanBePickedUpByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 004e3ff0 mac 105e6220 Scaffold::CanBeStolenByCreature(Creature *)
bool32_t Scaffold::CanBeStolenByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 004e4040 mac 105e6170 OneOffSpellSeed::IsStealableSpell(Creature *)
bool32_t OneOffSpellSeed::IsStealableSpell(Creature* param_1)
{
    return 0;
}

// win1.41 004e4070 mac 105e6100 Scaffold::IsStealableScaffold(Creature *)
bool32_t Scaffold::IsStealableScaffold(Creature* param_1)
{
    return 0;
}

// win1.41 004e4080 mac 105e6020 Creature::IsCreatureNotTooNear(Creature *)
bool32_t Creature::IsCreatureNotTooNear(Creature* param_1)
{
    return 0;
}

// win1.41 004e40e0 mac 105e5f60 Citadel::IsActivityObjectWhichAngerAppliesTo(Creature *)
bool32_t Citadel::IsActivityObjectWhichAngerAppliesTo(Creature* param_1)
{
    return 0;
}

// win1.41 004e4110 mac 105e5eb0 TotemStatue::CanBeStolenByCreature(Creature *)
bool32_t TotemStatue::CanBeStolenByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 004e4140 mac 105e5e00 Town::IsTownBelongingToOtherPlayer(Creature *)
bool32_t Town::IsTownBelongingToOtherPlayer(Creature* param_1)
{
    return 0;
}

// win1.41 004e4170 mac 105e5d00 TotemStatue::IsTotemWithStealableSpell(Creature *)
bool32_t TotemStatue::IsTotemWithStealableSpell(Creature* param_1)
{
    return 0;
}

// win1.41 004e41c0 mac 105e5c20 MultiMapFixed::IsBuildingWhichIsBeingBuilt(Creature *)
bool32_t MultiMapFixed::IsBuildingWhichIsBeingBuilt(Creature* creature)
{
    return 0;
}

// win1.41 004e4210 mac 105e5ae0 GameThingWithPos::IsStealableByCreature(Creature *)
bool32_t GameThingWithPos::IsStealableByCreature(Creature* creature)
{
    return 0;
}

// win1.41 004e4280 mac 105e5900 Creature::CanBeAttackedByCreature(Creature *)
bool32_t Creature::CanBeAttackedByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 004e4310 mac 105e5880 Creature::IsActivityObjectWhichAngerAppliesTo(Creature *)
bool32_t Creature::IsActivityObjectWhichAngerAppliesTo(Creature* param_1)
{
    return 0;
}

// win1.41 004e4320 mac 105e56c0 Object::CanBeKickedByCreature(Creature *)
bool32_t Object::CanBeKickedByCreature(Creature* creature)
{
    return 0;
}

// win1.41 004e43f0 mac 105e5610 Abode::CanBeStompedOnByCreature(Creature *)
bool32_t Abode::CanBeStompedOnByCreature(Creature* creature)
{
    return 0;
}

// win1.41 004e4430 mac 105e55b0 Creature::IsCreatureAvailableForJointActivity(Creature *)
bool32_t Creature::IsCreatureAvailableForJointActivity(Creature* param_1)
{
    return 0;
}

// win1.41 004e4450 mac 105e5530 Creature::IsCreatureNotAvailableForJointActivity(Creature *)
bool32_t Creature::IsCreatureNotAvailableForJointActivity(Creature* param_1)
{
    return 0;
}

// win1.41 004e4480 mac 105e54b0 GameThingWithPos::NothingScareyNearMe(Creature *)
bool32_t GameThingWithPos::NothingScareyNearMe()
{
    return 0;
}

// win1.41 004e4510 mac 105e5100 Villager::IsVillagerInTownWithoutManyBreeders(Creature *)
bool32_t Villager::IsVillagerInTownWithoutManyBreeders(Creature* param_1)
{
    return 0;
}

// win1.41 004e45e0 mac 105e5000 Creature::IsCreatureWhoSeemsFriendly(Creature *)
bool32_t Creature::IsCreatureWhoSeemsFriendly(Creature* param_1)
{
    return 0;
}

// win1.41 004e46d0 mac 105e4e90 Villager::IsVillagerNotWorshipping(Creature *)
bool32_t Villager::IsVillagerNotWorshipping(Creature* param_1)
{
    return 0;
}

// win1.41 004e46e0 mac 105e4dc0 Tree::IsTreeNotTooNearPlannedForest(Creature *)
bool32_t Tree::IsTreeNotTooNearPlannedForest(Creature* param_1)
{
    return 0;
}

// win1.41 004e4750 mac 105e4c40 Town::IsTownBelongingToAnotherPlayer(Creature *)
bool32_t Town::IsTownBelongingToAnotherPlayer(Creature* param_1)
{
    return 0;
}

// win1.41 004e47f0 mac 105e4b50 Town::IsActivityObjectWhichAngerAppliesTo(Creature *)
bool32_t Town::IsActivityObjectWhichAngerAppliesTo(Creature* param_1)
{
    return 0;
}

// win1.41 004e4840 mac 105e4a70 Villager::IsVillagerWhoHasNotBeenImpressedRecently(Creature *)
bool32_t Villager::IsVillagerWhoHasNotBeenImpressedRecently(Creature* param_1)
{
    return 0;
}

// win1.41 004e4890 mac 105e49d0 Villager::IsVillagerWhoHasNotBeenDancedWithRecently(Creature *)
bool32_t Villager::IsVillagerWhoHasNotBeenDancedWithRecently(Creature* param_1)
{
    return 0;
}

// win1.41 004e48c0 mac 105e4960 Object::CanBeEatenByCreature(Creature *)
bool32_t Object::CanBeEatenByCreature(Creature* creature)
{
    return 0;
}

// win1.41 004e48d0 mac 105e48e0 MobileStatic::CanBeEatenByCreature(Creature *)
bool32_t MobileStatic::CanBeEatenByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 004e48f0 mac 105e4890 OneOffSpellSeed::CanBeEatenByCreature(Creature *)
bool32_t OneOffSpellSeed::CanBeEatenByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 004e4900 mac 105e47d0 Field::IsFieldBelongingToAnotherPlayer(Creature *)
bool32_t Field::IsFieldBelongingToAnotherPlayer(Creature* param_1)
{
    return 0;
}

// win1.41 004e4930 mac 105e4760 Field::IsFieldWithFoodInIt(Creature *)
bool32_t Field::IsFieldWithFoodInIt(Creature* param_1)
{
    return 0;
}

// win1.41 004e4970 mac 105e46e0 Field::IsFieldWhichNeedsWatering(Creature *)
bool32_t Field::IsFieldWhichNeedsWatering(Creature* param_1)
{
    return 0;
}

// win1.41 004e4990 mac 105e4670 StoragePit::IsStoragePit(Creature *)
bool32_t StoragePit::IsStoragePit(Creature* param_1)
{
    return 0;
}

// win1.41 004e49a0 mac 105e4580 StoragePit::IsStoragePitBelongingToAnotherPlayer(Creature *)
bool32_t StoragePit::IsStoragePitBelongingToAnotherPlayer(Creature* param_1)
{
    return 0;
}

// win1.41 004e49e0 mac 105e44a0 StoragePit::IsStoragePitBelongingToMyPlayer(Creature *)
bool32_t StoragePit::IsStoragePitBelongingToMyPlayer(Creature* param_1)
{
    return 0;
}

// win1.41 004e4a20 mac 105e43b0 MagicFood::IsAFoodPileOutsideStoragePit(Creature *)
bool32_t MagicFood::IsAFoodPileOutsideStoragePit(Creature* param_1)
{
    return 0;
}

// win1.41 004e4a80 mac 105e4320 Tree::CanBePickedUpByCreature(Creature *)
bool32_t Tree::CanBePickedUpByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 004e4ab0 mac 105e4260 OneOffSpellSeed::IsOneOffSpellBelongingToOtherPlayer(Creature *)
bool32_t OneOffSpellSeed::IsOneOffSpellBelongingToOtherPlayer(Creature* param_1)
{
    return 0;
}

// win1.41 004e4ae0 mac 105e41a0 Animal::IsAnimalBelongingToOtherPlayer(Creature *)
bool32_t Animal::IsAnimalBelongingToOtherPlayer(Creature* param_1)
{
    return 0;
}

// win1.41 004e4b10 mac 105e40e0 Villager::IsVillagerBelongingToOtherPlayer(Creature *)
bool32_t Villager::IsVillagerBelongingToOtherPlayer(Creature* param_1)
{
    return 0;
}

// win1.41 004e4b40 mac 105e4090 Villager::CanHaveMagicFoodCastOnMe(Creature *)
bool32_t Villager::CanHaveMagicFoodCastOnMe(Creature* param_1)
{
    return 0;
}

// win1.41 004e4b50 mac 105e4020 StoragePit::CanHaveMagicFoodCastOnMe(Creature *)
bool32_t StoragePit::CanHaveMagicFoodCastOnMe(Creature* param_1)
{
    return 0;
}

// win1.41 004e4b60 mac 105e3fa0 WorshipSite::CanHaveMagicFoodCastOnMe(Creature *)
bool32_t WorshipSite::CanHaveMagicFoodCastOnMe(Creature* param_1)
{
    return 0;
}

// win1.41 004e4b70 mac 105e3f50 StoragePit::CanHaveMagicWoodCastOnMe(Creature *)
bool32_t StoragePit::CanHaveMagicWoodCastOnMe(Creature* param_1)
{
    return 0;
}

// win1.41 004e4b90 mac 105e3d90 GameThingWithPos::CanCreatureEatMe(Creature *)
bool32_t GameThingWithPos::CanCreatureEatMe(Creature* creature)
{
    return 0;
}

// win1.41 004e4c40 mac 105e3cd0 MobileStatic::IsToyAwayFromHome(Creature *)
bool32_t MobileStatic::IsToyAwayFromHome(Creature* param_1)
{
    return 0;
}

// win1.41 004e4c90 mac 105e3c40 Villager::CanBeHealedByCreature(Creature *)
bool32_t Villager::CanBeHealedByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 004e4cc0 mac 105e3bc0 MobileStatic::CanBePickedUpByCreature(Creature *)
bool32_t MobileStatic::CanBePickedUpByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 004e4cd0 mac 105e3b70 Creature::CanBePickedUpByCreature(Creature *)
bool32_t Creature::CanBePickedUpByCreature(Creature* param_1)
{
    return 0;
}

// win1.41 004e4ce0 mac 105e3ad0 MobileObject::IsMushroom(Creature *)
bool32_t MobileObject::IsMushroom(Creature* param_1)
{
    return 0;
}

// win1.41 004e4d50 mac 105e3950 Villager::IsVillagerFarFromHome(Creature *)
bool32_t Villager::IsVillagerFarFromHome(Creature* param_1)
{
    return 0;
}

// win1.41 004e4d90 mac 105e3860 StoragePit::IsStoragePitWithFoodInIt(Creature *)
bool32_t StoragePit::IsStoragePitWithFoodInIt(Creature* param_1)
{
    return 0;
}

// win1.41 004e4ea0 mac 1026c9c0 Creature::Save(GameOSFile &)
bool32_t Creature::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 004e5ff0 mac 1026b130 Creature::Load(GameOSFile &)
bool32_t Creature::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 004e6ab0 mac 1026aa90 Creature::ResolveLoad(void)
void Creature::ResolveLoad()
{
}

// win1.41 004e9c80 mac 1026ff90 CreatureMimicInfo::GetBaseInfo(unsigned long &)
GBaseInfo* CreatureMimicInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 004e9cf0 mac 1026ea60 CreatureMimicInfo::_dt(void)
CreatureMimicInfo::~CreatureMimicInfo()
{
}
