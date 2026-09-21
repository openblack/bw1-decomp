#ifndef BW1_DECOMP_GAME_THING_WITH_POS_INCLUDED_H
#define BW1_DECOMP_GAME_THING_WITH_POS_INCLUDED_H

/* Unused here; emits the guarded atexit registration of std::ctype<wchar_t>::id
   (.CRT$XCU thunk -> mov cl,[0xFAC934]; push 0x407870; call atexit) that every
   object derived from this one ends with. */
#ifdef VERSION_BW1W120
#include <string>
#endif

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <chlasm/Enum.h>          /* For enum DEATH_REASON, enum IMPRESSIVE_TYPE */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <chlasm/ScriptEnums.h>   /* For enum SCRIPT_OBJECT_TYPE */
#include <re_common.h>            /* For bool32_t */

#include <Lionhead/LHLib/ver5.0/LHFastPointer.h> /* For LHFastPointer */

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

// fabricated: selector returned by GetCreatureBeliefListType, which picks which of a creature's
// belief lists an object belongs in.
enum CREATURE_BELIEF_LIST_TYPE
{
	CREATURE_BELIEF_LIST_TYPE_OBJECT = 1
};

enum GAME_THING_WITH_POS_FLAGS
{
	GAME_THING_WITH_POS_FLAG_IN_MAP = 0x1,
	GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE = 0x4,
	GAME_THING_WITH_POS_FLAG_IN_PHYSICS = 0x40,
	GAME_THING_WITH_POS_FLAG_ON_STRUCTURE = 0x80,
	GAME_THING_WITH_POS_FLAG_IN_SCRIPT = 0x200,
	GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT = 0x400,
	GAME_THING_WITH_POS_FLAG_DRAGGED_BY_LEASH = 0x800,
	GAME_THING_WITH_POS_FLAG_IMMOVABLE = 0x1000,
	GAME_THING_WITH_POS_FLAG_CANNOT_BE_PICKED_UP = 0x2000,
	GAME_THING_WITH_POS_FLAG_FIXED = 0x8000
};

class GameThingWithPos : public GameThing
{
public:
	MapCoords             Pos;      /* 0x14 */
	LHFastPointer<Object> MapChild; /* 0x20 */
	uint16_t              Flags;    /* 0x24 */
	uint8_t               field_0x26;

	// Override methods

	// BW1W120 0056fe00 BW1M119 0157be90
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0056fe20 BW1M119 01052ad0
	virtual int Get3DSoundPos(LHPoint* pos);
	// BW1W120 00570350 BW1M119 01005470
	virtual void UseFootpathIfNecessary(Living* living, const MapCoords& coords, uint8_t state);
	// BW1W120 004178f0 BW1M119 011c6dc0
	virtual char* GetDebugText();
	// BW1W120 005704a0 BW1M119 0149aaf0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 005703f0 BW1M119 013ec380
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00570560 BW1M119 0114f380
	virtual uint32_t GetSaveType();
	// BW1W120 00401940 BW1M119 0104f9a0
	virtual void SetPos(const MapCoords& pos) { Pos = pos; }
	// BW1W120 00401960 BW1M119 010354e0
	virtual MapCoords GetPos() { return Pos; }
	// BW1W120 00405260 BW1M119 010cf1e0
	virtual MapCoords GetArrivePos();
	// BW1W120 00401980 BW1M119 0142f120
	virtual void PhysicsEditorCreate(int type) { Pos.altitude = 0.0f; }
	// BW1W120 00405280 BW1M119 015685e0
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 00401990 BW1M119 01365f90
	virtual uint32_t GetCreatureBeliefListType() { return CREATURE_BELIEF_LIST_TYPE_OBJECT; }
	// BW1W120 004019a0 BW1M119 0111bad0
	virtual Citadel* GetCitadel() { return NULL; }
	// BW1W120 00405290 BW1M119 015699d0
	virtual uint32_t GetOrigin();
	// BW1W120 004052a0 BW1M119 010d87d0
	virtual float GetLife();
	// BW1W120 004247e0 BW1M119 013f9550
	virtual float GetScale();
	// BW1W120 004247f0 BW1M119 011ce9c0
	virtual void SetScale(float scale);
	// BW1W120 0056fe60 BW1M119 0142c830
	virtual float GetPower() const;
	// BW1W120 0056fec0 BW1M119 0149aaa0
	virtual float GetPSysPower() const;
	// BW1W120 00570220 BW1M119 01168c00
	virtual float GetSpeedInMetres() const;
	// BW1W120 00570210 BW1M119 016d59d4
	virtual void SetSpeedInMetres(float speed, int scale);
	// BW1W120 00570230 BW1M119 01105840
	virtual float GetRunningSpeedInMetres();
	// BW1W120 005702b0 BW1M119 01435340
	virtual float GetDistanceFromObject(const MapCoords& target);
	// BW1W120 00570240 BW1M119 013ca0f0
	virtual float GetDefaultSpeedInMetres();
	// BW1W120 004019b0 BW1M119 01389fb0
	virtual void SetHeight(float height) {}
	// BW1W120 004019c0 BW1M119 01568be0
	virtual void SetMaxHeight(float height) {}
	// BW1W120 004019d0 BW1M119 0135c650
	virtual float GetMaxHeight() { return 0.0f; }
	// BW1W120 005702e0 BW1M119 01361920
	virtual void GetPSysBeamTargetPos(LHPoint* pos);
	// BW1W120 00570260 BW1M119 01516e50
	virtual float GetSpeedInMetresPerSecond() const;
	// BW1W120 00570250 BW1M119 016d5a1c
	virtual void SetSpeedInMetresPerSecond(float speed, int scale);
	// BW1W120 00570270 BW1M119 01574e80
	virtual float GetRunningSpeedInMetresPerSecond();
	// BW1W120 00570280 BW1M119 01572bb0
	virtual float GetDefaultSpeedInMetresPerSecond();
	// BW1W120 004019e0 BW1M119 010c8930
	virtual bool32_t IsAnimate() { return false; }
	// BW1W120 0056ff20 BW1M119 01388c50
	virtual void GetMovementDirection(LHPoint* pos);
	// BW1W120 0056ff50 BW1M119 0117b4f0
	virtual void GetPhysicsMovementDirection(LHPoint* pos);
	// BW1W120 004019f0 BW1M119 0149b9d0
	virtual void GetInteractPos(LHPoint* pos);
	// BW1W120 004052b0 BW1M119 010ad630
	virtual bool32_t IsMoving() const;
	// BW1W120 004052c0 BW1M119 013e0960
	virtual bool32_t IsObjectInMap();
	// BW1W120 004052d0 BW1M119 011ac2d0
	virtual bool32_t IsDrowning();
	// BW1W120 00401a10 BW1M119 013e0a00
	virtual bool32_t IsCannotBePickedUp() const { return (Flags & GAME_THING_WITH_POS_FLAG_CANNOT_BE_PICKED_UP) != 0; }
	// BW1W120 00570590 BW1M119 015686e0
	virtual uint32_t GetOverwritePickUpToolTip();
	// BW1W120 00401a20 BW1M119 01568790
	virtual bool32_t IsStompable() { return false; }
	// BW1W120 00401a30 BW1M119 015c0420
	virtual bool32_t IsAvailableForStateChange()
	{
		return (Flags & GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE) == 0;
	}
	// BW1W120 005701b0 BW1M119 0107df70
	virtual bool32_t IsInteractable();
	// BW1W120 005705a0 BW1M119 010bf570
	virtual uint32_t GetOverwriteInteractableToolTip();
	// BW1W120 005705b0 BW1M119 01098fb0
	virtual uint32_t GetOverwriteDropToolTip();
	// BW1W120 005705c0 BW1M119 0136a880
	virtual uint32_t GetOverwriteTapToolTip();
	// BW1W120 004052e0 BW1M119 013e0a50
	virtual bool32_t IsCastShadowAtNight();
	// BW1W120 004052f0 BW1M119 010c66d0
	virtual void CleanupWhenDeleted(int param_1);
	// BW1W120 0056ff70 BW1M119 01388a80
	virtual IMPRESSIVE_TYPE GetImpressiveType();
	// BW1W120 00401a40 BW1M119 0111bb10
	virtual float GetImpressiveIntensity(IMPRESSIVE_TYPE type) { return 1.0f; }
	// BW1W120 00405300 BW1M119 010026e0
	virtual float GetImpressiveValue(Living* param_1, Reaction* param_2);
	// BW1W120 0056feb0 BW1M119 01002740
	virtual float GetUpdateOfBoredomValue(Reaction* param_1, GameThingWithPos* param_2);
	// BW1W120 00401a50 BW1M119 015efff0
	virtual bool32_t IsTown(Creature* creature) { return false; }
	// BW1W120 00401ae0 BW1M119 0102dd00
	virtual bool32_t IsTown() { return false; }
	// BW1W120 00401a60 BW1M119 01568460
	virtual bool32_t IsActivityObjectWhichAngerAppliesTo(Creature* creature) { return false; }
	// BW1W120 00401a70 BW1M119 015efed0
	virtual bool32_t IsActivityObjectWhichCompassionAppliesTo(Creature* creature) { return false; }
	// BW1W120 00401a80 BW1M119 015efe60
	virtual bool32_t IsActivityObjectWhichPlayfulnessAppliesTo(Creature* creature) { return false; }
	// BW1W120 00401a90 BW1M119 01576280
	virtual bool32_t IsTownBelongingToAnotherPlayer(Creature* creature) { return false; }
	// BW1W120 00401aa0 BW1M119 014ae2b0
	virtual bool32_t TrueFunction() { return true; }
	// BW1W120 00401ab0 BW1M119 014afda0
	virtual bool32_t FalseFunction() { return false; }
	// BW1W120 00401ac0 BW1M119 01482170
	virtual bool32_t IsNotLiving() { return true; }
	// BW1W120 00401ad0 BW1M119 010ca610
	virtual bool32_t IsSuitableForCreatureActivity() { return false; }
	// BW1W120 00401af0 BW1M119 01096120
	virtual bool32_t IsTownCentre() { return false; }
	// BW1W120 00401b00 BW1M119 0138a430
	virtual bool32_t IsTotemStatue() { return false; }
	// BW1W120 00401b10 BW1M119 0117d930
	virtual bool32_t IsTownDesireFlag() { return false; }
	// BW1W120 00401b20 BW1M119 01566900
	virtual bool32_t IsRock() { return false; }
	// BW1W120 00401f50 BW1M119 01559b10
	virtual bool32_t IsRock(Creature* creature) { return IsRock(); }
	// BW1W120 00401b30 BW1M119 01558730
	virtual bool32_t IsSpellDispenser() { return false; }
	// BW1W120 00401b40 BW1M119 01363340
	virtual bool32_t IsMist() { return false; }
	// BW1W120 00401b50 BW1M119 01098f70
	virtual bool32_t IsQueryIcon() { return false; }
	// BW1W120 00401b60 BW1M119 01569230
	virtual bool32_t IsStreetLight() { return false; }
	// BW1W120 00401b70 BW1M119 012ffbb0
	virtual bool32_t IsStreetLantern() { return false; }
	// BW1W120 00405310 BW1M119 0109c880
	virtual bool32_t IsAbode();
	// BW1W120 00401b80 BW1M119 012ffef0
	virtual bool32_t IsField() { return false; }
	// BW1W120 00401e40 BW1M119 010cfa60
	virtual bool32_t IsField(Creature* creature) { return false; }
	// BW1W120 00405320 BW1M119 01569a10
	virtual bool32_t IsBuildingMaterial();
	// BW1W120 00401b90 BW1M119 010a0bd0
	virtual bool32_t IsMagicFireBall() { return false; }
	// BW1W120 00405330 BW1M119 0116d760
	virtual bool32_t IsSuitableForCreatureAction();
	// BW1W120 00401ba0 BW1M119 0117dee0
	virtual bool32_t IsCitadelHeart() { return false; }
	// BW1W120 00401bb0 BW1M119 0116e550
	virtual bool32_t IsDamaged() { return GetLife() < 1.0f; }
	// BW1W120 00401bd0 BW1M119 01502940
	virtual bool32_t CanBeHealedByCreature(Creature* creature) { return false; }
	// BW1W120 00405340 BW1M119 015029d0
	virtual bool32_t CanBeEatenByCreature(Creature* creature);
	// BW1W120 004e4b90 BW1M119 015eba90
	virtual bool32_t CanCreatureEatMe(Creature* creature);
	// BW1W120 00405350 BW1M119 011ce580
	virtual bool32_t CanBeAttackedByCreature(Creature* creature);
	// BW1W120 00405360 BW1M119 010d9460
	virtual bool32_t CanBeFrighteningToCreature(Creature* creature);
	// BW1W120 00405370 BW1M119 01391bf0
	virtual bool32_t CanBeHelpedByCreature(Creature* creature);
	// BW1W120 00405380 BW1M119 015e5c90
	virtual bool32_t CanBePlayedWithByCreature(Creature* creature);
	// BW1W120 00405390 BW1M119 015e5c30
	virtual bool32_t CanBeImpressedByCreature(Creature* creature);
	// BW1W120 004053a0 BW1M119 015e5cf0
	virtual bool32_t CanBeInspectedByCreature(Creature* creature);
	// BW1W120 004053b0 BW1M119 013e4bd0
	virtual bool32_t CanBePoodUponByCreature(Creature* creature);
	// BW1W120 00401be0 BW1M119 013e9190
	virtual bool32_t CanBeBefriendedByCreature(Creature* creature) { return false; }
	// BW1W120 004053c0 BW1M119 0142fb60
	virtual bool32_t CanBeSleptNextToByCreature(Creature* creature);
	// BW1W120 004053d0 BW1M119 01376c50
	virtual bool32_t CanBePickedUpByCreature(Creature* creature);
	// BW1W120 004053e0 BW1M119 0155e2f0
	virtual bool32_t CanBeStrokedByCreature(Creature* creature);
	// BW1W120 00401bf0 BW1M119 0136a6f0
	virtual bool32_t CanBeKissedByCreature(Creature* creature) { return false; }
	// BW1W120 004053f0 BW1M119 010abd60
	virtual bool32_t CanBeSetOnFire(Creature* creature);
	// BW1W120 00405400 BW1M119 010c1960
	virtual bool32_t CanBeStompedOnByCreature(Creature* creature);
	// BW1W120 00405410 BW1M119 013f9780
	virtual bool32_t CanBeThrownByCreature(Creature* creature);
	// BW1W120 00401c00 BW1M119 013f9730
	virtual bool32_t CanBeGivenToVillager(Creature* creature) { return false; }
	// BW1W120 00405420 BW1M119 011adb00
	virtual bool32_t CanBePutInAStoragePit(Creature* creature);
	// BW1W120 00405430 BW1M119 0156d460
	virtual bool32_t CanBeDestroyedByStoning(Creature* creature);
	// BW1W120 00401c10 BW1M119 01410920
	virtual bool32_t CanBeStonedAndEatenByCreature(Creature* creature)
	{
		return CanBePickedUpByCreature(creature) && CanBeDestroyedByStoning(creature);
	}
	// BW1W120 00405440 BW1M119 01582fd0
	virtual bool32_t CanBeExaminedByCreature(Creature* creature);
	// BW1W120 00401c50 BW1M119 013e99e0
	virtual bool32_t CanBeFoughtByCreature(Creature* creature) { return false; }
	// BW1W120 00401c60 BW1M119 010c8a30
	virtual bool32_t CanReceiveGifts(Creature* creature) { return false; }
	// BW1W120 00401c70 BW1M119 014808e0
	virtual bool32_t CanActAsAContainer(Creature* creature) { return false; }
	// BW1W120 00405450 BW1M119 01376160
	virtual bool32_t IsBeingBuilt(Creature* creature);
	// BW1W120 00405460 BW1M119 010a7d00
	virtual bool32_t NeedsRepair(Creature* creature);
	// BW1W120 00405470 BW1M119 01376cb0
	virtual bool32_t IsOnFire(Creature* creature);
	// BW1W120 00401c80 BW1M119 0111a050
	virtual bool32_t IsNotOnFire(Creature* creature) { return !IsOnFire(creature); }
	// BW1W120 00401ca0 BW1M119 015691e0
	virtual bool32_t CanBeUsedForBuilding(Creature* creature) { return false; }
	// BW1W120 00401cb0 BW1M119 011d3670
	virtual bool32_t IsMushroom(Creature* creature) { return false; }
	// BW1W120 00401cc0 BW1M119 015729f0
	virtual bool32_t CanBeUsedForRepair(Creature* creature) { return false; }
	// BW1W120 00401cd0 BW1M119 0133e810
	virtual bool32_t CanBeGivenToTown(Creature* creature) { return false; }
	// BW1W120 00401ce0 BW1M119 011054e0
	virtual bool32_t CanBeUsedToHoldWater(Creature* creature) { return false; }
	// BW1W120 00405480 BW1M119 013d1830
	virtual bool32_t CanBePutInFoodPile(Creature* creature);
	// BW1W120 00405490 BW1M119 010edce0
	virtual bool32_t CanBePutInWoodPile(Creature* creature);
	// BW1W120 00401cf0 BW1M119 013d14f0
	virtual bool32_t CanHaveMagicFoodCastOnMe(Creature* creature) { return false; }
	// BW1W120 00401d00 BW1M119 010f2a50
	virtual bool32_t CanHaveMagicWoodCastOnMe(Creature* creature) { return false; }
	// BW1W120 004054a0 BW1M119 013dce70
	virtual bool32_t CanBeBroughtBackToCitadel(Creature* creature);
	// BW1W120 00401d10 BW1M119 01093f70
	virtual bool32_t IsVillager(Creature* creature) { return false; }
	// BW1W120 00401d20 BW1M119 0113f470
	virtual bool32_t IsVillagerFarFromHome(Creature* creature) { return false; }
	// BW1W120 00401d30 BW1M119 010b4380
	virtual bool32_t IsVillagerInTownWithoutManyBreeders(Creature* creature) { return false; }
	// BW1W120 00401d40 BW1M119 0149c260
	virtual bool32_t IsVillagerNotWorshipping(Creature* creature) { return false; }
	// BW1W120 00401d50 BW1M119 014978a0
	virtual bool32_t IsVillagerBelongingToOtherPlayer(Creature* creature) { return false; }
	// BW1W120 00401d60 BW1M119 0149dcd0
	virtual bool32_t IsCow(Creature* creature) { return false; }
	// BW1W120 004054b0 BW1M119 01497850
	virtual bool32_t CanBePoodOn(Creature* creature);
	// BW1W120 00401d70 BW1M119 01559160
	virtual bool32_t IsVillagerWhoHasNotBeenImpressedRecently(Creature* creature) { return false; }
	// BW1W120 00401d80 BW1M119 01558e50
	virtual bool32_t IsVillagerWhoHasNotBeenDancedWithRecently(Creature* creature) { return false; }
	// BW1W120 00401d90 BW1M119 010b48a0
	virtual bool32_t DoesVillagerBelongToATownWhichIsAlreadyImpressed(Creature* creature) { return false; }
	// BW1W120 00401da0 BW1M119 013cf3f0
	virtual bool32_t DoesTotemBelongToATownWhichIsVeryImpressedIndeed(Creature* creature) { return false; }
	// BW1W120 00401db0 BW1M119 01566e70
	virtual bool32_t IsDominantCreature(Creature* creature) { return false; }
	// BW1W120 00401dc0 BW1M119 015674d0
	virtual bool32_t CanBeDancedWith(Creature* creature) { return false; }
	// BW1W120 00401dd0 BW1M119 01567cb0
	virtual bool32_t IsAggressive(Creature* creature) { return false; }
	// BW1W120 00401de0 BW1M119 011620d0
	virtual bool32_t IsStoragePit(Creature* creature) { return false; }
	// BW1W120 00401df0 BW1M119 0155ba00
	virtual bool32_t IsWorshipSite(Creature* creature) { return false; }
	// BW1W120 00401e00 BW1M119 01391b10
	virtual bool32_t IsWorshipSite() { return false; }
	// BW1W120 00401e10 BW1M119 01567230
	virtual WorshipSite* GetWorshipSite() { return NULL; }
	// BW1W120 00401e20 BW1M119 01567720
	virtual bool32_t IsWorkshop(Creature* creature) { return false; }
	// BW1W120 004023b0 BW1M119 0102f210
	virtual bool32_t IsWorkshop() { return false; }
	// BW1W120 004054c0 BW1M119 01567f80
	virtual bool32_t IsBuildingWhichIsBeingBuilt(Creature* creature);
	// BW1W120 00401e30 BW1M119 01566d50
	virtual bool32_t IsStoragePitWithFoodInIt(Creature* creature) { return false; }
	// BW1W120 00401e50 BW1M119 01567c50
	virtual bool32_t IsFieldWhichNeedsWatering(Creature* creature) { return false; }
	// BW1W120 00401e60 BW1M119 01566bf0
	virtual bool32_t IsFieldWithFoodInIt(Creature* creature) { return false; }
	// BW1W120 00401e70 BW1M119 01300f90
	virtual bool32_t IsFieldBelongingToAnotherPlayer(Creature* creature) { return false; }
	// BW1W120 00401e80 BW1M119 01568730
	virtual bool32_t IsStoragePitBelongingToAnotherPlayer(Creature* creature) { return false; }
	// BW1W120 00401e90 BW1M119 010e0630
	virtual bool32_t IsStoragePitBelongingToMyPlayer(Creature* creature) { return false; }
	// BW1W120 00401ea0 BW1M119 013cbe50
	virtual bool32_t BenefitsFromHavingWaterSprinkledOnIt(Creature* creature) { return false; }
	// BW1W120 00401eb0 BW1M119 0156e0a0
	virtual bool32_t IsTree(Creature* creature) { return false; }
	// BW1W120 00402320 BW1M119 01370d80
	virtual bool32_t IsTree() { return false; }
	// BW1W120 00401ec0 BW1M119 013d17d0
	virtual bool32_t IsTreeNotTooNearPlannedForest(Creature* creature) { return false; }
	// BW1W120 00401ed0 BW1M119 013d1770
	virtual bool32_t IsTreeBigEnoughForCreature(Creature* creature) { return false; }
	// BW1W120 00401ee0 BW1M119 010eb580
	virtual bool32_t IsAFoodPileOutsideStoragePit(Creature* creature) { return false; }
	// BW1W120 00401ef0 BW1M119 01568a70
	virtual bool32_t IsAWoodPileOutsideStoragePit(Creature* creature) { return false; }
	// BW1W120 00401f00 BW1M119 010eb5e0
	virtual bool32_t IsDoingSomethingInteresting(Creature* creature) { return false; }
	// BW1W120 00401f10 BW1M119 0154ae70
	virtual bool32_t CanBeUsedForBuildingHomeByCreature(Creature* creature)
	{
		return IsRock() && CanBeUsedForBuilding(creature) && !IsInsideCreatureHome(creature);
	}
	// BW1W120 00401f60 BW1M119 010e4430
	virtual bool32_t IsPickupableRock(Creature* creature) { return IsRock() && CanBePickedUpByCreature(creature); }
	// BW1W120 00401fa0 BW1M119 010bf8e0
	virtual bool32_t IsCitadelPart(Creature* creature) { return false; }
	// BW1W120 00402360 BW1M119 0159ff10
	virtual bool32_t IsCitadelPart() { return false; }
	// BW1W120 00401fb0 BW1M119 010bfb80
	virtual bool32_t IsPlayingFootball(Creature* creature) { return false; }
	// BW1W120 00401fc0 BW1M119 014dc5b0
	virtual bool32_t IsPlayingFootballAndMySideHasJustScored(Creature* creature) { return false; }
	// BW1W120 00401fd0 BW1M119 0158f8f0
	virtual bool32_t IsPlayingFootballAndOtherSideHasJustScored(Creature* creature) { return false; }
	// BW1W120 004e3f30 BW1M119 015ee170
	virtual bool32_t CanBeBroughtHomeByCreature(Creature* creature);
	// BW1W120 00401fe0 BW1M119 013ee5d0
	virtual bool32_t IsAnimalBelongingToOtherPlayer(Creature* creature) { return false; }
	// BW1W120 00401ff0 BW1M119 01579080
	virtual bool32_t IsOneOffSpellBelongingToOtherPlayer(Creature* creature) { return false; }
	// BW1W120 00402000 BW1M119 01567190
	virtual bool32_t IsOneOffSpellAggressive(Creature* creature) { return false; }
	// BW1W120 00402010 BW1M119 01569180
	virtual bool32_t IsOneOffSpellCompassionate(Creature* creature) { return false; }
	// BW1W120 00402020 BW1M119 013e09b0
	virtual bool32_t IsOneOffSpellPlayful(Creature* creature) { return false; }
	// BW1W120 00402030 BW1M119 01187420
	virtual bool32_t IsOneOffSpellToRestoreHealth(Creature* creature) { return false; }
	// BW1W120 004054d0 BW1M119 015684c0
	virtual bool32_t CanBeKickedByCreature(Creature* creature);
	// BW1W120 00402040 BW1M119 01558780
	virtual bool32_t CanBeStolenByCreature(Creature* creature) { return false; }
	// BW1W120 004e4210 BW1M119 015ed7e0
	virtual bool32_t IsStealableByCreature(Creature* creature);
	// BW1W120 00402050 BW1M119 01568510
	virtual bool32_t IsStealableSpell(Creature* creature) { return false; }
	// BW1W120 00402060 BW1M119 011a6230
	virtual bool32_t IsStealableScaffold(Creature* creature) { return false; }
	// BW1W120 00402070 BW1M119 0155d790
	virtual bool32_t IsTownBelongingToOtherPlayer(Creature* creature) { return false; }
	// BW1W120 00402080 BW1M119 010ea020
	virtual bool32_t IsTotemWithStealableSpell(Creature* creature) { return false; }
	// BW1W120 00402090 BW1M119 010da200
	virtual bool32_t IsCreatureAvailableForJointActivity(Creature* creature) { return false; }
	// BW1W120 004020a0 BW1M119 013e3d90
	virtual bool32_t IsCreatureNotAvailableForJointActivity(Creature* creature) { return false; }
	// BW1W120 004020b0 BW1M119 01115510
	virtual bool32_t IsToyAwayFromHome(Creature* creature) { return false; }
	// BW1W120 004020c0 BW1M119 01568a30
	virtual bool32_t IsToy(Creature* creature) { return false; }
	// BW1W120 004020d0 BW1M119 01568380
	virtual bool32_t IsToyBall(Creature* creature) { return false; }
	// BW1W120 004020e0 BW1M119 011622b0
	virtual bool32_t IsToyDie(Creature* creature) { return false; }
	// BW1W120 004020f0 BW1M119 0149de10
	virtual bool32_t IsToyCuddly(Creature* creature) { return false; }
	// BW1W120 00402100 BW1M119 013530e0
	virtual bool32_t IsLiving(Creature* creature) { return IsLiving(); }
	// BW1W120 00402350 BW1M119 015759c0
	virtual bool32_t IsLiving() { return false; }
	// BW1W120 00402110 BW1M119 010815c0
	virtual bool32_t IsFence() { return false; }
	// BW1W120 00402120 BW1M119 0130daf0
	virtual bool32_t IsSpellIcon() { return false; }
	// BW1W120 004e4480 BW1M119 015ed1b0
	virtual bool32_t NothingScareyNearMe();
	// BW1W120 00402130 BW1M119 010e05d0
	virtual bool32_t CanBeUsedForThrowingDamageByCreature(Creature* creature) { return false; }
	// BW1W120 00402140 BW1M119 010b4450
	virtual bool32_t IsCreatureWhoSeemsFriendly(Creature* creature) { return false; }
	// BW1W120 00402150 BW1M119 0149ccf0
	virtual bool32_t CanBeThrownInTheSeaPlayfully(Creature* creature) { return false; }
	// BW1W120 004054e0 BW1M119 0110e5a0
	virtual uint32_t GetCreatureMimicType();
	// BW1W120 004054f0 BW1M119 0149cc90
	virtual float GetHowMuchCreatureWantsToLookAtMe();
	// BW1W120 00402160 BW1M119 0105a310
	virtual bool32_t IsFlock() const { return false; }
	// BW1W120 00402170 BW1M119 013ea450
	virtual bool32_t IsDance() const { return false; }
	// BW1W120 00402180 BW1M119 013449f0
	virtual bool32_t IsReward() const { return false; }
	// BW1W120 00402190 BW1M119 01036430
	virtual bool32_t IsScriptContainer() const { return false; }
	// BW1W120 004021a0 BW1M119 01578f40
	virtual bool32_t IsWeather() const { return false; }
	// BW1W120 004021b0 BW1M119 013685c0
	virtual bool32_t IsSpell() const { return false; }
	// BW1W120 004021c0 BW1M119 01000790
	virtual bool32_t IsDeletedWhenReleasedFromScript() { return false; }
	// BW1W120 004021d0 BW1M119 01035c40
	virtual bool32_t IsMobileWallHug() const { return false; }
	// BW1W120 004021e0 BW1M119 013d0440
	virtual bool32_t IsActive() const { return false; }
	// BW1W120 004021f0 BW1M119 010b9410
	virtual bool32_t IsObjectTurningTooFastForCameraToFollowSmoothly() { return false; }
	// BW1W120 005703a0 BW1M119 01578930
	virtual void CalculateWhereIWillBeAfterNSeconds(float seconds, LHPoint* outPos);
	// BW1W120 00768570 BW1M119 0159bf80
	virtual uint32_t AttitudeToCreatureEating();
	// BW1W120 inlined
	virtual const char* GetText();
	// BW1W120 00402200 BW1M119 011621d0
	virtual float CalculateDesireForFood() { return 0.0f; }
	// BW1W120 00402210 BW1M119 01106350
	virtual float CalculateDesireForRest() { return 0.0f; }
	// BW1W120 00402220 BW1M119 015a9130
	virtual float CalculatePeopleHidingIndicator() { return 0.0f; }
	// BW1W120 00405500 BW1M119 0116fcb0
	virtual float GetHeight();
	// BW1W120 00402230 BW1M119 01379650
	virtual bool32_t IsReadyForNewScriptAction() { return false; }
	// BW1W120 00570290 BW1M119 01572b60
	virtual int ForDrawFXGetNumVertices();
	// BW1W120 005702a0 BW1M119 01575170
	virtual bool ForDrawFXGetVertexPos(int index, LHPoint* pos);
	// BW1W120 00405510 BW1M119 01003450
	virtual void SetInScript(int param_1);
	// BW1W120 00402240 BW1M119 01057c40
	virtual void SetControlledByScript(int controlled)
	{
		Flags = (Flags & ~GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) | ((controlled & 1) << 10);
	}
	// BW1W120 00402270 BW1M119 01568ad0
	virtual DEATH_REASON GetDeathReason() { return DEATH_REASON_NONE; }
	// BW1W120 00402280 BW1M119 0104f8c0
	virtual bool32_t IsInScript() { return (Flags & GAME_THING_WITH_POS_FLAG_IN_SCRIPT) != 0; }
	// BW1W120 00402290 BW1M119 0149ad10
	virtual bool32_t IsMaleVillager() { return false; }
	// BW1W120 004022a0 BW1M119 01388ad0
	virtual bool32_t IsFemaleVillager() { return false; }
	// BW1W120 004022b0 BW1M119 0102d4d0
	virtual bool32_t IsAnimal() { return false; }
	// BW1W120 004022c0 BW1M119 01388c10
	virtual bool32_t IsAChild() { return false; }
	// BW1W120 00405540 BW1M119 013ca060
	virtual bool32_t IsHouse();
	// BW1W120 00405550 BW1M119 011a68b0
	virtual bool32_t IsObject() const;
	// BW1W120 004022d0 BW1M119 010e1d20
	virtual bool32_t IsFootball() { return false; }
	// BW1W120 004022e0 BW1M119 0142fbc0
	virtual bool32_t IsCitadel() { return false; }
	// BW1W120 004022f0 BW1M119 0136fc80
	virtual bool32_t IsForest() { return false; }
	// BW1W120 00402300 BW1M119 013e3df0
	virtual bool32_t IsMobileObject() { return false; }
	// BW1W120 00402310 BW1M119 015792a0
	virtual bool32_t IsMobileStatic() { return false; }
	// BW1W120 00402330 BW1M119 0116e680
	virtual bool32_t IsAnyKindOfTree() { return false; }
	// BW1W120 00402340 BW1M119 0136d6d0
	virtual bool32_t IsDeadTree() { return false; }
	// BW1W120 00402370 BW1M119 010ca5d0
	virtual bool32_t IsPileFood() { return false; }
	// BW1W120 00402380 BW1M119 0157a150
	virtual bool32_t IsFeature() { return false; }
	// BW1W120 00402390 BW1M119 01558340
	virtual bool32_t IsScriptMarker() { return false; }
	// BW1W120 004023a0 BW1M119 01000870
	virtual bool32_t IsScriptHighlight() { return false; }
	// BW1W120 004178d0 BW1M119 01300cf0
	virtual bool32_t IsWonder();
	// BW1W120 004023c0 BW1M119 01301910
	virtual bool32_t IsInfluenceRing() { return false; }
	// BW1W120 004023d0 BW1M119 01568340
	virtual bool32_t IsPuzzleGame() { return false; }
	// BW1W120 004023e0 BW1M119 010a2610
	virtual bool32_t IsScaffold() { return false; }
	// BW1W120 004023f0 BW1M119 01568cf0
	virtual bool32_t IsSkeleton() const { return false; }
	// BW1W120 00402400 BW1M119 01106540
	virtual bool32_t IsPoisoned() { return false; }
	// BW1W120 00402410 BW1M119 01162350
	virtual bool32_t IsSpeedUp() { return false; }
	// BW1W120 00402420 BW1M119 011c3600
	virtual bool32_t IsParticleContainer() { return false; }
	// BW1W120 00402430 BW1M119 01162300
	virtual bool32_t IsSacrificeAltar() { return false; }
	// BW1W120 00402440 BW1M119 0158dab0
	virtual bool32_t IsPot() { return false; }
	// BW1W120 00402450 BW1M119 014f81c0
	virtual bool32_t IsComputerPlayer() { return false; }
	// BW1W120 005701c0 BW1M119 01381500
	virtual bool32_t CanBeThrownByPlayer();
	// BW1W120 00402460 BW1M119 01553e40
	virtual void SetSkeleton(int index) {}
	// BW1W120 00402470 BW1M119 0107d710
	virtual bool32_t IsSpellSeed() { return false; }
	// BW1W120 00402480 BW1M119 010a7c40
	virtual bool32_t IsSpellShield() { return false; }
	// BW1W120 00402490 BW1M119 010a6f40
	virtual bool32_t IsPileResource() { return false; }
	// BW1W120 004024a0 BW1M119 013f97d0
	virtual bool32_t IsScriptTimer() { return false; }
	// BW1W120 004178e0 BW1M119 013e3d40
	virtual bool32_t CreateBuildingSite();
	// BW1W120 00405560 BW1M119 01516bb0
	virtual HELP_TEXT GetQueryFirstEnumText();
	// BW1W120 00405570 BW1M119 011c6c60
	virtual HELP_TEXT GetQueryLastEnumText();
	// BW1W120 005703d0 BW1M119 01433260
	virtual uint32_t GetFOVHelpMessageSet();
	// BW1W120 005703e0 BW1M119 0135fda0
	virtual uint32_t GetFOVHelpCondition();
	// BW1W120 00570200 BW1M119 010008c0
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 004024b0 BW1M119 0154af60
	virtual float GetFacingDirection() { return 0.0f; }
	// BW1W120 004024c0 BW1M119 015aa9f0
	virtual void SetAffectedByWind(int affected) {}
	// BW1W120 004024d0 BW1M119 0101b450
	virtual float GetReactionPower() { return 1.0f; }
	// BW1W120 00570570 BW1M119 0117b3e0
	virtual MapCoords GetSpellCastPos();
	// BW1W120 004024e0 BW1M119 0151acf0
	virtual void CleanUpBeforeReset() {}

	// Static methods

	// BW1W120 0056ff80 BW1M119 010bf680
	static bool32_t IsThingMovingTowards(GameThingWithPos* target, GameThingWithPos* moving_thing);

	// Constructors

	// BW1W120 0055d050 BW1M119 011c3510
	GameThingWithPos();
	// BW1W120 inlined BW1M119 0137fc00
	GameThingWithPos(const MapCoords& pos);

	// Non-virtual Destructors

	// BW1W120 inlined BW1M119 0117dfb0
	// compiler-generated: no vtable restore before ~GameThing

	// Non-virtual methods

	// BW1W120 004e3ee0 BW1M119 015ee310
	bool32_t IsInsideCreatureHome(Creature* creature);
	// BW1W120 0056fe70 BW1M119 013cb710
	float GetBoredomMultiplier(Reaction* param_1);
	// BW1W120 00570160 BW1M119 010bf3e0
	void SetPos(const LHPoint& pos);
	// BW1W120 005705d0 BW1M119 0109a960
	void SetToZero();
	// BW1W120 00768540 BW1M119 0159c070
	uint32_t AttitudeToCreatureNone();
	// BW1W120 00768550 BW1M119 0159c020
	uint32_t AttitudeToCreatureFear();
	// BW1W120 00768560 BW1M119 0159bfd0
	uint32_t AttitudeToCreatureRespect();
};

inline GameThingWithPos::GameThingWithPos() : Pos()
{
	SetToZero();
}

inline GameThingWithPos::GameThingWithPos(const MapCoords& pos) : Pos()
{
	SetToZero();
	SetPos(pos);
}

#endif /* BW1_DECOMP_GAME_THING_WITH_POS_INCLUDED_H */
