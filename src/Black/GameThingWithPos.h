#ifndef BW1_DECOMP_GAME_THING_WITH_POS_INCLUDED_H
#define BW1_DECOMP_GAME_THING_WITH_POS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum DEATH_REASON, enum IMPRESSIVE_TYPE */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <reversing_utils/re_common.h> /* For bool32_t */

#include "GameThing.h" /* For struct GameThing, struct GameThingVftable */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

class Base;
class Citadel;
class Creature;
class GameOSFile;
struct LHPoint;
class Living;
class Object;
class Reaction;
class WorshipSite;

class GameThingWithPos: public GameThing
{
public:
    MapCoords coords; /* 0x14 */
    Object* map_child; /* 0x20 */
    uint16_t field_0x24;
    uint8_t field_0x26;

    // Override methods

    // win1.41 0056fe00 mac 100bc3e0 GameThingWithPos::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0056fe20 mac 106fd140 GameThingWithPos::Get3DSoundPos(LHPoint*)
    virtual int Get3DSoundPos(LHPoint* param_1);
    // win1.41 00570350 mac 10005560 GameThingWithPos::UseFootpathIfNecessary(Living *, MapCoords const &, unsigned char)
    virtual void UseFootpathIfNecessary(Living* param_1, const MapCoords* param_2, unsigned char param_3);
    // win1.41 004178f0 mac 101bb350 GameThingWithPos::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 005704a0 mac 1016a2c0 GameThingWithPos::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* file);
    // win1.41 005703f0 mac 10512f10 GameThingWithPos::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* file);
    // win1.41 00570560 mac 10430e60 GameThingWithPos::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00401940 mac 1004d010 GameThingWithPos::SetPos(MapCoords const &)
    virtual void SetPos(const MapCoords* param_2);
    // win1.41 00401960 mac 10032b70 GameThingWithPos::GetPos(void)
    virtual MapCoords* GetPos(MapCoords* param_1);
    // win1.41 00405260 mac 101c7ec0 GameThingWithPos::GetArrivePos(void)
    virtual MapCoords* GetArrivePos(MapCoords* param_1);
    // win1.41 00401980 mac 103d18f0 GameThingWithPos::GetArriPhysicsEditorCreatevePos(int)
    virtual void PhysicsEditorCreate(int param_1);
    // win1.41 00405280 mac 103e5940 GameThingWithPos::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // win1.41 00401990 mac 103e0cc0 GameThingWithPos::GetCreatureBeliefListType(void)
    virtual uint32_t GetCreatureBeliefListType();
    // win1.41 004019a0 mac 103e0d50 GameThingWithPos::GetCitadel(void)
    virtual Citadel* GetCitadel();
    // win1.41 00405290 mac 103efe40 GameThingWithPos::GetOrigin(void)
    virtual uint32_t GetOrigin();
    // win1.41 004052a0 mac 103e1210 GameThingWithPos::GetLife(void)
    virtual float GetLife();
    // win1.41 004247e0 mac 103e0c80 GameThingWithPos::GetScale(void)
    virtual float GetScale();
    // win1.41 004247f0 mac 103e31e0 GameThingWithPos::SetScale(float)
    virtual void SetScale(float scale);
    // win1.41 0056fe60 mac 100bbfe0 GameThingWithPos::GetPower( const(void))
    virtual float GetPower();
    // win1.41 0056fec0 mac 10513050 GameThingWithPos::GetPSysPower( const(void))
    virtual float GetPSysPower();
    // win1.41 00570220 mac 103e3220 GameThingWithPos::GetSpeedInMetres( const(void))
    virtual float GetSpeedInMetres();
    // win1.41 00570210 mac 10357d80 GameThingWithPos::SetSpeedInMetres(float, int)
    virtual void SetSpeedInMetres(float speed, int scale);
    // win1.41 00570230 mac 10492670 GameThingWithPos::GetRunningSpeedInMetres(void)
    virtual float GetRunningSpeedInMetres();
    // win1.41 005702b0 mac 10172410 GameThingWithPos::GetDistanceFromObject(MapCoords const &)
    virtual float GetDistanceFromObject(const MapCoords* target);
    // win1.41 00570240 mac 101473d0 GameThingWithPos::GetDefaultSpeedInMetres(void)
    virtual float GetDefaultSpeedInMetres();
    // win1.41 004019b0 mac 103e1140 GameThingWithPos::SetHeight(float)
    virtual void SetHeight(float height);
    // win1.41 004019c0 mac 103e3580 GameThingWithPos::SetMaxHeight(float)
    virtual void SetMaxHeight(float height);
    // win1.41 004019d0 mac 103e11c0 GameThingWithPos::GetMaxHeight(void)
    virtual float GetMaxHeight();
    // win1.41 005702e0 mac 10110d20 GameThingWithPos::GetPSysBeamTargetPos(LHPoint *)
    virtual void GetPSysBeamTargetPos(LHPoint* pos);
    // win1.41 00570260 mac 1055f490 GameThingWithPos::GetSpeedInMetresPerSecond( const(void))
    virtual float GetSpeedInMetresPerSecond();
    // win1.41 00570250 mac 101723c0 GameThingWithPos::SetSpeedInMetresPerSecond(float, int)
    virtual void SetSpeedInMetresPerSecond(float speed, int scale);
    // win1.41 00570270 mac 100bc060 GameThingWithPos::GetRunningSpeedInMetresPerSecond(void)
    virtual float GetRunningSpeedInMetresPerSecond();
    // win1.41 00570280 mac 1055e070 GameThingWithPos::GetDefaultSpeedInMetresPerSecond(void)
    virtual float GetDefaultSpeedInMetresPerSecond();
    // win1.41 004019e0 mac 103e1180 GameThingWithPos::IsAnimate(void)
    virtual bool IsAnimate();
    // win1.41 0056ff20 mac 1019c820 GameThingWithPos::GetMovementDirection(LHPoint *)
    virtual void GetMovementDirection(LHPoint* pos);
    // win1.41 0056ff50 mac 1056c0f0 GameThingWithPos::GetPhysicsMovementDirection(LHPoint *)
    virtual void GetPhysicsMovementDirection(LHPoint* pos);
    // win1.41 004019f0 mac 103efd20 GameThingWithPos::GetInteractPos(void)
    virtual void GetInteractPos(LHPoint* pos);
    // win1.41 004052b0 mac 103efb80 GameThingWithPos::IsMoving( const(void))
    virtual bool IsMoving();
    // win1.41 004052c0 mac 103f07b0 GameThingWithPos::IsObjectInMap(void)
    virtual bool IsObjectInMap();
    // win1.41 004052d0 mac 103ee440 GameThingWithPos::IsDrowning(void)
    virtual bool IsDrowning();
    // win1.41 00401a10 mac 100cb2b0 GameThingWithPos::IsCannotBePickedUp( const(void))
    virtual bool IsCannotBePickedUp();
    // win1.41 00570590 mac 101bf190 GameThingWithPos::GetOverwritePickUpToolTip(void)
    virtual uint32_t GetOverwritePickUpToolTip();
    // win1.41 00401a20 mac 100cb270 GameThingWithPos::IsStompable(void)
    virtual bool IsStompable();
    // win1.41 00401a30 mac 100cb210 GameThingWithPos::IsAvailableForStateChange(void)
    virtual bool IsAvailableForStateChange();
    // win1.41 005701b0 mac 1007b9d0 GameThingWithPos::IsInteractable(void)
    virtual bool IsInteractable();
    // win1.41 005705a0 mac 100b34e0 GameThingWithPos::GetOverwriteInteractableToolTip(void)
    virtual uint32_t GetOverwriteInteractableToolTip();
    // win1.41 005705b0 mac 10097060 GameThingWithPos::GetOverwriteDropToolTip(void)
    virtual uint32_t GetOverwriteDropToolTip();
    // win1.41 005705c0 mac 103eff20 GameThingWithPos::GetOverwriteTapToolTip(void)
    virtual uint32_t GetOverwriteTapToolTip();
    // win1.41 004052e0 mac 10405890 GameThingWithPos::IsCastShadowAtNight(void)
    virtual bool32_t IsCastShadowAtNight();
    // win1.41 004052f0 mac 1055f350 GameThingWithPos::CleanupWhenDeleted(int)
    virtual void CleanupWhenDeleted(int param_1);
    // win1.41 0056ff70 mac 10569e60 GameThingWithPos::GetImpressiveType(void)
    virtual IMPRESSIVE_TYPE GetImpressiveType();
    // win1.41 00401a40 mac 103104e0 GameThingWithPos::GetImpressiveIntensity(IMPRESSIVE_TYPE)
    virtual float GetImpressiveIntensity(IMPRESSIVE_TYPE type);
    // win1.41 00405300 mac 100026f0 GameThingWithPos::GetImpressiveValue(Living *, Reaction *)
    virtual float GetImpressiveValue(Living* param_1, Reaction* param_2);
    // win1.41 0056feb0 mac 10002750 GameThingWithPos::GetUpdateOfBoredomValue(Reaction *, GameThingWithPos *)
    virtual float GetUpdateOfBoredomValue(Reaction* param_1, GameThingWithPos* param_2);
    // win1.41 00401ae0 mac 100d3ed0 GameThingWithPos::IsTown(void)
    virtual bool IsTown();
    // win1.41 00401a50 mac 1002b190 GameThingWithPos::IsTown(Creature *)
    virtual bool IsTown(Creature* param_1);
    // win1.41 00401a60 mac 103efcc0 GameThingWithPos::IsActivityObjectWhichAngerAppliesTo(Creature *)
    virtual bool IsActivityObjectWhichAngerAppliesTo(Creature* param_1);
    // win1.41 00401a70 mac 100c8d70 GameThingWithPos::IsActivityObjectWhichCompassionAppliesTo(Creature *)
    virtual bool IsActivityObjectWhichCompassionAppliesTo(Creature* param_1);
    // win1.41 00401a80 mac 10381cb0 GameThingWithPos::IsActivityObjectWhichPlayfulnessAppliesTo(Creature *)
    virtual bool IsActivityObjectWhichPlayfulnessAppliesTo(Creature* param_1);
    // win1.41 00401a90 mac 1055f950 GameThingWithPos::IsTownBelongingToAnotherPlayer(Creature *)
    virtual bool IsTownBelongingToAnotherPlayer(Creature* param_1);
    // win1.41 00401aa0 mac 10354120 GameThingWithPos::TrueFunction(void)
    virtual bool32_t TrueFunction();
    // win1.41 00401ab0 mac 100c53e0 GameThingWithPos::FalseFunction(void)
    virtual bool32_t FalseFunction();
    // win1.41 00401ac0 mac 10174ec0 GameThingWithPos::IsNotLiving(void)
    virtual bool32_t IsNotLiving();
    // win1.41 00401ad0 mac 100a9d40 GameThingWithPos::IsSuitableForCreatureActivity(void)
    virtual bool32_t IsSuitableForCreatureActivity();
    // win1.41 00401af0 mac 10093ec0 GameThingWithPos::IsTownCentre(void)
    virtual bool32_t IsTownCentre();
    // win1.41 00401b00 mac 101a36a0 GameThingWithPos::IsTotemStatue(void)
    virtual bool32_t IsTotemStatue();
    // win1.41 00401b10 mac 103d8ae0 GameThingWithPos::IsTownDesireFlag(void)
    virtual bool32_t IsTownDesireFlag();
    // win1.41 00401f50 mac 104a9cd0 GameThingWithPos::IsRock(Creature *)
    virtual bool32_t IsRock(Creature* creature);
    // win1.41 00401b20 mac 10135ee0 GameThingWithPos::IsRock(void)
    virtual bool32_t IsRock();
    // win1.41 00401b30 mac 103d8b30 GameThingWithPos::IsSpellDispenser(void)
    virtual bool32_t IsSpellDispenser();
    // win1.41 00401b40 mac 100c3630 GameThingWithPos::IsMist(void)
    virtual bool32_t IsMist();
    // win1.41 00401b50 mac 10097020 GameThingWithPos::IsQueryIcon(void)
    virtual bool32_t IsQueryIcon();
    // win1.41 00401b60 mac 105e81b0 GameThingWithPos::IsStreetLight(void)
    virtual bool32_t IsStreetLight();
    // win1.41 00401b70 mac 104a63f0 GameThingWithPos::IsStreetLantern(void)
    virtual bool32_t IsStreetLantern();
    // win1.41 00405310 mac 1009aa60 GameThingWithPos::IsAbode(void)
    virtual bool32_t IsAbode();
    // win1.41 00401e40 mac 104c28e0 GameThingWithPos::IsField(Creature *)
    virtual bool32_t IsField(Creature* creature);
    // win1.41 00401b80 mac 105e8170 GameThingWithPos::IsField(void)
    virtual bool32_t IsField();
    // win1.41 00405320 mac 105e8120 GameThingWithPos::IsBuildingMaterial(void)
    virtual bool32_t IsBuildingMaterial();
    // win1.41 00401b90 mac 1009eea0 GameThingWithPos::IsMagicFireBall(void)
    virtual bool32_t IsMagicFireBall();
    // win1.41 00405330 mac 104a6920 GameThingWithPos::IsSuitableForCreatureAction(void)
    virtual bool32_t IsSuitableForCreatureAction();
    // win1.41 00401ba0 mac 104a8310 GameThingWithPos::IsCitadelHeart(void)
    virtual bool32_t IsCitadelHeart();
    // win1.41 00401bb0 mac 10479f30 GameThingWithPos::IsDamaged(void)
    virtual bool32_t IsDamaged();
    // win1.41 00401bd0 mac 100c7090 GameThingWithPos::CanBeHealedByCreature(Creature *)
    virtual bool32_t CanBeHealedByCreature(Creature* creature);
    // win1.41 00405340 mac 1016b460 GameThingWithPos::CanBeEatenByCreature(Creature *)
    virtual bool32_t CanBeEatenByCreature(Creature* creature);
    // win1.41 004e4b90 mac 105e3d90 GameThingWithPos::CanCreatureEatMe(Creature *)
    virtual bool32_t CanCreatureEatMe(Creature* creature);
    // win1.41 00405350 mac 103820f0 GameThingWithPos::CanBeAttackedByCreature(Creature *)
    virtual bool32_t CanBeAttackedByCreature(Creature* creature);
    // win1.41 00405360 mac 101744e0 GameThingWithPos::CanBeFrighteningToCreature(Creature *)
    virtual bool32_t CanBeFrighteningToCreature(Creature* creature);
    // win1.41 00405370 mac 10550480 GameThingWithPos::CanBeHelpedByCreature(Creature *)
    virtual bool32_t CanBeHelpedByCreature(Creature* creature);
    // win1.41 00405380 mac 1055da80 GameThingWithPos::CanBePlayedWithByCreature(Creature *)
    virtual bool32_t CanBePlayedWithByCreature(Creature* creature);
    // win1.41 00405390 mac 1054f030 GameThingWithPos::CanBeImpressedByCreature(Creature *)
    virtual bool32_t CanBeImpressedByCreature(Creature* creature);
    // win1.41 004053a0 mac 10148420 GameThingWithPos::CanBeInspectedByCreature(Creature *)
    virtual bool32_t CanBeInspectedByCreature(Creature* creature);
    // win1.41 004053b0 mac 103d5780 GameThingWithPos::CanBePoodUponByCreature(Creature *)
    virtual bool32_t CanBePoodUponByCreature(Creature* creature);
    // win1.41 00401be0 mac 104956c0 GameThingWithPos::CanBeBefriendedByCreature(Creature *)
    virtual bool32_t CanBeBefriendedByCreature(Creature* creature);
    // win1.41 004053c0 mac 102fdd30 GameThingWithPos::CanBeSleptNextToByCreature(Creature *)
    virtual bool32_t CanBeSleptNextToByCreature(Creature* creature);
    // win1.41 004053d0 mac 102fde30 GameThingWithPos::CanBePickedUpByCreature(Creature *)
    virtual bool32_t CanBePickedUpByCreature(Creature* creature);
    // win1.41 004053e0 mac 100cb730 GameThingWithPos::CanBeStrokedByCreature(Creature *)
    virtual bool32_t CanBeStrokedByCreature(Creature* creature);
    // win1.41 00401bf0 mac 102fe080 GameThingWithPos::CanBeKissedByCreature(Creature *)
    virtual bool32_t CanBeKissedByCreature(Creature* creature);
    // win1.41 004053f0 mac 105609f0 GameThingWithPos::CanBeSetOnFire(Creature *)
    virtual bool32_t CanBeSetOnFire(Creature* creature);
    // win1.41 00405400 mac 1043fa70 GameThingWithPos::CanBeStompedOnByCreature(Creature *)
    virtual bool32_t CanBeStompedOnByCreature(Creature* creature);
    // win1.41 00405410 mac 10147ea0 GameThingWithPos::CanBeThrownByCreature(Creature *)
    virtual bool32_t CanBeThrownByCreature(Creature* creature);
    // win1.41 00401c00 mac 10569b20 GameThingWithPos::CanBeGivenToVillager(Creature *)
    virtual bool32_t CanBeGivenToVillager(Creature* creature);
    // win1.41 00405420 mac 101660d0 GameThingWithPos::CanBePutInAStoragePit(Creature *)
    virtual bool32_t CanBePutInAStoragePit(Creature* creature);
    // win1.41 00405430 mac 104fb730 GameThingWithPos::CanBeDestroyedByStoning(Creature *)
    virtual bool32_t CanBeDestroyedByStoning(Creature* creature);
    // win1.41 00401c10 mac 104fb7d0 GameThingWithPos::CanBeStonedAndEatenByCreature(Creature *)
    virtual bool32_t CanBeStonedAndEatenByCreature(Creature* creature);
    // win1.41 00405440 mac 10160390 GameThingWithPos::CanBeExaminedByCreature(Creature *)
    virtual bool32_t CanBeExaminedByCreature(Creature* creature);
    // win1.41 00401c50 mac 100d4ba0 GameThingWithPos::CanBeFoughtByCreature(Creature *)
    virtual bool32_t CanBeFoughtByCreature(Creature* creature);
    // win1.41 00401c60 mac 1038a3e0 GameThingWithPos::CanReceiveGifts(Creature *)
    virtual bool32_t CanReceiveGifts(Creature* creature);
    // win1.41 00401c70 mac 103dc5a0 GameThingWithPos::CanActAsAContainer(Creature *)
    virtual bool32_t CanActAsAContainer(Creature* creature);
    // win1.41 00405450 mac 103e0d90 GameThingWithPos::IsBeingBuilt(Creature *)
    virtual bool32_t IsBeingBuilt(Creature* creature);
    // win1.41 00405460 mac 104272b0 GameThingWithPos::NeedsRepair(Creature *)
    virtual bool32_t NeedsRepair(Creature* creature);
    // win1.41 00405470 mac 1036f0b0 GameThingWithPos::IsOnFire(Creature *)
    virtual bool32_t IsOnFire(Creature* creature);
    // win1.41 00401c80 mac 10554b50 GameThingWithPos::IsNotOnFire(Creature *)
    virtual bool32_t IsNotOnFire(Creature* creature);
    // win1.41 00401ca0 mac 10596ca0 GameThingWithPos::CanBeUsedForBuilding(Creature *)
    virtual bool32_t CanBeUsedForBuilding(Creature* creature);
    // win1.41 00401cb0 mac 100a8420 GameThingWithPos::IsMushroom(Creature *)
    virtual bool32_t IsMushroom(Creature* creature);
    // win1.41 00401cc0 mac 100be460 GameThingWithPos::CanBeUsedForRepair(Creature *)
    virtual bool32_t CanBeUsedForRepair(Creature* creature);
    // win1.41 00401cd0 mac 103efed0 GameThingWithPos::CanBeGivenToTown(Creature *)
    virtual bool32_t CanBeGivenToTown(Creature* creature);
    // win1.41 00401ce0 mac 103efe80 GameThingWithPos::CanBeUsedToHoldWater(Creature *)
    virtual bool32_t CanBeUsedToHoldWater(Creature* creature);
    // win1.41 00405480 mac 100d56a0 GameThingWithPos::CanBePutInFoodPile(Creature *)
    virtual bool32_t CanBePutInFoodPile(Creature* creature);
    // win1.41 00405490 mac 105644c0 GameThingWithPos::CanBePutInWoodPile(Creature *)
    virtual bool32_t CanBePutInWoodPile(Creature* creature);
    // win1.41 00401cf0 mac 1054aa20 GameThingWithPos::CanHaveMagicFoodCastOnMe(Creature *)
    virtual bool32_t CanHaveMagicFoodCastOnMe(Creature* creature);
    // win1.41 00401d00 mac 1057ace0 GameThingWithPos::CanHaveMagicWoodCastOnMe(Creature *)
    virtual bool32_t CanHaveMagicWoodCastOnMe(Creature* creature);
    // win1.41 004054a0 mac 103e1250 GameThingWithPos::CanBeBroughtBackToCitadel(Creature *)
    virtual bool32_t CanBeBroughtBackToCitadel(Creature* creature);
    // win1.41 00401d10 mac 10091d50 GameThingWithPos::IsVillager(Creature *)
    virtual bool32_t IsVillager(Creature* creature);
    // win1.41 00401d20 mac 10478860 GameThingWithPos::IsVillagerFarFromHome(Creature *)
    virtual bool32_t IsVillagerFarFromHome(Creature* creature);
    // win1.41 00401d30 mac 1036e6c0 GameThingWithPos::IsVillagerInTownWithoutManyBreeders(Creature *)
    virtual bool32_t IsVillagerInTownWithoutManyBreeders(Creature* creature);
    // win1.41 00401d40 mac 101343a0 GameThingWithPos::IsVillagerNotWorshipping(Creature *)
    virtual bool32_t IsVillagerNotWorshipping(Creature* creature);
    // win1.41 00401d50 mac 1036f100 GameThingWithPos::IsVillagerBelongingToOtherPlayer(Creature *)
    virtual bool32_t IsVillagerBelongingToOtherPlayer(Creature* creature);
    // win1.41 00401d60 mac 101107f0 GameThingWithPos::IsCow(Creature *)
    virtual bool32_t IsCow(Creature* creature);
    // win1.41 004054b0 mac 10560070 GameThingWithPos::CanBePoodOn(Creature *)
    virtual bool32_t CanBePoodOn(Creature* creature);
    // win1.41 00401d70 mac 102aa900 GameThingWithPos::IsVillagerWhoHasNotBeenImpressedRecently(Creature *)
    virtual bool32_t IsVillagerWhoHasNotBeenImpressedRecently(Creature* creature);
    // win1.41 00401d80 mac 10569bf0 GameThingWithPos::IsVillagerWhoHasNotBeenDancedWithRecently(Creature *)
    virtual bool32_t IsVillagerWhoHasNotBeenDancedWithRecently(Creature* creature);
    // win1.41 00401d90 mac 10336360 GameThingWithPos::DoesVillagerBelongToATownWhichIsAlreadyImpressed(Creature *)
    virtual bool32_t DoesVillagerBelongToATownWhichIsAlreadyImpressed(Creature* creature);
    // win1.41 00401da0 mac 100fc2f0 GameThingWithPos::DoesTotemBelongToATownWhichIsVeryImpressedIndeed(Creature *)
    virtual bool32_t DoesTotemBelongToATownWhichIsVeryImpressedIndeed(Creature* creature);
    // win1.41 00401db0 mac 103c9640 GameThingWithPos::IsDominantCreature(Creature *)
    virtual bool32_t IsDominantCreature(Creature* creature);
    // win1.41 00401dc0 mac 100e9bb0 GameThingWithPos::CanBeDancedWith(Creature *)
    virtual bool32_t CanBeDancedWith(Creature* creature);
    // win1.41 00401dd0 mac 103c91e0 GameThingWithPos::IsAggressive(Creature *)
    virtual bool32_t IsAggressive(Creature* creature);
    // win1.41 00401de0 mac 100ed8f0 GameThingWithPos::IsStoragePit(Creature *)
    virtual bool32_t IsStoragePit(Creature* creature);
    // win1.41 00401e00 mac 10553fb0 GameThingWithPos::IsWorshipSite(Creature *)
    virtual bool32_t IsWorshipSite();
    // win1.41 00401df0 mac 103d4fd0 GameThingWithPos::IsWorshipSite(void)
    virtual bool32_t IsWorshipSite(Creature* creature);
    // win1.41 00401e10 mac 10136890 GameThingWithPos::GetWorshipSite(void)
    virtual WorshipSite* GetWorshipSite();
    // win1.41 004023b0 mac 1042dbb0 GameThingWithPos::IsWorkshop(Creature *)
    virtual bool32_t IsWorkshop();
    // win1.41 00401e20 mac 1002c6a0 GameThingWithPos::IsWorkshop(void)
    virtual bool32_t IsWorkshop(Creature* creature);
    // win1.41 004054c0 mac 1048f310 GameThingWithPos::IsBuildingWhichIsBeingBuilt(Creature *)
    virtual bool32_t IsBuildingWhichIsBeingBuilt(Creature* creature);
    // win1.41 00401e30 mac 104964f0 GameThingWithPos::IsStoragePitWithFoodInIt(Creature *)
    virtual bool32_t IsStoragePitWithFoodInIt(Creature* creature);
    // win1.41 00401e50 mac 1048f2b0 GameThingWithPos::IsFieldWhichNeedsWatering(Creature *)
    virtual bool32_t IsFieldWhichNeedsWatering(Creature* creature);
    // win1.41 00401e60 mac 1054fb10 GameThingWithPos::IsFieldWithFoodInIt(Creature *)
    virtual bool32_t IsFieldWithFoodInIt(Creature* creature);
    // win1.41 00401e70 mac 1054f730 GameThingWithPos::IsFieldBelongingToAnotherPlayer(Creature *)
    virtual bool32_t IsFieldBelongingToAnotherPlayer(Creature* creature);
    // win1.41 00401e80 mac 100b1d40 GameThingWithPos::IsStoragePitBelongingToAnotherPlayer(Creature *)
    virtual bool32_t IsStoragePitBelongingToAnotherPlayer(Creature* creature);
    // win1.41 00401e90 mac 10379d10 GameThingWithPos::IsStoragePitBelongingToMyPlayer(Creature *)
    virtual bool32_t IsStoragePitBelongingToMyPlayer(Creature* creature);
    // win1.41 00401ea0 mac 1055e010 GameThingWithPos::BenefitsFromHavingWaterSprinkledOnIt(Creature *)
    virtual bool32_t BenefitsFromHavingWaterSprinkledOnIt(Creature* creature);
    // win1.41 00402320 mac 1055e8b0 GameThingWithPos::IsTree(Creature *)
    virtual bool32_t IsTree();
    // win1.41 00401eb0 mac 1055e440 GameThingWithPos::IsTree(void)
    virtual bool32_t IsTree(Creature* creature);
    // win1.41 00401ec0 mac 10159e90 GameThingWithPos::IsTreeNotTooNearPlannedForest(Creature *)
    virtual bool32_t IsTreeNotTooNearPlannedForest(Creature* creature);
    // win1.41 00401ed0 mac 1017ac30 GameThingWithPos::IsTreeBigEnoughForCreature(Creature *)
    virtual bool32_t IsTreeBigEnoughForCreature(Creature* creature);
    // win1.41 00401ee0 mac 10552270 GameThingWithPos::IsAFoodPileOutsideStoragePit(Creature *)
    virtual bool32_t IsAFoodPileOutsideStoragePit(Creature* creature);
    // win1.41 00401ef0 mac 1055e160 GameThingWithPos::IsAWoodPileOutsideStoragePit(Creature *)
    virtual bool32_t IsAWoodPileOutsideStoragePit(Creature* creature);
    // win1.41 00401f00 mac 1055e800 GameThingWithPos::IsDoingSomethingInteresting(Creature *)
    virtual bool32_t IsDoingSomethingInteresting(Creature* creature);
    // win1.41 00401f10 mac 1055e630 GameThingWithPos::CanBeUsedForBuildingHomeByCreature(Creature *)
    virtual bool32_t CanBeUsedForBuildingHomeByCreature(Creature* creature);
    // win1.41 00401f60 mac 1055ec40 GameThingWithPos::IsPickupableRock(Creature *)
    virtual bool32_t IsPickupableRock(Creature* creature);
    // win1.41 00402360 mac 1055e860 GameThingWithPos::IsCitadelPart(void)
    virtual bool32_t IsCitadelPart();
    // win1.41 00401fa0 mac 1055df30 GameThingWithPos::IsCitadelPart(Creature *)
    virtual bool32_t IsCitadelPart(Creature* creature);
    // win1.41 00401fb0 mac 1055ddd0 GameThingWithPos::IsPlayingFootball(Creature *)
    virtual bool32_t IsPlayingFootball(Creature* creature);
    // win1.41 00401fc0 mac 10365210 GameThingWithPos::IsPlayingFootballAndMySideHasJustScored(Creature *)
    virtual bool32_t IsPlayingFootballAndMySideHasJustScored(Creature* creature);
    // win1.41 00401fd0 mac 1055f4e0 GameThingWithPos::IsPlayingFootballAndOtherSideHasJustScored(Creature *)
    virtual bool32_t IsPlayingFootballAndOtherSideHasJustScored(Creature* creature);
    // win1.41 004e3f30 mac 105e6470 GameThingWithPos::CanBeBroughtHomeByCreature(Creature *)
    virtual bool32_t CanBeBroughtHomeByCreature(Creature* creature);
    // win1.41 00401fe0 mac 100db860 GameThingWithPos::IsAnimalBelongingToOtherPlayer(Creature *)
    virtual bool32_t IsAnimalBelongingToOtherPlayer(Creature* creature);
    // win1.41 00401ff0 mac 103c3e80 GameThingWithPos::IsOneOffSpellBelongingToOtherPlayer(Creature *)
    virtual bool32_t IsOneOffSpellBelongingToOtherPlayer(Creature* creature);
    // win1.41 00402000 mac 10167800 GameThingWithPos::IsOneOffSpellAggressive(Creature *)
    virtual bool32_t IsOneOffSpellAggressive(Creature* creature);
    // win1.41 00402010 mac 10565280 GameThingWithPos::IsOneOffSpellCompassionate(Creature *)
    virtual bool32_t IsOneOffSpellCompassionate(Creature* creature);
    // win1.41 00402020 mac 103c95f0 GameThingWithPos::IsOneOffSpellPlayful(Creature *)
    virtual bool32_t IsOneOffSpellPlayful(Creature* creature);
    // win1.41 00402030 mac 103c9590 GameThingWithPos::IsOneOffSpellToRestoreHealth(Creature *)
    virtual bool32_t IsOneOffSpellToRestoreHealth(Creature* creature);
    // win1.41 004054d0 mac 100e74b0 GameThingWithPos::CanBeKickedByCreature(Creature *)
    virtual bool32_t CanBeKickedByCreature(Creature* creature);
    // win1.41 00402040 mac 1055f7f0 GameThingWithPos::CanBeStolenByCreature(Creature *)
    virtual bool32_t CanBeStolenByCreature(Creature* creature);
    // win1.41 004e4210 mac 105e5ae0 GameThingWithPos::IsStealableByCreature(Creature *)
    virtual bool32_t IsStealableByCreature(Creature* creature);
    // win1.41 00402050 mac 100e7500 GameThingWithPos::IsStealableSpell(Creature *)
    virtual bool32_t IsStealableSpell(Creature* creature);
    // win1.41 00402060 mac 10541f60 GameThingWithPos::IsStealableScaffold(Creature *)
    virtual bool32_t IsStealableScaffold(Creature* creature);
    // win1.41 00402070 mac 100dee30 GameThingWithPos::IsTownBelongingToOtherPlayer(Creature *)
    virtual bool32_t IsTownBelongingToOtherPlayer(Creature* creature);
    // win1.41 00402080 mac 10598e70 GameThingWithPos::IsTotemWithStealableSpell(Creature *)
    virtual bool32_t IsTotemWithStealableSpell(Creature* creature);
    // win1.41 00402090 mac 100bc240 GameThingWithPos::IsCreatureAvailableForJointActivity(Creature *)
    virtual bool32_t IsCreatureAvailableForJointActivity(Creature* creature);
    // win1.41 004020a0 mac 100bc380 GameThingWithPos::IsCreatureNotAvailableForJointActivity(Creature *)
    virtual bool32_t IsCreatureNotAvailableForJointActivity(Creature* creature);
    // win1.41 004020b0 mac 100b1cf0 GameThingWithPos::IsToyAwayFromHome(Creature *)
    virtual bool32_t IsToyAwayFromHome(Creature* creature);
    // win1.41 004020c0 mac 10378410 GameThingWithPos::IsToy(Creature *)
    virtual bool32_t IsToy(Creature* creature);
    // win1.41 004020d0 mac 1014d010 GameThingWithPos::IsToyBall(Creature *)
    virtual bool32_t IsToyBall(Creature* creature);
    // win1.41 004020e0 mac 10570d30 GameThingWithPos::IsToyDie(Creature *)
    virtual bool32_t IsToyDie(Creature* creature);
    // win1.41 004020f0 mac 1055e0d0 GameThingWithPos::IsToyCuddly(Creature *)
    virtual bool32_t IsToyCuddly(Creature* creature);
    // win1.41 00402350 mac 103d8a70 GameThingWithPos::IsLiving(void)
    virtual bool32_t IsLiving();
    // win1.41 00402100 mac 10560030 GameThingWithPos::IsLiving(Creature *)
    virtual bool32_t IsLiving(Creature* creature);
    // win1.41 00402110 mac 1007f100 GameThingWithPos::IsFence(void)
    virtual bool32_t IsFence();
    // win1.41 00402120 mac 1055f270 GameThingWithPos::IsSpellIcon(void)
    virtual bool32_t IsSpellIcon();
    // win1.41 004e4480 mac 105e54b0 GameThingWithPos::NothingScareyNearMe(Creature *)
    virtual bool32_t NothingScareyNearMe();
    // win1.41 00402130 mac 1054f090 GameThingWithPos::CanBeUsedForThrowingDamageByCreature(Creature *)
    virtual bool32_t CanBeUsedForThrowingDamageByCreature(Creature* creature);
    // win1.41 00402140 mac 1055f2b0 GameThingWithPos::IsCreatureWhoSeemsFriendly(Creature *)
    virtual bool32_t IsCreatureWhoSeemsFriendly(Creature* creature);
    // win1.41 00402150 mac 1019d0f0 GameThingWithPos::CanBeThrownInTheSeaPlayfully(Creature *)
    virtual bool32_t CanBeThrownInTheSeaPlayfully(Creature* creature);
    // win1.41 004054e0 mac 10554000 GameThingWithPos::GetCreatureMimicType(void)
    virtual uint32_t GetCreatureMimicType();
    // win1.41 004054f0 mac 100e5cc0 GameThingWithPos::GetHowMuchCreatureWantsToLookAtMe(void)
    virtual float GetHowMuchCreatureWantsToLookAtMe();
    // win1.41 00402160 mac 10057640 GameThingWithPos::IsFlock( const(void))
    virtual bool32_t IsFlock();
    // win1.41 00402170 mac 103dbe60 GameThingWithPos::IsDance( const(void))
    virtual bool32_t IsDance();
    // win1.41 00402180 mac 100d0970 GameThingWithPos::IsReward( const(void))
    virtual bool32_t IsReward();
    // win1.41 00402190 mac 10033ae0 GameThingWithPos::IsScriptContainer( const(void))
    virtual bool32_t IsScriptContainer();
    // win1.41 004021a0 mac 1055f140 GameThingWithPos::IsWeather( const(void))
    virtual bool32_t IsWeather();
    // win1.41 004021b0 mac 1015a0c0 GameThingWithPos::IsSpell( const(void))
    virtual bool32_t IsSpell();
    // win1.41 004021c0 mac 10000790 GameThingWithPos::IsDeletedWhenReleasedFromScript(void)
    virtual bool32_t IsDeletedWhenReleasedFromScript();
    // win1.41 004021d0 mac 100332d0 GameThingWithPos::IsMobileWallHug( const(void))
    virtual bool32_t IsMobileWallHug();
    // win1.41 004021e0 mac 10576f20 GameThingWithPos::IsActive( const(void))
    virtual bool32_t IsActive();
    // win1.41 004021f0 mac 1012f070 GameThingWithPos::IsObjectTurningTooFastForCameraToFollowSmoothly(void)
    virtual bool32_t IsObjectTurningTooFastForCameraToFollowSmoothly();
    // win1.41 005703a0 mac 103dbd40 GameThingWithPos::CalculateWhereIWillBeAfterNSeconds(float, LHPoint *)
    virtual void CalculateWhereIWillBeAfterNSeconds(float seconds, LHPoint* outPos);
    // win1.41 00768570 mac 10594c30 GameThingWithPos::AttitudeToCreatureEating(void)
    virtual uint32_t AttitudeToCreatureEating();
    // win1.41 00402200 mac 100db7b0 GameThingWithPos::CalculateDesireForFood(void)
    virtual float CalculateDesireForFood();
    // win1.41 00402210 mac 10111950 GameThingWithPos::CalculateDesireForRest(void)
    virtual float CalculateDesireForRest();
    // win1.41 00402220 mac 100db800 GameThingWithPos::CalculatePeopleHidingIndicator(void)
    virtual float CalculatePeopleHidingIndicator();
    // win1.41 00405500 mac 100b1980 GameThingWithPos::GetHeight(void)
    virtual float GetHeight();
    // win1.41 00402230 mac 10495720 GameThingWithPos::IsReadyForNewScriptAction(void)
    virtual bool32_t IsReadyForNewScriptAction();
    // win1.41 00570290 mac 1036ad90 GameThingWithPos::ForDrawFXGetNumVertices(void)
    virtual int ForDrawFXGetNumVertices();
    // win1.41 005702a0 mac 1056f610 GameThingWithPos::ForDrawFXGetVertexPos(long, LHPoint *)
    virtual void ForDrawFXGetVertexPos(int param_1, LHPoint* param_2);
    // win1.41 00405510 mac 10003460 GameThingWithPos::SetInScript(int)
    virtual void SetInScript(int param_1);
    // win1.41 00402240 mac 100552b0 GameThingWithPos::SetControlledByScript(int)
    virtual void SetControlledByScript(int param_1);
    // win1.41 00402270 mac 101a4ed0 GameThingWithPos::GetDeathReason(void)
    virtual DEATH_REASON GetDeathReason();
    // win1.41 00402280 mac 1004cf30 GameThingWithPos::IsInScript(void)
    virtual bool32_t IsInScript();
    // win1.41 00402290 mac 1033c710 GameThingWithPos::IsMaleVillager(void)
    virtual bool32_t IsMaleVillager();
    // win1.41 004022a0 mac 1056d120 GameThingWithPos::IsFemaleVillager(void)
    virtual bool32_t IsFemaleVillager();
    // win1.41 004022b0 mac 1002a950 GameThingWithPos::IsAnimal(void)
    virtual bool32_t IsAnimal();
    // win1.41 004022c0 mac 10572f10 GameThingWithPos::IsAChild(void)
    virtual bool32_t IsAChild();
    // win1.41 00405540 mac 103c1df0 GameThingWithPos::IsHouse(void)
    virtual bool32_t IsHouse();
    // win1.41 00405550 mac 103c2360 GameThingWithPos::IsObject( const(void))
    virtual bool32_t IsObject();
    // win1.41 004022d0 mac 100b6810 GameThingWithPos::IsFootball(void)
    virtual bool32_t IsFootball();
    // win1.41 004022e0 mac 10159fa0 GameThingWithPos::IsCitadel(void)
    virtual bool32_t IsCitadel();
    // win1.41 004022f0 mac 100fd0e0 GameThingWithPos::IsForest(void)
    virtual bool32_t IsForest();
    // win1.41 00402300 mac 105a2310 GameThingWithPos::IsMobileObject(void)
    virtual bool32_t IsMobileObject();
    // win1.41 00402310 mac 101c64c0 GameThingWithPos::IsMobileStatic(void)
    virtual bool32_t IsMobileStatic();
    // win1.41 00402330 mac 100d56f0 GameThingWithPos::IsAnyKindOfTree(void)
    virtual bool32_t IsAnyKindOfTree();
    // win1.41 00402340 mac 1055e120 GameThingWithPos::IsDeadTree(void)
    virtual bool32_t IsDeadTree();
    // win1.41 00402370 mac 105600c0 GameThingWithPos::IsPileFood(void)
    virtual bool32_t IsPileFood();
    // win1.41 00402380 mac 1055f840 GameThingWithPos::IsFeature(void)
    virtual bool32_t IsFeature();
    // win1.41 00402390 mac 100bc020 GameThingWithPos::IsScriptMarker(void)
    virtual bool32_t IsScriptMarker();
    // win1.41 004023a0 mac 10000870 GameThingWithPos::IsScriptHighlight(void)
    virtual bool32_t IsScriptHighlight();
    // win1.41 004178d0 mac 10380910 GameThingWithPos::IsWonder(void)
    virtual bool32_t IsWonder();
    // win1.41 004023c0 mac 10380730 GameThingWithPos::IsInfluenceRing(void)
    virtual bool32_t IsInfluenceRing();
    // win1.41 004023d0 mac 103809e0 GameThingWithPos::IsPuzzleGame(void)
    virtual bool32_t IsPuzzleGame();
    // win1.41 004023e0 mac 100a08c0 GameThingWithPos::IsScaffold(void)
    virtual bool32_t IsScaffold();
    // win1.41 004023f0 mac 1019d850 GameThingWithPos::IsSkeleton( const(void))
    virtual bool32_t IsSkeleton();
    // win1.41 00402400 mac 100dcd70 GameThingWithPos::IsPoisoned(void)
    virtual bool32_t IsPoisoned();
    // win1.41 00402410 mac 10427300 GameThingWithPos::IsSpeedUp(void)
    virtual bool32_t IsSpeedUp();
    // win1.41 00402420 mac 10170360 GameThingWithPos::IsParticleContainer(void)
    virtual bool32_t IsParticleContainer();
    // win1.41 00402430 mac 103dbea0 GameThingWithPos::IsSacrificeAltar(void)
    virtual bool32_t IsSacrificeAltar();
    // win1.41 00402440 mac 10570ed0 GameThingWithPos::IsPot(void)
    virtual bool32_t IsPot();
    // win1.41 00402450 mac 104daf10 GameThingWithPos::IsComputerPlayer(void)
    virtual bool32_t IsComputerPlayer();
    // win1.41 005701c0 mac 103623e0 GameThingWithPos::CanBeThrownByPlayer(void)
    virtual bool32_t CanBeThrownByPlayer();
    // win1.41 00402460 mac 1035b870 GameThingWithPos::SetSkeleton(int)
    virtual void SetSkeleton(int index);
    // win1.41 00402470 mac 1007b170 GameThingWithPos::IsSpellSeed(void)
    virtual bool32_t IsSpellSeed();
    // win1.41 00402480 mac 10571e10 GameThingWithPos::IsSpellShield(void)
    virtual bool32_t IsSpellShield();
    // win1.41 00402490 mac 1054ecb0 GameThingWithPos::IsPileResource(void)
    virtual bool32_t IsPileResource();
    // win1.41 004024a0 mac 100bb900 GameThingWithPos::IsScriptTimer(void)
    virtual bool32_t IsScriptTimer();
    // win1.41 004178e0 mac 102ff000 GameThingWithPos::CreateBuildingSite(void)
    virtual bool32_t CreateBuildingSite();
    // win1.41 00405560 mac 102ffbb0 GameThingWithPos::GetQueryFirstEnumText(void)
    virtual HELP_TEXT GetQueryFirstEnumText();
    // win1.41 00405570 mac 1055f0f0 GameThingWithPos::GetQueryLastEnumText(void)
    virtual HELP_TEXT GetQueryLastEnumText();
    // win1.41 005703d0 mac 10174fb0 GameThingWithPos::GetFOVHelpMessageSet(void)
    virtual uint32_t GetFOVHelpMessageSet();
    // win1.41 005703e0 mac 100e46f0 GameThingWithPos::GetFOVHelpCondition(void)
    virtual uint32_t GetFOVHelpCondition();
    // win1.41 00570200 mac 100008c0 GameThingWithPos::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // win1.41 004024b0 mac 100b2190 GameThingWithPos::GetFacingDirection(void)
    virtual float GetFacingDirection();
    // win1.41 004024c0 mac 1055fa50 GameThingWithPos::SetAffectedByWind(int)
    virtual void SetAffectedByWind(int param_1);
    // win1.41 004024d0 mac 100188b0 GameThingWithPos::GetReactionPower(void)
    virtual float GetReactionPower();
    // win1.41 00570570 mac 10541fb0 GameThingWithPos::GetSpellCastPos(void)
    virtual void GetSpellCastPos(MapCoords* outPos);
    // win1.41 004024e0 mac 1015a1b0 GameThingWithPos::CleanUpBeforeReset(void)
    virtual void CleanUpBeforeReset();

    // Constructors

    // win1.41 0055d050 mac 101bb2c0 GameThingWithPos::GameThingWithPos(void)
    GameThingWithPos();

    // Non-virtual Destructors

    // win1.41 00424800 mac 1015a100 GameThingWithPos::~GameThingWithPos(void)
    ~GameThingWithPos();

    // Non-virtual methods

    // win1.41 0056fe70 mac 103793b0 GameThingWithPos::GetBoredomMultiplier(Reaction *)
    int GetBoredomMultiplier(Reaction* param_1);
    // win1.41 005705d0 mac 10098a30 GameThingWithPos::SetToZero(void)
    void SetToZero();
    // win1.41 00768540 mac 10594d20 GameThingWithPos::AttitudeToCreatureNone(void)
    uint32_t AttitudeToCreatureNone();
    // win1.41 00768550 mac 00768550 GameThingWithPos::AttitudeToCreatureFear(void)
    uint32_t AttitudeToCreatureFear();
    // win1.41 00768560 mac 10594c80 GameThingWithPos::AttitudeToCreatureRespect(void)
    uint32_t AttitudeToCreatureRespect();
};

#endif /* BW1_DECOMP_GAME_THING_WITH_POS_INCLUDED_H */
