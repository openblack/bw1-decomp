#ifndef BW1_DECOMP_GAME_THING_WITH_POS_INCLUDED_H
#define BW1_DECOMP_GAME_THING_WITH_POS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <chlasm/Enum.h>          /* For enum DEATH_REASON, enum IMPRESSIVE_TYPE */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <re_common.h>            /* For bool32_t */

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

class GameThingWithPos : public GameThing
{
public:
	MapCoords coords;    /* 0x14 */
	Object*   MapChild; /* 0x20 */
	uint16_t  field_0x24;
	uint8_t   field_0x26;

	// Override methods

	// BW1W120 0056fe00 BW1M100 100bc3e0 GameThingWithPos::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0056fe20 BW1M100 106fd140 GameThingWithPos::Get3DSoundPos(LHPoint*)
	virtual int Get3DSoundPos(LHPoint* param_1);
	// BW1W120 00570350 BW1M100 10005560 GameThingWithPos::UseFootpathIfNecessary(Living *, MapCoords const &, unsigned char)
	virtual void UseFootpathIfNecessary(Living* param_1, const MapCoords* param_2, unsigned char param_3);
	// BW1W120 004178f0 BW1M100 101bb350 GameThingWithPos::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 005704a0 BW1M100 1016a2c0 GameThingWithPos::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 005703f0 BW1M100 10512f10 GameThingWithPos::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00570560 BW1M100 10430e60 GameThingWithPos::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 00401940 BW1M100 1004d010 GameThingWithPos::SetPos(MapCoords const &)
	virtual void SetPos(const MapCoords* param_2);
	// BW1W120 00401960 BW1M100 10032b70 GameThingWithPos::GetPos(void)
	virtual MapCoords* GetPos(MapCoords* param_1);
	// BW1W120 00405260 BW1M100 101c7ec0 GameThingWithPos::GetArrivePos(void)
	virtual MapCoords* GetArrivePos(MapCoords* param_1);
	// BW1W120 00401980 BW1M100 103d18f0 GameThingWithPos::GetArriPhysicsEditorCreatevePos(int)
	virtual void PhysicsEditorCreate(int param_1);
	// BW1W120 00405280 BW1M100 103e5940 GameThingWithPos::GetCreatureBeliefType(void)
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 00401990 BW1M100 103e0cc0 GameThingWithPos::GetCreatureBeliefListType(void)
	virtual uint32_t GetCreatureBeliefListType();
	// BW1W120 004019a0 BW1M100 103e0d50 GameThingWithPos::GetCitadel(void)
	virtual Citadel* GetCitadel();
	// BW1W120 00405290 BW1M100 103efe40 GameThingWithPos::GetOrigin(void)
	virtual uint32_t GetOrigin();
	// BW1W120 004052a0 BW1M100 103e1210 GameThingWithPos::GetLife(void)
	virtual float GetLife();
	// BW1W120 004247e0 BW1M100 103e0c80 GameThingWithPos::GetScale(void)
	virtual float GetScale();
	// BW1W120 004247f0 BW1M100 103e31e0 GameThingWithPos::SetScale(float)
	virtual void SetScale(float scale);
	// BW1W120 0056fe60 BW1M100 100bbfe0 GameThingWithPos::GetPower( const(void))
	virtual float GetPower();
	// BW1W120 0056fec0 BW1M100 10513050 GameThingWithPos::GetPSysPower( const(void))
	virtual float GetPSysPower();
	// BW1W120 00570220 BW1M100 103e3220 GameThingWithPos::GetSpeedInMetres( const(void))
	virtual float GetSpeedInMetres();
	// BW1W120 00570210 BW1M100 10357d80 GameThingWithPos::SetSpeedInMetres(float, int)
	virtual void SetSpeedInMetres(float speed, int scale);
	// BW1W120 00570230 BW1M100 10492670 GameThingWithPos::GetRunningSpeedInMetres(void)
	virtual float GetRunningSpeedInMetres();
	// BW1W120 005702b0 BW1M100 10172410 GameThingWithPos::GetDistanceFromObject(MapCoords const &)
	virtual float GetDistanceFromObject(const MapCoords* target);
	// BW1W120 00570240 BW1M100 101473d0 GameThingWithPos::GetDefaultSpeedInMetres(void)
	virtual float GetDefaultSpeedInMetres();
	// BW1W120 004019b0 BW1M100 103e1140 GameThingWithPos::SetHeight(float)
	virtual void SetHeight(float height);
	// BW1W120 004019c0 BW1M100 103e3580 GameThingWithPos::SetMaxHeight(float)
	virtual void SetMaxHeight(float height);
	// BW1W120 004019d0 BW1M100 103e11c0 GameThingWithPos::GetMaxHeight(void)
	virtual float GetMaxHeight();
	// BW1W120 005702e0 BW1M100 10110d20 GameThingWithPos::GetPSysBeamTargetPos(LHPoint *)
	virtual void GetPSysBeamTargetPos(LHPoint* pos);
	// BW1W120 00570260 BW1M100 1055f490 GameThingWithPos::GetSpeedInMetresPerSecond( const(void))
	virtual float GetSpeedInMetresPerSecond();
	// BW1W120 00570250 BW1M100 101723c0 GameThingWithPos::SetSpeedInMetresPerSecond(float, int)
	virtual void SetSpeedInMetresPerSecond(float speed, int scale);
	// BW1W120 00570270 BW1M100 100bc060 GameThingWithPos::GetRunningSpeedInMetresPerSecond(void)
	virtual float GetRunningSpeedInMetresPerSecond();
	// BW1W120 00570280 BW1M100 1055e070 GameThingWithPos::GetDefaultSpeedInMetresPerSecond(void)
	virtual float GetDefaultSpeedInMetresPerSecond();
	// BW1W120 004019e0 BW1M100 103e1180 GameThingWithPos::IsAnimate(void)
	virtual bool IsAnimate();
	// BW1W120 0056ff20 BW1M100 1019c820 GameThingWithPos::GetMovementDirection(LHPoint *)
	virtual void GetMovementDirection(LHPoint* pos);
	// BW1W120 0056ff50 BW1M100 1056c0f0 GameThingWithPos::GetPhysicsMovementDirection(LHPoint *)
	virtual void GetPhysicsMovementDirection(LHPoint* pos);
	// BW1W120 004019f0 BW1M100 103efd20 GameThingWithPos::GetInteractPos(void)
	virtual void GetInteractPos(LHPoint* pos);
	// BW1W120 004052b0 BW1M100 103efb80 GameThingWithPos::IsMoving( const(void))
	virtual bool IsMoving();
	// BW1W120 004052c0 BW1M100 103f07b0 GameThingWithPos::IsObjectInMap(void)
	virtual bool IsObjectInMap();
	// BW1W120 004052d0 BW1M100 103ee440 GameThingWithPos::IsDrowning(void)
	virtual bool IsDrowning();
	// BW1W120 00401a10 BW1M100 100cb2b0 GameThingWithPos::IsCannotBePickedUp( const(void))
	virtual bool IsCannotBePickedUp();
	// BW1W120 00570590 BW1M100 101bf190 GameThingWithPos::GetOverwritePickUpToolTip(void)
	virtual uint32_t GetOverwritePickUpToolTip();
	// BW1W120 00401a20 BW1M100 100cb270 GameThingWithPos::IsStompable(void)
	virtual bool IsStompable();
	// BW1W120 00401a30 BW1M100 100cb210 GameThingWithPos::IsAvailableForStateChange(void)
	virtual bool IsAvailableForStateChange();
	// BW1W120 005701b0 BW1M100 1007b9d0 GameThingWithPos::IsInteractable(void)
	virtual bool IsInteractable();
	// BW1W120 005705a0 BW1M100 100b34e0 GameThingWithPos::GetOverwriteInteractableToolTip(void)
	virtual uint32_t GetOverwriteInteractableToolTip();
	// BW1W120 005705b0 BW1M100 10097060 GameThingWithPos::GetOverwriteDropToolTip(void)
	virtual uint32_t GetOverwriteDropToolTip();
	// BW1W120 005705c0 BW1M100 103eff20 GameThingWithPos::GetOverwriteTapToolTip(void)
	virtual uint32_t GetOverwriteTapToolTip();
	// BW1W120 004052e0 BW1M100 10405890 GameThingWithPos::IsCastShadowAtNight(void)
	virtual bool32_t IsCastShadowAtNight();
	// BW1W120 004052f0 BW1M100 1055f350 GameThingWithPos::CleanupWhenDeleted(int)
	virtual void CleanupWhenDeleted(int param_1);
	// BW1W120 0056ff70 BW1M100 10569e60 GameThingWithPos::GetImpressiveType(void)
	virtual IMPRESSIVE_TYPE GetImpressiveType();
	// BW1W120 00401a40 BW1M100 103104e0 GameThingWithPos::GetImpressiveIntensity(IMPRESSIVE_TYPE)
	virtual float GetImpressiveIntensity(IMPRESSIVE_TYPE type);
	// BW1W120 00405300 BW1M100 100026f0 GameThingWithPos::GetImpressiveValue(Living *, Reaction *)
	virtual float GetImpressiveValue(Living* param_1, Reaction* param_2);
	// BW1W120 0056feb0 BW1M100 10002750 GameThingWithPos::GetUpdateOfBoredomValue(Reaction *, GameThingWithPos *)
	virtual float GetUpdateOfBoredomValue(Reaction* param_1, GameThingWithPos* param_2);
	// BW1W120 00401ae0 BW1M100 100d3ed0 GameThingWithPos::IsTown(void)
	virtual bool IsTown();
	// BW1W120 00401a50 BW1M100 1002b190 GameThingWithPos::IsTown(Creature *)
	virtual bool IsTown(Creature* param_1);
	// BW1W120 00401a60 BW1M100 103efcc0 GameThingWithPos::IsActivityObjectWhichAngerAppliesTo(Creature *)
	virtual bool IsActivityObjectWhichAngerAppliesTo(Creature* param_1);
	// BW1W120 00401a70 BW1M100 100c8d70 GameThingWithPos::IsActivityObjectWhichCompassionAppliesTo(Creature *)
	virtual bool IsActivityObjectWhichCompassionAppliesTo(Creature* param_1);
	// BW1W120 00401a80 BW1M100 10381cb0 GameThingWithPos::IsActivityObjectWhichPlayfulnessAppliesTo(Creature *)
	virtual bool IsActivityObjectWhichPlayfulnessAppliesTo(Creature* param_1);
	// BW1W120 00401a90 BW1M100 1055f950 GameThingWithPos::IsTownBelongingToAnotherPlayer(Creature *)
	virtual bool IsTownBelongingToAnotherPlayer(Creature* param_1);
	// BW1W120 00401aa0 BW1M100 10354120 GameThingWithPos::TrueFunction(void)
	virtual bool32_t TrueFunction();
	// BW1W120 00401ab0 BW1M100 100c53e0 GameThingWithPos::FalseFunction(void)
	virtual bool32_t FalseFunction();
	// BW1W120 00401ac0 BW1M100 10174ec0 GameThingWithPos::IsNotLiving(void)
	virtual bool32_t IsNotLiving();
	// BW1W120 00401ad0 BW1M100 100a9d40 GameThingWithPos::IsSuitableForCreatureActivity(void)
	virtual bool32_t IsSuitableForCreatureActivity();
	// BW1W120 00401af0 BW1M100 10093ec0 GameThingWithPos::IsTownCentre(void)
	virtual bool32_t IsTownCentre();
	// BW1W120 00401b00 BW1M100 101a36a0 GameThingWithPos::IsTotemStatue(void)
	virtual bool32_t IsTotemStatue();
	// BW1W120 00401b10 BW1M100 103d8ae0 GameThingWithPos::IsTownDesireFlag(void)
	virtual bool32_t IsTownDesireFlag();
	// BW1W120 00401f50 BW1M100 104a9cd0 GameThingWithPos::IsRock(Creature *)
	virtual bool32_t IsRock(Creature* creature);
	// BW1W120 00401b20 BW1M100 10135ee0 GameThingWithPos::IsRock(void)
	virtual bool32_t IsRock();
	// BW1W120 00401b30 BW1M100 103d8b30 GameThingWithPos::IsSpellDispenser(void)
	virtual bool32_t IsSpellDispenser();
	// BW1W120 00401b40 BW1M100 100c3630 GameThingWithPos::IsMist(void)
	virtual bool32_t IsMist();
	// BW1W120 00401b50 BW1M100 10097020 GameThingWithPos::IsQueryIcon(void)
	virtual bool32_t IsQueryIcon();
	// BW1W120 00401b60 BW1M100 105e81b0 GameThingWithPos::IsStreetLight(void)
	virtual bool32_t IsStreetLight();
	// BW1W120 00401b70 BW1M100 104a63f0 GameThingWithPos::IsStreetLantern(void)
	virtual bool32_t IsStreetLantern();
	// BW1W120 00405310 BW1M100 1009aa60 GameThingWithPos::IsAbode(void)
	virtual bool32_t IsAbode();
	// BW1W120 00401e40 BW1M100 104c28e0 GameThingWithPos::IsField(Creature *)
	virtual bool32_t IsField(Creature* creature);
	// BW1W120 00401b80 BW1M100 105e8170 GameThingWithPos::IsField(void)
	virtual bool32_t IsField();
	// BW1W120 00405320 BW1M100 105e8120 GameThingWithPos::IsBuildingMaterial(void)
	virtual bool32_t IsBuildingMaterial();
	// BW1W120 00401b90 BW1M100 1009eea0 GameThingWithPos::IsMagicFireBall(void)
	virtual bool32_t IsMagicFireBall();
	// BW1W120 00405330 BW1M100 104a6920 GameThingWithPos::IsSuitableForCreatureAction(void)
	virtual bool32_t IsSuitableForCreatureAction();
	// BW1W120 00401ba0 BW1M100 104a8310 GameThingWithPos::IsCitadelHeart(void)
	virtual bool32_t IsCitadelHeart();
	// BW1W120 00401bb0 BW1M100 10479f30 GameThingWithPos::IsDamaged(void)
	virtual bool32_t IsDamaged();
	// BW1W120 00401bd0 BW1M100 100c7090 GameThingWithPos::CanBeHealedByCreature(Creature *)
	virtual bool32_t CanBeHealedByCreature(Creature* creature);
	// BW1W120 00405340 BW1M100 1016b460 GameThingWithPos::CanBeEatenByCreature(Creature *)
	virtual bool32_t CanBeEatenByCreature(Creature* creature);
	// BW1W120 004e4b90 BW1M100 105e3d90 GameThingWithPos::CanCreatureEatMe(Creature *)
	virtual bool32_t CanCreatureEatMe(Creature* creature);
	// BW1W120 00405350 BW1M100 103820f0 GameThingWithPos::CanBeAttackedByCreature(Creature *)
	virtual bool32_t CanBeAttackedByCreature(Creature* creature);
	// BW1W120 00405360 BW1M100 101744e0 GameThingWithPos::CanBeFrighteningToCreature(Creature *)
	virtual bool32_t CanBeFrighteningToCreature(Creature* creature);
	// BW1W120 00405370 BW1M100 10550480 GameThingWithPos::CanBeHelpedByCreature(Creature *)
	virtual bool32_t CanBeHelpedByCreature(Creature* creature);
	// BW1W120 00405380 BW1M100 1055da80 GameThingWithPos::CanBePlayedWithByCreature(Creature *)
	virtual bool32_t CanBePlayedWithByCreature(Creature* creature);
	// BW1W120 00405390 BW1M100 1054f030 GameThingWithPos::CanBeImpressedByCreature(Creature *)
	virtual bool32_t CanBeImpressedByCreature(Creature* creature);
	// BW1W120 004053a0 BW1M100 10148420 GameThingWithPos::CanBeInspectedByCreature(Creature *)
	virtual bool32_t CanBeInspectedByCreature(Creature* creature);
	// BW1W120 004053b0 BW1M100 103d5780 GameThingWithPos::CanBePoodUponByCreature(Creature *)
	virtual bool32_t CanBePoodUponByCreature(Creature* creature);
	// BW1W120 00401be0 BW1M100 104956c0 GameThingWithPos::CanBeBefriendedByCreature(Creature *)
	virtual bool32_t CanBeBefriendedByCreature(Creature* creature);
	// BW1W120 004053c0 BW1M100 102fdd30 GameThingWithPos::CanBeSleptNextToByCreature(Creature *)
	virtual bool32_t CanBeSleptNextToByCreature(Creature* creature);
	// BW1W120 004053d0 BW1M100 102fde30 GameThingWithPos::CanBePickedUpByCreature(Creature *)
	virtual bool32_t CanBePickedUpByCreature(Creature* creature);
	// BW1W120 004053e0 BW1M100 100cb730 GameThingWithPos::CanBeStrokedByCreature(Creature *)
	virtual bool32_t CanBeStrokedByCreature(Creature* creature);
	// BW1W120 00401bf0 BW1M100 102fe080 GameThingWithPos::CanBeKissedByCreature(Creature *)
	virtual bool32_t CanBeKissedByCreature(Creature* creature);
	// BW1W120 004053f0 BW1M100 105609f0 GameThingWithPos::CanBeSetOnFire(Creature *)
	virtual bool32_t CanBeSetOnFire(Creature* creature);
	// BW1W120 00405400 BW1M100 1043fa70 GameThingWithPos::CanBeStompedOnByCreature(Creature *)
	virtual bool32_t CanBeStompedOnByCreature(Creature* creature);
	// BW1W120 00405410 BW1M100 10147ea0 GameThingWithPos::CanBeThrownByCreature(Creature *)
	virtual bool32_t CanBeThrownByCreature(Creature* creature);
	// BW1W120 00401c00 BW1M100 10569b20 GameThingWithPos::CanBeGivenToVillager(Creature *)
	virtual bool32_t CanBeGivenToVillager(Creature* creature);
	// BW1W120 00405420 BW1M100 101660d0 GameThingWithPos::CanBePutInAStoragePit(Creature *)
	virtual bool32_t CanBePutInAStoragePit(Creature* creature);
	// BW1W120 00405430 BW1M100 104fb730 GameThingWithPos::CanBeDestroyedByStoning(Creature *)
	virtual bool32_t CanBeDestroyedByStoning(Creature* creature);
	// BW1W120 00401c10 BW1M100 104fb7d0 GameThingWithPos::CanBeStonedAndEatenByCreature(Creature *)
	virtual bool32_t CanBeStonedAndEatenByCreature(Creature* creature);
	// BW1W120 00405440 BW1M100 10160390 GameThingWithPos::CanBeExaminedByCreature(Creature *)
	virtual bool32_t CanBeExaminedByCreature(Creature* creature);
	// BW1W120 00401c50 BW1M100 100d4ba0 GameThingWithPos::CanBeFoughtByCreature(Creature *)
	virtual bool32_t CanBeFoughtByCreature(Creature* creature);
	// BW1W120 00401c60 BW1M100 1038a3e0 GameThingWithPos::CanReceiveGifts(Creature *)
	virtual bool32_t CanReceiveGifts(Creature* creature);
	// BW1W120 00401c70 BW1M100 103dc5a0 GameThingWithPos::CanActAsAContainer(Creature *)
	virtual bool32_t CanActAsAContainer(Creature* creature);
	// BW1W120 00405450 BW1M100 103e0d90 GameThingWithPos::IsBeingBuilt(Creature *)
	virtual bool32_t IsBeingBuilt(Creature* creature);
	// BW1W120 00405460 BW1M100 104272b0 GameThingWithPos::NeedsRepair(Creature *)
	virtual bool32_t NeedsRepair(Creature* creature);
	// BW1W120 00405470 BW1M100 1036f0b0 GameThingWithPos::IsOnFire(Creature *)
	virtual bool32_t IsOnFire(Creature* creature);
	// BW1W120 00401c80 BW1M100 10554b50 GameThingWithPos::IsNotOnFire(Creature *)
	virtual bool32_t IsNotOnFire(Creature* creature);
	// BW1W120 00401ca0 BW1M100 10596ca0 GameThingWithPos::CanBeUsedForBuilding(Creature *)
	virtual bool32_t CanBeUsedForBuilding(Creature* creature);
	// BW1W120 00401cb0 BW1M100 100a8420 GameThingWithPos::IsMushroom(Creature *)
	virtual bool32_t IsMushroom(Creature* creature);
	// BW1W120 00401cc0 BW1M100 100be460 GameThingWithPos::CanBeUsedForRepair(Creature *)
	virtual bool32_t CanBeUsedForRepair(Creature* creature);
	// BW1W120 00401cd0 BW1M100 103efed0 GameThingWithPos::CanBeGivenToTown(Creature *)
	virtual bool32_t CanBeGivenToTown(Creature* creature);
	// BW1W120 00401ce0 BW1M100 103efe80 GameThingWithPos::CanBeUsedToHoldWater(Creature *)
	virtual bool32_t CanBeUsedToHoldWater(Creature* creature);
	// BW1W120 00405480 BW1M100 100d56a0 GameThingWithPos::CanBePutInFoodPile(Creature *)
	virtual bool32_t CanBePutInFoodPile(Creature* creature);
	// BW1W120 00405490 BW1M100 105644c0 GameThingWithPos::CanBePutInWoodPile(Creature *)
	virtual bool32_t CanBePutInWoodPile(Creature* creature);
	// BW1W120 00401cf0 BW1M100 1054aa20 GameThingWithPos::CanHaveMagicFoodCastOnMe(Creature *)
	virtual bool32_t CanHaveMagicFoodCastOnMe(Creature* creature);
	// BW1W120 00401d00 BW1M100 1057ace0 GameThingWithPos::CanHaveMagicWoodCastOnMe(Creature *)
	virtual bool32_t CanHaveMagicWoodCastOnMe(Creature* creature);
	// BW1W120 004054a0 BW1M100 103e1250 GameThingWithPos::CanBeBroughtBackToCitadel(Creature *)
	virtual bool32_t CanBeBroughtBackToCitadel(Creature* creature);
	// BW1W120 00401d10 BW1M100 10091d50 GameThingWithPos::IsVillager(Creature *)
	virtual bool32_t IsVillager(Creature* creature);
	// BW1W120 00401d20 BW1M100 10478860 GameThingWithPos::IsVillagerFarFromHome(Creature *)
	virtual bool32_t IsVillagerFarFromHome(Creature* creature);
	// BW1W120 00401d30 BW1M100 1036e6c0 GameThingWithPos::IsVillagerInTownWithoutManyBreeders(Creature *)
	virtual bool32_t IsVillagerInTownWithoutManyBreeders(Creature* creature);
	// BW1W120 00401d40 BW1M100 101343a0 GameThingWithPos::IsVillagerNotWorshipping(Creature *)
	virtual bool32_t IsVillagerNotWorshipping(Creature* creature);
	// BW1W120 00401d50 BW1M100 1036f100 GameThingWithPos::IsVillagerBelongingToOtherPlayer(Creature *)
	virtual bool32_t IsVillagerBelongingToOtherPlayer(Creature* creature);
	// BW1W120 00401d60 BW1M100 101107f0 GameThingWithPos::IsCow(Creature *)
	virtual bool32_t IsCow(Creature* creature);
	// BW1W120 004054b0 BW1M100 10560070 GameThingWithPos::CanBePoodOn(Creature *)
	virtual bool32_t CanBePoodOn(Creature* creature);
	// BW1W120 00401d70 BW1M100 102aa900 GameThingWithPos::IsVillagerWhoHasNotBeenImpressedRecently(Creature *)
	virtual bool32_t IsVillagerWhoHasNotBeenImpressedRecently(Creature* creature);
	// BW1W120 00401d80 BW1M100 10569bf0 GameThingWithPos::IsVillagerWhoHasNotBeenDancedWithRecently(Creature *)
	virtual bool32_t IsVillagerWhoHasNotBeenDancedWithRecently(Creature* creature);
	// BW1W120 00401d90 BW1M100 10336360 GameThingWithPos::DoesVillagerBelongToATownWhichIsAlreadyImpressed(Creature *)
	virtual bool32_t DoesVillagerBelongToATownWhichIsAlreadyImpressed(Creature* creature);
	// BW1W120 00401da0 BW1M100 100fc2f0 GameThingWithPos::DoesTotemBelongToATownWhichIsVeryImpressedIndeed(Creature *)
	virtual bool32_t DoesTotemBelongToATownWhichIsVeryImpressedIndeed(Creature* creature);
	// BW1W120 00401db0 BW1M100 103c9640 GameThingWithPos::IsDominantCreature(Creature *)
	virtual bool32_t IsDominantCreature(Creature* creature);
	// BW1W120 00401dc0 BW1M100 100e9bb0 GameThingWithPos::CanBeDancedWith(Creature *)
	virtual bool32_t CanBeDancedWith(Creature* creature);
	// BW1W120 00401dd0 BW1M100 103c91e0 GameThingWithPos::IsAggressive(Creature *)
	virtual bool32_t IsAggressive(Creature* creature);
	// BW1W120 00401de0 BW1M100 100ed8f0 GameThingWithPos::IsStoragePit(Creature *)
	virtual bool32_t IsStoragePit(Creature* creature);
	// BW1W120 00401e00 BW1M100 10553fb0 GameThingWithPos::IsWorshipSite(Creature *)
	virtual bool32_t IsWorshipSite();
	// BW1W120 00401df0 BW1M100 103d4fd0 GameThingWithPos::IsWorshipSite(void)
	virtual bool32_t IsWorshipSite(Creature* creature);
	// BW1W120 00401e10 BW1M100 10136890 GameThingWithPos::GetWorshipSite(void)
	virtual WorshipSite* GetWorshipSite();
	// BW1W120 004023b0 BW1M100 1042dbb0 GameThingWithPos::IsWorkshop(Creature *)
	virtual bool32_t IsWorkshop();
	// BW1W120 00401e20 BW1M100 1002c6a0 GameThingWithPos::IsWorkshop(void)
	virtual bool32_t IsWorkshop(Creature* creature);
	// BW1W120 004054c0 BW1M100 1048f310 GameThingWithPos::IsBuildingWhichIsBeingBuilt(Creature *)
	virtual bool32_t IsBuildingWhichIsBeingBuilt(Creature* creature);
	// BW1W120 00401e30 BW1M100 104964f0 GameThingWithPos::IsStoragePitWithFoodInIt(Creature *)
	virtual bool32_t IsStoragePitWithFoodInIt(Creature* creature);
	// BW1W120 00401e50 BW1M100 1048f2b0 GameThingWithPos::IsFieldWhichNeedsWatering(Creature *)
	virtual bool32_t IsFieldWhichNeedsWatering(Creature* creature);
	// BW1W120 00401e60 BW1M100 1054fb10 GameThingWithPos::IsFieldWithFoodInIt(Creature *)
	virtual bool32_t IsFieldWithFoodInIt(Creature* creature);
	// BW1W120 00401e70 BW1M100 1054f730 GameThingWithPos::IsFieldBelongingToAnotherPlayer(Creature *)
	virtual bool32_t IsFieldBelongingToAnotherPlayer(Creature* creature);
	// BW1W120 00401e80 BW1M100 100b1d40 GameThingWithPos::IsStoragePitBelongingToAnotherPlayer(Creature *)
	virtual bool32_t IsStoragePitBelongingToAnotherPlayer(Creature* creature);
	// BW1W120 00401e90 BW1M100 10379d10 GameThingWithPos::IsStoragePitBelongingToMyPlayer(Creature *)
	virtual bool32_t IsStoragePitBelongingToMyPlayer(Creature* creature);
	// BW1W120 00401ea0 BW1M100 1055e010 GameThingWithPos::BenefitsFromHavingWaterSprinkledOnIt(Creature *)
	virtual bool32_t BenefitsFromHavingWaterSprinkledOnIt(Creature* creature);
	// BW1W120 00402320 BW1M100 1055e8b0 GameThingWithPos::IsTree(Creature *)
	virtual bool32_t IsTree();
	// BW1W120 00401eb0 BW1M100 1055e440 GameThingWithPos::IsTree(void)
	virtual bool32_t IsTree(Creature* creature);
	// BW1W120 00401ec0 BW1M100 10159e90 GameThingWithPos::IsTreeNotTooNearPlannedForest(Creature *)
	virtual bool32_t IsTreeNotTooNearPlannedForest(Creature* creature);
	// BW1W120 00401ed0 BW1M100 1017ac30 GameThingWithPos::IsTreeBigEnoughForCreature(Creature *)
	virtual bool32_t IsTreeBigEnoughForCreature(Creature* creature);
	// BW1W120 00401ee0 BW1M100 10552270 GameThingWithPos::IsAFoodPileOutsideStoragePit(Creature *)
	virtual bool32_t IsAFoodPileOutsideStoragePit(Creature* creature);
	// BW1W120 00401ef0 BW1M100 1055e160 GameThingWithPos::IsAWoodPileOutsideStoragePit(Creature *)
	virtual bool32_t IsAWoodPileOutsideStoragePit(Creature* creature);
	// BW1W120 00401f00 BW1M100 1055e800 GameThingWithPos::IsDoingSomethingInteresting(Creature *)
	virtual bool32_t IsDoingSomethingInteresting(Creature* creature);
	// BW1W120 00401f10 BW1M100 1055e630 GameThingWithPos::CanBeUsedForBuildingHomeByCreature(Creature *)
	virtual bool32_t CanBeUsedForBuildingHomeByCreature(Creature* creature);
	// BW1W120 00401f60 BW1M100 1055ec40 GameThingWithPos::IsPickupableRock(Creature *)
	virtual bool32_t IsPickupableRock(Creature* creature);
	// BW1W120 00402360 BW1M100 1055e860 GameThingWithPos::IsCitadelPart(void)
	virtual bool32_t IsCitadelPart();
	// BW1W120 00401fa0 BW1M100 1055df30 GameThingWithPos::IsCitadelPart(Creature *)
	virtual bool32_t IsCitadelPart(Creature* creature);
	// BW1W120 00401fb0 BW1M100 1055ddd0 GameThingWithPos::IsPlayingFootball(Creature *)
	virtual bool32_t IsPlayingFootball(Creature* creature);
	// BW1W120 00401fc0 BW1M100 10365210 GameThingWithPos::IsPlayingFootballAndMySideHasJustScored(Creature *)
	virtual bool32_t IsPlayingFootballAndMySideHasJustScored(Creature* creature);
	// BW1W120 00401fd0 BW1M100 1055f4e0 GameThingWithPos::IsPlayingFootballAndOtherSideHasJustScored(Creature *)
	virtual bool32_t IsPlayingFootballAndOtherSideHasJustScored(Creature* creature);
	// BW1W120 004e3f30 BW1M100 105e6470 GameThingWithPos::CanBeBroughtHomeByCreature(Creature *)
	virtual bool32_t CanBeBroughtHomeByCreature(Creature* creature);
	// BW1W120 00401fe0 BW1M100 100db860 GameThingWithPos::IsAnimalBelongingToOtherPlayer(Creature *)
	virtual bool32_t IsAnimalBelongingToOtherPlayer(Creature* creature);
	// BW1W120 00401ff0 BW1M100 103c3e80 GameThingWithPos::IsOneOffSpellBelongingToOtherPlayer(Creature *)
	virtual bool32_t IsOneOffSpellBelongingToOtherPlayer(Creature* creature);
	// BW1W120 00402000 BW1M100 10167800 GameThingWithPos::IsOneOffSpellAggressive(Creature *)
	virtual bool32_t IsOneOffSpellAggressive(Creature* creature);
	// BW1W120 00402010 BW1M100 10565280 GameThingWithPos::IsOneOffSpellCompassionate(Creature *)
	virtual bool32_t IsOneOffSpellCompassionate(Creature* creature);
	// BW1W120 00402020 BW1M100 103c95f0 GameThingWithPos::IsOneOffSpellPlayful(Creature *)
	virtual bool32_t IsOneOffSpellPlayful(Creature* creature);
	// BW1W120 00402030 BW1M100 103c9590 GameThingWithPos::IsOneOffSpellToRestoreHealth(Creature *)
	virtual bool32_t IsOneOffSpellToRestoreHealth(Creature* creature);
	// BW1W120 004054d0 BW1M100 100e74b0 GameThingWithPos::CanBeKickedByCreature(Creature *)
	virtual bool32_t CanBeKickedByCreature(Creature* creature);
	// BW1W120 00402040 BW1M100 1055f7f0 GameThingWithPos::CanBeStolenByCreature(Creature *)
	virtual bool32_t CanBeStolenByCreature(Creature* creature);
	// BW1W120 004e4210 BW1M100 105e5ae0 GameThingWithPos::IsStealableByCreature(Creature *)
	virtual bool32_t IsStealableByCreature(Creature* creature);
	// BW1W120 00402050 BW1M100 100e7500 GameThingWithPos::IsStealableSpell(Creature *)
	virtual bool32_t IsStealableSpell(Creature* creature);
	// BW1W120 00402060 BW1M100 10541f60 GameThingWithPos::IsStealableScaffold(Creature *)
	virtual bool32_t IsStealableScaffold(Creature* creature);
	// BW1W120 00402070 BW1M100 100dee30 GameThingWithPos::IsTownBelongingToOtherPlayer(Creature *)
	virtual bool32_t IsTownBelongingToOtherPlayer(Creature* creature);
	// BW1W120 00402080 BW1M100 10598e70 GameThingWithPos::IsTotemWithStealableSpell(Creature *)
	virtual bool32_t IsTotemWithStealableSpell(Creature* creature);
	// BW1W120 00402090 BW1M100 100bc240 GameThingWithPos::IsCreatureAvailableForJointActivity(Creature *)
	virtual bool32_t IsCreatureAvailableForJointActivity(Creature* creature);
	// BW1W120 004020a0 BW1M100 100bc380 GameThingWithPos::IsCreatureNotAvailableForJointActivity(Creature *)
	virtual bool32_t IsCreatureNotAvailableForJointActivity(Creature* creature);
	// BW1W120 004020b0 BW1M100 100b1cf0 GameThingWithPos::IsToyAwayFromHome(Creature *)
	virtual bool32_t IsToyAwayFromHome(Creature* creature);
	// BW1W120 004020c0 BW1M100 10378410 GameThingWithPos::IsToy(Creature *)
	virtual bool32_t IsToy(Creature* creature);
	// BW1W120 004020d0 BW1M100 1014d010 GameThingWithPos::IsToyBall(Creature *)
	virtual bool32_t IsToyBall(Creature* creature);
	// BW1W120 004020e0 BW1M100 10570d30 GameThingWithPos::IsToyDie(Creature *)
	virtual bool32_t IsToyDie(Creature* creature);
	// BW1W120 004020f0 BW1M100 1055e0d0 GameThingWithPos::IsToyCuddly(Creature *)
	virtual bool32_t IsToyCuddly(Creature* creature);
	// BW1W120 00402350 BW1M100 103d8a70 GameThingWithPos::IsLiving(void)
	virtual bool32_t IsLiving();
	// BW1W120 00402100 BW1M100 10560030 GameThingWithPos::IsLiving(Creature *)
	virtual bool32_t IsLiving(Creature* creature);
	// BW1W120 00402110 BW1M100 1007f100 GameThingWithPos::IsFence(void)
	virtual bool32_t IsFence();
	// BW1W120 00402120 BW1M100 1055f270 GameThingWithPos::IsSpellIcon(void)
	virtual bool32_t IsSpellIcon();
	// BW1W120 004e4480 BW1M100 105e54b0 GameThingWithPos::NothingScareyNearMe(Creature *)
	virtual bool32_t NothingScareyNearMe();
	// BW1W120 00402130 BW1M100 1054f090 GameThingWithPos::CanBeUsedForThrowingDamageByCreature(Creature *)
	virtual bool32_t CanBeUsedForThrowingDamageByCreature(Creature* creature);
	// BW1W120 00402140 BW1M100 1055f2b0 GameThingWithPos::IsCreatureWhoSeemsFriendly(Creature *)
	virtual bool32_t IsCreatureWhoSeemsFriendly(Creature* creature);
	// BW1W120 00402150 BW1M100 1019d0f0 GameThingWithPos::CanBeThrownInTheSeaPlayfully(Creature *)
	virtual bool32_t CanBeThrownInTheSeaPlayfully(Creature* creature);
	// BW1W120 004054e0 BW1M100 10554000 GameThingWithPos::GetCreatureMimicType(void)
	virtual uint32_t GetCreatureMimicType();
	// BW1W120 004054f0 BW1M100 100e5cc0 GameThingWithPos::GetHowMuchCreatureWantsToLookAtMe(void)
	virtual float GetHowMuchCreatureWantsToLookAtMe();
	// BW1W120 00402160 BW1M100 10057640 GameThingWithPos::IsFlock( const(void))
	virtual bool32_t IsFlock();
	// BW1W120 00402170 BW1M100 103dbe60 GameThingWithPos::IsDance( const(void))
	virtual bool32_t IsDance();
	// BW1W120 00402180 BW1M100 100d0970 GameThingWithPos::IsReward( const(void))
	virtual bool32_t IsReward();
	// BW1W120 00402190 BW1M100 10033ae0 GameThingWithPos::IsScriptContainer( const(void))
	virtual bool32_t IsScriptContainer();
	// BW1W120 004021a0 BW1M100 1055f140 GameThingWithPos::IsWeather( const(void))
	virtual bool32_t IsWeather();
	// BW1W120 004021b0 BW1M100 1015a0c0 GameThingWithPos::IsSpell( const(void))
	virtual bool32_t IsSpell();
	// BW1W120 004021c0 BW1M100 10000790 GameThingWithPos::IsDeletedWhenReleasedFromScript(void)
	virtual bool32_t IsDeletedWhenReleasedFromScript();
	// BW1W120 004021d0 BW1M100 100332d0 GameThingWithPos::IsMobileWallHug( const(void))
	virtual bool32_t IsMobileWallHug();
	// BW1W120 004021e0 BW1M100 10576f20 GameThingWithPos::IsActive( const(void))
	virtual bool32_t IsActive();
	// BW1W120 004021f0 BW1M100 1012f070 GameThingWithPos::IsObjectTurningTooFastForCameraToFollowSmoothly(void)
	virtual bool32_t IsObjectTurningTooFastForCameraToFollowSmoothly();
	// BW1W120 005703a0 BW1M100 103dbd40 GameThingWithPos::CalculateWhereIWillBeAfterNSeconds(float, LHPoint *)
	virtual void CalculateWhereIWillBeAfterNSeconds(float seconds, LHPoint* outPos);
	// BW1W120 00768570 BW1M100 10594c30 GameThingWithPos::AttitudeToCreatureEating(void)
	virtual uint32_t AttitudeToCreatureEating();
	// BW1W120 00402200 BW1M100 100db7b0 GameThingWithPos::CalculateDesireForFood(void)
	virtual float CalculateDesireForFood();
	// BW1W120 00402210 BW1M100 10111950 GameThingWithPos::CalculateDesireForRest(void)
	virtual float CalculateDesireForRest();
	// BW1W120 00402220 BW1M100 100db800 GameThingWithPos::CalculatePeopleHidingIndicator(void)
	virtual float CalculatePeopleHidingIndicator();
	// BW1W120 00405500 BW1M100 100b1980 GameThingWithPos::GetHeight(void)
	virtual float GetHeight();
	// BW1W120 00402230 BW1M100 10495720 GameThingWithPos::IsReadyForNewScriptAction(void)
	virtual bool32_t IsReadyForNewScriptAction();
	// BW1W120 00570290 BW1M100 1036ad90 GameThingWithPos::ForDrawFXGetNumVertices(void)
	virtual int ForDrawFXGetNumVertices();
	// BW1W120 005702a0 BW1M100 1056f610 GameThingWithPos::ForDrawFXGetVertexPos(long, LHPoint *)
	virtual void ForDrawFXGetVertexPos(int param_1, LHPoint* param_2);
	// BW1W120 00405510 BW1M100 10003460 GameThingWithPos::SetInScript(int)
	virtual void SetInScript(int param_1);
	// BW1W120 00402240 BW1M100 100552b0 GameThingWithPos::SetControlledByScript(int)
	virtual void SetControlledByScript(int param_1);
	// BW1W120 00402270 BW1M100 101a4ed0 GameThingWithPos::GetDeathReason(void)
	virtual DEATH_REASON GetDeathReason();
	// BW1W120 00402280 BW1M100 1004cf30 GameThingWithPos::IsInScript(void)
	virtual bool32_t IsInScript();
	// BW1W120 00402290 BW1M100 1033c710 GameThingWithPos::IsMaleVillager(void)
	virtual bool32_t IsMaleVillager();
	// BW1W120 004022a0 BW1M100 1056d120 GameThingWithPos::IsFemaleVillager(void)
	virtual bool32_t IsFemaleVillager();
	// BW1W120 004022b0 BW1M100 1002a950 GameThingWithPos::IsAnimal(void)
	virtual bool32_t IsAnimal();
	// BW1W120 004022c0 BW1M100 10572f10 GameThingWithPos::IsAChild(void)
	virtual bool32_t IsAChild();
	// BW1W120 00405540 BW1M100 103c1df0 GameThingWithPos::IsHouse(void)
	virtual bool32_t IsHouse();
	// BW1W120 00405550 BW1M100 103c2360 GameThingWithPos::IsObject( const(void))
	virtual bool32_t IsObject();
	// BW1W120 004022d0 BW1M100 100b6810 GameThingWithPos::IsFootball(void)
	virtual bool32_t IsFootball();
	// BW1W120 004022e0 BW1M100 10159fa0 GameThingWithPos::IsCitadel(void)
	virtual bool32_t IsCitadel();
	// BW1W120 004022f0 BW1M100 100fd0e0 GameThingWithPos::IsForest(void)
	virtual bool32_t IsForest();
	// BW1W120 00402300 BW1M100 105a2310 GameThingWithPos::IsMobileObject(void)
	virtual bool32_t IsMobileObject();
	// BW1W120 00402310 BW1M100 101c64c0 GameThingWithPos::IsMobileStatic(void)
	virtual bool32_t IsMobileStatic();
	// BW1W120 00402330 BW1M100 100d56f0 GameThingWithPos::IsAnyKindOfTree(void)
	virtual bool32_t IsAnyKindOfTree();
	// BW1W120 00402340 BW1M100 1055e120 GameThingWithPos::IsDeadTree(void)
	virtual bool32_t IsDeadTree();
	// BW1W120 00402370 BW1M100 105600c0 GameThingWithPos::IsPileFood(void)
	virtual bool32_t IsPileFood();
	// BW1W120 00402380 BW1M100 1055f840 GameThingWithPos::IsFeature(void)
	virtual bool32_t IsFeature();
	// BW1W120 00402390 BW1M100 100bc020 GameThingWithPos::IsScriptMarker(void)
	virtual bool32_t IsScriptMarker();
	// BW1W120 004023a0 BW1M100 10000870 GameThingWithPos::IsScriptHighlight(void)
	virtual bool32_t IsScriptHighlight();
	// BW1W120 004178d0 BW1M100 10380910 GameThingWithPos::IsWonder(void)
	virtual bool32_t IsWonder();
	// BW1W120 004023c0 BW1M100 10380730 GameThingWithPos::IsInfluenceRing(void)
	virtual bool32_t IsInfluenceRing();
	// BW1W120 004023d0 BW1M100 103809e0 GameThingWithPos::IsPuzzleGame(void)
	virtual bool32_t IsPuzzleGame();
	// BW1W120 004023e0 BW1M100 100a08c0 GameThingWithPos::IsScaffold(void)
	virtual bool32_t IsScaffold();
	// BW1W120 004023f0 BW1M100 1019d850 GameThingWithPos::IsSkeleton( const(void))
	virtual bool32_t IsSkeleton();
	// BW1W120 00402400 BW1M100 100dcd70 GameThingWithPos::IsPoisoned(void)
	virtual bool32_t IsPoisoned();
	// BW1W120 00402410 BW1M100 10427300 GameThingWithPos::IsSpeedUp(void)
	virtual bool32_t IsSpeedUp();
	// BW1W120 00402420 BW1M100 10170360 GameThingWithPos::IsParticleContainer(void)
	virtual bool32_t IsParticleContainer();
	// BW1W120 00402430 BW1M100 103dbea0 GameThingWithPos::IsSacrificeAltar(void)
	virtual bool32_t IsSacrificeAltar();
	// BW1W120 00402440 BW1M100 10570ed0 GameThingWithPos::IsPot(void)
	virtual bool32_t IsPot();
	// BW1W120 00402450 BW1M100 104daf10 GameThingWithPos::IsComputerPlayer(void)
	virtual bool32_t IsComputerPlayer();
	// BW1W120 005701c0 BW1M100 103623e0 GameThingWithPos::CanBeThrownByPlayer(void)
	virtual bool32_t CanBeThrownByPlayer();
	// BW1W120 00402460 BW1M100 1035b870 GameThingWithPos::SetSkeleton(int)
	virtual void SetSkeleton(int index);
	// BW1W120 00402470 BW1M100 1007b170 GameThingWithPos::IsSpellSeed(void)
	virtual bool32_t IsSpellSeed();
	// BW1W120 00402480 BW1M100 10571e10 GameThingWithPos::IsSpellShield(void)
	virtual bool32_t IsSpellShield();
	// BW1W120 00402490 BW1M100 1054ecb0 GameThingWithPos::IsPileResource(void)
	virtual bool32_t IsPileResource();
	// BW1W120 004024a0 BW1M100 100bb900 GameThingWithPos::IsScriptTimer(void)
	virtual bool32_t IsScriptTimer();
	// BW1W120 004178e0 BW1M100 102ff000 GameThingWithPos::CreateBuildingSite(void)
	virtual bool32_t CreateBuildingSite();
	// BW1W120 00405560 BW1M100 102ffbb0 GameThingWithPos::GetQueryFirstEnumText(void)
	virtual HELP_TEXT GetQueryFirstEnumText();
	// BW1W120 00405570 BW1M100 1055f0f0 GameThingWithPos::GetQueryLastEnumText(void)
	virtual HELP_TEXT GetQueryLastEnumText();
	// BW1W120 005703d0 BW1M100 10174fb0 GameThingWithPos::GetFOVHelpMessageSet(void)
	virtual uint32_t GetFOVHelpMessageSet();
	// BW1W120 005703e0 BW1M100 100e46f0 GameThingWithPos::GetFOVHelpCondition(void)
	virtual uint32_t GetFOVHelpCondition();
	// BW1W120 00570200 BW1M100 100008c0 GameThingWithPos::GetScriptObjectType(void)
	virtual uint32_t GetScriptObjectType();
	// BW1W120 004024b0 BW1M100 100b2190 GameThingWithPos::GetFacingDirection(void)
	virtual float GetFacingDirection();
	// BW1W120 004024c0 BW1M100 1055fa50 GameThingWithPos::SetAffectedByWind(int)
	virtual void SetAffectedByWind(int param_1);
	// BW1W120 004024d0 BW1M100 100188b0 GameThingWithPos::GetReactionPower(void)
	virtual float GetReactionPower();
	// BW1W120 00570570 BW1M100 10541fb0 GameThingWithPos::GetSpellCastPos(void)
	virtual void GetSpellCastPos(MapCoords* outPos);
	// BW1W120 004024e0 BW1M100 1015a1b0 GameThingWithPos::CleanUpBeforeReset(void)
	virtual void CleanUpBeforeReset();

	// Constructors

	// BW1W120 0055d050 BW1M100 101bb2c0 GameThingWithPos::GameThingWithPos(void)
	GameThingWithPos();

	// Non-virtual Destructors

	// BW1W120 00424800 BW1M100 1015a100 GameThingWithPos::~GameThingWithPos(void)
	~GameThingWithPos();

	// Non-virtual methods

	// BW1W120 0056fe70 BW1M100 103793b0 GameThingWithPos::GetBoredomMultiplier(Reaction *)
	int GetBoredomMultiplier(Reaction* param_1);
	// BW1W120 005705d0 BW1M100 10098a30 GameThingWithPos::SetToZero(void)
	void SetToZero();
	// BW1W120 00768540 BW1M100 10594d20 GameThingWithPos::AttitudeToCreatureNone(void)
	uint32_t AttitudeToCreatureNone();
	// BW1W120 00768550 BW1M100 00768550 GameThingWithPos::AttitudeToCreatureFear(void)
	uint32_t AttitudeToCreatureFear();
	// BW1W120 00768560 BW1M100 10594c80 GameThingWithPos::AttitudeToCreatureRespect(void)
	uint32_t AttitudeToCreatureRespect();
};

#endif /* BW1_DECOMP_GAME_THING_WITH_POS_INCLUDED_H */
