#include "MaxFloat.h"
#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "CreatureAction.h"

struct CreatureActionTableEntry
{
	const char* Name;
	bool32_t (Creature::*IsPossible)(CreaturePlan& plan, CREATURE_ACTION action);
	int (CreatureAgenda::*ConstructSubActions)(unsigned long action_argument);
	MAGIC_TYPE MagicType;
	bool32_t (GameThingWithPos::*IsValidObjectToActOn)(Creature* creature);
	bool32_t (GameThingWithPos::*IsValidObjectToUse)(Creature* creature);
	bool32_t (GameThingWithPos::*IsValidObjectToUseToo)(Creature* creature);
	uint32_t (GameThingWithPos::*AttitudeToCreature)();
	bool32_t NeedsObjectToUse;
	float (GameThingWithPos::*UsefulnessMultiplier)(Creature* creature);
};
static_assert(sizeof(CreatureActionTableEntry) == 0x50, "Data type is of wrong size");

#include <Lionhead/LH3DLib/development/LH3DAtmos.h>  /* For LH3DAtmos::GetMoonPos */
#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For struct LH3DObject */
#include <chlasm/Enum.h>                             /* For NUM_CREATURE_DESIRES */

#include "Alignment.h"                  /* For struct GAlignment */
#include "AnimalCow.h"                  /* For struct Cow */
#include "Citadel.h"                    /* For struct Citadel */
#include "CitadelHeart.h"               /* For struct CitadelHeart */
#include "ColourConstants.h"            /* For White */
#include "Creature.h"                   /* For struct Creature */
#include "CreatureActionInfo.h"         /* For struct CreatureActionInfo */
#include "CreatureAgenda.h"             /* For struct CreatureAgenda */
#include "CreatureAttitudeToCreature.h" /* For struct CreatureAttitudeToCreature */
#include "CreatureInfo.h"               /* For struct CreatureInfo */
#include "CreatureInitialDesireInfo.h"  /* For struct CreatureInitialDesireInfo */
#include "CreatureMental.h"             /* For struct CreatureMental */
#include "CreatureMentalBelief.h"       /* For struct CreatureBelief */
#include "CreatureMentalDesire.h"       /* For struct CreatureDesireActionEntry, struct CreatureDesireAttributeEntry */
#include "CreatureMorph.h"              /* For struct LH3DCreature */
#include "DanceInfo.h"                  /* For struct GDanceInfo */
#include "FishFarm.h"                   /* For struct FishFarm */
#include "CreaturePhysical.h"           /* For struct CreaturePhysical */
#include "Football.h"                   /* For struct Football */
#include "Game.h"                       /* For struct GGame */
#include "GameInfo.h"                   /* For struct GGameInfo */
#include "InterfaceStatus.h"            /* For struct GInterfaceStatus */
#include "Landscape.h"                  /* For GLandscape::ConvertMapCoordToLandscapePoint */
#include "MagicInfo.h"                  /* For struct GMagicInfo */
#include "OneOffSpellSeed.h"            /* For struct OneOffSpellSeed */
#include "Rand.h"                       /* For struct GRand */
#include "ShowNeedsVisuals.h"           /* For struct ShowNeedsVisuals */
#include "SpellSeedInfo.h"              /* For struct GSpellSeedInfo */
#include "StoragePit.h"                 /* For struct StoragePit */
#include "SubArgument.h"                /* For struct SubArgument */
#include "TotemStatue.h"                /* For struct TotemStatue */
#include "Town.h"                       /* For struct Town */
#include "Tree.h"                       /* For struct Tree */
#include "Utils.h"                      /* For GUtils::GetDistanceInMetres */
#include "Villager.h"                   /* For struct Villager */
#include "WorshipSite.h"                /* For struct WorshipSite */

#if defined(VERSION_BW1W100)
#define CREATURE_ACTION_FILE "C:\\dev\\black\\CreatureAction.cpp"
// 1.0 has 8 fewer lines before HelpRepairHouse and 17 more after it, then 3 more and 1 fewer around
// AttackerThrowBallAtGoal.
#define CREATURE_ACTION_LINE(line)                                                                                     \
	((line) + ((line) < 915 ? 0 : (line) < 935 ? -8 : (line) < 2700 ? 9 : (line) < 2740 ? 12 : 11))
#elif defined(VERSION_BW1W110)
#define CREATURE_ACTION_FILE       "C:\\dev\\Black\\CreatureAction.cpp"
#define CREATURE_ACTION_LINE(line) (line)
#else
#define CREATURE_ACTION_FILE       "C:\\dev\\MP\\Black\\CreatureAction.cpp"
#define CREATURE_ACTION_LINE(line) (line)
#endif

const float CastExplosionDistance = 100.0f;
const float CastSpellDistance = 50.0f;

inline float MapCoords::MetersX() const
{
	return WholeX() * MetresPerMapCell / (float)0x10000;
}

inline float MapCoords::MetersZ() const
{
	return WholeZ() * MetresPerMapCell / (float)0x10000;
}

inline void MapCoords::SetMetersX(float meters)
{
	SetWholeX((long)(meters * (float)0x10000 / MetresPerMapCell));
}

inline void MapCoords::SetMetersZ(float meters)
{
	SetWholeZ((long)(meters * (float)0x10000 / MetresPerMapCell));
}

// fabricated: BW1M119 copies both points and calls Sub and GetNorme wherever this distance is taken.
inline float PointDistance(const LHPoint& p1, const LHPoint& p2)
{
	LHPoint a = p1;
	LHPoint b = p2;
	a.Sub(b);
	return a.GetNorme();
}

inline Object* CreatureBelief::GetObjectPointer()
{
	return dynamic_cast<Object*>(Pointer);
}

inline void CreatureRecentTrees::Add(Tree* tree)
{
	Trees[Index] = tree;
	Index++;
	if (Index == 10)
		Index = 0;
	if (Count < 10)
		Count++;
}

CreatureActionInfo           CreatureActionInfo::g_CreatureActionInfos[NUM_CREATURE_ACTIONS];
CreatureInitialDesireInfo    CreatureInitialDesireInfo::g_CreatureInitialDesireInfos[NUM_CREATURE_DESIRES];
CreatureDesireActionEntry    CreatureDesireActionEntry::g_CreatureDesireActionEntries[NUM_CREATURE_DESIRES];
CreatureDesireActionEntry    CreatureDesireActionEntry::g_CompassionForTownActionTable[TOWN_DESIRE_INFO_LAST];
CreatureDesireActionEntry    CreatureDesireActionEntry::g_CompassionForCreatureActionTable[NUM_CREATURE_DESIRES];
CreatureDesireAttributeEntry CreatureDesireAttributeEntry::g_CreatureDesireAttributeEntries[NUM_CREATURE_DESIRES];

// clang-format off
CreatureActionTableEntry CreatureAgenda::ActionTable[NUM_CREATURE_ACTIONS] = {
	{"Undefined", NULL, NULL, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_ERROR
	{"MoveToPos", NULL, &CreatureAgenda::ConstructSubActionsForMoveToPos, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_MOVE_TO_POS
	{"FleeingFromObjectReaction", NULL, NULL, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_FLEE_FROM_OBJECT
	{"LookingAtObjectReaction", NULL, NULL, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_LOOK_AT_OBJECT
	{"FollowingObjectReaction", NULL, NULL, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_FOLLOW_OBJECT
	{"InspectObjectReaction", NULL, NULL, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_INSPECT_OBJECT
	{"Flying", NULL, NULL, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_FLYING
	{"Landed", NULL, NULL, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_LANDED
	{"LookAtHand", &Creature::IsHandMoving, &CreatureAgenda::ConstructSubActionsForLookAtHand, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_LOOK_AT_HAND
	{"Die", NULL, &CreatureAgenda::ConstructSubActionsForDeath, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_DEAD
	{"ExamineByPickingUp", NULL, &CreatureAgenda::ConstructSubActionsForExamineByPickingUp, MAGIC_TYPE_NONE, &GameThingWithPos::CanBePickedUpByCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_EXAMINE_BY_PICKING_UP
	{"EatAlive", NULL, &CreatureAgenda::ConstructSubActionsForEatAlive, MAGIC_TYPE_NONE, &GameThingWithPos::CanCreatureEatMe, NULL, NULL, &GameThingWithPos::AttitudeToCreatureEating, 0, NULL}, // CREATURE_EAT_ALIVE
	{"EatAfterExamining", NULL, &CreatureAgenda::ConstructSubActionsForEatAfterExamining, MAGIC_TYPE_NONE, &GameThingWithPos::CanCreatureEatMe, NULL, NULL, &GameThingWithPos::AttitudeToCreatureEating, 0, NULL}, // CREATURE_EAT_AFTER_EXAMINING
	{"StompAndEat", NULL, &CreatureAgenda::ConstructSubActionsForStompAndEat, MAGIC_TYPE_NONE, &GameThingWithPos::CanBeStompedOnByCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureEating, 0, NULL}, // CREATURE_STOMP_AND_EAT
	{"StoneAndEat", NULL, &CreatureAgenda::ConstructSubActionsForStoneAndEat, MAGIC_TYPE_NONE, &GameThingWithPos::CanBeStonedAndEatenByCreature, &GameThingWithPos::CanBeUsedForThrowingDamageByCreature, &GameThingWithPos::CanBePickedUpByCreature, &GameThingWithPos::AttitudeToCreatureEating, 1, NULL}, // CREATURE_STONE_AND_EAT
	{"Hurl", NULL, &CreatureAgenda::ConstructSubActionsForHurl, MAGIC_TYPE_NONE, &GameThingWithPos::CanBeDestroyedByStoning, &GameThingWithPos::CanBeUsedForThrowingDamageByCreature, &GameThingWithPos::CanBePickedUpByCreature, &GameThingWithPos::AttitudeToCreatureFear, 1, NULL}, // CREATURE_HURL
	{"RunAwayFromObject", NULL, &CreatureAgenda::ConstructSubActionsForRunAwayFromObject, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_RUN_AWAY_FROM_OBJECT
	{"SleepAtHome", &Creature::NotTooFarFromHome, &CreatureAgenda::ConstructSubActionsForSleep, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SLEEP
	{"Stomp", NULL, &CreatureAgenda::ConstructSubActionsForStomp, MAGIC_TYPE_NONE, &GameThingWithPos::CanBeStompedOnByCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureFear, 0, NULL}, // CREATURE_STOMP
	{"Poo", NULL, &CreatureAgenda::ConstructSubActionsForPoo, MAGIC_TYPE_NONE, &GameThingWithPos::CanBePoodOn, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_POO
	{"ExamineByLooking", NULL, &CreatureAgenda::ConstructSubActionsForExamineByLooking, MAGIC_TYPE_NONE, &GameThingWithPos::CanBeExaminedByCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_EXAMINE_BY_LOOKING
	{"Fight", &Creature::IsCreatureHealthyEnoughToFight, &CreatureAgenda::ConstructSubActionsForFight, MAGIC_TYPE_NONE, &GameThingWithPos::CanBeFoughtByCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_FIGHT
	{"FollowPlayer", &Creature::IsCreatureFarAwayFromCamera, &CreatureAgenda::ConstructSubActionsForFollowPlayer, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_FOLLOW_PLAYER
	{"CommunicateState", NULL, &CreatureAgenda::ConstructSubActionsForCommunicateState, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_COMMUNICATE_STATE
	{"ShowPlayerAnObject", &Creature::IsCreatureFarAwayFromCamera, &CreatureAgenda::ConstructSubActionsForShowPlayerAnObject, MAGIC_TYPE_NONE, NULL, &GameThingWithPos::CanBePickedUpByCreature, NULL, &GameThingWithPos::AttitudeToCreatureNone, 1, NULL}, // CREATURE_SHOW_PLAYER_AN_OBJECT
	{"GoToHillAndLook", NULL, &CreatureAgenda::ConstructSubActionsForGoToHillAndLook, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GO_TO_TOP_OF_HILL_AND_LOOK
	{"GoToHillAndSit", NULL, &CreatureAgenda::ConstructSubActionsForGoToHillAndSit, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GO_TO_HILL_AND_SIT
	{"GoToHillAndWalkAlongRidge", NULL, &CreatureAgenda::ConstructSubActionsForGoToHillAndWalkAlongRidge, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GO_TO_HILL_AND_WALK_ALONG_RIDGE
	{"GiveFoodFromFieldToStoragePit", NULL, &CreatureAgenda::ConstructSubActionsForGiveFoodFromFieldToStoragePit, MAGIC_TYPE_NONE, &GameThingWithPos::IsStoragePit, &GameThingWithPos::IsFieldWithFoodInIt, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 1, NULL}, // CREATURE_GIVE_FOOD_FROM_FIELD_TO_STORAGE_PIT
	{"GiveFishToStoragePit", &Creature::IsThereFishFarmNearby, &CreatureAgenda::ConstructSubActionsForGiveFishToStoragePit, MAGIC_TYPE_NONE, &GameThingWithPos::IsStoragePit, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_GIVE_FISH_TO_STORAGE_PIT
	{"GiveFruitFromTreeToStoragePit", NULL, &CreatureAgenda::ConstructSubActionsForGiveFruitFromTreeToStoragePit, MAGIC_TYPE_NONE, &GameThingWithPos::IsStoragePit, &GameThingWithPos::IsTree, &GameThingWithPos::IsTreeBigEnoughForCreature, &GameThingWithPos::AttitudeToCreatureRespect, 1, NULL}, // CREATURE_GIVE_FRUIT_FROM_TREE_TO_STORAGE_PIT
	{"GiveMagicFoodToStoragePit", NULL, &CreatureAgenda::ConstructSubActionsForGiveMagicFoodToStoragePit, MAGIC_TYPE_NONE, &GameThingWithPos::IsStoragePit, &GameThingWithPos::IsAFoodPileOutsideStoragePit, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 1, NULL}, // CREATURE_GIVE_MAGIC_FOOD_TO_STORAGE_PIT
	{"GiveWoodFromTreeToStoragePit", NULL, &CreatureAgenda::ConstructSubActionsForGiveWoodFromTreeToStoragePit, MAGIC_TYPE_NONE, &GameThingWithPos::IsStoragePit, &GameThingWithPos::IsTree, &GameThingWithPos::CanBePickedUpByCreature, &GameThingWithPos::AttitudeToCreatureRespect, 1, NULL}, // CREATURE_GIVE_WOOD_FROM_TREE_TO_STORAGE_PIT
	{"GiveMagicWoodToStoragePit", NULL, &CreatureAgenda::ConstructSubActionsForGiveMagicWoodToStoragePit, MAGIC_TYPE_NONE, &GameThingWithPos::IsStoragePit, &GameThingWithPos::IsAWoodPileOutsideStoragePit, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 1, NULL}, // CREATURE_GIVE_MAGIC_WOOD_TO_STORAGE_PIT
	{"HelpBuildHouse", NULL, &CreatureAgenda::ConstructSubActionsForHelpBuildHouse, MAGIC_TYPE_NONE, &GameThingWithPos::IsBuildingWhichIsBeingBuilt, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_HELP_BUILD_HOUSE
	{"HelpRepairHouse", NULL, &CreatureAgenda::ConstructSubActionsForHelpRepairHouse, MAGIC_TYPE_NONE, &GameThingWithPos::NeedsRepair, &GameThingWithPos::IsTree, &GameThingWithPos::CanBePickedUpByCreature, &GameThingWithPos::AttitudeToCreatureRespect, 1, NULL}, // CREATURE_HELP_REPAIR_HOUSE
	{"BringToTown", NULL, &CreatureAgenda::ConstructSubActionsForBringToTown, MAGIC_TYPE_NONE, &GameThingWithPos::CanActAsAContainer, &GameThingWithPos::CanBeGivenToTown, &GameThingWithPos::CanBePickedUpByCreature, &GameThingWithPos::AttitudeToCreatureRespect, 1, NULL}, // CREATURE_BRING_OBJECT_TO_TOWN
	{"PutOutFire", NULL, &CreatureAgenda::ConstructSubActionsForPutOutFire, MAGIC_TYPE_NONE, &GameThingWithPos::IsOnFire, &GameThingWithPos::CanBeUsedToHoldWater, &GameThingWithPos::CanBePickedUpByCreature, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_PUT_OUT_FIRE
	{"Stroke", NULL, &CreatureAgenda::ConstructSubActionsForStroke, MAGIC_TYPE_NONE, &GameThingWithPos::CanBeStrokedByCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_STROKE
	{"ShowImpressiveAnimation", &Creature::HasntDoneImpressiveAnimRecently, &CreatureAgenda::ConstructSubActionsForShowImpressiveAnimation, MAGIC_TYPE_NONE, &GameThingWithPos::IsVillager, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_SHOW_IMPRESSIVE_ANIMATION
	{"CastImpressiveSpell", &Creature::CanCreatureCastImpressiveSpell, &CreatureAgenda::ConstructSubActionsForCastImpressiveSpell, MAGIC_TYPE_NONE, &GameThingWithPos::IsVillager, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_CAST_IMPRESSIVE_SPELL
	{"DanceWithVillagers", &Creature::LastDanceWasntToDanceToImpress, &CreatureAgenda::ConstructSubActionsForDanceImpressivelyWithVillagers, MAGIC_TYPE_TELEPORT, &GameThingWithPos::IsVillagerWhoHasNotBeenDancedWithRecently, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_DANCE_WITH_VILLAGERS
	{"ThrowInTheSea", NULL, &CreatureAgenda::ConstructSubActionsForThrowInTheSea, MAGIC_TYPE_NONE, &GameThingWithPos::CanBeThrownInTheSeaPlayfully, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_THROW_IN_THE_SEA
	{"PullSillyFaces", NULL, &CreatureAgenda::ConstructSubActionsForPullSillyFaces, MAGIC_TYPE_NONE, &GameThingWithPos::IsVillager, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_PULL_SILLY_FACES
	{"LookAtReflection", NULL, &CreatureAgenda::ConstructSubActionsForLookAtReflection, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_LOOK_AT_REFLECTION
	{"CastLightningBolt", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastLightningBolt, MAGIC_TYPE_LIGHTNING_BOLT, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureFear, 0, NULL}, // CREATURE_CAST_LIGHTNING_BOLT
	{"CastFireball", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastFireball, MAGIC_TYPE_FIREBALL, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureFear, 0, NULL}, // CREATURE_CAST_FIREBALL
	{"CastExplosion", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastExplosion, MAGIC_TYPE_EXPLOSION_ONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureFear, 0, NULL}, // CREATURE_CAST_EXPLOSION
	{"CastMagicFood", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastMagicFood, MAGIC_TYPE_FOOD, &GameThingWithPos::CanHaveMagicFoodCastOnMe, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_CAST_MAGIC_FOOD
	{"CastMagicForest", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastMagicForest, MAGIC_TYPE_FOREST, &GameThingWithPos::IsVillager, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_CAST_MAGIC_FOREST
	{"Puke", NULL, &CreatureAgenda::ConstructSubActionsForPuke, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_PUKE
	{"ThrowStonesInSeaWithFriend", &Creature::HasCreatureBeenAskedToPlayGame, &CreatureAgenda::ConstructSubActionsForThrowStonesInTheSeaWithFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_THROW_STONES_IN_SEA_WITH_FRIEND
	{"PracticeThrow", NULL, &CreatureAgenda::ConstructSubActionsForPracticeThrow, MAGIC_TYPE_NONE, &GameThingWithPos::CanBePickedUpByCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_PRACTICE_THROW
	{"DestroyAggressor", &Creature::IsActivityObjectATownUnderAttack, &CreatureAgenda::ConstructSubActionsForDestroyAggressor, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_DESTROY_AGGRESSOR
	{"CastShield", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastShield, MAGIC_TYPE_SHIELD, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_CAST_SHIELD
	{"DrinkFromTheSea", NULL, &CreatureAgenda::ConstructSubActionsForDrinkFromTheSea, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_DRINK_FROM_THE_SEA
	{"RaiseTotemPole", NULL, &CreatureAgenda::ConstructSubActionsForRaiseTotemPole, MAGIC_TYPE_NONE, &GameThingWithPos::DoesTotemBelongToATownWhichIsVeryImpressedIndeed, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_RAISE_TOTEM_POLE
	{"LowerTotemPole", NULL, &CreatureAgenda::ConstructSubActionsForLowerTotemPole, MAGIC_TYPE_NONE, &GameThingWithPos::DoesTotemBelongToATownWhichIsVeryImpressedIndeed, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_LOWER_TOTEM_POLE
	{"HealHimself", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForHealHimself, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_HEAL_HIMSELF
	{"RestToGetBetter", &Creature::NothingScareyNearMe, &CreatureAgenda::ConstructSubActionsForRestToGetBetter, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_REST_TO_GET_BETTER
	{"SmileAtFriend", NULL, &CreatureAgenda::ConstructSubActionsForSmileAtFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SMILE_AT_FRIEND
	{"FollowFriendAround", &Creature::FriendIsDoingSomethingWorthFollowing, &CreatureAgenda::ConstructSubActionsForFollowFriendAround, MAGIC_TYPE_NONE, &GameThingWithPos::IsDominantCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_FOLLOW_FRIEND_AROUND
	{"DanceWithFriend", NULL, &CreatureAgenda::ConstructSubActionsForDanceWithFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_DANCE_WITH_FRIEND
	{"InspectCreature", NULL, &CreatureAgenda::ConstructSubActionsForInspectCreature, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_INSPECT_CREATURE
	{"HoldObject", NULL, &CreatureAgenda::ConstructSubActionsForHoldObject, MAGIC_TYPE_NONE, &GameThingWithPos::CanBePickedUpByCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_HOLD_OBJECT
	{"EatFromStoragePit", NULL, &CreatureAgenda::ConstructSubActionsForEatFromStoragePit, MAGIC_TYPE_NONE, &GameThingWithPos::IsStoragePitWithFoodInIt, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_EAT_FROM_STORAGE_PIT
	{"EatFromContainer", NULL, &CreatureAgenda::ConstructSubActionsForEatFromField, MAGIC_TYPE_NONE, &GameThingWithPos::IsFieldWithFoodInIt, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_EAT_FROM_FIELD
	{"PutDown", NULL, &CreatureAgenda::ConstructSubActionsForPutDown, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_PUT_DOWN
	{"GiveToCreature", NULL, &CreatureAgenda::ConstructSubActionsForGiveToCreature, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, &GameThingWithPos::CanBePickedUpByCreature, NULL, &GameThingWithPos::AttitudeToCreatureNone, 1, NULL}, // CREATURE_GIVE_TO_CREATURE
	{"ThrowAtCamera", NULL, &CreatureAgenda::ConstructSubActionsForThrowAtCamera, MAGIC_TYPE_NONE, &GameThingWithPos::CanBePickedUpByCreature, &GameThingWithPos::CanBePickedUpByCreature, NULL, &GameThingWithPos::AttitudeToCreatureNone, 1, NULL}, // CREATURE_THROW_AT_CAMERA
	{"RunAwayFromPlayer", &Creature::IsPlayerNearbyAndFrightening, &CreatureAgenda::ConstructSubActionsForRunAwayFromPlayer, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_RUN_AWAY_FROM_PLAYER
	{"Sneeze", NULL, &CreatureAgenda::ConstructSubActionsForSneeze, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SNEEZE
	{"Shiver", NULL, &CreatureAgenda::ConstructSubActionsForShiver, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SHIVER
	{"StartFire", NULL, &CreatureAgenda::ConstructSubActionsForStartFire, MAGIC_TYPE_NONE, NULL, &GameThingWithPos::CanBeSetOnFire, NULL, &GameThingWithPos::AttitudeToCreatureNone, 1, NULL}, // CREATURE_START_FIRE
	{"ShowHotness", NULL, &CreatureAgenda::ConstructSubActionsForShowHotness, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SHOW_HOTNESS
	{"Scratch", &Creature::CreatureHasntScratchedRecently, &CreatureAgenda::ConstructSubActionsForScratch, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SCRATCH
	{"ExploreCoastline", NULL, &CreatureAgenda::ConstructSubActionsForExploreCoast, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_EXPLORE_COAST
	{"ExploreTowns", NULL, &CreatureAgenda::ConstructSubActionsForExploreTowns, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_EXPLORE_TOWNS
	{"SleepByObject", &Creature::LeashedOrTooFarFromHome, &CreatureAgenda::ConstructSubActionsForSleepByObject, MAGIC_TYPE_NONE, &GameThingWithPos::NothingScareyNearMe, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SLEEP_BY_OBJECT
	{"ExamineByFollowing", NULL, &CreatureAgenda::ConstructSubActionsForExamineByFollowing, MAGIC_TYPE_NONE, &GameThingWithPos::IsDoingSomethingInteresting, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, &GameThingWithPos::MultiplyUsefulnessIfInteresting}, // CREATURE_EXAMINE_BY_FOLLOWING
	{"LookAtFlyingObject", NULL, &CreatureAgenda::ConstructSubActionsForLookAtFlyingObject, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_LOOK_AT_FLYING_OBJECT
	{"SitDown", &Creature::CreatureHasntRestedRecently, &CreatureAgenda::ConstructSubActionsForSitDown, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SIT
	{"LookAtCamera", NULL, &CreatureAgenda::ConstructSubActionsForLookAtCamera, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_LOOK_AT_CAMERA
	{"BuildHome", &Creature::IsHomeUnderConstruction, &CreatureAgenda::ConstructSubActionsForBuildHome, MAGIC_TYPE_NONE, NULL, &GameThingWithPos::CanBeUsedForBuildingHomeByCreature, &GameThingWithPos::CanBePickedUpByCreature, &GameThingWithPos::AttitudeToCreatureNone, 1, NULL}, // CREATURE_BUILD_HOME
	{"BringHome", NULL, &CreatureAgenda::ConstructSubActionsForBringHome, MAGIC_TYPE_NONE, &GameThingWithPos::CanBeBroughtHomeByCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_BRING_HOME
	{"SleepAtPos", NULL, &CreatureAgenda::ConstructSubActionsForSleepAtPos, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SLEEP_AT_POS
	{"ShowLearntLesson", NULL, &CreatureAgenda::ConstructSubActionsForShowLearntLesson, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SHOW_LEARNT_LESSON
	{"PracticeDance", NULL, &CreatureAgenda::ConstructSubActionsForPracticeDance, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_PRACTICE_DANCE
	{"GoToMiddleOfScreen", &Creature::IsCreatureAwayFromCentreOfScreen, &CreatureAgenda::ConstructSubActionsForGoToMiddleOfScreen, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GO_TO_MIDDLE_OF_SCREEN
	{"GoToHand", &Creature::IsCreatureAwayFromHand, &CreatureAgenda::ConstructSubActionsForGoToHand, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GO_TO_HAND
	{"WaveAtPlayer", NULL, &CreatureAgenda::ConstructSubActionsForWaveAtPlayer, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_WAVE_AT_PLAYER
	{"WaveAtObject", NULL, &CreatureAgenda::ConstructSubActionsForWaveAtObject, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_WAVE_AT_OBJECT
	{"LookConfused", NULL, &CreatureAgenda::ConstructSubActionsForLookConfused, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_LOOK_CONFUSED
	{"ToBeDeleted", NULL, &CreatureAgenda::ConstructSubActionsForPlayGameWithCreatureMainPart, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_PLAY_GAME_WITH_CREATURE_MAIN_PART
	{"EatFromTree", NULL, &CreatureAgenda::ConstructSubActionsForEatFromTree, MAGIC_TYPE_NONE, &GameThingWithPos::IsTreeBigEnoughForCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_EAT_FROM_TREE
	{"CastLightningStorm", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastLightningStorm, MAGIC_TYPE_STORM_WIND_RAIN_LIGHTNING, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureFear, 0, NULL}, // CREATURE_CAST_LIGHTNING_STORM
	{"CastFireballPU1", &Creature::CanCreatureCastPowerUpSpell, &CreatureAgenda::ConstructSubActionsForCastFireball, MAGIC_TYPE_FIREBALL_PU_ONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureFear, 0, NULL}, // CREATURE_CAST_FIREBALL_PU1
	{"CastFireballPU2", &Creature::CanCreatureCastPowerUpSpell, &CreatureAgenda::ConstructSubActionsForCastFireball, MAGIC_TYPE_FIREBALL_PU_TWO, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureFear, 0, NULL}, // CREATURE_CAST_FIREBALL_PU2
	{"CastMagicFoodPU1", &Creature::CanCreatureCastPowerUpSpell, &CreatureAgenda::ConstructSubActionsForCastHelpfulSpellOnObject, MAGIC_TYPE_FOOD_PU_ONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_CAST_MAGIC_FOOD_PU1
	{"CastLightningBoltPU1", &Creature::CanCreatureCastPowerUpSpell, &CreatureAgenda::ConstructSubActionsForCastLightningBolt, MAGIC_TYPE_LIGHTNING_BOLT_PU_ONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureFear, 0, NULL}, // CREATURE_CAST_LIGHTNING_BOLT_PU1
	{"CastLightningBoltPU2", &Creature::CanCreatureCastPowerUpSpell, &CreatureAgenda::ConstructSubActionsForCastLightningBolt, MAGIC_TYPE_LIGHTNING_BOLT_PU_TWO, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureFear, 0, NULL}, // CREATURE_CAST_LIGHTNING_BOLT_PU2
	{"CastHealSpell", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastHelpfulSpellOnObject, MAGIC_TYPE_HEAL, &GameThingWithPos::CanBeHealedByCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_CAST_HEAL_SPELL
	{"CastHealSpellPU1", &Creature::CanCreatureCastPowerUpSpell, &CreatureAgenda::ConstructSubActionsForCastHelpfulSpellOnObject, MAGIC_TYPE_HEAL_PU_ONE, &GameThingWithPos::CanBeHealedByCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_CAST_HEAL_SPELL_PU1
	{"CastTornado", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastAggressiveSpellOnObject, MAGIC_TYPE_TORNADO, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureFear, 0, NULL}, // CREATURE_CAST_TORNADO
	{"CastMagicWood", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastHelpfulSpellOnObject, MAGIC_TYPE_WOOD, &GameThingWithPos::CanHaveMagicWoodCastOnMe, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_CAST_MAGIC_WOOD
	{"CastMakeCreatureFreeze", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastPlayfulSpellOnObject, MAGIC_TYPE_CREATURE_SPELL_FREEZE, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureFear, 0, NULL}, // CREATURE_CAST_FREEZE_ON_CREATURE
	{"CastMakeCreatureSmall", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastPlayfulSpellOnObject, MAGIC_TYPE_CREATURE_SPELL_SMALL, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_CAST_SMALL_ON_CREATURE
	{"CastMakeCreatureBig", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastPlayfulSpellOnObject, MAGIC_TYPE_CREATURE_SPELL_BIG, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_CAST_BIG_ON_CREATURE
	{"CastMakeCreatureWeak", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastPlayfulSpellOnObject, MAGIC_TYPE_CREATURE_SPELL_WEAK, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_CAST_WEAK_ON_CREATURE
	{"CastMakeCreatureStrong", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastPlayfulSpellOnObject, MAGIC_TYPE_CREATURE_SPELL_STRONG, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_CAST_STRONG_ON_CREATURE
	{"CastMakeCreatureFat", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastPlayfulSpellOnObject, MAGIC_TYPE_CREATURE_SPELL_FAT, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_CAST_FAT_ON_CREATURE
	{"CastMakeCreatureThin", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastPlayfulSpellOnObject, MAGIC_TYPE_CREATURE_SPELL_THIN, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_CAST_THIN_ON_CREATURE
	{"CastMakeCreatureInvisible", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastPlayfulSpellOnObject, MAGIC_TYPE_CREATURE_SPELL_INVISIBLE, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_CAST_INVSIBLE_ON_CREATURE
	{"CastMakeCreatureNice", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastPlayfulSpellOnObject, MAGIC_TYPE_CREATURE_SPELL_COMPASSION, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_CAST_COMPASSION_ON_CREATURE
	{"CastMakeCreatureAngry", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastPlayfulSpellOnObject, MAGIC_TYPE_CREATURE_SPELL_ANGRY, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_CAST_ANGRY_ON_CREATURE
	{"CastMakeCreatureHungry", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastPlayfulSpellOnObject, MAGIC_TYPE_CREATURE_SPELL_HUNGRY, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_CAST_HUNGRY_ON_CREATURE
	{"CastMakeCreatureFrightened", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastPlayfulSpellOnObject, MAGIC_TYPE_CREATURE_SPELL_FRIGHTENE, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_CAST_FRIGHTENED_ON_CREATURE
	{"CastMakeCreatureTired", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastPlayfulSpellOnObject, MAGIC_TYPE_CREATURE_SPELL_TIRED, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_CAST_TIRED_ON_CREATURE
	{"CastMakeCreatureIll", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastPlayfulSpellOnObject, MAGIC_TYPE_CREATURE_SPELL_ILL, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_CAST_ILL_ON_CREATURE
	{"CastMakeCreatureThirsty", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastPlayfulSpellOnObject, MAGIC_TYPE_CREATURE_SPELL_THIRSTY, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_CAST_THIRSTY_ON_CREATURE
	{"CastMakeCreatureItchy", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastPlayfulSpellOnObject, MAGIC_TYPE_CREATURE_SPELL_ITCHY, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_CAST_ITCHY_ON_CREATURE
	{"CreateHome", &Creature::HasNoHome, &CreatureAgenda::ConstructSubActionsForCreateHome, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_CREATE_HOME
	{"RunToObject", NULL, &CreatureAgenda::ConstructSubActionsForRunToObject, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_RUN_TO_OBJECT
	{"RunAroundRaceTrack", NULL, &CreatureAgenda::ConstructSubActionsForRunAroundRaceTrack, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_RUN_AROUND_RACE_TRACK
	{"ObeyCreature", NULL, &CreatureAgenda::ConstructSubActionsNullFunction, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_OBEY_CREATURE
	{"ShowFriendSpellFireball", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForShowFriendDestructiveSpell, MAGIC_TYPE_FIREBALL, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SHOW_FRIEND_SPELL_FIREBALL
	{"ShowFriendSpellLightningBolt", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForShowFriendDestructiveSpell, MAGIC_TYPE_LIGHTNING_BOLT, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SHOW_FRIEND_SPELL_LIGHTNING_BOLT
	{"ShowFriendSpellLightningStorm", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForShowFriendDestructiveSpell, MAGIC_TYPE_STORM_WIND_RAIN_LIGHTNING, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SHOW_FRIEND_SPELL_LIGHTNING_STORM
	{"ShowFriendSpellMagicFood", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForShowFriendCreationSpell, MAGIC_TYPE_FOOD, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SHOW_FRIEND_SPELL_MAGIC_FOOD
	{"ShowFriendSpellMagicWood", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForShowFriendCreationSpell, MAGIC_TYPE_WOOD, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SHOW_FRIEND_SPELL_MAGIC_WOOD
	{"ShowFriendObject", NULL, &CreatureAgenda::ConstructSubActionsForShowFriendObject, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SHOW_FRIEND_OBJECT
	{"ShowFriendHome", &Creature::HasCreatureBuiltHisHome, &CreatureAgenda::ConstructSubActionsForShowFriendMyHome, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SHOW_FRIEND_HOME
	{"ShowFriendCitadel", NULL, &CreatureAgenda::ConstructSubActionsForShowFriendMyCitadel, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SHOW_FRIEND_CITADEL
	{"KissFriend", NULL, &CreatureAgenda::ConstructSubActionsForKissFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_KISS_FRIEND
	{"GoToTeleport", NULL, &CreatureAgenda::ConstructSubActionsForGoToTeleport, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GO_TO_TELEPORT
	{"GiveFoodToCreature", NULL, &CreatureAgenda::ConstructSubActionsForGiveToCreature, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreature, &GameThingWithPos::CanBePickedUpByCreature, &GameThingWithPos::CanBeEatenByCreature, &GameThingWithPos::AttitudeToCreatureNone, 1, NULL}, // CREATURE_GIVE_FOOD_TO_CREATURE
	{"CastWarmingSpellOnCreature", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastHelpfulSpellOnObject, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_CAST_WARMING_SPELL_ON_CREATURE
	{"CastCoolingSpellOnCreature", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastHelpfulSpellOnObject, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_CAST_COOLING_SPELL_ON_CREATURE
	{"CureIllnessOnCreature", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastHelpfulSpellOnObject, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_CURE_ILLNESS_ON_CREATURE
	{"RunRaceWithFriend", NULL, &CreatureAgenda::ConstructSubActionsForRunRaceWithFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_RUN_RACE_WITH_FRIEND
	{"PlayGameOfThrowingStonesAtCan", NULL, &CreatureAgenda::ConstructSubActionsForPlayGameOfThrowingStonesAtCan, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_PLAY_GAME_OF_THROWING_STONES_AT_CAN_WITH_FRIEND
	{"SitOnTopOfHillWithFriend", NULL, &CreatureAgenda::ConstructSubActionsForSitOnTopOfHillWithFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SIT_ON_TOP_OF_HILL_WITH_FRIEND
	{"TakeObjectFromHand", NULL, &CreatureAgenda::ConstructSubActionsForTakeObjectFromHand, MAGIC_TYPE_NONE, &GameThingWithPos::CanBePickedUpByCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_TAKE_OBJECT_FROM_HAND
	{"GestureCircle", NULL, &CreatureAgenda::ConstructSubActionsForGesture, MAGIC_TYPE_LIGHTNING_BOLT, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GESTURE_TYPE_FULL_CIRCLE
	{"GestureCircle", NULL, &CreatureAgenda::ConstructSubActionsForGesture, MAGIC_TYPE_LIGHTNING_BOLT, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GESTURE_TYPE_STAR
	{"GestureCircle", NULL, &CreatureAgenda::ConstructSubActionsForGesture, MAGIC_TYPE_LIGHTNING_BOLT, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GESTURE_TYPE_SPIRAL
	{"GestureCircle", NULL, &CreatureAgenda::ConstructSubActionsForGesture, MAGIC_TYPE_LIGHTNING_BOLT, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GESTURE_TYPE_SQUARE_WAVE
	{"GestureCircle", NULL, &CreatureAgenda::ConstructSubActionsForGesture, MAGIC_TYPE_LIGHTNING_BOLT, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GESTURE_TYPE_KISS
	{"GestureCircle", NULL, &CreatureAgenda::ConstructSubActionsForGesture, MAGIC_TYPE_LIGHTNING_BOLT, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GESTURE_TYPE_SQUARE
	{"GestureCircle", NULL, &CreatureAgenda::ConstructSubActionsForGesture, MAGIC_TYPE_LIGHTNING_BOLT, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GESTURE_TYPE_TRIANGLE
	{"GestureCircle", NULL, &CreatureAgenda::ConstructSubActionsForGesture, MAGIC_TYPE_LIGHTNING_BOLT, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GESTURE_TYPE_S_SHAPE
	{"GestureCircle", NULL, &CreatureAgenda::ConstructSubActionsForGesture, MAGIC_TYPE_LIGHTNING_BOLT, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GESTURE_TYPE_V_BALL
	{"GestureCircle", NULL, &CreatureAgenda::ConstructSubActionsForGesture, MAGIC_TYPE_LIGHTNING_BOLT, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GESTURE_TYPE_MOON
	{"GestureCircle", NULL, &CreatureAgenda::ConstructSubActionsForGesture, MAGIC_TYPE_LIGHTNING_BOLT, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GESTURE_TYPE_HEART
	{"GestureCircle", NULL, &CreatureAgenda::ConstructSubActionsForGesture, MAGIC_TYPE_LIGHTNING_BOLT, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GESTURE_TYPE_BOW_TIE
	{"FishAndEat", &Creature::IsThereFishFarmNearby, &CreatureAgenda::ConstructSubActionsForFishAndEat, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_FISH_AND_EAT
	{"RunAwayFromPos", NULL, &CreatureAgenda::ConstructSubActionsForRunAwayFromPos, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_RUN_AWAY_FROM_POS
	{"ExaminePos", NULL, &CreatureAgenda::ConstructSubActionsForExaminePos, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_EXAMINE_POS
	{"EatFromFoodPile", NULL, &CreatureAgenda::ConstructSubActionsForEatFromFoodPile, MAGIC_TYPE_NONE, &GameThingWithPos::IsAFoodPileOutsideStoragePit, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_EAT_FROM_MAGIC_FOOD_PILE
	{"SmashStoneInHalf", NULL, &CreatureAgenda::ConstructSubActionsForSmashStoneInHalf, MAGIC_TYPE_NONE, &GameThingWithPos::IsRock, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SMASH_STONES_IN_HALF
	{"BeSad", NULL, &CreatureAgenda::ConstructSubActionsForBeSad, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_BE_SAD
	{"BeIdle", NULL, &CreatureAgenda::ConstructSubActionsForBeingIdle, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_IDLE
	{"GoHome", &Creature::IsCreatureNotNearHome, &CreatureAgenda::ConstructSubActionsForGoHome, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GO_HOME
	{"PointAtObject", NULL, &CreatureAgenda::ConstructSubActionsForPointAtObject, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_POINT_AT_OBJECT
	{"BringFoodHome", NULL, &CreatureAgenda::ConstructSubActionsForBringFoodHome, MAGIC_TYPE_NONE, &GameThingWithPos::CanBeEatenByCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_BRING_FOOD_HOME
	{"HangAroundAtHome", NULL, &CreatureAgenda::ConstructSubActionsForHangAroundAtHome, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_HANG_AROUND_AT_HOME
	{"GoOutAndLookForFood", NULL, &CreatureAgenda::ConstructSubActionsForGoOutAndLookForFood, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GO_OUT_AND_LOOK_FOR_FOOD
	{"ShowPlayerHowNiceYouThinkHeIs", NULL, &CreatureAgenda::ConstructSubActionsForShowPlayerHowNiceYouReckon, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SHOW_PLAYER_HOW_NICE_YOU_THINK_HE_IS
	{"PointAtCamera", NULL, &CreatureAgenda::ConstructSubActionsForPointAtCamera, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_POINT_AT_CAMERA
	{"PointAtHand", NULL, &CreatureAgenda::ConstructSubActionsForPointAtHand, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_POINT_AT_HAND
	{"RunHome", NULL, &CreatureAgenda::ConstructSubActionsForRunHome, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_RUN_HOME
	{"PlayThrowingGameWithPlayer", NULL, &CreatureAgenda::ConstructSubActionsForPlayThrowingGameWithPlayer, MAGIC_TYPE_NONE, NULL, &GameThingWithPos::CanBePickedUpByCreature, &GameThingWithPos::IsToy, &GameThingWithPos::AttitudeToCreatureNone, 1, NULL}, // CREATURE_PLAY_THROWING_GAME_WITH_PLAYER
	{"BeSillyWithPlayer", NULL, &CreatureAgenda::ConstructSubActionsForBeSillyWithPlayer, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_BE_SILLY_WITH_PLAYER
	{"ShowHowNiceYouThinkCreatureIs", NULL, &CreatureAgenda::ConstructSubActionsForShowCreatureHowNiceYouReckon, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SHOW_HOW_NICE_YOU_THINK_CREATURE_IS
	{"BeFrightenedOnTheSpot", NULL, &CreatureAgenda::ConstructSubActionsForBeFrightenedOnTheSpot, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_BE_FRIGHTENED_ON_THE_SPOT
	{"PooAtHome", &Creature::IsCreatureNearHome, &CreatureAgenda::ConstructSubActionsForPooDiscretely, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_POO_DISCRETELY
	{"WatchTelly", NULL, &CreatureAgenda::ConstructSubActionsForWatchTelly, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_WATCH_TELLY
	{"Fart", NULL, &CreatureAgenda::ConstructSubActionsForFart, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_FART
	{"RestOnTheSpot", &Creature::NothingScareyNearMe, &CreatureAgenda::ConstructSubActionsForRestOnTheSpot, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_REST_ON_THE_SPOT
	{"GoHomeToRecover", NULL, &CreatureAgenda::ConstructSubActionsForGoHomeToRecover, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GO_HOME_TO_RECOVER
	{"MimicPlayer", NULL, &CreatureAgenda::ConstructSubActionsForMimicPlayer, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_FOLLOW_PLAYER_DESIRE
	{"GetHigh", NULL, &CreatureAgenda::ConstructSubActionsForGetHigh, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GET_HIGH
	{"CastTeleport", &Creature::CanCreatureCastTeleport, &CreatureAgenda::ConstructSubActionsForCastHelpfulSpellOnObject, MAGIC_TYPE_TELEPORT, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_CAST_TELEPORT
	{"CastShieldPU1", &Creature::CanCreatureCastPowerUpSpell, &CreatureAgenda::ConstructSubActionsForCastHelpfulSpellOnObject, MAGIC_TYPE_SHIELD, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_CAST_SHIELD_PU1
	{"CastPhysicalShield", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastHelpfulSpellOnObject, MAGIC_TYPE_PHYSICAL_SHIELD, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_CAST_PHYSICAL_SHIELD
	{"CastExplosionPU1", &Creature::CanCreatureCastPowerUpSpell, &CreatureAgenda::ConstructSubActionsForCastAggressiveSpellOnObject, MAGIC_TYPE_EXPLOSION_ONE_PU_ONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureFear, 0, NULL}, // CREATURE_CAST_EXPLOSION_PU1
	{"CastExplosionPU2", &Creature::CanCreatureCastPowerUpSpell, &CreatureAgenda::ConstructSubActionsForCastAggressiveSpellOnObject, MAGIC_TYPE_EXPLOSION_ONE_PU_TWO, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureFear, 0, NULL}, // CREATURE_CAST_EXPLOSION_PU2
	{"SwapMindWithOtherCreature", NULL, &CreatureAgenda::ConstructSubActionsForSwapMindWithOtherCreature, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SWAP_MIND_WITH_OTHER_CREATURE
	{"LookButDontApproach", NULL, &CreatureAgenda::ConstructSubActionsForLookButDontApproach, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_LOOK_BUT_DONT_APPROACH
	{"LookForever", NULL, &CreatureAgenda::ConstructSubActionsForLookForever, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_LOOK_FOREVER
	{"LookAtCitadel", NULL, &CreatureAgenda::ConstructSubActionsForLookAtCitadel, MAGIC_TYPE_NONE, &GameThingWithPos::IsCitadelPart, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_LOOK_AT_CITADEL
	{"LookAtMountains", NULL, &CreatureAgenda::ConstructSubActionsForLookAtMountains, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_LOOK_AT_MOUNTAINS
	{"LookOutToSea", &Creature::IsMatureEnoughToLeaveHome, &CreatureAgenda::ConstructSubActionsForLookOutToSea, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_LOOK_OUT_TO_SEA
	{"LookAtSun", &Creature::IsSunVisible, &CreatureAgenda::ConstructSubActionsForLookAtSun, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_LOOK_AT_SUN
	{"LookAtMoon", &Creature::IsMoonVisible, &CreatureAgenda::ConstructSubActionsForLookAtMoon, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_LOOK_AT_MOON
	{"LookDownCliff", NULL, &CreatureAgenda::ConstructSubActionsForLookDownCliff, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_LOOK_DOWN_CLIFF
	{"ExploreAndCastTeleport", &Creature::CanCreatureCastTeleport, &CreatureAgenda::ConstructSubActionsForExploreAndCastTeleport, MAGIC_TYPE_TELEPORT, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_EXPLORE_AND_CAST_TELEPORT
	{"HurlObjectInHand", NULL, &CreatureAgenda::ConstructSubActionsForHurlObjectInHand, MAGIC_TYPE_NONE, &GameThingWithPos::CanBeDestroyedByStoning, NULL, NULL, &GameThingWithPos::AttitudeToCreatureFear, 0, NULL}, // CREATURE_HURL_OBJECT_IN_HAND
	{"EatWithFriend", &Creature::IsSlightlyHungry, &CreatureAgenda::ConstructSubActionsForEatWithFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_EAT_WITH_FRIEND
	{"DrinkWithFriend", &Creature::IsSlightlyThirsty, &CreatureAgenda::ConstructSubActionsForDrinkWithFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_DRINK_WITH_FRIEND
	{"PooWithFriend", &Creature::IsSlightlyInNeedOfAPoo, &CreatureAgenda::ConstructSubActionsForPooWithFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_POO_WITH_FRIEND
	{"SitWithFriend", NULL, &CreatureAgenda::ConstructSubActionsForSitWithFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SIT_WITH_FRIEND
	{"BeHappyWithFriend", &Creature::IsSlightlyContent, &CreatureAgenda::ConstructSubActionsForBeHappyWithFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_HAPPY_WITH_FRIEND
	{"SleepWithFriend", &Creature::IsSlightlySleepy, &CreatureAgenda::ConstructSubActionsForSleepWithFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SLEEP_WITH_FRIEND
	{"GoToBeachWithFriend", &Creature::IsNearWater, &CreatureAgenda::ConstructSubActionsForGoToBeachWithFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GO_TO_BEACH_WITH_FRIEND
	{"EnterCitadel", NULL, &CreatureAgenda::ConstructSubActionsForEnterCitadel, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_ENTER_CITADEL
	{"BePatheticToPlayer", NULL, &CreatureAgenda::ConstructSubActionsForBePatheticWithPlayer, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_BE_PATHETIC_TO_PLAYER
	{"BeCrossWithPlayer", &Creature::IsCrossWithPlayer, &CreatureAgenda::ConstructSubActionsForBeCrossWithPlayer, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_CROSS_WITH_PLAYER
	{"KissFriendsArse", NULL, &CreatureAgenda::ConstructSubActionsForKissFriendsArse, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_KISS_FRIENDS_ARSE
	{"ArgueWithFriend", NULL, &CreatureAgenda::ConstructSubActionsForArgueWithFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_ARGUE_WITH_FRIEND
	{"MopeAboutWithFriend", NULL, &CreatureAgenda::ConstructSubActionsForMopeAboutWithFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_MOPE_ABOUT_WITH_FRIEND
	{"ConfuseFriend", NULL, &CreatureAgenda::ConstructSubActionsForConfuseFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_CONFUSE_FRIEND
	{"ShowOffToFriend", NULL, &CreatureAgenda::ConstructSubActionsForShowOffToFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SHOW_OFF_TO_FRIEND
	{"BehaveStrangely", NULL, &CreatureAgenda::ConstructSubActionsForBehaveStrangely, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_BEHAVE_STRANGELY
	{"PineForFriend", NULL, &CreatureAgenda::ConstructSubActionsForPineForFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_PINE_FOR_FRIEND
	{"LookForFriend", NULL, &CreatureAgenda::ConstructSubActionsForLookForFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_LOOK_FOR_FRIEND
	{"CastTeleportAndUseIt", &Creature::CanCreatureCastTeleport, &CreatureAgenda::ConstructSubActionsForCastTeleportAndUseItToGetToMarker, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_CAST_TELEPORT_AND_USE_IT_TO_MOVE_TO_OBJECT
	{"DiePermanently", NULL, &CreatureAgenda::ConstructSubActionsForDiePermanently, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_DIE_PERMANENTLY
	{"SitDownOnBeach", &Creature::IsMatureEnoughToLeaveHome, &CreatureAgenda::ConstructSubActionsForSitDownByBeach, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SIT_DOWN_ON_BEACH
	{"ShowCreatureYouHateHim", NULL, &CreatureAgenda::ConstructSubActionsForShowCreatureYouHateHim, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SHOW_CREATURE_YOU_HATE_HIM
	{"AttackerThrowBallAtGoal", NULL, &CreatureAgenda::ConstructSubActionsForAttackerThrowBallAtGoal, MAGIC_TYPE_NONE, &GameThingWithPos::IsPlayingFootball, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_FOOTBALL_ATTACKER_THROW_BALL_AT_GOAL
	{"AttackerKickBallAtGoal", NULL, &CreatureAgenda::ConstructSubActionsForAttackerKickBallAtGoal, MAGIC_TYPE_NONE, &GameThingWithPos::IsPlayingFootball, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_FOOTBALL_ATTACKER_KICK_BALL_AT_GOAL
	{"DefenderStompOnBall", NULL, &CreatureAgenda::ConstructSubActionsForDefenderStompOnBall, MAGIC_TYPE_NONE, &GameThingWithPos::IsPlayingFootball, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_FOOTBALL_DEFENDER_STOMP_ON_BALL
	{"DefenderClearBall", NULL, &CreatureAgenda::ConstructSubActionsForDefenderClearBall, MAGIC_TYPE_NONE, &GameThingWithPos::IsPlayingFootball, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_FOOTBALL_DEFENDER_CLEAR_BALL
	{"GoalieCatchBall", NULL, &CreatureAgenda::ConstructSubActionsForGoalieCatchBall, MAGIC_TYPE_NONE, &GameThingWithPos::IsPlayingFootball, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_FOOTBALL_GOALIE_CATCH_BALL
	{"GoalieFoul", NULL, &CreatureAgenda::ConstructSubActionsForGoalieFoulAttacker, MAGIC_TYPE_NONE, &GameThingWithPos::IsPlayingFootball, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_FOOTBALL_GOALIE_FOUL
	{"CelebrateGoal", NULL, &CreatureAgenda::ConstructSubActionsForCelebrateGoal, MAGIC_TYPE_NONE, &GameThingWithPos::IsPlayingFootballAndMySideHasJustScored, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_FOOTBALL_CELEBRATE
	{"CommiserateGoal", NULL, &CreatureAgenda::ConstructSubActionsForCommiserateGoal, MAGIC_TYPE_NONE, &GameThingWithPos::IsPlayingFootballAndOtherSideHasJustScored, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_FOOTBALL_COMMISERATE
	{"CastOneOffSpellInHandAggressive", &Creature::IsHoldingOneOffSpellAggressive, &CreatureAgenda::ConstructSubActionsForCastOneOffSpellInHandAggressive, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureFear, 0, NULL}, // CREATURE_CAST_ONE_OFF_SPELL_IN_HAND_AGGRESSIVE
	{"CastOneOffSpellInHandCompassionate", &Creature::IsHoldingOneOffSpellCompassionate, &CreatureAgenda::ConstructSubActionsForCastOneOffSpellInHandCompassionate, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_CAST_ONE_OFF_SPELL_IN_HAND_COMPASSIONATE
	{"CastOneOffSpellInHandPlayful", &Creature::IsHoldingOneOffSpellPlayful, &CreatureAgenda::ConstructSubActionsForCastOneOffSpellInHandPlayful, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_CAST_ONE_OFF_SPELL_IN_HAND_PLAYFUL
	{"CastOneOffSpellInHandToRestoreHealth", &Creature::IsHoldingOneOffSpellToRestoreHealth, &CreatureAgenda::ConstructSubActionsForCastOneOffSpellInHandToRestoreHealth, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_CAST_ONE_OFF_SPELL_IN_HAND_TO_RESTORE_HEALTH
	{"PickUpAndCastOneOffSpellAggressive", NULL, &CreatureAgenda::ConstructSubActionsForPickUpAndCastOneOffSpellAggressive, MAGIC_TYPE_NONE, NULL, &GameThingWithPos::IsOneOffSpellAggressive, NULL, &GameThingWithPos::AttitudeToCreatureFear, 1, NULL}, // CREATURE_PICK_UP_AND_CAST_ONE_OFF_SPELL_AGGRESSIVE
	{"PickUpAndCastOneOffSpellCompassionate", NULL, &CreatureAgenda::ConstructSubActionsForPickUpAndCastOneOffSpellCompassionate, MAGIC_TYPE_NONE, NULL, &GameThingWithPos::IsOneOffSpellCompassionate, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 1, NULL}, // CREATURE_PICK_UP_AND_CAST_ONE_OFF_SPELL_COMPASSIONATE
	{"PickUpAndCastOneOffSpellPlayful", NULL, &CreatureAgenda::ConstructSubActionsForPickUpAndCastOneOffSpellPlayful, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreature, &GameThingWithPos::IsOneOffSpellPlayful, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 1, NULL}, // CREATURE_PICK_UP_AND_CAST_ONE_OFF_SPELL_PLAYFUL
	{"PickUpAndCastOneOffSpellToRestoreHealth", NULL, &CreatureAgenda::ConstructSubActionsForPickUpAndCastOneOffSpellToRestoreHealth, MAGIC_TYPE_NONE, NULL, &GameThingWithPos::IsOneOffSpellToRestoreHealth, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 1, NULL}, // CREATURE_PICK_UP_AND_CAST_ONE_OFF_SPELL_TO_RESTORE_HEALTH
	{"Kick", NULL, &CreatureAgenda::ConstructSubActionsForKick, MAGIC_TYPE_NONE, &GameThingWithPos::CanBeKickedByCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureFear, 0, NULL}, // CREATURE_KICK
	{"Catch", NULL, &CreatureAgenda::ConstructSubActionsForCatch, MAGIC_TYPE_NONE, &GameThingWithPos::CanBePickedUpByCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_CATCH
	{"PutOutFireWithMagicWater", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastMagicWater, MAGIC_TYPE_WATER, &GameThingWithPos::IsOnFire, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_PUT_OUT_FIRE_WITH_MAGIC_WATER
	{"SprinkleMagicWaterOnCrops", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastMagicWater, MAGIC_TYPE_WATER, &GameThingWithPos::BenefitsFromHavingWaterSprinkledOnIt, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_SPRINKLE_MAGIC_WATER_ON_CROPS
	{"CastMagicWater", &Creature::ShouldCreatureCastWaterOnHimself, &CreatureAgenda::ConstructSubActionsForCastMagicWaterOnMyself, MAGIC_TYPE_WATER, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_PUT_OUT_FIRE_ON_MYSELF
	{"PlayThrowingGameWithFriend", NULL, &CreatureAgenda::ConstructSubActionsForPlayThrowingGameWithFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, &GameThingWithPos::CanBePickedUpByCreature, &GameThingWithPos::IsToy, &GameThingWithPos::AttitudeToCreatureRespect, 1, NULL}, // CREATURE_PLAY_THROWING_GAME_WITH_FRIEND
	{"NoticeHelpfulAction", NULL, &CreatureAgenda::ConstructSubActionsForNoticeHelpfulAction, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_NOTICE_HELPFUL_ACTION
	{"NoticeAggressiveAction", NULL, &CreatureAgenda::ConstructSubActionsForNoticeAggressiveAction, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_NOTICE_AGGRESSIVE_ACTION
	{"NoticeAction", NULL, &CreatureAgenda::ConstructSubActionsForNoticeAction, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_NOTICE_ACTION
	{"PutFoodByWorshipSite", NULL, &CreatureAgenda::ConstructSubActionsForPutFoodFromFieldByWorshipSite, MAGIC_TYPE_NONE, &GameThingWithPos::IsWorshipSite, &GameThingWithPos::IsFieldWithFoodInIt, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 1, NULL}, // CREATURE_PUT_FOOD_FROM_FIELD_BY_WORSHIP_SITE
	{"CastMagicFoodByWorshipSite", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastMagicFood, MAGIC_TYPE_FOOD, &GameThingWithPos::IsWorshipSite, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_CAST_MAGIC_FOOD_BY_WORSHIP_SITE
	{"GiveWoodFromTreeToBuildingSite", NULL, &CreatureAgenda::ConstructSubActionsForGiveWoodFromTreeToBuildingSite, MAGIC_TYPE_NONE, &GameThingWithPos::IsBuildingWhichIsBeingBuilt, &GameThingWithPos::IsTree, &GameThingWithPos::CanBePickedUpByCreature, &GameThingWithPos::AttitudeToCreatureRespect, 1, NULL}, // CREATURE_GIVE_WOOD_FROM_TREE_TO_BUILDING_SITE
	{"CastMagicWoodByBuildingSite", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastHelpfulSpellOnObject, MAGIC_TYPE_WOOD, &GameThingWithPos::IsBuildingWhichIsBeingBuilt, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_CAST_MAGIC_WOOD_BY_BUILDING_SITE
	{"PlantTree", NULL, &CreatureAgenda::ConstructSubActionsForRepositionObjectToUseNearObjectToActOn, MAGIC_TYPE_NONE, NULL, &GameThingWithPos::CanBePickedUpByCreature, &GameThingWithPos::IsTreeNotTooNearPlannedForest, &GameThingWithPos::AttitudeToCreatureNone, 1, NULL}, // CREATURE_PLANT_TREE
	{"DanceOutsideWorshipSite", NULL, &CreatureAgenda::ConstructSubActionsForDanceOutsideWorshipSite, MAGIC_TYPE_NONE, &GameThingWithPos::IsWorshipSite, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_DANCE_OUTSIDE_WORSHIP_SITE
	{"DanceAroundArtefact", NULL, &CreatureAgenda::ConstructSubActionsForDanceAroundArtefact, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_DANCE_AROUND_ARTEFACT
	{"ThrowToImpress", NULL, &CreatureAgenda::ConstructSubActionsForHurl, MAGIC_TYPE_NONE, NULL, &GameThingWithPos::CanBeThrownByCreature, &GameThingWithPos::CanBePickedUpByCreature, &GameThingWithPos::AttitudeToCreatureFear, 1, NULL}, // CREATURE_THROW_TO_IMPRESS
	{"StealSpell", NULL, &CreatureAgenda::ConstructSubActionsForStealSpell, MAGIC_TYPE_NONE, &GameThingWithPos::IsTotemWithStealableSpell, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_STEAL_SPELL
	{"StealScaffolding", NULL, &CreatureAgenda::ConstructSubActionsForStealScaffold, MAGIC_TYPE_NONE, &GameThingWithPos::IsStealableScaffold, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_STEAL_SCAFFOLDING
	{"CatchFireballAndThrowBack", NULL, &CreatureAgenda::ConstructSubActionsForCatchFireball, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_CATCH_FIREBALL_AND_THROW_BACK
	{"TellCreatureToSodOff", NULL, &CreatureAgenda::ConstructSubActionsForTellCreatureToSodOff, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_TELL_CREATURE_TO_SOD_OFF
	{"OrderFriendAround", NULL, &CreatureAgenda::ConstructSubActionsForOrderFriendAround, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_ORDER_FRIEND_AROUND
	{"TakeFoodFromFieldToHome", NULL, &CreatureAgenda::ConstructSubActionsForTakeFoodFromFieldHome, MAGIC_TYPE_NONE, &GameThingWithPos::IsFieldWithFoodInIt, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_TAKE_FOOD_FROM_FIELD_TO_HOME
	{"TakeFishHome", &Creature::IsThereFishFarmNearby, &CreatureAgenda::ConstructSubActionsForTakeFishHome, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_TAKE_FISH_FROM_SEA_TO_HOME
	{"WaveAtFriend", NULL, &CreatureAgenda::ConstructSubActionsForWaveAtFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_WAVE_AT_FRIEND
	{"DeadForever", NULL, &CreatureAgenda::ConstructSubActionsForDeadForever, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_DEAD_FOREVER
	{"GiveWoodFromTreeToWorkshop", NULL, &CreatureAgenda::ConstructSubActionsForGiveWoodFromTreeToBuildingSite, MAGIC_TYPE_NONE, &GameThingWithPos::IsWorkshop, &GameThingWithPos::IsTree, &GameThingWithPos::CanBePickedUpByCreature, &GameThingWithPos::AttitudeToCreatureRespect, 1, NULL}, // CREATURE_GIVE_WOOD_FROM_TREE_TO_WORKSHOP
	{"ThrowAround", NULL, &CreatureAgenda::ConstructSubActionsForPracticeThrow, MAGIC_TYPE_NONE, &GameThingWithPos::IsLiving, NULL, NULL, &GameThingWithPos::AttitudeToCreatureFear, 0, NULL}, // CREATURE_THROW_AROUND
	{"StealAndPutInTown", NULL, &CreatureAgenda::ConstructSubActionsForStealAndPutInTown, MAGIC_TYPE_NONE, &GameThingWithPos::IsStealableByCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_STEAL_OBJECT_AND_PUT_IN_TOWN
	{"StealAndPutByCitadel", &Creature::DoesCreatureHaveACitadel, &CreatureAgenda::ConstructSubActionsForStealAndPutByCitadel, MAGIC_TYPE_NONE, &GameThingWithPos::IsStealableByCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_STEAL_OBJECT_AND_PUT_BY_CITADEL
	{"BreakRock", NULL, &CreatureAgenda::ConstructSubActionsForBreakRock, MAGIC_TYPE_NONE, &GameThingWithPos::IsPickupableRock, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_BREAK_ROCK
	{"NoticeStealingAction", NULL, &CreatureAgenda::ConstructSubActionsForNoticeStealingAction, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_NOTICE_STEALING_ACTION
	{"NoticePlayfulAction", NULL, &CreatureAgenda::ConstructSubActionsForNoticePlayfulAction, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_NOTICE_PLAYFUL_ACTION
	{"EatFromFieldWithFriend", NULL, &CreatureAgenda::ConstructSubActionsForEatFromFieldWithFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_EAT_FROM_FIELD_WITH_FRIEND
	{"GetFriendToGiveMeFoodFromField", NULL, &CreatureAgenda::ConstructSubActionsForGetFriendToGiveMeFoodFromField, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GET_FRIEND_TO_GIVE_ME_FOOD_FROM_FIELD
	{"EatFishWithFriend", NULL, &CreatureAgenda::ConstructSubActionsForEatFishWithFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_EAT_FISH_WITH_FRIEND
	{"GetFriendToGiveMeFish", NULL, &CreatureAgenda::ConstructSubActionsForGetFriendToGiveMeFish, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GET_FRIEND_TO_GIVE_ME_FISH
	{"AttackWithFriend", &Creature::ShouldNearestTownBeAttacked, &CreatureAgenda::ConstructSubActionsForAttackTownWithFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_ATTACK_WITH_FRIEND
	{"HelpTownWithFriend", &Creature::ShouldNearestTownBeHelped, &CreatureAgenda::ConstructSubActionsForHelpTownWithFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_HELP_TOWN_WITH_FRIEND
	{"ExamineObjectInHand", NULL, &CreatureAgenda::ConstructSubActionsForExamineObjectInHand, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureEating, 0, NULL}, // CREATURE_EXAMINE_OBJECT_IN_HAND
	{"EatObjectInHand", NULL, &CreatureAgenda::ConstructSubActionsForEatObjectInHand, MAGIC_TYPE_NONE, &GameThingWithPos::CanBeEatenByCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureEating, 0, NULL}, // CREATURE_EAT_OBJECT_IN_HAND
	{"StrokeObjectInHand", NULL, &CreatureAgenda::ConstructSubActionsForStrokeObjectInHand, MAGIC_TYPE_NONE, &GameThingWithPos::IsLiving, NULL, NULL, &GameThingWithPos::AttitudeToCreatureEating, 0, NULL}, // CREATURE_STROKE_OBJECT_IN_HAND
	{"ThrowObjectInHand", NULL, &CreatureAgenda::ConstructSubActionsForThrowObjectInHand, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureEating, 0, NULL}, // CREATURE_THROW_OBJECT_IN_HAND
	{"GetAttentionFromFriend", NULL, &CreatureAgenda::ConstructSubActionsForGetAttentionFromFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureNotAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_GET_ATTENTION_FROM_FRIEND
	{"ExamineOtherCreatureWithFriend", NULL, &CreatureAgenda::ConstructSubActionsForExamineOtherCreatureWithFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, &GameThingWithPos::IsCreature, NULL, &GameThingWithPos::AttitudeToCreatureNone, 1, NULL}, // CREATURE_EXAMINE_OTHER_CREATURE_WITH_FRIEND
	{"GiveFriendToy", NULL, &CreatureAgenda::ConstructSubActionsForGiveFriendToy, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, &GameThingWithPos::IsToy, NULL, &GameThingWithPos::AttitudeToCreatureNone, 1, NULL}, // CREATURE_GIVE_FRIEND_TOY
	{"Sacrifice", &Creature::DoesCreatureHaveACitadel, &CreatureAgenda::ConstructSubActionsForSacrifice, MAGIC_TYPE_NONE, &GameThingWithPos::IsLiving, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SACRIFICE
	{"SetFireToObject", NULL, &CreatureAgenda::ConstructSubActionsForSetFireToObject, MAGIC_TYPE_NONE, &GameThingWithPos::IsNotOnFire, &GameThingWithPos::IsOnFire, &GameThingWithPos::CanBePickedUpByCreature, &GameThingWithPos::AttitudeToCreatureFear, 1, NULL}, // CREATURE_SET_FIRE_TO_OBJECT
	{"WatchPlayer", NULL, &CreatureAgenda::ConstructSubActionsForWatchPlayer, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_WATCH_PLAYER_WHILE_HE_HAS_YOUR_ATTENTION
	{"DropCowInStoragePit", NULL, &CreatureAgenda::ConstructSubActionsForDropCowInStoragePit, MAGIC_TYPE_NONE, &GameThingWithPos::IsStoragePit, &GameThingWithPos::IsCow, &GameThingWithPos::CanBePickedUpByCreature, &GameThingWithPos::AttitudeToCreatureRespect, 1, NULL}, // CREATURE_DROP_COW_IN_STORAGE_PIT
	{"CastShieldAroundTown", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastShieldAroundTown, MAGIC_TYPE_SHIELD, &GameThingWithPos::IsStoragePit, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_CAST_SHIELD_AROUND_TOWN
	{"MakeBreederDisciple", NULL, &CreatureAgenda::ConstructSubActionsForMakeDiscipleBreeder, MAGIC_TYPE_NONE, &GameThingWithPos::IsVillagerInTownWithoutManyBreeders, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_MAKE_BREEDER_DISCIPLE
	{"PlayGameWithVillagers", NULL, &CreatureAgenda::ConstructSubActionsForDanceWithVillagers, MAGIC_TYPE_HEAL, &GameThingWithPos::IsVillager, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_PLAY_GAME_WITH_VILLAGERS
	{"TakeVillagerHomeToSleep", NULL, &CreatureAgenda::ConstructSubActionsForTakeVillagerHomeToSleep, MAGIC_TYPE_NONE, &GameThingWithPos::IsVillagerFarFromHome, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_TAKE_VILLAGER_HOME_TO_SLEEP
	{"KickBallAround", NULL, &CreatureAgenda::ConstructSubActionsForKickBallAround, MAGIC_TYPE_NONE, &GameThingWithPos::IsToyBall, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_KICK_BALL_AROUND
	{"ThrowBallAtObject", NULL, &CreatureAgenda::ConstructSubActionsForThrowBallAtObject, MAGIC_TYPE_NONE, NULL, &GameThingWithPos::IsToy, &GameThingWithPos::CanBePickedUpByCreature, &GameThingWithPos::AttitudeToCreatureNone, 1, NULL}, // CREATURE_THROW_BALL_AT_OBJECT
	{"DanceOnYourOwnByTheSea", NULL, &CreatureAgenda::ConstructSubActionsForDanceOnYourOwnByTheSea, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_DANCE_ON_YOUR_OWN_BY_THE_SEA
	{"DancePlayfullyWithVillagersWatching", NULL, &CreatureAgenda::ConstructSubActionsForDanceWithVillagers, MAGIC_TYPE_HEAL_PU_ONE, &GameThingWithPos::IsVillager, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_DANCE_PLAYFULLY_WITH_VILLAGERS_WATCHING
	{"DancePlayfullyWithVillagersParticipating", &Creature::LastDanceWasntDanceCreature, &CreatureAgenda::ConstructSubActionsForDanceImpressivelyWithVillagers, MAGIC_TYPE_FIREBALL, &GameThingWithPos::IsVillagerWhoHasNotBeenDancedWithRecently, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_DANCE_PLAYFULLY_WITH_VILLAGERS_PARTICIPATING
	{"TellVillagersAStory", &Creature::LastDanceWasntDanceStory, &CreatureAgenda::ConstructSubActionsForDanceImpressivelyWithVillagers, MAGIC_TYPE_EXPLOSION_ONE_PU_TWO, &GameThingWithPos::IsVillagerWhoHasNotBeenDancedWithRecently, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_TELL_VILLAGERS_A_STORY
	{"PlayfullyFrightenVillagers", NULL, &CreatureAgenda::ConstructSubActionsForPlayfullyFrightenVillagers, MAGIC_TYPE_NONE, &GameThingWithPos::IsVillager, NULL, NULL, &GameThingWithPos::AttitudeToCreatureFear, 0, NULL}, // CREATURE_PLAYFULLY_FRIGHTEN_VILLAGERS
	{"CastAmusingSpellOnCreature", &Creature::CanCastAmusingSpellOnCreature, &CreatureAgenda::ConstructSubActionsForCastAmusingSpellOnCreature, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureWhoSeemsFriendly, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_CAST_AMUSING_SPELL_ON_CREATURE
	{"KickTree", NULL, &CreatureAgenda::ConstructSubActionsForKickTree, MAGIC_TYPE_NONE, &GameThingWithPos::IsTree, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_KICK_TREE
	{"PlayfullyInteractWithVillager", NULL, &CreatureAgenda::ConstructSubActionsForPlayfullyInteractWithVillager, MAGIC_TYPE_NONE, &GameThingWithPos::IsVillager, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_PLAYFULLY_INTERACT_WITH_VILLAGER
	{"PutFishByWorshipSite", &Creature::IsThereFishFarmNearby, &CreatureAgenda::ConstructSubActionsForPutFishByWorshipSite, MAGIC_TYPE_NONE, &GameThingWithPos::IsWorshipSite, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_PUT_FISH_BY_WORSHIP_SITE
	{"PlayfullyKissVillager", NULL, &CreatureAgenda::ConstructSubActionsForPlayfullyKissVillager, MAGIC_TYPE_NONE, &GameThingWithPos::IsVillager, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_PLAYFULLY_KISS_VILLAGER
	{"CastMagicWoodByWorkShop", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastHelpfulSpellOnObject, MAGIC_TYPE_WOOD, &GameThingWithPos::IsWorkshop, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_CAST_MAGIC_WOOD_BY_WORKSHOP
	{"BringVillagerToWorshipSite", NULL, &CreatureAgenda::ConstructSubActionsForBringVillagerToWorshipSite, MAGIC_TYPE_NONE, &GameThingWithPos::IsWorshipSite, &GameThingWithPos::IsVillagerNotWorshipping, NULL, &GameThingWithPos::AttitudeToCreatureNone, 1, NULL}, // CREATURE_BRING_VILLAGERS_TO_WORSHIP_SITE
	{"WaterTree", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastMagicWater, MAGIC_TYPE_WATER, &GameThingWithPos::IsTree, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_WATER_TREE
	{"WaterField", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastMagicWater, MAGIC_TYPE_WATER, &GameThingWithPos::IsFieldWhichNeedsWatering, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_WATER_FIELD
	{"StealFoodFromFarm", NULL, &CreatureAgenda::ConstructSubActionsForGiveFoodFromFieldToStoragePit, MAGIC_TYPE_NONE, &GameThingWithPos::IsStoragePitBelongingToMyPlayer, &GameThingWithPos::IsFieldBelongingToAnotherPlayer, NULL, &GameThingWithPos::AttitudeToCreatureNone, 1, NULL}, // CREATURE_STEAL_FOOD_FROM_FARM
	{"StealFoodFromStoragePit", NULL, &CreatureAgenda::ConstructSubActionsForStealFoodFromStoragePit, MAGIC_TYPE_NONE, &GameThingWithPos::IsStoragePitBelongingToMyPlayer, &GameThingWithPos::IsStoragePitBelongingToAnotherPlayer, NULL, &GameThingWithPos::AttitudeToCreatureNone, 1, NULL}, // CREATURE_STEAL_FOOD_FROM_STORAGE_PIT
	{"StealWoodFromStoragePit", NULL, &CreatureAgenda::ConstructSubActionsForStealWoodFromStoragePit, MAGIC_TYPE_NONE, &GameThingWithPos::IsStoragePitBelongingToMyPlayer, &GameThingWithPos::IsStoragePitBelongingToAnotherPlayer, NULL, &GameThingWithPos::AttitudeToCreatureNone, 1, NULL}, // CREATURE_STEAL_WOOD_FROM_STORAGE_PIT
	{"DanceAmorouslyWithVillagers", NULL, &CreatureAgenda::ConstructSubActionsForDanceWithVillagers, MAGIC_TYPE_FOREST, &GameThingWithPos::IsVillager, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_DANCE_AMOROUSLY_WITH_VILLAGERS
	{"StealSpellSeed", NULL, &CreatureAgenda::ConstructSubActionsForStealSpellSeed, MAGIC_TYPE_NONE, &GameThingWithPos::IsOneOffSpellBelongingToOtherPlayer, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_STEAL_SPELL_SEED
	{"StealAnimal", NULL, &CreatureAgenda::ConstructSubActionsForStealAnimal, MAGIC_TYPE_NONE, &GameThingWithPos::IsAnimalBelongingToOtherPlayer, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_STEAL_ANIMAL
	{"StealVillager", NULL, &CreatureAgenda::ConstructSubActionsForStealVillager, MAGIC_TYPE_NONE, &GameThingWithPos::IsVillagerBelongingToOtherPlayer, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_STEAL_VILLAGER
	{"SleepOnTheSpot", &Creature::LeashedOrTooFarFromHome, &CreatureAgenda::ConstructSubActionsForSleepOnTheSpot, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_SLEEP_ON_THE_SPOT
	{"LookAtCameraInWideScreen", NULL, &CreatureAgenda::ConstructSubActionsForLookAtCameraInWideScreen, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_LOOK_AT_CAMERA_IN_WIDE_SCREEN
	{"HowlAtFriend", NULL, &CreatureAgenda::ConstructSubActionsForHowlAtFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreature, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_HOWL_AT_FRIEND
	{"HowlAtPlayer", NULL, &CreatureAgenda::ConstructSubActionsForHowlAtPlayer, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_HOWL_AT_PLAYER
	{"TellFriendAJoke", NULL, &CreatureAgenda::ConstructSubActionsForTellFriendAJoke, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_TELL_FRIEND_A_JOKE
	{"PrayToPlayer", NULL, &CreatureAgenda::ConstructSubActionsForPrayToPlayer, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_PRAY_TO_PLAYER
	{"PrayAtCitadel", &Creature::NotTooFarFromHome, &CreatureAgenda::ConstructSubActionsForPrayAtCitadel, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_PRAY_AT_CITADEL
	{"TalkToFriend", NULL, &CreatureAgenda::ConstructSubActionsForTalkToFriend, MAGIC_TYPE_NONE, &GameThingWithPos::IsCreatureAvailableForJointActivity, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_TALK_TO_FRIEND
	{"PointOutHighlight", NULL, &CreatureAgenda::ConstructSubActionsForPointOutHighlight, MAGIC_TYPE_NONE, NULL, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_POINT_OUT_HIGHLIGHT
	{"TakeToyHome", NULL, &CreatureAgenda::ConstructSubActionsForTakeToyHome, MAGIC_TYPE_NONE, &GameThingWithPos::IsToyAwayFromHome, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_TAKE_TOY_HOME
	{"StrokeToy", NULL, &CreatureAgenda::ConstructSubActionsForStrokeToy, MAGIC_TYPE_NONE, &GameThingWithPos::IsToyCuddly, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_STROKE_TOY
	{"ThrowDie", NULL, &CreatureAgenda::ConstructSubActionsForThrowDie, MAGIC_TYPE_NONE, &GameThingWithPos::IsToyDie, NULL, NULL, &GameThingWithPos::AttitudeToCreatureNone, 0, NULL}, // CREATURE_THROW_DIE
	{"SprinkleMagicWaterPU1OnCrops", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForCastMagicWater, MAGIC_TYPE_WATER_PU_ONE, &GameThingWithPos::BenefitsFromHavingWaterSprinkledOnIt, NULL, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 0, NULL}, // CREATURE_SPRINKLE_MAGIC_WATER_PU1_ON_CROPS
	{"WaterTreeForTown", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForWaterTreeForTown, MAGIC_TYPE_WATER, NULL, &GameThingWithPos::IsTree, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 1, NULL}, // CREATURE_WATER_TREE_FOR_TOWN
	{"WaterTree", &Creature::CanCreatureCastSpell, &CreatureAgenda::ConstructSubActionsForWaterTreeForTown, MAGIC_TYPE_WATER_PU_ONE, NULL, &GameThingWithPos::IsTree, NULL, &GameThingWithPos::AttitudeToCreatureRespect, 1, NULL}, // CREATURE_WATER_TREE_PU1_FOR_TOWN
};
// clang-format on

bool32_t Creature::IsHomeUnderConstruction(CreaturePlan& plan, CREATURE_ACTION action)
{
	if (HomeExists && !HasFinishedBuildingHome())
	{
		return TRUE;
	}
	return FALSE;
}

bool32_t Creature::HasNoHome(CreaturePlan& plan, CREATURE_ACTION action)
{
	return HomeExists == 0;
}

int CreatureAgenda::ConstructSubActionsForExamineByPickingUp(unsigned long param_1)
{
	if (creature->physical->GetObjectCarried() == NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(388))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
	}
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_HELD_OBJECT_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(390)) SubArgumentInteger(
										 GRand::GameRand(4, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(390)) + 100),
	                                 &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCuriosity);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_STOP_LOOKING, NULL, &Creature::LookAround, NULL);
	SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_DISCARD,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(392))
			SubArgumentInteger(GRand::GameRand(10, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(392)) > 1 ? 97 : 95),
		NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_OBSERVE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(393))
	                                 SubArgumentInteger(plans[0].ObjectToActOn->GetType()),
	                             NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForEatAlive(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried == NULL || !carried->CanBeEatenByCreature(creature))
	{
		if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(403)) == 0)
		{
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(405)) SubArgumentInteger(0x36),
			                             NULL, NULL);
		}
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(407))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
	}
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_EAT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(409)) SubArgumentObject(plans[0].ObjectToActOn), NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForPoo(unsigned long param_1)
{
	if (GRand::GameRand(3, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(416)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(418)) SubArgumentInteger(0x42),
		                             NULL, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(420))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.0f),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_AWAY_FROM_OBJECT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(421)) SubArgumentObject(plans[0].ObjectToActOn), NULL, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_STATIC_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(422))
	                                     SubArgumentIntegerAndFloat(0x20, 4.0f),
	                                 NULL, &Creature::SetFaceForActionSmile);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POO, NULL, NULL, &Creature::SetFaceForActionSmile);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForHurl(unsigned long param_1)
{
	if (plans[0].ObjectToUse != NULL)
	{
		if (creature->physical->GetObjectCarried() == NULL)
		{
			if (GRand::GameRand(6, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(435)) == 0)
			{
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(437))
				                                 SubArgumentInteger(0x35),
				                             NULL, &Creature::SetFaceForActionAmazed);
			}
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(439))
			                                 SubArgumentObject(plans[0].ObjectToUse),
			                             &Creature::LookWhileGoingTowardsObject, NULL);
		}
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_THROW_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(441))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, creature->GetHeight()),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(442))
		                                     SubArgumentObject(plans[0].ObjectToActOn),
		                                 &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
		return 0;
	}
	creature->FinishActionUnsuccessfully("no object to use", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForMoveToPos(unsigned long param_1)
{
	return 0;
}

int CreatureAgenda::ConstructSubActionsForRunAwayFromObject(unsigned long param_1)
{
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(461)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(463)) SubArgumentInteger(0x3d),
		                             &Creature::LookFrightened, NULL);
	}
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_RUN_AWAY,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(465))
	                                     SubArgumentObject(plans[0].ObjectToActOn),
	                                 &Creature::LookWhileRunningAwayFromObject, &Creature::SetFaceForActionFear);
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(466)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(468)) SubArgumentInteger(0x3d),
		                             &Creature::LookFrightened, NULL);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForSleep(unsigned long param_1)
{
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(477)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(479)) SubArgumentInteger(0x39),
		                             &Creature::LookJustWokenUp, NULL);
	}
	LHPoint pos;
	GLandscape::ConvertMapCoordToLandscapePoint(creature->HomePos, pos);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(483))
	                                 SubArgumentPointAndFloat(pos, min(5.0f, creature->GetHeight())),
	                             &Creature::LookWhileGoingTowardsPoint, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FACE_DOWN_SLOPE, NULL, NULL, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_SLEEP, NULL, NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(486)) SubArgumentInteger(0x3f),
	                             &Creature::LookJustWokenUp, &Creature::SetFaceForActionGrimace);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForSleepOnTheSpot(unsigned long param_1)
{
	MapCoords coords = creature->Pos;
	float     radius = 4.0f * creature->GetHeight();
	if (creature->FindClearArea(&coords, radius, !(creature->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)))
	{
		if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(498)) == 0)
		{
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(500)) SubArgumentInteger(0x39),
			                             &Creature::LookJustWokenUp, NULL);
		}
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(502))
		                                 SubArgumentPointAndFloat(coords.GetLHPoint(), creature->Get2DRadius()),
		                             &Creature::LookWhileGoingTowardsPoint, NULL);
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_SLEEP, NULL, NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(504)) SubArgumentInteger(0x3f),
		                             &Creature::LookJustWokenUp, &Creature::SetFaceForActionGrimace);
		return 0;
	}
	return ConstructSubActionsForSleep(param_1);
}

int CreatureAgenda::ConstructSubActionsForStomp(unsigned long param_1)
{
	if (GRand::GameRand(5, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(516)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(518)) SubArgumentInteger(0x35),
		                             NULL, &Creature::SetFaceForActionAnger);
	}
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_STOMP,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(520))
	                                     SubArgumentObject(plans[0].ObjectToActOn),
	                                 &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionAnger);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForDeath(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_FAINT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(527)) SubArgumentInteger(0x6a),
	                                 NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(528))
	                                 SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
										 creature->GetCreature3D()->GetSize() * 4.0f + 8.0f)),
	                             NULL, NULL);
	if (creature->GetPlayer() != NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TRANPORT_HOME, NULL, NULL, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(533))
	                                 SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(3.0f)),
	                             NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_SPELLS_TO_WEAR_OFF, NULL, NULL, NULL);
	if (creature->physical->Exhaustion > 0.3f || creature->GetLife() < 0.4)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REST_TO_GET_BETTER, NULL, NULL, NULL);
	}
	creature->SendCandidateHelpScript(CREATURE_HELP_TYPE_MISCELLANEOUS_STACKED,
	                                  CREATURE_MISCELLANEOUS_HELP_STACKED_CREATURE_TRANSPORTED_HOME, NULL, NULL, 0);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForLookAtHand(unsigned long param_1)
{
	creature->TurnsUntilNextStateChange = 15;
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_LOOK_AT_HAND, NULL, &Creature::LookAtHand,
	                                 &Creature::SetFaceForActionCuriosity);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForExamineByLooking(unsigned long param_1)
{
	float distance = max(creature->GetHeight() * 2.5f, plans[0].ObjectToActOn->GetPointer()->GetHeight());
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(556))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, distance),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(557))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(558))
	                                 SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.1f)),
	                             &Creature::LookAtObjectArgumentBottom, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_OBSERVE_OBJECT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(559))
	                                     SubArgumentInteger(plans[0].ObjectToActOn->GetType()),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForFight(unsigned long param_1)
{
	creature->field_0x3b8 = 1;
	if (creature->mind->learning.field_0x15c40[CREATURE_FIGHT] == 0)
	{
		creature->mind->learning.field_0x1522c = -creature->alignment->value;
	}
	float value = creature->mind->learning.field_0x1522c;
	creature->GetCreature3D()->field_0x4ab0 = value;
	creature->field_0x10ac = 1;
	Creature* other = plans[0].ObjectToActOn->GetPointer()->CastCreature();
	if (other != NULL)
	{
		creature->GetCreature3D()->field_0x4aa8 = (creature->GetLife() + 1.0f) * 0.5f;
		creature->GetCreature3D()->field_0x4aac = creature->physical->GetEnergy() - creature->physical->GetExhaustion();
		if (creature->GetCreature3D()->field_0x4aac < 0.0f)
		{
			creature->GetCreature3D()->field_0x4aac = 0.0f;
		}
		else if (creature->GetCreature3D()->field_0x4aac > 1.0f)
		{
			creature->GetCreature3D()->field_0x4aac = 1.0f;
		}
		other->GetCreature3D()->field_0x4aa8 = (other->GetLife() + 1.0f) * 0.5f;
		other->GetCreature3D()->field_0x4aac = other->physical->GetEnergy() - other->physical->GetExhaustion();
		if (other->GetCreature3D()->field_0x4aac < 0.0f)
		{
			other->GetCreature3D()->field_0x4aac = 0.0f;
		}
		else if (other->GetCreature3D()->field_0x4aac > 1.0f)
		{
			other->GetCreature3D()->field_0x4aac = 1.0f;
		}
		if (creature != NULL)
		{
			if (creature->GetPlayer() != NULL && creature->GetPlayer()->type == PLAYER_TYPE_HUMAN)
			{
				creature->GetCreature3D()->field_0x579c = 1;
			}
			else
			{
				creature->GetCreature3D()->field_0x579c = 2;
			}
		}
		else
		{
			creature->GetCreature3D()->field_0x579c = 2;
		}
		if (other->GetPlayer() != NULL && other->GetPlayer()->type == PLAYER_TYPE_HUMAN)
		{
			other->GetCreature3D()->field_0x579c = 1;
		}
		else
		{
			other->GetCreature3D()->field_0x579c = 2;
		}
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(616))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 2),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DEMOBILISE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(617))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             NULL, NULL);
		CreatureBelief* belief = other->mind->AddBeliefAboutObject(other, creature);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(619))
		                             SubArgumentObjectAndFloat(belief, 0.1f),
		                         &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(620))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(621)) SubArgumentInteger(
									 GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(621)) ? 0xde : 0x46),
		                         NULL, NULL);
		SubActionAgenda.AddSubAction(
			CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(622))
				SubArgumentInteger(GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(622)) ? 0xde : 0x46),
			NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CREATE_ARENA, NULL, NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_ARENA, NULL, NULL, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_MOVE_TO_ARENA, NULL, &Creature::LookAtPartner,
		                         &Creature::SetFaceForActionAnger);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_ARENA, NULL, &Creature::LookAtPartner,
		                             &Creature::SetFaceForActionAnger);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(627))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(628))
		                             SubArgumentObjectAndFloat(belief, 0.1f),
		                         &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(629))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_FIGHT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(630)) SubArgumentObject(belief), NULL,
		                         &Creature::SetFaceForActionAnger);
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_FIGHT,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(631))
		                                     SubArgumentObject(plans[0].ObjectToActOn),
		                                 NULL, &Creature::SetFaceForActionAnger);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_RESPOND_AFTER_FIGHT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(632)) SubArgumentObject(belief), NULL,
		                         NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_RESPOND_AFTER_FIGHT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(633))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REMOBILISE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(634))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             NULL, NULL);
		return 0;
	}
	creature->FinishActionUnsuccessfully("no other creature", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForFollowPlayer(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FOLLOW_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(649)) SubArgumentInteger(0x45),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForStroke(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried == NULL || !carried->CanBeStrokedByCreature(creature))
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(659))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
	}
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_HELD_OBJECT_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(661)) SubArgumentInteger(0x64),
	                                 &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_HEAL,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(662))
	                                 SubArgumentObject(plans[0].ObjectToActOn),
	                             NULL, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(663)) SubArgumentInteger(0x61), NULL,
	                             &Creature::SetFaceForActionCompassion);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForDanceImpressivelyWithVillagers(unsigned long dance_type)
{
	creature->LastImpressiveDanceTurn = GGame::g_game->data.GameTurn;
	creature->LastImpressiveDanceType = dance_type;
	return ConstructSubActionsForDanceWithVillagers(dance_type);
}

int CreatureAgenda::ConstructSubActionsForDanceWithVillagers(unsigned long param_1)
{
	Villager* villager = dynamic_cast<Villager*>(plans[0].ObjectToActOn->GetPointer());
	if (villager != NULL)
	{
		MapCoords coords = villager->Pos;
		float     radius = max(1.5f * creature->Get2DRadius(), 30.0f);
		if (creature->FindClearArea(&coords, radius, 0))
		{
			LHPoint pos = coords.GetLHPoint();
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_STOP_MOVING, NULL, NULL, NULL);
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(689))
					SubArgumentObjectAndFloat(plans[0].ObjectToActOn, creature->GetHeight() * 5.0f),
				&Creature::LookWhileGoingTowardsObject, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(690))
			                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
			                             &Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddMainSubAction(
				CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(691)) SubArgumentInteger(0x34), NULL, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_SET_DANCE,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(692))
			                                 SubArgumentPointIntegerFloatAndSpell(pos, param_1, 0.0f, 0),
			                             NULL, NULL);
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_ADD_VILLAGERS_TO_DANCE,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(693))
					SubArgumentObjectAndInteger(plans[0].ObjectToActOn, GDanceInfo::GetInfo()[param_1].field_0xa4),
				NULL, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_STOP_LOOKING, NULL, &Creature::LookAround, NULL);
			SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(698))
			                                     SubArgumentPointAndFloat(pos, 0.0f),
			                                 &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
			                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(699))
			                                     SubArgumentPointAndFloat(pos, 1.0f),
			                                 &Creature::LookAtPosition, &Creature::SetFaceForActionSmile);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TELL_VILLAGERS_TO_GO_TO_START_DANCE_POS, NULL,
			                             &Creature::LookAtDependents, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_DANCERS_TO_STOP_MOVING, NULL,
			                             &Creature::LookAtDependents, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_START_THE_DANCE, NULL, NULL, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TELL_VILLAGERS_TO_DANCE, NULL, NULL, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DANCE,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(704))
			                                 SubArgumentInteger(GDanceInfo::GetInfo()[param_1].field_0x14 * 5),
			                             NULL, NULL);
			return 0;
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}
int CreatureAgenda::ConstructSubActionsForEatAfterExamining(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried == NULL || !carried->CanBeEatenByCreature(creature))
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(718))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_HELD_OBJECT_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(720)) SubArgumentInteger(0x67),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCuriosity);
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_EAT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(721)) SubArgumentObject(plans[0].ObjectToActOn), NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForStompAndEat(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried == NULL || !carried->CanBeEatenByCreature(creature))
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_STOMP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(731))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionAnger);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(732))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
	}
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_EAT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(734)) SubArgumentObject(plans[0].ObjectToActOn), NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForStoneAndEat(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried == NULL || !carried->IsRock(creature))
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(745))
		                                 SubArgumentObject(plans[0].ObjectToUse),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_THROW_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(747))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, creature->GetHeight()),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_THROW,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(748))
	                                 SubArgumentObject(plans[0].ObjectToUse),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(749))
	                                 SubArgumentObject(plans[0].ObjectToActOn),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_EAT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(750)) SubArgumentObject(plans[0].ObjectToActOn), NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForCommunicateState(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera,
	                             &Creature::SetFaceForActionReflectAttitudeToPlayer);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_COMMUNICATE_TO_PLAYER, NULL, &Creature::LookAtCamera,
	                                 &Creature::SetFaceForActionReflectAttitudeToPlayer);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForShowPlayerAnObject(unsigned long param_1)
{
	if (creature->physical->GetObjectCarried() == NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(770))
		                                 SubArgumentObject(plans[0].ObjectToUse),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FOLLOW_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera,
	                                 &Creature::SetFaceForActionReflectAttitudeToPlayer);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(774)) SubArgumentInteger(0x61), NULL,
	                             &Creature::SetFaceForActionReflectAttitudeToPlayer);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForGoToHillAndLook(unsigned long param_1)
{
	MapCoords coords;
	if (!creature->mind->ExplorationMap.FindNearest(REGION_TYPE_HILL, creature->Pos, &coords,
	                                                PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_0, 1) &&
	    !creature->mind->ExplorationMap.FindNearest(REGION_TYPE_7, creature->Pos, &coords,
	                                                PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_0, 1))
	{
		creature->mind->ExplorationMap.Dump();
	}
	LHPoint pos;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, pos);
	creature->mind->agenda.Destination = coords;
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(801))
	                                     SubArgumentPointAndFloat(pos, 2.0f * creature->GetHeight()),
	                                 &Creature::LookWhileGoingTowardsPoint, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForGoToHillAndSit(unsigned long param_1)
{
	MapCoords coords;
	LHPoint   pos;
	if (creature->mind->ExplorationMap.FindNearest(REGION_TYPE_HILL, creature->Pos, &coords,
	                                               PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_0, 1))
	{
		GLandscape::ConvertMapCoordToLandscapePoint(coords, pos);
	}
	else if (creature->mind->ExplorationMap.FindNearest(REGION_TYPE_7, creature->Pos, &coords,
	                                                    PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_0, 1))
	{
		GLandscape::ConvertMapCoordToLandscapePoint(coords, pos);
	}
	else
	{
		creature->mind->ExplorationMap.Dump();
		pos = creature->physical->Creature3d->GetPos();
	}
	creature->mind->agenda.Destination = coords;
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(841))
	                                     SubArgumentPointAndFloat(pos, 3.0f * creature->GetHeight()),
	                                 &Creature::LookWhileGoingTowardsPoint, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForGoToHillAndWalkAlongRidge(unsigned long param_1)
{
	MapCoords coords;
	if (!creature->mind->ExplorationMap.FindNearest(REGION_TYPE_HILL, creature->Pos, &coords,
	                                                PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_0, 1) &&
	    !creature->mind->ExplorationMap.FindNearest(REGION_TYPE_7, creature->Pos, &coords,
	                                                PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_0, 1))
	{
		creature->mind->ExplorationMap.Dump();
	}
	LHPoint pos;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, pos);
	creature->mind->agenda.Destination = coords;
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(866))
	                                     SubArgumentPointAndFloat(pos, 3.0f * creature->GetHeight()),
	                                 &Creature::LookWhileGoingTowardsPoint, NULL);
	for (unsigned long i = 0; i < 8; i++)
	{
		MapCoords      ridge = coords;
		unsigned short angle = (i * 0x800) >> 3;
		float          x = GUtils::GetXByAngle(angle, 15.0f);
		ridge.SetMetersX(x + ridge.MetersX());
		float z = GUtils::GetZByAngle(angle, 15.0f);
		ridge.SetMetersZ(z + ridge.MetersZ());
		LHPoint ridgePos;
		GLandscape::ConvertMapCoordToLandscapePoint(ridge, ridgePos);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(878))
		                                 SubArgumentPointAndFloat(ridgePos, 2.0f * creature->GetHeight()),
		                             &Creature::LookWhileGoingTowardsPoint, NULL);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForGiveWoodFromTreeToStoragePit(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried == NULL || !carried->IsTree(creature))
	{
		if (plans[0].ObjectToUse == NULL)
		{
			return ConstructSubActionsForBeingIdle(param_1);
		}
		Object* tree = plans[0].ObjectToUse->GetObjectPointer();
		LHPoint pos;
		GLandscape::ConvertMapCoordToLandscapePoint(tree->Pos, pos);
		float distance = (tree->Get2DRadius() + creature->Get2DRadius()) * 1.2f;
		SubActionAgenda.AddSubAction(
			CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(895)) SubArgumentPointAndFloat(pos, distance), NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(896))
		                                 SubArgumentObject(plans[0].ObjectToUse),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_THROW_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(898))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, creature->GetHeight()),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(899))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CONSIDER_ACTION_COMPLETED, NULL, NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CLEAR_OBJECT_TO_USE, NULL, NULL, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW_IN_PILE,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(902))
	                                     SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 1),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForHelpBuildHouse(unsigned long param_1)
{
	ConstructSubActionsForCastHelpfulSpellOnObject(MAGIC_TYPE_WOOD);
	SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_BUILD,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(911)) SubArgumentObject(plans[0].ObjectToActOn), NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForHelpRepairHouse(unsigned long param_1)
{
	if (creature->physical->GetObjectCarried() == NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(921))
		                                 SubArgumentObject(plans[0].ObjectToUse),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(923))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.0f),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(924))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(925)) SubArgumentInteger(0x61), NULL,
	                             NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_REPAIR,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(926))
	                                     SubArgumentObject(plans[0].ObjectToActOn),
	                                 &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_DESTROY_OBJECT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(927)) SubArgumentObject(plans[0].ObjectToUse), NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForBringToTown(unsigned long param_1)
{
	return 0;
}

int CreatureAgenda::ConstructSubActionsForPutOutFire(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(942))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.0f),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GET_AWAY_FROM_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(943))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f * creature->GetHeight()),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(944))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionFear);
	SubActionAgenda.AddCastSpellSubAction(plans[0].ObjectToActOn, MAGIC_TYPE_NONE);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PUT_OUT_FIRE,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(946))
	                                 SubArgumentObject(plans[0].ObjectToActOn),
	                             &Creature::LookAtObjectArgument, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForShowImpressiveAnimation(unsigned long param_1)
{
	creature->LastTownImpressed = plans[0].ObjectToActOn->GetPointer()->GetTown();
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(954))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, creature->GetHeight() * 3.0f),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(955))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(956)) SubArgumentInteger(0x45),
	                                 NULL, NULL);
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(957)) == 0)
	{
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(959)) SubArgumentInteger(0x41),
		                                 NULL, NULL);
	}
	else
	{
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(963)) SubArgumentInteger(0x34),
		                                 NULL, NULL);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForCastImpressiveSpell(unsigned long param_1)
{
	bool32_t pointed = FALSE;
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(982))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, creature->GetHeight() * 4.0f),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GET_AWAY_FROM_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(983))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f * creature->GetHeight()),
	                             &Creature::LookAtObjectArgument, NULL);
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(984)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(986))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 1.0f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAmazed);
		pointed = TRUE;
	}
	if (GRand::GameRand(3, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(989)) != 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(991)) SubArgumentInteger(0x34),
		                             NULL, &Creature::SetFaceForActionPlayfulness);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(993))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, NULL);
	static MAGIC_TYPE impressiveSpells[5] = {MAGIC_TYPE_FOOD, MAGIC_TYPE_HEAL, MAGIC_TYPE_STORM_WIND_RAIN,
	                                         MAGIC_TYPE_HEAL_PU_ONE, MAGIC_TYPE_FLOCK_FLYING};
	MAGIC_TYPE        spell = MAGIC_TYPE_NONE;
	unsigned long     oldest = 0xffffffff;
	unsigned long     which = 0;
	for (unsigned long i = 1; i < 5; i++)
	{
		MAGIC_TYPE      type = impressiveSpells[i];
		CreatureMental* mind = creature->mind;
#ifndef VERSION_BW1W120
		if (mind->ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_MAGIC, type) &&
		    Creature::ImpressiveSpellDoneWhen[i] <= oldest)
		{
			oldest = Creature::ImpressiveSpellDoneWhen[i];
#else
		if (mind->ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_MAGIC, type))
		{
#endif
			spell = type;
			which = i;
		}
	}
#ifndef VERSION_BW1W120
	Creature::ImpressiveSpellDoneWhen[which] = GGame::g_game->data.GameTurn;
#endif
	if (spell != MAGIC_TYPE_NONE)
	{
		SubActionAgenda.AddCastSpellSubAction(plans[0].ObjectToActOn, spell);
	}
	if (!pointed)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1017))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 1.0f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionSmile);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForThrowInTheSea(unsigned long param_1)
{
	MapCoords coast;
	MapCoords sea;
	if (creature->physical->GetObjectCarried() == NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1030))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
	}
	creature->mind->ExplorationMap.FindNearest(REGION_TYPE_COAST, creature->Pos, &coast,
	                                           PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 1);
	creature->mind->ExplorationMap.FindNearest(REGION_TYPE_SEA, creature->Pos, &sea,
	                                           PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 1);
	LHPoint coastPos;
	GLandscape::ConvertMapCoordToLandscapePoint(coast, coastPos);
	LHPoint seaPos;
	GLandscape::ConvertMapCoordToLandscapePoint(sea, seaPos);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1037))
	                                 SubArgumentPointAndFloat(coastPos, 2.0f * creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsPoint, &Creature::SetFaceForActionPlayfulness);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW_AT_POS,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1038)) SubArgumentPoint(seaPos),
	                                 &Creature::LookAtObjectArgument, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForPullSillyFaces(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1046))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f * creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1047))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, NULL);
	if (GRand::GameRand(3, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1048)) > 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1050)) SubArgumentInteger(0x43),
		                             NULL, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FACIAL_ANIMATION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1052)) SubArgumentInteger(
									 GRand::GameRand(10, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1052)) + 0x10),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_FACIAL_ANIMATION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1053)) SubArgumentInteger(
										 GRand::GameRand(10, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1053)) + 0x10),
	                                 &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FACIAL_ANIMATION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1054)) SubArgumentInteger(
									 GRand::GameRand(10, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1054)) + 0x10),
	                             &Creature::LookAtObjectArgument, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForLookAtReflection(unsigned long param_1)
{
	MapCoords sea;
	MapCoords coast;
	creature->mind->ExplorationMap.FindNearest(REGION_TYPE_SEA, creature->Pos, &sea,
	                                           PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 1);
	LHPoint seaPos;
	GLandscape::ConvertMapCoordToLandscapePoint(sea, seaPos);
	creature->mind->ExplorationMap.FindNearest(REGION_TYPE_COAST, creature->Pos, &coast,
	                                           PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 1);
	LHPoint coastPos;
	GLandscape::ConvertMapCoordToLandscapePoint(coast, coastPos);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1073))
	                                 SubArgumentPointAndFloat(seaPos, 2.0f * creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsPoint, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1074))
	                                 SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.0f)),
	                             &Creature::LookAtFeet, &Creature::SetFaceForActionPuzzled);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1075)) SubArgumentInteger(0x3f), NULL,
	                             &Creature::SetFaceForActionAmazed);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1076))
	                                 SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(2.1f)),
	                             &Creature::LookAtFeet, &Creature::SetFaceForActionPuzzled);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1077))
	                                 SubArgumentPointAndFloat(coastPos, 2.0f * creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsPoint, &Creature::SetFaceForActionAmazed);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1078))
	                                 SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.2f)),
	                             &Creature::LookAtFeet, &Creature::SetFaceForActionCuriosity);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1079)) SubArgumentInteger(0x3f),
	                                 NULL, &Creature::SetFaceForActionAmazed);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1080))
	                                 SubArgumentPointAndFloat(seaPos, 2.0f * creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsPoint, &Creature::SetFaceForActionAmazed);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1081))
	                                 SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.1f)),
	                             &Creature::LookAtFeet, &Creature::SetFaceForActionCuriosity);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1082))
	                                 SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(2.1f)),
	                             &Creature::LookAtFeet, &Creature::SetFaceForActionAmazed);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForCastFireball(unsigned long param_1)
{
	float     radius = 5.0f * creature->Get2DRadius();
	MapCoords coords = creature->Pos;
	if (creature->FindClearArea(&coords, radius, 0))
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1097))
		                                 SubArgumentPointAndFloat(coords.GetLHPoint(), 2.0f * creature->GetHeight()),
		                             &Creature::LookWhileGoingTowardsPoint, NULL);
		if (GRand::GameRand(5, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1098)) == 0)
		{
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1100))
			                                 SubArgumentInteger(0x35),
			                             NULL, &Creature::SetFaceForActionAmazed);
		}
		if (plans[0].ObjectToActOn != NULL && plans[0].ObjectToActOn->GetPointer() != NULL &&
		    plans[0].ObjectToActOn->GetPointer()->IsLiving())
		{
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_GET_AWAY_FROM_OBJECT,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1105))
					SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f * creature->GetHeight()),
				&Creature::LookAtObjectArgument, NULL);
		}
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1107))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
		uint32_t gesture = GMagicInfo::Infos[param_1]->GestureType;
		if (gesture != 0)
		{
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_GESTURE,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1112)) SubArgumentInteger(gesture), NULL, NULL);
		}
		SubActionAgenda.AddCastSpellSubAction(plans[0].ObjectToActOn, param_1);
		return 0;
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForCastExplosion(unsigned long param_1)
{
	if (GRand::GameRand(3, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1126)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1128)) SubArgumentInteger(0x35),
		                             NULL, &Creature::SetFaceForActionAmazed);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1130))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, CastExplosionDistance),
	                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionAnger);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GET_AWAY_FROM_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1131))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f * creature->GetHeight()),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1132))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
	uint32_t gesture = GMagicInfo::Infos[param_1]->GestureType;
	if (gesture != 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GESTURE,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1137)) SubArgumentInteger(gesture),
		                             NULL, NULL);
	}
	SubActionAgenda.AddCastSpellSubAction(plans[0].ObjectToActOn, MAGIC_TYPE_EXPLOSION_ONE);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForCastMagicFood(unsigned long param_1)
{
	float distance = 2.0f;
	if (plans[0].ObjectToActOn != NULL && plans[0].ObjectToActOn->GetPointer() != NULL &&
	    dynamic_cast<ShowNeedsVisuals*>(plans[0].ObjectToActOn->GetPointer()) != NULL)
	{
		distance = 20.0f;
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1152))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, distance),
	                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1154))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	LHPoint pos;
	GLandscape::ConvertMapCoordToLandscapePoint(plans[0].ObjectToActOn->GetPos(), pos);
	uint32_t gesture = GMagicInfo::Infos[param_1]->GestureType;
	if (gesture != 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GESTURE,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1161)) SubArgumentInteger(gesture),
		                             NULL, NULL);
	}
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_CAST_SPELL_AT_OBJECT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1165))
			SubArgumentObjectIntegerFloatAndSpell(plans[0].ObjectToActOn, 0x2f, 3.0f, MAGIC_TYPE_FOOD),
		NULL, &Creature::SetFaceForActionGrimace);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForCastMagicForest(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1172))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.5f * creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1173))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	LHPoint pos;
	GLandscape::ConvertMapCoordToLandscapePoint(plans[0].ObjectToActOn->GetPos(), pos);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_CAST_SPELL_AT_POS,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1176))
	                                     SubArgumentPointIntegerFloatAndSpell(pos, 0x2f, 4.0f, MAGIC_TYPE_FOREST),
	                                 NULL, &Creature::SetFaceForActionGrimace);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForFollowAround(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1183)) SubArgumentObjectAndFloat(
										 plans[0].ObjectToActOn, creature->GetHeight() * 5.0f),
	                                 &Creature::LookWhileGoingTowardsObject, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForPuke(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_STATIC_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1190))
	                                     SubArgumentIntegerAndFloat(0x23, 4.0f),
	                                 NULL, &Creature::SetFaceForActionGrimace);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForBringSomethingBackToTheCitadel(unsigned long param_1)
{
	CreatureBelief* heart = creature->mind->CitadelHeartBelief;
	Object*         heartObject = heart->GetObjectPointer();
	if (creature->physical->GetObjectCarried() == NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1203))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1205))
	                                 SubArgumentObjectAndFloat(heart, heart->GetObjectPointer()->Get2DRadius() * 1.4f),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1206))
	                                 SubArgumentObjectAndFloat(heart, 0.1f),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1207)) SubArgumentInteger(0x61),
	                                 NULL, &Creature::SetFaceForActionReflectAttitudeToPlayer);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForThrowStonesInTheSeaWithFriend(unsigned long param_1)
{
	CreatureBelief* myStone = creature->GetNearbyObject(&GameThingWithPos::CanBePickedUpByCreature, NULL, NULL);
	CreatureBelief* otherStone = creature->GetNearbyObject(&GameThingWithPos::CanBePickedUpByCreature, myStone, NULL);
	if (!creature->CanSeeAnObject(dynamic_cast<Object*>(plans[0].ObjectToActOn->GetPointer())))
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1219)) SubArgumentObjectAndFloat(
										 plans[0].ObjectToActOn, 2.0f * creature->GetHeight()),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1221))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, NULL);
	if (myStone != NULL && otherStone != NULL)
	{
		Creature*       other = dynamic_cast<Creature*>(plans[0].ObjectToActOn->GetPointer());
		CreatureBelief* stoneBelief = other->mind->AddBeliefAboutObject(other, otherStone->GetPointer());
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1227))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 3),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionPlayfulness);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DEMOBILISE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1229))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             NULL, NULL);
		CreatureBelief* otherBelief = other->mind->AddBeliefAboutObject(other, creature);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1231))
		                             SubArgumentObjectAndFloat(otherBelief, 0.1f),
		                         &Creature::LookAtObjectArgument, &Creature::SetFaceForActionGrimace);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1232)) SubArgumentInteger(0x37),
		                             NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1233)) SubArgumentObject(myStone),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1234)) SubArgumentObject(stoneBelief),
		                         &Creature::LookWhileGoingTowardsObject, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_CREATURE_TO_PICK_UP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1235))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookAtObjectArgument, NULL);
		MapCoords coast;
		MapCoords spot;
		MapCoords sea;
		MapCoords farSea;
		creature->mind->ExplorationMap.FindNearest(REGION_TYPE_COAST, creature->Pos, &coast,
		                                           PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 1);
		spot.SetMetersX(coast.MetersX() + creature->GetHeight() +
		                GRand::GameFloatRand(3.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1240)));
		spot.SetMetersZ(coast.MetersZ() + creature->GetHeight() +
		                GRand::GameFloatRand(3.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1241)));
		creature->mind->ExplorationMap.FindNearest(REGION_TYPE_SEA, creature->Pos, &sea,
		                                           PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 1);
		creature->mind->ExplorationMap.FindNearest(REGION_TYPE_SEA, sea, &farSea,
		                                           PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 0);
		LHPoint coastPos;
		GLandscape::ConvertMapCoordToLandscapePoint(coast, coastPos);
		LHPoint spotPos;
		GLandscape::ConvertMapCoordToLandscapePoint(spot, spotPos);
		LHPoint seaPos;
		GLandscape::ConvertMapCoordToLandscapePoint(sea, seaPos);
		LHPoint farSeaPos;
		GLandscape::ConvertMapCoordToLandscapePoint(farSea, farSeaPos);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1249))
		                             SubArgumentPointAndFloat(spotPos, creature->GetHeight()),
		                         &Creature::LookWhileGoingTowardsPoint, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1250))
		                                 SubArgumentPointAndFloat(coastPos, creature->GetHeight()),
		                             &Creature::LookWhileGoingTowardsPoint, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1251))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1252))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
		                             NULL, &Creature::SetFaceForActionPlayfulness);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1253)) SubArgumentPoint(farSeaPos),
		                         NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1254)) SubArgumentPoint(seaPos),
		                             &Creature::LookWhileGoingTowardsPoint, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_THROW_AT_POS,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1255)) SubArgumentPoint(farSeaPos),
		                         NULL, NULL);
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW_AT_POS,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1256))
		                                     SubArgumentPoint(seaPos),
		                                 &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1257))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionPlayfulness);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1258))
		                             SubArgumentObjectAndFloat(otherBelief, 0.1f),
		                         &Creature::LookAtObjectArgument, &Creature::SetFaceForActionGrimace);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_WAIT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1259))
		                             SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.0f)),
		                         &Creature::LookAtFeet, &Creature::SetFaceForActionGrimace);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1260))
		                                 SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.0f)),
		                             NULL, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1261)) SubArgumentInteger(0x37),
		                             NULL, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1262)) SubArgumentInteger(0x38), NULL,
		                         NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REMOBILISE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1263))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             NULL, NULL);
		return 0;
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForPlayGameWithCreatureMainPart(unsigned long param_1)
{
	return 0;
}

int CreatureAgenda::ConstructSubActionsForPracticeThrow(unsigned long param_1)
{
	if (creature->physical->GetObjectCarried() == NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1284))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
	}
	MapCoords coords = creature->Pos;
	coords.SetWholeX((long)((coords.MetersX() + 3.0f * creature->GetHeight()) * (float)0x10000 / MetresPerMapCell));
	coords.SetWholeZ((long)((coords.MetersZ() + 3.0f * creature->GetHeight()) * (float)0x10000 / MetresPerMapCell));
	LHPoint pos;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, pos);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW_AT_POS,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1291)) SubArgumentPoint(pos),
	                                 &Creature::LookWhileGoingTowardsPoint, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForDestroyAggressor(unsigned long param_1)
{
	dynamic_cast<Town*>(plans[0].ActivityObject->GetPointer());
	return 0;
}

int CreatureAgenda::ConstructSubActionsForCastShield(unsigned long action_argument)
{
	if (plans[0].ActivityObject == NULL)
	{
		return ConstructSubActionsForBeingIdle(action_argument);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1311))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             NULL, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddCastSpellSubAction(plans[0].ObjectToActOn, MAGIC_TYPE_SHIELD);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForDrinkFromTheSea(unsigned long param_1)
{
	MapCoords coast;
	MapCoords water;
	LHPoint   coastPos;
	LHPoint   pos;
	if (creature->FindNearbyWaterPoint(&water, 1000.0f))
	{
		GLandscape::ConvertMapCoordToLandscapePoint(water, pos);
		if (!creature->GetCreature3D()->IsDestinationValid(&pos))
		{
			LHPoint valid;
			LH3DCreature::SpiralCheckForValidPoint(&pos, &valid);
			if (creature->GetCreature3D()->IsDestinationValid(&valid) && PointDistance(pos, valid) < 30.0f)
			{
				pos = valid;
			}
			else
			{
				creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
				creature->mind->desires.SuppressDesire(CREATURE_DESIRE_FOR_WATER, 30.0f);
				creature->mind->desires.SuppressDesire(CREATURE_DESIRE_TO_GET_COLDER, 30.0f);
				return 1;
			}
		}
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1343))
		                                 SubArgumentPointAndFloat(pos, creature->GetHeight()),
		                             &Creature::LookWhileGoingTowardsPoint, NULL);
	}
	else
	{
		creature->mind->ExplorationMap.FindNearest(REGION_TYPE_COAST, creature->Pos, &coast,
		                                           PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 1);
		creature->mind->ExplorationMap.FindNearest(REGION_TYPE_SEA, coast, &water,
		                                           PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 1);
		GLandscape::ConvertMapCoordToLandscapePoint(coast, coastPos);
		GLandscape::ConvertMapCoordToLandscapePoint(water, pos);
		creature->mind->agenda.Destination = coast;
		if (!creature->Pos.IsWater())
		{
			if (!creature->GetCreature3D()->IsDestinationValid(&coastPos))
			{
				LHPoint valid;
				LH3DCreature::SpiralCheckForValidPoint(&coastPos, &valid);
				if (creature->GetCreature3D()->IsDestinationValid(&valid) && PointDistance(coastPos, valid) < 30.0f)
				{
					coastPos = valid;
				}
				else
				{
					creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
					creature->mind->desires.SuppressDesire(CREATURE_DESIRE_FOR_WATER, 30.0f);
					creature->mind->desires.SuppressDesire(CREATURE_DESIRE_TO_GET_COLDER, 30.0f);
					return 1;
				}
			}
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1372))
			                                 SubArgumentPointAndFloat(coastPos, creature->GetHeight()),
			                             &Creature::LookWhileGoingTowardsPoint, NULL);
		}
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1374)) SubArgumentPoint(pos),
		                             &Creature::LookWhileGoingTowardsPoint, NULL);
	}
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1376)) SubArgumentInteger(0x47),
	                                 NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DRINK, NULL, NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForRaiseTotemPole(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1385))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 12.0f),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1386))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1387)) SubArgumentInteger(0x34), NULL,
	                             &Creature::SetFaceForActionPlayfulness);
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_RAISE_TOTEM,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1388)) SubArgumentObject(plans[0].ObjectToActOn), NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForLowerTotemPole(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1396))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 12.0f),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1397))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1398)) SubArgumentInteger(0x34), NULL,
	                             &Creature::SetFaceForActionPlayfulness);
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_LOWER_TOTEM,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1399)) SubArgumentObject(plans[0].ObjectToActOn), NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForHealHimself(unsigned long param_1)
{
	LHPoint pos = creature->GetCreature3D()->position;
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CAST_SPELL_AT_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1408))
	                                 SubArgumentPointIntegerFloatAndSpell(pos, 0x29, 3.0f, MAGIC_TYPE_HEAL),
	                             NULL, &Creature::SetFaceForActionGrimace);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_HEAL_HIMSELF, NULL, NULL,
	                                 &Creature::SetFaceForActionGrimace);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForRestToGetBetter(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FACE_DOWN_SLOPE, NULL, NULL, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_REST_TO_GET_BETTER, NULL, NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1419)) SubArgumentInteger(0x3f),
	                             &Creature::LookJustWokenUp, &Creature::SetFaceForActionGrimace);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForSmileAtFriend(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1426))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 3.0f * creature->GetHeight()),
	                             &Creature::LookAtObjectFlutteringEyelids, &Creature::SetFaceForActionSmile);
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1427))
			SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 4.0f + GRand::GameFloatRand(4.0f, CREATURE_ACTION_FILE,
	                                                                                      CREATURE_ACTION_LINE(1427))),
		&Creature::LookAtObjectFlutteringEyelids, &Creature::SetFaceForActionSmile);
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1428)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1430)) SubArgumentInteger(0x37),
		                             NULL, NULL);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForFollowFriendAround(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1439))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f * creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionSmile);
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1440))
			SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f + GRand::GameFloatRand(10.0f, CREATURE_ACTION_FILE,
	                                                                                      CREATURE_ACTION_LINE(1440))),
		&Creature::LookAtObjectFlutteringEyelids, &Creature::SetFaceForActionSmile);
	for (int i = 0; i < 4; i++)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1443)) SubArgumentObjectAndFloat(
										 plans[0].ObjectToActOn, 2.0f * creature->GetHeight()),
		                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1444))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 10.0f),
		                             &Creature::LookAtObjectFlutteringEyelids, &Creature::SetFaceForActionSmile);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForDanceWithFriend(unsigned long param_1)
{
	Creature* other = plans[0].ObjectToActOn->GetPointer()->CastCreature();
	if (other != NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1455)) SubArgumentObjectAndFloat(
										 plans[0].ObjectToActOn, 2.0f * creature->GetHeight()),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1456))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
		                             &Creature::LookAtObjectFlutteringEyelids, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1457)) SubArgumentInteger(0x37),
		                             NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1458))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0x10),
		                             &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DEMOBILISE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1459))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             NULL, NULL);
		CreatureBelief* belief = other->mind->AddBeliefAboutObject(other, creature);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1461))
		                             SubArgumentObjectAndFloat(belief, 0.1f),
		                         &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1462))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionPlayfulness);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_PRACTICE_DANCE,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1463)) SubArgumentFloat(20.0f), NULL,
		                         &Creature::SetFaceForActionPlayfulness);
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_PRACTICE_DANCE,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1464)) SubArgumentFloat(20.0f),
		                                 NULL, &Creature::SetFaceForActionPlayfulness);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REMOBILISE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1465))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             NULL, NULL);
		return 0;
	}
	creature->FinishActionUnsuccessfully("no partner", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForInspectCreature(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1478))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 4.0f * creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1479))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             NULL, &Creature::SetFaceForActionCuriosity);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INSPECT_CREATURE,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1480))
	                                     SubArgumentObject(plans[0].ObjectToActOn),
	                                 &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCuriosity);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForHoldObject(unsigned long param_1)
{
	if (creature->physical->GetObjectCarried() == NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1490))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
	}
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera,
	                                 &Creature::SetFaceForActionReflectAttitudeToPlayer);
	Object* object = plans[0].ObjectToActOn->GetObjectPointer();
	if (object != NULL)
	{
		OBJECT_TYPE type = object->info->type;
		if (creature->mind->learning.HeldObjectActionCounts[type] < 2)
		{
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_HELD_OBJECT_ACTION,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1500))
					SubArgumentInteger(GRand::GameRand(4, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1500)) + 100),
				NULL, &Creature::SetFaceForActionSmile);
			creature->mind->learning.HeldObjectActionCounts[type]++;
		}
	}
	SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_WAIT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1504))
			SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
				40.0f + GRand::GameFloatRand(10.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1504)))),
		&Creature::LookAtCamera, &Creature::SetFaceForActionReflectAttitudeToPlayer);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForEatFromStoragePit(unsigned long param_1)
{
	if (plans[0].ObjectToActOn != NULL && plans[0].ObjectToActOn->GetPointer() != NULL)
	{
		StoragePit* pit = dynamic_cast<StoragePit*>(plans[0].ObjectToActOn->GetPointer());
		if (pit != NULL)
		{
			PileResource* pile = NULL;
			for (unsigned long i = 0; i < 1; i++)
			{
				pile = pit->GetResourcePile(RESOURCE_TYPE_FOOD, i);
				if (pile != NULL)
				{
					break;
				}
			}
			if (pile != NULL)
			{
				CreatureBelief* belief = creature->mind->AddBeliefAboutObject(creature, pile);
				if (belief != NULL)
				{
					LHPoint pos;
					GLandscape::ConvertMapCoordToLandscapePoint(belief->Pos, pos);
					SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
					                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1534))
					                                 SubArgumentPointAndFloat(pos, creature->GetHeight() * 1.4f),
					                             NULL, NULL);
					SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
					                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1535))
					                                 SubArgumentObjectAndFloat(belief, 0.1f),
					                             NULL, NULL);
					SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CLEAR_OBJECT_TO_ACT_ON, NULL, NULL, NULL);
					SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CREATE_PICK_UP_THEN_REMOVE,
					                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1538))
					                                 SubArgumentObjectAndInteger(belief, 0x11),
					                             NULL, NULL);
					SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_EAT_CREATED_OBJECT, NULL, NULL, NULL);
					return 0;
				}
			}
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForEatFromField(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried != NULL && carried->CanBeEatenByCreature(creature))
	{
		return 1;
	}
	LHPoint pos;
	GLandscape::ConvertMapCoordToLandscapePoint(plans[0].ObjectToActOn->GetPos(), pos);
	belief = plans[0].ObjectToActOn;
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1557))
	                                 SubArgumentPointAndFloat(pos, creature->GetHeight()),
	                             NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1558))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             NULL, NULL);
	CreatureBelief* field = plans[0].ObjectToActOn;
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CLEAR_OBJECT_TO_ACT_ON, NULL, NULL, NULL);
	SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_CREATE_PICK_UP_THEN_REMOVE,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1561)) SubArgumentObjectAndInteger(field, 0x11), NULL, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_EAT_CREATED_OBJECT, NULL, NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForGiveFoodFromFieldToStoragePit(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried == NULL || !carried->CanBeEatenByCreature(creature))
	{
		LHPoint pos;
		GLandscape::ConvertMapCoordToLandscapePoint(plans[0].ObjectToUse->GetPos(), pos);
		belief = plans[0].ObjectToActOn;
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1579))
		                                 SubArgumentPointAndFloat(pos, creature->GetHeight() * 1.5f),
		                             NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1580))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToUse, 0.1f),
		                             NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CREATE_PICK_UP_THEN_REMOVE,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1581))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToUse, 0x11),
		                             NULL, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_THROW_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1583))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, creature->GetHeight()),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1584))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CONSIDER_ACTION_COMPLETED, NULL, NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CLEAR_OBJECT_TO_USE, NULL, NULL, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW_IN_PILE,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1587))
	                                     SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForPutDown(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1595)) SubArgumentInteger(0x61), NULL,
	                             NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForGiveToCreature(unsigned long param_1)
{
	Creature* other = plans[0].ObjectToActOn->GetPointer()->CastCreature();
	if (other != NULL)
	{
		CreatureBelief* otherBelief = other->mind->AddBeliefAboutObject(other, creature);
		CreatureBelief* objectBelief = other->mind->AddBeliefAboutObject(other, plans[0].ObjectToUse->GetPointer());
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1608))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0x10),
		                             &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1609))
		                             SubArgumentObjectAndFloat(otherBelief, 5.0f),
		                         &Creature::LookAtObjectFlutteringEyelids, &Creature::SetFaceForActionSmile);
		if (creature->physical->GetObjectCarried() == NULL)
		{
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1612))
			                                 SubArgumentObject(plans[0].ObjectToUse),
			                             &Creature::LookWhileGoingTowardsObject, NULL);
		}
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1614))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.0f),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1615))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
		                             &Creature::LookAtObjectFlutteringEyelids, &Creature::SetFaceForActionCompassion);
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1616))
		                                     SubArgumentInteger(0x61),
		                                 NULL, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_OBJECT_TO_BE_IN_MAP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1617))
		                                 SubArgumentObject(plans[0].ObjectToUse),
		                             &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1618)) SubArgumentObject(objectBelief),
		                         NULL, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1619))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1620))
		                                 SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(5.0f)),
		                             NULL, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_CREATURE_TO_BE_FREE,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1621))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 4),
		                             NULL, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_HELD_OBJECT_ACTION,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1622)) SubArgumentInteger(
									 GRand::GameRand(4, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1622)) + 100),
		                         NULL, &Creature::SetFaceForActionSmile);
		return 0;
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForThrowAtCamera(unsigned long param_1)
{
	GInterfaceStatus* status = NULL;
	if (creature != NULL)
		status = creature->GetNearestCameraInterfaceStatus();
	if (status != NULL)
	{
		LHPoint pos = status->GetCameraPos();
		if (creature->physical->GetObjectCarried() == NULL)
		{
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1641))
			                                 SubArgumentObject(plans[0].ObjectToUse),
			                             &Creature::LookWhileGoingTowardsObject, NULL);
		}
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW_AT_POS,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1643)) SubArgumentPoint(pos),
		                                 &Creature::LookAtCamera, NULL);
		return 0;
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForRunAwayFromPlayer(unsigned long param_1)
{
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1657)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1659)) SubArgumentInteger(0x3d),
		                             &Creature::LookFrightened, NULL);
	}
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_RUN_AWAY_FROM_PLAYER,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1661))
	                                     SubArgumentObject(plans[0].ObjectToActOn),
	                                 &Creature::LookWhileRunningAwayFromHand, &Creature::SetFaceForActionFear);
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1662)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1664)) SubArgumentInteger(0x3d),
		                             &Creature::LookFrightened, NULL);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForSneeze(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1672)) SubArgumentInteger(0x3e),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForShiver(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1679)) SubArgumentInteger(0x3b),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForStartFire(unsigned long param_1)
{
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForShowHotness(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1699)) SubArgumentInteger(0x3a),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForScratch(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1706)) SubArgumentInteger(0x3c),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForExploreCoast(unsigned long param_1)
{
	MapCoords coords;
	if (!creature->mind->ExplorationMap.FindNearest(REGION_TYPE_COAST, creature->Pos, &coords,
	                                                PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_0, 1) &&
	    !creature->mind->ExplorationMap.FindNearest(REGION_TYPE_7, creature->Pos, &coords,
	                                                PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_0, 1))
	{
		creature->mind->ExplorationMap.Dump();
	}
	creature->mind->agenda.Destination = coords;
	LHPoint pos;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, pos);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1730))
	                                     SubArgumentPointAndFloat(pos, 3.0f * creature->GetHeight()),
	                                 &Creature::LookWhileGoingTowardsPoint, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForExploreTowns(unsigned long param_1)
{
	MapCoords coords;
	if (!creature->mind->ExplorationMap.FindNearest(REGION_TYPE_TOWN, creature->Pos, &coords,
	                                                PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_0, 1) &&
	    !creature->mind->ExplorationMap.FindNearest(REGION_TYPE_7, creature->Pos, &coords,
	                                                PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_0, 1))
	{
		creature->mind->ExplorationMap.Dump();
	}
	creature->mind->agenda.Destination = coords;
	LHPoint pos;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, pos);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1755))
	                                     SubArgumentPointAndFloat(pos, 3.0f * creature->GetHeight()),
	                                 &Creature::LookWhileGoingTowardsPoint, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForSleepByObject(unsigned long param_1)
{
	MapCoords& pos = plans[0].ObjectToActOn->GetPos();
	MapCoords  coords;
	coords.SetWholeX(pos.WholeX());
	coords.SetWholeZ(pos.WholeZ());
	coords.SetAltitude(pos.Altitude());
	float radius = 4.0f * creature->GetHeight();
	if (creature->FindClearArea(&coords, radius, !(creature->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)))
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1768))
		                                 SubArgumentPointAndFloat(coords.GetLHPoint(), creature->Get2DRadius()),
		                             &Creature::LookWhileGoingTowardsPoint, NULL);
		if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1769)) == 0)
		{
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1771))
			                                 SubArgumentInteger(0x39),
			                             &Creature::LookJustWokenUp, NULL);
		}
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FACE_DOWN_SLOPE, NULL, NULL, NULL);
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_SLEEP, NULL, NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1775)) SubArgumentInteger(0x3f),
		                             &Creature::LookJustWokenUp, &Creature::SetFaceForActionGrimace);
		return 0;
	}
	return ConstructSubActionsForSleep(param_1);
}

int CreatureAgenda::ConstructSubActionsForExamineByFollowing(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FOLLOW_INTERESTING_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1787))
	                                 SubArgumentObject(plans[0].ObjectToActOn),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAmazed);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1788)) SubArgumentInteger(0x3f),
	                                 NULL, &Creature::SetFaceForActionAmazed);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForLookAtFlyingObject(unsigned long param_1)
{
	LHPoint pos;
	GLandscape::ConvertMapCoordToLandscapePoint(plans[0].ObjectToActOn->GetPointer()->Pos, pos);
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1798)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1800))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f),
		                             &Creature::LookAtFlyingObject, &Creature::SetFaceForActionAmazed);
	}
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_LOOK_AT_FLYING_OBJECT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1802))
	                                     SubArgumentObject(plans[0].ObjectToActOn),
	                                 &Creature::LookAtFlyingObject, &Creature::SetFaceForActionAmazed);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForSitDown(unsigned long param_1)
{
	MapCoords coords = plans[0].ObjectToActOn->GetPos();
	if (!(creature->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT))
	{
		float radius = creature->Get2DRadius() * 4.0f;
		if (creature->FindClearArea(&coords, radius, 0))
		{
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1816))
			                                 SubArgumentPointAndFloat(coords.GetLHPoint(), creature->Get2DRadius()),
			                             &Creature::LookWhileGoingTowardsPoint, NULL);
			creature->mind->agenda.Destination = plans[0].ObjectToActOn->GetPos();
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1818))
			                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
			                             &Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FACE_DOWN_SLOPE, NULL, NULL, NULL);
			SubActionAgenda.AddMainSubAction(
				CREATURE_SUB_STATE_ACTIONS_STATIC_ACTION,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1820)) SubArgumentIntegerAndFloat(
					0x26, 10.0f + GRand::GameFloatRand(5.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1820))),
				&Creature::LookAround, NULL);
			return 0;
		}
		creature->FinishActionUnsuccessfully("failed", 1, 1);
		return 1;
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1826))
	                                 SubArgumentPointAndFloat(coords.GetLHPoint(), creature->Get2DRadius()),
	                             &Creature::LookWhileGoingTowardsPoint, NULL);
	creature->mind->agenda.Destination = plans[0].ObjectToActOn->GetPos();
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1828))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FACE_DOWN_SLOPE, NULL, NULL, NULL);
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_STATIC_ACTION,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1830)) SubArgumentIntegerAndFloat(
			0x26, 10.0f + GRand::GameFloatRand(5.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1830))),
		&Creature::LookAround, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForLookAtCamera(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_LOOK_AT_CAMERA,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1840))
	                                     SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(5.0f)),
	                                 &Creature::LookAtCamera, &Creature::SetFaceForActionCuriosity);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForLookAtCameraInWideScreen(unsigned long param_1)
{
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1847)) == 0)
	{
		GInterfaceStatus* status = creature != NULL ? creature->GetNearestCameraInterfaceStatus() : NULL;
		if (status != NULL)
		{
			LHPoint cameraPos = status->GetCameraPos();
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1854))
			                                 SubArgumentPointAndFloat(cameraPos, 1.0f),
			                             &Creature::LookAtPosition, &Creature::SetFaceForActionAmazed);
		}
	}
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_LOOK_AT_CAMERA_IN_WIDE_SCREEN,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1857))
	                                     SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(5.0f)),
	                                 &Creature::LookAtCamera, &Creature::SetFaceForActionCuriosity);
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1858)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1860)) SubArgumentInteger(0x48),
		                             &Creature::LookAtCamera, &Creature::SetFaceForActionAmazed);
	}
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1862)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TALK, NULL, &Creature::LookAtCamera,
		                             &Creature::SetFaceForActionCuriosity);
	}
	if (GRand::GameRand(3, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1866)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1868)) SubArgumentInteger(0x3f),
		                             &Creature::LookAtCamera, &Creature::SetFaceForActionAmazed);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TALK, NULL, &Creature::LookAtCamera,
		                             &Creature::SetFaceForActionCuriosity);
	}
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_LOOK_AT_CAMERA_IN_WIDE_SCREEN,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1871))
	                                     SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(5.0f)),
	                                 &Creature::LookAtCamera, &Creature::SetFaceForActionCuriosity);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForCreateHome(unsigned long param_1)
{
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForBuildHome(unsigned long param_1)
{
	LHMatrix matrix;
	creature->field_0x11f4->GetExtraPos(creature->field_0x1210, &matrix);
	LHPoint pos(matrix._41, matrix._42, matrix._43);
	pos.y = LH3DIsland::GetAltitude(LH3DMapCoords(pos.x, pos.z));
	LHPoint homePos;
	GLandscape::ConvertMapCoordToLandscapePoint(creature->HomePos, homePos);
	LHPoint direction = pos - homePos;
	direction.SetSize(creature->physical->Creature3d->GetPutDownDistance());
	LHPoint target = pos + direction;
	if (creature->physical->GetObjectCarried() == NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1900))
		                                 SubArgumentObject(plans[0].ObjectToUse),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1902)) SubArgumentPointAndFloat(
									 target, dynamic_cast<Object*>(plans[0].ObjectToUse->GetPointer())->Get2DRadius()),
	                             &Creature::LookWhileGoingTowardsPoint, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1903)) SubArgumentPoint(pos),
	                             &Creature::LookAtPosition, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1904)) SubArgumentInteger(0x61), NULL,
	                             NULL);
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_ADD_TO_HOME,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1905)) SubArgumentObject(plans[0].ObjectToUse), NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForBringHome(unsigned long param_1)
{
	LHPoint home;
	GLandscape::ConvertMapCoordToLandscapePoint(creature->HomePos, home);
	GameThingWithPos* thing = plans[0].ObjectToActOn->GetPointer();
	if (creature->physical->GetObjectCarried() == NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1918))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1920))
	                                 SubArgumentPointAndFloat(home, min(5.0f, creature->GetHeight())),
	                             &Creature::LookWhileGoingTowardsPoint, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1921)) SubArgumentInteger(0x61),
	                                 NULL, NULL);
	if (dynamic_cast<Living*>(thing) != NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_RENDER_IMMOBILE,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1924))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForSleepAtPos(unsigned long param_1)
{
	LHPoint home;
	GLandscape::ConvertMapCoordToLandscapePoint(creature->HomePos, home);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1934)) SubArgumentPointAndFloat(
									 home, creature->GetHeight() > 5.0f ? 5.0f : creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsPoint, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FACE_DOWN_SLOPE, NULL, NULL, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_SLEEP, NULL, NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1937)) SubArgumentInteger(0x3f),
	                             &Creature::LookJustWokenUp, &Creature::SetFaceForActionGrimace);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForShowLearntLesson(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1944)) SubArgumentInteger(0x3c),
	                                 NULL, &Creature::SetFaceForActionSmile);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForPracticeDance(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_PRACTICE_DANCE,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1951)) SubArgumentFloat(20.0f),
	                                 NULL, &Creature::SetFaceForActionSmile);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForGoToMiddleOfScreen(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FOLLOW_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera,
	                                 NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForGoToHand(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_FOLLOW_HAND, NULL, &Creature::LookAtHand, NULL);
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1967)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1969)) SubArgumentInteger(0x37),
		                             &Creature::LookAtHand, NULL);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForWaveAtPlayer(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1979)) SubArgumentInteger(0x48),
	                                 &Creature::LookAtCamera, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForWaveAtObject(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1987))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 3.5f * creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionSmile);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1988))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 1.4f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionSmile);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1989)) SubArgumentInteger(0x48),
	                                 &Creature::LookAtObjectFlutteringEyelids, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForLookConfused(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1997)) SubArgumentInteger(0x3c),
	                             &Creature::LookAtCamera, &Creature::SetFaceForActionPuzzled);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1998)) SubArgumentInteger(0x3f),
	                                 &Creature::LookAtCamera, &Creature::SetFaceForActionPuzzled);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForEatFromTree(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried != NULL && carried->CanBeEatenByCreature(creature))
	{
		return 1;
	}
	Object* tree = plans[0].ObjectToActOn->GetObjectPointer();
	LHPoint pos;
	GLandscape::ConvertMapCoordToLandscapePoint(plans[0].ObjectToActOn->GetPos(), pos);
	float distance = (tree->Get2DRadius() + creature->Get2DRadius()) * 1.2f;
	belief = plans[0].ObjectToActOn;
	SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2013)) SubArgumentPointAndFloat(pos, distance), NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2014))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CREATE_PICK_UP_THEN_REMOVE,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2015))
	                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0xf),
	                             NULL, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_EAT_CREATED_OBJECT, NULL, NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForCastLightningBolt(unsigned long param_1)
{
	if (GRand::GameRand(5, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2030)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2032)) SubArgumentInteger(0x35),
		                             NULL, &Creature::SetFaceForActionAnger);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2034))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, CastSpellDistance),
	                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionAnger);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GET_AWAY_FROM_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2035))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, creature->GetHeight() + 10.0f),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2036))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
	uint32_t gesture = GMagicInfo::Infos[param_1]->GestureType;
	if (gesture != 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GESTURE,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2041)) SubArgumentInteger(gesture),
		                             NULL, NULL);
	}
	SubActionAgenda.AddCastSpellSubAction(plans[0].ObjectToActOn, param_1);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForCastAggressiveSpellOnObject(unsigned long param_1)
{
	if (GRand::GameRand(5, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2051)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2053)) SubArgumentInteger(0x35),
		                             NULL, &Creature::SetFaceForActionAnger);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2055))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, creature->GetHeight() * 5.0f),
	                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionAnger);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GET_AWAY_FROM_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2056))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f * creature->GetHeight()),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2057))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
	uint32_t gesture = GMagicInfo::Infos[param_1]->GestureType;
	if (gesture != 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GESTURE,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2062)) SubArgumentInteger(gesture),
		                             NULL, NULL);
	}
	SubActionAgenda.AddCastSpellSubAction(plans[0].ObjectToActOn, param_1);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForCastHelpfulSpellOnObject(unsigned long param_1)
{
	if (GRand::GameRand(5, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2072)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2074)) SubArgumentInteger(0x40),
		                             NULL, &Creature::SetFaceForActionCompassion);
	}
	float   height = creature->GetHeight();
	float   radius;
	Object* object = plans[0].ObjectToActOn->GetObjectPointer();
	if (object != NULL)
	{
		radius = object->Get2DRadius();
	}
	float distance = 2.0f * creature->GetHeight();
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2083))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, distance),
	                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GET_AWAY_FROM_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2084))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, distance),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2085))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	uint32_t gesture = GMagicInfo::Infos[param_1]->GestureType;
	if (gesture != 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GESTURE,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2090)) SubArgumentInteger(gesture),
		                             NULL, NULL);
	}
	SubActionAgenda.AddCastSpellSubAction(plans[0].ObjectToActOn, param_1);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForCastPlayfulSpellOnObject(unsigned long param_1)
{
	if (GRand::GameRand(5, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2100)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2102)) SubArgumentInteger(0x43),
		                             NULL, &Creature::SetFaceForActionPlayfulness);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2104))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, creature->GetHeight() * 5.0f),
	                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionPlayfulness);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GET_AWAY_FROM_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2105))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f * creature->GetHeight()),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2106))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	uint32_t gesture = GMagicInfo::Infos[param_1]->GestureType;
	if (gesture != 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GESTURE,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2111)) SubArgumentInteger(gesture),
		                             NULL, NULL);
	}
	SubActionAgenda.AddCastSpellSubAction(plans[0].ObjectToActOn, param_1);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForRunToObject(unsigned long param_1)
{
	creature->physical->Creature3d->SetRequiredSpeed(((const CreatureInfo*)creature->info)->RunSpeed);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2122)) SubArgumentObjectAndFloat(
										 plans[0].ObjectToActOn, creature->GetHeight() * 1.5f),
	                                 &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionSmile);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForRunAroundRaceTrack(unsigned long param_1)
{
	return 0;
}

int CreatureAgenda::ConstructSubActionsNullFunction(unsigned long param_1)
{
	return 0;
}

int CreatureAgenda::ConstructSubActionsForShowFriendDestructiveSpell(unsigned long param_1)
{
	if (!creature->CanSeeAnObject(dynamic_cast<Object*>(plans[0].ObjectToActOn->GetPointer())))
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2155)) SubArgumentObjectAndFloat(
										 plans[0].ObjectToActOn, creature->GetHeight() * 1.5f),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2157))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, NULL);
	CreatureBelief* target = creature->GetNearbyObject(&GameThingWithPos::CanBeSetOnFire, NULL, NULL);
	if (target != NULL)
	{
		Creature*       other = dynamic_cast<Creature*>(plans[0].ObjectToActOn->GetPointer());
		CreatureBelief* otherBelief = other->mind->AddBeliefAboutObject(other, creature);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2164))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 6),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionPlayfulness);
		CreatureBelief* targetBelief = other->mind->AddBeliefAboutObject(other, target->GetPointer());
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2166))
		                             SubArgumentObjectAndFloat(targetBelief, creature->GetHeight() * 2.5f),
		                         &Creature::LookWhileGoingTowardsObject, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2167))
		                                 SubArgumentObjectAndFloat(target, creature->GetHeight() * 5.0f),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GET_AWAY_FROM_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2168))
		                                 SubArgumentObjectAndFloat(target, 2.0f * creature->GetHeight()),
		                             &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2169))
		                                 SubArgumentObjectAndFloat(target, 0.1f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionFear);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2170))
		                                 SubArgumentObjectAndFloat(target, 2.0f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionGrimace);
		LHPoint headPos = *creature->physical->Creature3d->GetHeadPos();
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2173)) SubArgumentPoint(headPos),
		                         &Creature::LookAtPosition, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_CREATURE_TO_BE_FREE,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2174))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 4),
		                             NULL, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2175))
		                             SubArgumentObjectAndFloat(targetBelief, 0.1f),
		                         &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddCastSpellSubAction(target, param_1);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2177))
		                             SubArgumentObjectAndFloat(otherBelief, 0.1f),
		                         &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAmazed);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForShowFriendCreationSpell(unsigned long param_1)
{
	if (!creature->CanSeeAnObject(dynamic_cast<Object*>(plans[0].ObjectToActOn->GetPointer())))
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2187)) SubArgumentObjectAndFloat(
										 plans[0].ObjectToActOn, creature->GetHeight() * 3.5f),
		                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionCompassion);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2189))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	CreatureBelief* target = creature->GetNearbyObject(&GameThingWithPos::CanBeHelpedByCreature, NULL, NULL);
	if (target != NULL)
	{
		Creature* other = dynamic_cast<Creature*>(plans[0].ObjectToActOn->GetPointer());
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2195))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 6),
		                             &Creature::LookAtObjectArgument, NULL);
		CreatureBelief* targetBelief = other->mind->AddBeliefAboutObject(other, target->GetPointer());
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2197))
		                             SubArgumentObjectAndFloat(targetBelief, creature->GetHeight() * 5.0f),
		                         &Creature::LookWhileGoingTowardsObject, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2198))
		                                 SubArgumentObjectAndFloat(target, creature->GetHeight() * 5.0f),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2199))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionGrimace);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2200))
		                             SubArgumentObjectAndFloat(targetBelief, 0.1f),
		                         &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2201))
		                                 SubArgumentObjectAndFloat(target, 0.1f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2204))
		                                 SubArgumentObjectAndFloat(target, 2.0f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionGrimace);
		LHPoint headPos = *creature->physical->Creature3d->GetHeadPos();
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2207)) SubArgumentPoint(headPos),
		                         &Creature::LookAtPosition, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_CREATURE_TO_BE_FREE,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2208))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 4),
		                             NULL, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2209))
		                             SubArgumentObjectAndFloat(target, 0.1f),
		                         &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_CAST_SPELL_AT_OBJECT,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2215))
		                                     SubArgumentObjectIntegerFloatAndSpell(target, 0x29, 3.0f, param_1),
		                                 NULL, &Creature::SetFaceForActionCompassion);
		CreatureBelief* otherBelief = other->mind->AddBeliefAboutObject(other, creature);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2217))
		                             SubArgumentObjectAndFloat(otherBelief, 0.1f),
		                         &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAmazed);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForShowFriendObject(unsigned long param_1)
{
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForShowFriendMyHome(unsigned long param_1)
{
	if (!creature->CanSeeAnObject(dynamic_cast<Object*>(plans[0].ObjectToActOn->GetPointer())))
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2235)) SubArgumentObjectAndFloat(
										 plans[0].ObjectToActOn, creature->GetHeight() * 3.0f),
		                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionCompassion);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2237))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	Creature* other = dynamic_cast<Creature*>(plans[0].ObjectToActOn->GetPointer());
	LHPoint   pos;
	LHPoint   headPos;
	GLandscape::ConvertMapCoordToLandscapePoint(creature->HomePos, pos);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2241))
	                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 6),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2242))
	                             SubArgumentPointAndFloat(pos, other->GetHeight() * 3.0f),
	                         &Creature::LookWhileGoingTowardsPoint, &Creature::SetFaceForActionPuzzled);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2243))
	                                 SubArgumentPointAndFloat(pos, creature->GetHeight() * 3.0f),
	                             &Creature::LookWhileGoingTowardsPoint, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2244))
	                                 SubArgumentObject(plans[0].ObjectToActOn),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionGrimace);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2245))
	                                     SubArgumentPointAndFloat(pos, 3.0f),
	                                 &Creature::LookAtPosition, &Creature::SetFaceForActionGrimace);
	headPos = *creature->physical->Creature3d->GetHeadPos();
	SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
	                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2249)) SubArgumentPoint(headPos),
	                         &Creature::LookAtPosition, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_CREATURE_TO_BE_FREE,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2250))
	                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 4),
	                             NULL, NULL);
	SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
	                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2251)) SubArgumentPoint(pos),
	                         &Creature::LookAtPosition, NULL);
	SubActionAgenda.AddOrder(
		other, CREATURE_SUB_STATE_ACTIONS_WAIT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2253))
			SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
				5.0f + GRand::GameFloatRand(20.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2253)))),
		&Creature::LookAround, &Creature::SetFaceForActionPuzzled);
	SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_WAIT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2254))
			SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
				5.0f + GRand::GameFloatRand(20.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2254)))),
		&Creature::LookAtFeet, &Creature::SetFaceForActionCompassion);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForShowFriendMyCitadel(unsigned long param_1)
{
	if (creature->GetCitadel() == NULL)
	{
		creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
		return 1;
	}
	belief = plans[0].ObjectToActOn;
	if (!creature->CanSeeAnObject(dynamic_cast<Object*>(plans[0].ObjectToActOn->GetPointer())))
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2269)) SubArgumentObjectAndFloat(
										 plans[0].ObjectToActOn, creature->GetHeight() * 3.0f),
		                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionCompassion);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2271))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	Creature* other = dynamic_cast<Creature*>(plans[0].ObjectToActOn->GetPointer());
	LHPoint   pos;
	LHPoint   headPos;
	GLandscape::ConvertMapCoordToLandscapePoint(creature->GetCitadel()->Pos, pos);
	float radius = creature->GetCitadel()->GetCitadelHeart()->Get2DRadius();
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2277))
	                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 6),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2278))
	                             SubArgumentPointAndFloat(pos, other->Get2DRadius() * 5.0f + radius * 1.2f),
	                         &Creature::LookWhileGoingTowardsPoint, &Creature::SetFaceForActionPuzzled);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2279))
	                                 SubArgumentPointAndFloat(pos, creature->Get2DRadius() * 5.0f + radius * 1.2f),
	                             &Creature::LookWhileGoingTowardsPoint, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2280))
	                                 SubArgumentObject(plans[0].ObjectToActOn),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionGrimace);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2281))
	                                     SubArgumentPointAndFloat(pos, 3.0f),
	                                 &Creature::LookAtPosition, &Creature::SetFaceForActionGrimace);
	headPos = *creature->physical->Creature3d->GetHeadPos();
	SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
	                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2285)) SubArgumentPoint(headPos),
	                         &Creature::LookAtPosition, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_CREATURE_TO_BE_FREE,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2286))
	                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 4),
	                             NULL, NULL);
	SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
	                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2287)) SubArgumentPoint(pos),
	                         &Creature::LookAtPosition, NULL);
	SubActionAgenda.AddOrder(
		other, CREATURE_SUB_STATE_ACTIONS_WAIT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2289))
			SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
				5.0f + GRand::GameFloatRand(20.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2289)))),
		&Creature::LookAround, &Creature::SetFaceForActionPuzzled);
	SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_WAIT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2290))
			SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
				5.0f + GRand::GameFloatRand(20.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2290)))),
		&Creature::LookAtFeet, &Creature::SetFaceForActionCompassion);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForKissFriend(unsigned long param_1)
{
	CreatureBelief* friendBelief = plans[0].ObjectToActOn;
	Creature*       other = dynamic_cast<Creature*>(friendBelief->GetPointer());
	CreatureBelief* otherBelief = other->mind->AddBeliefAboutObject(other, creature);
	LHPoint         middle = (creature->physical->Creature3d->GetPos() + other->physical->Creature3d->GetPos()) * 0.5f;
	float           distance = creature->physical->Creature3d->GetKissingDistance(other->physical->Creature3d);
	distance += other->physical->Creature3d->GetKissingDistance(creature->physical->Creature3d);
	distance *= 0.5f;
	LHPoint offset = middle - creature->physical->Creature3d->GetPos();
	offset.y = 0.0f;
	offset.SetSize(distance);
	LHPoint pos = middle + offset;
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2309))
	                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0x10),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2310)) SubArgumentPointAndFloat(pos, 0.1f),
	                         &Creature::LookAtPosition, &Creature::SetFaceForActionPuzzled);
	pos = middle - offset;
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2312))
	                                 SubArgumentPointAndFloat(pos, 0.1f),
	                             &Creature::LookAtPosition, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2313))
	                             SubArgumentObjectAndFloat(otherBelief, 0.1f),
	                         &Creature::LookAtObjectFlutteringEyelids, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2314))
	                                 SubArgumentObjectAndFloat(friendBelief, 0.1f),
	                             &Creature::LookAtObjectFlutteringEyelids, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_KISS,
	                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2315)) SubArgumentObject(otherBelief),
	                         NULL, NULL);
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_KISS,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2316)) SubArgumentObject(friendBelief), NULL, NULL);
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2318)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2320))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 10.0f),
		                             &Creature::LookAtObjectFlutteringEyelids, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2321)) SubArgumentInteger(0x37),
		                             NULL, NULL);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForGoToTeleport(unsigned long param_1)
{
	CreatureBelief* teleport = plans[0].ObjectToActOn;
	LHPoint         pos;
	GLandscape::ConvertMapCoordToLandscapePoint(teleport->GetPointer()->Pos, pos);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2333))
	                                 SubArgumentPointAndFloat(pos, 5.0f),
	                             &Creature::LookAtPosition, &Creature::SetFaceForActionPuzzled);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_DO_TELEPORT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2334)) SubArgumentObject(teleport),
	                                 NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2335))
	                                 SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(0.4f)),
	                             NULL, &Creature::SetFaceForActionPuzzled);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForRunRaceWithFriend(unsigned long param_1)
{
	MapCoords coords = creature->Pos;
	if (creature->FindClearArea(&coords, max(creature->Get2DRadius() * 1.5f, 50.0f), 0))
	{
		CreatureBelief* friendBelief = plans[0].ObjectToActOn;
		Creature*       other = dynamic_cast<Creature*>(friendBelief->GetPointer());
		MapCoords       start = coords;
		MapCoords       finish = coords;
		start.SetMetersX(coords.MetersX() - 20.0f);
		finish.SetMetersX(coords.MetersX() + 20.0f);
		LHPoint myStart;
		GLandscape::ConvertMapCoordToLandscapePoint(start, myStart);
		LHPoint otherStart;
		GLandscape::ConvertMapCoordToLandscapePoint(start, otherStart);
		LHPoint myFinish;
		GLandscape::ConvertMapCoordToLandscapePoint(finish, myFinish);
		LHPoint otherFinish;
		GLandscape::ConvertMapCoordToLandscapePoint(finish, otherFinish);
		myStart.z += 2.5f * creature->physical->Creature3d->field_0x5228;
		otherStart.z -= 2.5f * other->physical->Creature3d->field_0x5228;
		myFinish.z += 2.5f * creature->physical->Creature3d->field_0x5228;
		otherFinish.z -= 2.5f * other->physical->Creature3d->field_0x5228;
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2367))
		                                 SubArgumentObjectAndInteger(friendBelief, 3),
		                             &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2368))
		                             SubArgumentPointAndFloat(otherStart, 1.0f),
		                         &Creature::LookAtPosition, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2369))
		                                 SubArgumentPointAndFloat(myStart, 1.0f),
		                             &Creature::LookAtPosition, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2370))
		                                 SubArgumentObject(friendBelief),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionGrimace);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2371)) SubArgumentPoint(otherFinish),
		                         &Creature::LookAtPosition, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2372)) SubArgumentPoint(myFinish),
		                             &Creature::LookAtPosition, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2373))
		                                 SubArgumentPointAndFloat(otherFinish, 2.0f),
		                             &Creature::LookAtPosition, &Creature::SetFaceForActionGrimace);
		LHPoint headPos = *creature->physical->Creature3d->GetHeadPos();
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2377)) SubArgumentPoint(headPos),
		                         &Creature::LookAtPosition, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_CREATURE_TO_BE_FREE,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2378))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 4),
		                             NULL, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2379)) SubArgumentPoint(otherFinish),
		                         &Creature::LookAtPosition, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_SET_SPEED,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2381))
		                                 SubArgumentFloat(creature->GetInfo()->RunSpeed),
		                             NULL, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_SET_SPEED,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2382))
		                             SubArgumentFloat(other->GetInfo()->RunSpeed),
		                         NULL, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2383))
		                             SubArgumentPointAndFloat(otherFinish, 1.0f),
		                         &Creature::LookAtPosition, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2384))
		                                     SubArgumentPointAndFloat(myFinish, 1.0f),
		                                 &Creature::LookAtPosition, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2385))
		                                 SubArgumentObject(friendBelief),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionGrimace);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2386)) SubArgumentInteger(0x37),
		                             NULL, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2387)) SubArgumentInteger(0x38), NULL,
		                         NULL);
		return 0;
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForPlayGameOfThrowingStonesAtCan(unsigned long param_1)
{
	MapCoords coords = creature->Pos;
	float     radius = max(creature->Get2DRadius() * 1.5f, 40.0f);
	if (creature->FindClearArea(&coords, radius, 0))
	{
		LHPoint canPos;
		GLandscape::ConvertMapCoordToLandscapePoint(coords, canPos);
		CreatureBelief* can = creature->GetNearbyObject(&GameThingWithPos::CanBePickedUpByCreature, NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2410)) SubArgumentObject(can),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2411))
		                                 SubArgumentPointAndFloat(canPos, 0.3f),
		                             &Creature::LookWhileGoingTowardsPoint, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2412)) SubArgumentPoint(canPos),
		                             NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2413)) SubArgumentInteger(0x61),
		                             NULL, NULL);
		CreatureBelief* myStone = creature->GetNearbyObject(&GameThingWithPos::CanBePickedUpByCreature, can, NULL);
		CreatureBelief* otherStone =
			creature->GetNearbyObject(&GameThingWithPos::CanBePickedUpByCreature, can, myStone);
		if (myStone != NULL && otherStone != NULL)
		{
			CreatureBelief* friendBelief = plans[0].ObjectToActOn;
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2421))
			                                 SubArgumentObjectAndFloat(friendBelief, creature->GetHeight() * 5.0f),
			                             &Creature::LookWhileGoingTowardsObject, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2422))
			                                 SubArgumentObjectAndFloat(friendBelief, 0.1f),
			                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionSmile);
			Creature* other = dynamic_cast<Creature*>(friendBelief->GetPointer());
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2424))
			                                 SubArgumentObjectAndInteger(friendBelief, 3),
			                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionPlayfulness);
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_DEMOBILISE_OBJECT,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2426)) SubArgumentObject(friendBelief), NULL, NULL);
			CreatureBelief* otherBelief = other->mind->AddBeliefAboutObject(other, creature);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2428))
			                             SubArgumentObjectAndFloat(otherBelief, 0.1f),
			                         &Creature::LookAtObjectArgument, &Creature::SetFaceForActionGrimace);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2429))
			                                 SubArgumentObject(myStone),
			                             &Creature::LookWhileGoingTowardsObject, NULL);
			CreatureBelief* stoneBelief = other->mind->AddBeliefAboutObject(other, otherStone->GetPointer());
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_PICKUP,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2431))
			                             SubArgumentObject(stoneBelief),
			                         &Creature::LookWhileGoingTowardsObject, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_CREATURE_TO_PICK_UP,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2432))
			                                 SubArgumentObject(friendBelief),
			                             &Creature::LookAtObjectArgument, NULL);
			LHPoint target;
			GLandscape::ConvertMapCoordToLandscapePoint(coords, target);
			LHPoint myPos = target;
			LHPoint otherPos = target;
			target.x -= 20.0f;
			myPos.x += 20.0f;
			otherPos.x += 20.0f;
			myPos.z -= 3.0f * creature->Get2DRadius();
			otherPos.z += 3.0f * other->Get2DRadius();
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2445))
			                             SubArgumentPointAndFloat(otherPos, 0.5f),
			                         &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2446))
			                                 SubArgumentPointAndFloat(myPos, 0.5f),
			                             &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2447))
			                                 SubArgumentObject(friendBelief),
			                             &Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2448))
			                                 SubArgumentObjectAndFloat(friendBelief, 0.1f),
			                             NULL, &Creature::SetFaceForActionPlayfulness);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2449)) SubArgumentPoint(target),
			                         &Creature::LookAtPosition, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2450))
			                                 SubArgumentPoint(target),
			                             &Creature::LookAtPosition, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_THROW_AT_POS,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2451)) SubArgumentPoint(target),
			                         NULL, NULL);
			SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW_AT_POS,
			                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2452))
			                                     SubArgumentPoint(target),
			                                 &Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2453))
			                                 SubArgumentObjectAndFloat(friendBelief, 0.1f),
			                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionPlayfulness);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2454))
			                             SubArgumentObjectAndFloat(otherBelief, 0.1f),
			                         &Creature::LookAtObjectArgument, &Creature::SetFaceForActionGrimace);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_WAIT,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2455))
			                             SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.0f)),
			                         &Creature::LookAtFeet, &Creature::SetFaceForActionGrimace);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2456)) SubArgumentInteger(
											 GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.0f)),
			                             NULL, &Creature::SetFaceForActionSmile);
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2457)) SubArgumentInteger(0x37), NULL, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2458)) SubArgumentInteger(0x38),
			                         NULL, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REMOBILISE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2459))
			                                 SubArgumentObject(plans[0].ObjectToActOn),
			                             NULL, NULL);
			return 0;
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForSitOnTopOfHillWithFriend(unsigned long param_1)
{
	CreatureBelief* friendBelief = plans[0].ObjectToActOn;
	Creature*       other = dynamic_cast<Creature*>(friendBelief->GetPointer());
	if (other != NULL)
	{
		MapCoords hill;
		if (creature->mind->ExplorationMap.FindNearest(REGION_TYPE_HILL, creature->Pos, &hill,
		                                               PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 1))
		{
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2478))
			                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0x10),
			                             &Creature::LookAtObjectArgument, NULL);
			MapCoords coords = hill;
			float     radius = (creature->Get2DRadius() + other->Get2DRadius()) * 4.0f;
			if (creature->FindClearArea(&coords, radius, 0))
			{
				if (!creature->CanSeeAnObject(dynamic_cast<Object*>(plans[0].ObjectToActOn->GetPointer())))
				{
					SubActionAgenda.AddSubAction(
						CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
						new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2486))
							SubArgumentObjectAndFloat(friendBelief, creature->GetHeight() * 3.0f),
						&Creature::LookWhileGoingTowardsObject, NULL);
				}
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2488))
				                                 SubArgumentObjectAndFloat(friendBelief, 0.1f),
				                             &Creature::LookAtObjectFlutteringEyelids, NULL);
				if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2489)) == 0)
				{
					SubActionAgenda.AddSubAction(
						CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
						new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2491)) SubArgumentInteger(0x37), NULL, NULL);
				}
				LHPoint pos;
				GLandscape::ConvertMapCoordToLandscapePoint(coords, pos);
				float height = creature->GetHeight() * 2.5f;
				pos.x -= radius * 0.25f;
				SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
				                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2497))
				                             SubArgumentPointAndFloat(pos, height),
				                         &Creature::LookWhileGoingTowardsPoint, NULL);
				pos.x += radius * 0.5f;
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2499))
				                                 SubArgumentPointAndFloat(pos, height),
				                             &Creature::LookWhileGoingTowardsPoint, NULL);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_OBJECT,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2500))
				                                 SubArgumentObject(friendBelief),
				                             &Creature::LookAtObjectArgument, NULL);
				SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_FACE_DOWN_SLOPE, NULL, NULL, NULL);
				SubActionAgenda.AddOrder(
					other, CREATURE_SUB_STATE_ACTIONS_STATIC_ACTION,
					new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2502)) SubArgumentIntegerAndFloat(
						0x26, 10.0f + GRand::GameFloatRand(5.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2502))),
					&Creature::LookAround, NULL);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FACE_DOWN_SLOPE, NULL, NULL, NULL);
				SubActionAgenda.AddMainSubAction(
					CREATURE_SUB_STATE_ACTIONS_STATIC_ACTION,
					new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2504)) SubArgumentIntegerAndFloat(
						0x26, 10.0f + GRand::GameFloatRand(5.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2504))),
					&Creature::LookAround, NULL);
				return 0;
			}
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForTakeObjectFromHand(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OTHER_PLAYERS_CAMERA, NULL,
	                             &Creature::LookAtHand, &Creature::SetFaceForActionCuriosity);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_PICK_UP_FROM_HAND, NULL, &Creature::LookAtHand,
	                                 &Creature::SetFaceForActionCuriosity);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForGesture(unsigned long gesture_type)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_GESTURE,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2525)) SubArgumentInteger(gesture_type), NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForFishAndEat(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried == NULL || !carried->CanBeEatenByCreature(creature))
	{
		FishFarm* farm = FishFarm::FindClosestFishFarm(creature->Pos, 600.0f);
		if (farm != NULL)
		{
			LHPoint pos = farm->field_0x88 != NULL ? farm->field_0x88->field_0x48 : farm->Pos.GetLHPoint();
			if (!creature->GetCreature3D()->IsDestinationValid(&pos))
			{
				LHPoint validPos;
				LH3DCreature::SpiralCheckForValidPoint(&pos, &validPos);
				if (creature->GetCreature3D()->IsDestinationValid(&validPos) && PointDistance(pos, validPos) < 30.0f)
				{
					pos = validPos;
				}
				else
				{
					creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
					return 1;
				}
			}
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2556))
			                                 SubArgumentPointAndFloat(pos, max(15.0f, creature->GetHeight())),
			                             &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CREATE_FISH_FROM_SEA, NULL,
			                             &Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP_CREATED_OBJECT, NULL, NULL, NULL);
			SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_EAT_CREATED_OBJECT, NULL, NULL, NULL);
			return 0;
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForGiveFishToStoragePit(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried == NULL || !carried->CanBeEatenByCreature(creature))
	{
		FishFarm* farm = FishFarm::FindClosestFishFarm(creature->Pos, 600.0f);
		if (farm != NULL)
		{
			LHPoint pos = farm->field_0x88 != NULL ? farm->field_0x88->field_0x48 : farm->Pos.GetLHPoint();
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2582))
			                                 SubArgumentPointAndFloat(pos, max(creature->GetHeight(), 15.0f)),
			                             &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CREATE_FISH_FROM_SEA, NULL,
			                             &Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP_CREATED_OBJECT, NULL, NULL, NULL);
		}
		else
		{
			return 1;
		}
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_THROW_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2591))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, creature->GetHeight()),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2592))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CONSIDER_ACTION_COMPLETED, NULL, NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CLEAR_OBJECT_TO_USE, NULL, NULL, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW_IN_PILE,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2595))
	                                     SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForBehaveStrangely(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_LOOK_AT_CAMERA,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2602))
	                                     SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(5.0f)),
	                                 &Creature::LookStoned, &Creature::SetFaceForActionCuriosity);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2603)) SubArgumentInteger(0x37),
	                             &Creature::LookStoned, NULL);
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2604)) == 0)
	{
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_FAINT,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2606))
		                                     SubArgumentInteger(0x6a),
		                                 &Creature::LookStoned, NULL);
		SubActionAgenda.AddSubAction(
			CREATURE_SUB_STATE_ACTIONS_WAIT,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2607))
				SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
					5.0f + GRand::GameFloatRand(5.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2607)))),
			&Creature::LookStoned, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_RESURRECT, NULL, NULL, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2610)) SubArgumentInteger(0x3f),
	                             &Creature::LookJustWokenUp, &Creature::SetFaceForActionGrimace);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2611)) SubArgumentInteger(0x3f),
	                             &Creature::LookStoned, &Creature::SetFaceForActionGrimace);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForPineForFriend(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2618))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForMoodSad);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2619))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForMoodSad);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2620)) SubArgumentInteger(0x38),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForLookForFriend(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2627))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForMoodSad);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2628)) SubArgumentInteger(0x38),
	                                 NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2629)) SubArgumentObjectAndFloat(
									 plans[0].ObjectToActOn, 3.0f * creature->GetCreature3D()->GetStandingHeight()),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForCastTeleportAndUseItToGetToMarker(unsigned long param_1)
{
	CreatureBelief* marker = plans[0].ObjectToActOn;
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2638))
	                                 SubArgumentObjectAndFloat(marker, 2.0f),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddCastSpellSubAction(marker, MAGIC_TYPE_TELEPORT);
	LHPoint pos = creature->GetCreature3D()->GetPos() + LHPoint(10.0f, 0.0f, 0.0f);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2641)) SubArgumentPoint(pos),
	                             &Creature::LookAtPosition, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_CAST_SPELL_AT_OBJECT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2644))
	                                     SubArgumentObjectIntegerFloatAndSpell(marker, 0x29, 3.0f, MAGIC_TYPE_TELEPORT),
	                                 NULL, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2645))
	                                 SubArgumentPointAndFloat(pos, creature->GetHeight()),
	                             &Creature::LookAtPosition, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2646))
	                                 SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(0.4f)),
	                             NULL, &Creature::SetFaceForActionPuzzled);
	LHPoint markerPos;
	GLandscape::ConvertMapCoordToLandscapePoint(marker->Pos, markerPos);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_SET_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2649)) SubArgumentPoint(markerPos),
	                             NULL, &Creature::SetFaceForActionPuzzled);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2650)) SubArgumentInteger(0x3f),
	                             &Creature::LookJustWokenUp, &Creature::SetFaceForActionGrimace);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForDiePermanently(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_FAINT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2657)) SubArgumentInteger(0x6a),
	                                 NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2658))
	                                 SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(999999.0f)),
	                             NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForSitDownByBeach(unsigned long param_1)
{
	MapCoords sea;
	creature->mind->ExplorationMap.FindNearest(REGION_TYPE_SEA, creature->Pos, &sea,
	                                           PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 1);
	MapCoords coords = sea;
	float     radius = 4.0f * creature->Get2DRadius();
	if (creature->FindClearArea(&coords, radius, !(creature->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)))
	{
		LHPoint pos;
		GLandscape::ConvertMapCoordToLandscapePoint(coords, pos);
		LHPoint seaPos;
		GLandscape::ConvertMapCoordToLandscapePoint(sea, seaPos);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2675))
		                                 SubArgumentPointAndFloat(pos, creature->GetHeight()),
		                             &Creature::LookWhileGoingTowardsPoint, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2676)) SubArgumentPoint(seaPos),
		                             &Creature::LookAtPosition, NULL);
		SubActionAgenda.AddMainSubAction(
			CREATURE_SUB_STATE_ACTIONS_STATIC_ACTION,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2677)) SubArgumentIntegerAndFloat(
				0x26, GRand::GameFloatRand(15.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2677)) + 10.0f),
			&Creature::LookAround, NULL);
		return 0;
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForShowCreatureYouHateHim(unsigned long param_1)
{
	float distance = max(creature->GetHeight() * 2.5f, plans[0].ObjectToActOn->GetPointer()->GetHeight() * 2.5f);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2688))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, distance),
	                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionAnger);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2689))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2690)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2692))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionGrimace);
	}
	SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2694))
			SubArgumentInteger(GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2694)) != 0 ? 0xde : 0x46),
		NULL, NULL);
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2695)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2697)) SubArgumentInteger(0x35),
		                             NULL, NULL);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForAttackerThrowBallAtGoal(unsigned long param_1)
{
#if defined(VERSION_BW1W100)
	// 1.0 still keeps the ball with the villager's town.
	Villager*       villager = dynamic_cast<Villager*>(plans[0].ObjectToActOn->GetPointer());
	Ball*           ball = villager->GetTown()->GetBall();
	CreatureBelief* belief = creature->mind->AddBeliefAboutObject(creature, ball);
	if (ball != NULL)
	{
		Football* football = villager->GetFootball();
		if (football != NULL)
		{
#else
	Football* football = dynamic_cast<Villager*>(plans[0].ObjectToActOn->GetPointer())->GetFootball();
	if (football != NULL)
	{
		Ball* ball = football->GetBall();
		if (ball != NULL)
		{
			CreatureBelief* belief = creature->mind->AddBeliefAboutObject(creature, ball);
#endif
			MapCoords goal = football->GetGoalPosition(creature->IsOnHomeTeam());
			LHPoint   goalPoint = goal.GetLHPoint();
			if (creature->physical->GetObjectCarried() == NULL)
			{
				if (GRand::GameRand(3, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2719)) > 0)
				{
					SubActionAgenda.AddSubAction(
						CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
						new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2721)) SubArgumentInteger(0x43), NULL, NULL);
				}
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2723))
				                                 SubArgumentObject(belief),
				                             &Creature::LookWhileGoingTowardsObject, NULL);
			}
			SubActionAgenda.AddMainSubAction(
				CREATURE_SUB_STATE_ACTIONS_THROW_AT_POS,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2725)) SubArgumentPoint(goalPoint), NULL, NULL);
			return 0;
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForAttackerKickBallAtGoal(unsigned long action_argument)
{
	return ConstructSubActionsForAttackerThrowBallAtGoal(action_argument);
}

int CreatureAgenda::ConstructSubActionsForDefenderStompOnBall(unsigned long param_1)
{
#if defined(VERSION_BW1W100)
	Ball*           ball = dynamic_cast<Villager*>(plans[0].ObjectToActOn->GetPointer())->GetTown()->GetBall();
	CreatureBelief* belief = creature->mind->AddBeliefAboutObject(creature, ball);
	if (belief != NULL)
	{
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_STOMP,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2753))
		                                     SubArgumentObject(belief),
		                                 &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionAnger);
		return 0;
	}
#else
	Football* football = dynamic_cast<Villager*>(plans[0].ObjectToActOn->GetPointer())->GetFootball();
	if (football != NULL)
	{
		Ball*           ball = football->GetBall();
		CreatureBelief* belief = creature->mind->AddBeliefAboutObject(creature, ball);
		if (belief != NULL)
		{
			SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_STOMP,
			                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2753))
			                                     SubArgumentObject(belief),
			                                 &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionAnger);
			return 0;
		}
	}
#endif
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForDefenderClearBall(unsigned long action_argument)
{
	return ConstructSubActionsForAttackerThrowBallAtGoal(action_argument);
}

int CreatureAgenda::ConstructSubActionsForGoalieCatchBall(unsigned long action_argument)
{
	return ConstructSubActionsForAttackerThrowBallAtGoal(action_argument);
}

int CreatureAgenda::ConstructSubActionsForGoalieFoulAttacker(unsigned long param_1)
{
	Villager* villager = dynamic_cast<Villager*>(plans[0].ObjectToActOn->GetPointer());
#if defined(VERSION_BW1W100)
	Ball* ball = villager->GetTown()->GetBall();
	creature->mind->AddBeliefAboutObject(creature, ball);
	if (ball != NULL)
	{
		Football* football = villager->GetFootball();
		if (football != NULL)
		{
#else
	Football* football = villager->GetFootball();
	if (football != NULL)
	{
		Ball* ball = football->GetBall();
		if (ball != NULL)
		{
			creature->mind->AddBeliefAboutObject(creature, ball);
			football = villager->GetFootball();
#endif
			Villager* attacker;
			if (creature->IsOnHomeTeam())
			{
				attacker = football->AwayTeam.GetAtPosition(0);
			}
			else
			{
				attacker = football->HomeTeam.GetAtPosition(0);
			}
			if (attacker != NULL)
			{
				CreatureBelief* belief = creature->mind->AddBeliefAboutObject(creature, attacker);
				if (belief != NULL)
				{
					SubActionAgenda.AddMainSubAction(
						CREATURE_SUB_STATE_ACTIONS_STOMP,
						new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2806)) SubArgumentObject(belief),
						&Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionAnger);
					return 0;
				}
			}
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForCelebrateGoal(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2819)) SubArgumentInteger(0x37),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForCommiserateGoal(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2826)) SubArgumentInteger(0x38),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForCastOneOffSpellInHandAggressive(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried != NULL)
	{
		OneOffSpellSeed* seed = carried->CastOneOffSpellSeed();
		if (seed != NULL)
		{
			MAGIC_TYPE magicType = seed->GetSeedInfo()->GetFirstMagicType();
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2839))
			                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, CastSpellDistance),
			                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionCompassion);
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_GET_AWAY_FROM_OBJECT,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2840))
					SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f * creature->GetHeight()),
				&Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2841))
			                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
			                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_HIDE_OBJECT_IN_HAND, NULL, NULL, NULL);
			SubActionAgenda.AddCastSpellSubAction(plans[0].ObjectToActOn, magicType);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DESTROY_OBJECT_TO_USE, NULL, NULL, NULL);
			return 0;
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForRunAwayFromPos(unsigned long param_1)
{
	creature->physical->Creature3d->SetRequiredSpeed(((const CreatureInfo*)creature->info)->RunSpeed);
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2856)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2858)) SubArgumentInteger(0x3d),
		                             &Creature::LookFrightened, &Creature::SetFaceForActionAmazed);
	}
	LHPoint from;
	GLandscape::ConvertMapCoordToLandscapePoint(creature->mind->agenda.PosToRunAwayFrom, from);
	LHPoint to;
	creature->GetRunAwayPoint(from, &to);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2863))
	                                     SubArgumentPointAndFloat(to, 5.0f * creature->GetHeight()),
	                                 &Creature::LookWhileGoingTowardsPoint, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForExaminePos(unsigned long param_1)
{
	LHPoint pos;
	GLandscape::ConvertMapCoordToLandscapePoint(creature->mind->agenda.PosToRunAwayFrom, pos);
	bool32_t pointedFirst = FALSE;
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2873)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2875)) SubArgumentPoint(pos),
		                             &Creature::LookAtPosition, &Creature::SetFaceForActionAmazed);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2876))
		                                 SubArgumentPointAndFloat(pos, 1.0f),
		                             &Creature::LookAtPosition, &Creature::SetFaceForActionAmazed);
		pointedFirst = TRUE;
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2879))
	                                 SubArgumentPointAndFloat(pos, creature->GetHeight() * 5.0f),
	                             &Creature::LookWhileGoingTowardsPoint, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2880)) SubArgumentPoint(pos),
	                             &Creature::LookAtPosition, &Creature::SetFaceForActionAmazed);
	if (!pointedFirst)
	{
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2883))
		                                     SubArgumentPointAndFloat(pos, 2.0f),
		                                 &Creature::LookAtPosition, &Creature::SetFaceForActionAmazed);
		return 0;
	}
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2887))
	                                     SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(2.1f)),
	                                 NULL, &Creature::SetFaceForActionPuzzled);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForGiveFruitFromTreeToStoragePit(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried == NULL || !carried->CanBeEatenByCreature(creature))
	{
		Object* tree = plans[0].ObjectToUse->GetObjectPointer();
		belief = plans[0].ObjectToUse;
		LHPoint pos;
		GLandscape::ConvertMapCoordToLandscapePoint(tree->Pos, pos);
		float radius = creature->Get2DRadius();
		float distance = (radius + tree->Get2DRadius()) * 1.2f;
		SubActionAgenda.AddSubAction(
			CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2904)) SubArgumentPointAndFloat(pos, distance), NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2905))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToUse, 0.1f),
		                             NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CREATE_PICK_UP_THEN_REMOVE,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2906))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToUse, 0xf),
		                             NULL, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_THROW_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2908))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, creature->GetHeight()),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2909))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CONSIDER_ACTION_COMPLETED, NULL, NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CLEAR_OBJECT_TO_USE, NULL, NULL, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW_IN_PILE,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2912))
	                                     SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForGiveMagicFoodToStoragePit(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried == NULL || !carried->CanBeEatenByCreature(creature))
	{
		Object* food = plans[0].ObjectToUse->GetObjectPointer();
		LHPoint pos;
		GLandscape::ConvertMapCoordToLandscapePoint(food->Pos, pos);
		float radius = creature->Get2DRadius();
		float distance = (radius + food->Get2DRadius()) * 1.2f;
		belief = plans[0].ObjectToUse;
		SubActionAgenda.AddSubAction(
			CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2928)) SubArgumentPointAndFloat(pos, distance), NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2929))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToUse, 0.1f),
		                             NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CREATE_PICK_UP_THEN_REMOVE,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2930))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToUse, 0x11),
		                             NULL, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_THROW_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2932))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, creature->GetHeight()),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2933))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CONSIDER_ACTION_COMPLETED, NULL, NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CLEAR_OBJECT_TO_USE, NULL, NULL, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW_IN_PILE,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2936))
	                                     SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForGiveMagicWoodToStoragePit(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried == NULL || !carried->IsTree(creature))
	{
		Object* wood = plans[0].ObjectToUse->GetObjectPointer();
		belief = plans[0].ObjectToUse;
		LHPoint pos;
		GLandscape::ConvertMapCoordToLandscapePoint(wood->Pos, pos);
		float radius = creature->Get2DRadius();
		float distance = (radius + wood->Get2DRadius()) * 1.2f;
		SubActionAgenda.AddSubAction(
			CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2952)) SubArgumentPointAndFloat(pos, distance), NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2953))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToUse, 0.1f),
		                             NULL, NULL);
		int type;
		switch (GRand::GameRand(3, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2956)))
		{
		case 0:
			type = 13;
			break;
		case 1:
			type = 14;
			break;
		case 2:
			type = 16;
			break;
		}
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CREATE_PICK_UP_THEN_REMOVE,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2968))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToUse, type),
		                             NULL, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_THROW_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2970))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, creature->GetHeight()),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2971))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CONSIDER_ACTION_COMPLETED, NULL, NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CLEAR_OBJECT_TO_USE, NULL, NULL, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW_IN_PILE,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2974))
	                                     SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 1),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForEatFromFoodPile(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried != NULL && carried->CanBeEatenByCreature(creature))
	{
		return 1;
	}
	Object* pile = plans[0].ObjectToActOn->GetObjectPointer();
	LHPoint pos;
	GLandscape::ConvertMapCoordToLandscapePoint(pile->Pos, pos);
	float distance = (pile->Get2DRadius() + creature->Get2DRadius()) * 1.2f;
	belief = plans[0].ObjectToActOn;
	SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2990)) SubArgumentPointAndFloat(pos, distance), NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2991))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CREATE_PICK_UP_THEN_REMOVE,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2992))
	                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0x11),
	                             NULL, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_EAT_CREATED_OBJECT, NULL, NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForSmashStoneInHalf(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_STOMP,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3006))
	                                     SubArgumentObject(plans[0].ObjectToActOn),
	                                 &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionAnger);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForBeSad(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_WAIT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3013))
			SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
				2.0f + GRand::GameFloatRand(3.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3013)))),
		&Creature::LookDown, &Creature::SetFaceForMoodSad);
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3014)) == 0)
	{
		SubActionAgenda.AddMainSubAction(
			CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3016)) SubArgumentInteger(0x38), NULL, NULL);
	}
	else
	{
		SubActionAgenda.AddMainSubAction(
			CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3020)) SubArgumentInteger(0xdb), NULL, NULL);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForBeingIdle(unsigned long param_1)
{
	for (int i = 0; i < 2; i++)
	{
		SubActionAgenda.AddSubAction(
			CREATURE_SUB_STATE_ACTIONS_WAIT,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3030))
				SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
					1.0f + GRand::GameFloatRand(1.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3030)))),
			&Creature::LookAround, &Creature::SetFaceForActionIdle);
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3031))
		                                     SubArgumentInteger(0x39),
		                                 &Creature::LookJustWokenUp, &Creature::SetFaceForActionIdle);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForGoHome(unsigned long param_1)
{
	LHPoint home;
	GLandscape::ConvertMapCoordToLandscapePoint(creature->HomePos, home);
	creature->mind->agenda.Destination = creature->HomePos;
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3042)) SubArgumentPointAndFloat(
										 home, creature->GetHeight() > 5.0f ? 5.0f : creature->GetHeight()),
	                                 &Creature::LookWhileGoingTowardsPoint, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForPointAtObject(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3049))
	                                     SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 5.0f),
	                                 &Creature::LookAtFlyingObject, &Creature::SetFaceForActionAmazed);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForBringFoodHome(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried == NULL || !carried->CanBeEatenByCreature(creature))
	{
		GameThingWithPos* food = plans[0].ObjectToActOn->GetPointer();
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3060))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
		if (dynamic_cast<Living*>(food) != NULL)
		{
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_RENDER_IMMOBILE,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3063))
			                                 SubArgumentObject(plans[0].ObjectToActOn),
			                             &Creature::LookWhileGoingTowardsObject, NULL);
		}
	}
	LHPoint home;
	GLandscape::ConvertMapCoordToLandscapePoint(creature->HomePos, home);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3069))
	                                 SubArgumentPointAndFloat(home, creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsPoint, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3070)) SubArgumentInteger(0x61),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForHangAroundAtHome(unsigned long param_1)
{
	LHPoint homePos;
	GLandscape::ConvertMapCoordToLandscapePoint(creature->HomePos, homePos);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3079))
	                                 SubArgumentPointAndFloat(homePos, min(5.0f, creature->GetHeight())),
	                             &Creature::LookWhileGoingTowardsPoint, NULL);
	SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_WAIT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3080))
			SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
				2.0f + GRand::GameFloatRand(3.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3080)))),
		&Creature::LookAround, &Creature::SetFaceForActionIdle);
	if (creature->GetPlayer() != NULL && creature->GetPlayer()->GetCitadel() != NULL &&
	    creature->GetPlayer()->GetCitadel()->GetCitadelHeart() != NULL)
	{
		switch (GRand::GameRand(10, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3083)))
		{
		case 0:
			SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3087))
			                                     SubArgumentInteger(0x39),
			                                 &Creature::LookJustWokenUp, &Creature::SetFaceForActionIdle);
			break;
		case 1:
		case 2:
		case 3:
		case 4:
		case 5:
		case 6:
		case 7: {
			LHPoint heartPos;
			GLandscape::ConvertMapCoordToLandscapePoint(creature->GetPlayer()->GetCitadel()->GetCitadelHeart()->Pos,
			                                            heartPos);
			LHPoint home = creature->HomePos.GetLHPoint();
			LHPoint direction = home - heartPos;
			if ((float)fabs(direction.x) > 0.001f || (float)fabs(direction.z) > 0.001f)
			{
				direction.FastNormalizeInline();
			}
			else
			{
				direction.x = 1.0f;
				direction.y = 0.0f;
				direction.z = 0.0f;
			}
			LHPoint pos = home + direction * (creature->field_0x11b4 * 0.8f);
			LHPoint lookPos = home + direction * 50.0f;
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3113))
			                                 SubArgumentPointAndFloat(pos, 2.0f),
			                             &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3114))
			                                 SubArgumentPoint(lookPos),
			                             &Creature::LookAtPosition, NULL);
			if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3115)) == 0)
			{
				SubActionAgenda.AddMainSubAction(
					CREATURE_SUB_STATE_ACTIONS_STATIC_ACTION,
					new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3117)) SubArgumentIntegerAndFloat(
						0x26, 10.0f + GRand::GameFloatRand(5.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3117))),
					NULL, NULL);
			}
			else
			{
				SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
				                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3121))
				                                     SubArgumentPointAndFloat(lookPos, 1.0f),
				                                 &Creature::LookAtPosition, &Creature::SetFaceForActionAmazed);
			}
		}
		case 8:
		case 9:
			if (creature->GetPlayer() != NULL && creature->GetPlayer()->GetCitadel() != NULL &&
			    creature->GetPlayer()->GetCitadel()->GetCitadelHeart() != NULL)
			{
				LHPoint heartPos;
				GLandscape::ConvertMapCoordToLandscapePoint(creature->GetPlayer()->GetCitadel()->GetCitadelHeart()->Pos,
				                                            heartPos);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3130))
				                                 SubArgumentPoint(heartPos),
				                             &Creature::LookAtPosition, NULL);
				SubActionAgenda.AddMainSubAction(
					CREATURE_SUB_STATE_ACTIONS_STATIC_ACTION,
					new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3131)) SubArgumentIntegerAndFloat(
						0x26, 10.0f + GRand::GameFloatRand(5.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3131))),
					NULL, NULL);
			}
			break;
		}
	}
	else
	{
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3138))
		                                     SubArgumentInteger(0x39),
		                                 &Creature::LookJustWokenUp, &Creature::SetFaceForActionIdle);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForGoOutAndLookForFood(unsigned long param_1)
{
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForShowPlayerHowNiceYouReckon(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	if (creature->mind->AttitudeToPlayer.Attitude > 0.0f)
	{
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3156))
		                                     SubArgumentInteger(0x48),
		                                 &Creature::LookAtCamera, NULL);
	}
	else
	{
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3161))
		                                     SubArgumentInteger(0x38),
		                                 &Creature::LookAtCamera, NULL);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForPointAtCamera(unsigned long param_1)
{
	GInterfaceStatus* status = NULL;
	if (creature != NULL)
		status = creature->GetNearestCameraInterfaceStatus();
	if (status != NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera,
		                             NULL);
		LHPoint pos = status->GetCameraPos();
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3176))
		                                     SubArgumentPointAndFloat(pos, 1.0f),
		                                 &Creature::LookAtPosition, &Creature::SetFaceForActionAmazed);
		return 0;
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForPointAtHand(unsigned long param_1)
{
	GInterfaceStatus* status = NULL;
	if (creature != NULL)
		status = creature->GetNearestHandInterfaceStatus();
	if (status != NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera,
		                             NULL);
		LHPoint pos = status->GetHandPos();
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3196))
		                                     SubArgumentPointAndFloat(pos, 1.0f),
		                                 &Creature::LookAtPosition, &Creature::SetFaceForActionAmazed);
		return 0;
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForRunHome(unsigned long param_1)
{
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3209)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3211)) SubArgumentInteger(0x3d),
		                             &Creature::LookFrightened, &Creature::SetFaceForMoodFrightened);
	}
	creature->physical->Creature3d->SetRequiredSpeed(((const CreatureInfo*)creature->info)->RunSpeed);
	LHPoint home;
	GLandscape::ConvertMapCoordToLandscapePoint(creature->HomePos, home);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3216))
	                                     SubArgumentPointAndFloat(home, 2.0f * creature->GetHeight()),
	                                 &Creature::LookWhileGoingTowardsPoint, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForPlayThrowingGameWithPlayer(unsigned long param_1)
{
	GInterfaceStatus* status = NULL;
	if (creature != NULL)
		status = creature->GetNearestHandInterfaceStatus();
	if (status != NULL)
	{
		LHPoint pos = status->GetHandPos();
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3230))
		                                 SubArgumentObject(plans[0].ObjectToUse),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
		if (creature->physical->GetObjectCarried() == NULL)
		{
			SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW_AT_POS,
			                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3233))
			                                     SubArgumentPoint(pos),
			                                 &Creature::LookAtHand, NULL);
		}
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3235)) SubArgumentInteger(0x37),
		                             NULL, NULL);
		return 0;
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForBeSillyWithPlayer(unsigned long param_1)
{
	for (int i = 0; i < 4; i++)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera,
		                             NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TALK,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3251))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookAtObjectFlutteringEyelids, NULL);
		if (GRand::GameRand(4, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3252)) != 0)
		{
			SubActionAgenda.AddMainSubAction(
				CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3254)) SubArgumentInteger(0x43), NULL, NULL);
		}
		if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3256)) == 0)
		{
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3258)) SubArgumentInteger(0xda), NULL, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TALK,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3259))
			                                 SubArgumentObject(plans[0].ObjectToActOn),
			                             &Creature::LookAtObjectFlutteringEyelids, NULL);
		}
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FACIAL_ANIMATION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3261)) SubArgumentInteger(
										 GRand::GameRand(10, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3261)) + 0x10),
		                             &Creature::LookAtObjectArgument, NULL);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForShowCreatureHowNiceYouReckon(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3269))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f),
	                             &Creature::LookAtObjectArgument, NULL);
	Creature* other = dynamic_cast<Creature*>(plans[0].ObjectToActOn->GetPointer());
	if (other != NULL)
	{
		CreatureAttitudeToCreature* attitude = creature->mind->GetAttitudeToCreature(other);
		if (attitude->Attitude == 0.0f)
		{
			SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_FACIAL_ANIMATION,
			                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3277))
			                                     SubArgumentInteger(0x10),
			                                 &Creature::LookAtObjectArgument, NULL);
			return 0;
		}
		if (attitude->Attitude > 0.0f)
		{
			SubActionAgenda.AddMainSubAction(
				CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3281)) SubArgumentInteger(0x37), NULL, NULL);
			return 0;
		}
		if (attitude->Attitude < 0.0f)
		{
			SubActionAgenda.AddMainSubAction(
				CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3285)) SubArgumentInteger(
					GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3285)) != 0 ? 0xde : 0x46),
				NULL, NULL);
		}
		return 0;
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForBeFrightenedOnTheSpot(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3299)) SubArgumentInteger(0x3d),
	                             &Creature::LookFrightened, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3300))
	                                 SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(3.0f)),
	                             NULL, &Creature::SetFaceForMoodFrightened);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3301)) SubArgumentInteger(0x3d),
	                                 &Creature::LookFrightened, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForPooDiscretely(unsigned long action_argument)
{
	LHPoint home;
	GLandscape::ConvertMapCoordToLandscapePoint(creature->HomePos, home);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3311))
	                                 SubArgumentPointAndFloat(home, 2.0f * creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsPoint, NULL);
	return ConstructSubActionsForPoo(action_argument);
}

int CreatureAgenda::ConstructSubActionsForWatchTelly(unsigned long action_argument)
{
	return ConstructSubActionsForPoo(action_argument);
}

int CreatureAgenda::ConstructSubActionsForFart(unsigned long action_argument)
{
	return ConstructSubActionsForPoo(action_argument);
}

int CreatureAgenda::ConstructSubActionsForRestOnTheSpot(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_WAIT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3331))
			SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
				3.0f + GRand::GameFloatRand(8.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3331)))),
		&Creature::LookDown, &Creature::SetFaceForMoodExhausted);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForGoHomeToRecover(unsigned long param_1)
{
	LHPoint home;
	GLandscape::ConvertMapCoordToLandscapePoint(creature->HomePos, home);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3340)) SubArgumentPointAndFloat(
									 home, creature->GetHeight() > 5.0f ? 5.0f : creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsPoint, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FACE_DOWN_SLOPE, NULL, NULL, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_REST_TO_GET_BETTER, NULL, NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3343)) SubArgumentInteger(0x3f),
	                             &Creature::LookJustWokenUp, &Creature::SetFaceForActionGrimace);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForMimicPlayer(unsigned long param_1)
{
	CreatureMental*     mind = creature->mind;
	CreatureMimicState* mimic = &mind->agenda.MimicState;
	mimic->SetCreatureIntoStateOfMimicking(mind->AttitudeToPlayer.ObservedAction.Action,
	                                       mind->AttitudeToPlayer.ObservedAction.Object,
	                                       mind->AttitudeToPlayer.ObservedAction.MagicType);
	mimic->StageProgress = mimic->StageLimit / 2;
	creature->mind->agenda.MimicState.Stage = 1;
	return 0;
}

int CreatureAgenda::ConstructSubActionsForGetHigh(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried == NULL || !carried->IsMushroom(creature))
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3362))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
	}
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_EAT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3364)) SubArgumentObject(plans[0].ObjectToActOn), NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForSwapMindWithOtherCreature(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_SPELLS_TO_WEAR_OFF, NULL, NULL, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_SWAP_MIND_WITH_OTHER_CREATURE, NULL, NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForLookButDontApproach(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3379))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_WAIT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3380))
			SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
				1.1f + GRand::GameFloatRand(1.2f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3380)))),
		&Creature::LookAtObjectArgumentBottom, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForCastLightningStorm(unsigned long param_1)
{
	if (GRand::GameRand(5, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3387)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3389)) SubArgumentInteger(0x35),
		                             NULL, &Creature::SetFaceForActionAnger);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3391))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, creature->GetHeight() * 5.0f),
	                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionAnger);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GET_AWAY_FROM_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3392))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f * creature->GetHeight()),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3393))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
	uint32_t gesture = GMagicInfo::Infos[MAGIC_TYPE_STORM_WIND_RAIN_LIGHTNING]->GestureType;
	if (gesture != 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GESTURE,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3398)) SubArgumentInteger(gesture),
		                             NULL, NULL);
	}
	SubActionAgenda.AddCastSpellSubAction(plans[0].ObjectToActOn, MAGIC_TYPE_STORM_WIND_RAIN_LIGHTNING);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForLookForever(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3409))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3410)) SubArgumentInteger(
										 GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(86400.0f)),
	                                 &Creature::LookAtObjectArgument, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForLookAtCitadel(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3417))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3418))
	                                     SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(3.0f)),
	                                 &Creature::LookAtObjectArgumentTop, NULL);
	if (GRand::GameRand(3, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3419)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3421))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f),
		                             &Creature::LookAtFlyingObject, &Creature::SetFaceForActionAmazed);
	}
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3423))
	                                     SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(3.0f)),
	                                 &Creature::LookAtObjectArgumentBottom, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3424))
	                                     SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(2.0f)),
	                                 &Creature::LookAtObjectArgumentTop, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForLookAtMountains(unsigned long param_1)
{
	MapCoords coords;
	LHPoint   pos;
	int       found = creature->mind->ExplorationMap.FindNearest(REGION_TYPE_HILL, creature->Pos, &coords,
	                                                             PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 1);
	pos = coords.ConvertToLHPoint();
	if (found)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3436)) SubArgumentPoint(pos),
		                             &Creature::LookAtPosition, NULL);
		if (GRand::GameRand(3, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3437)) == 0)
		{
			SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
			                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3439))
			                                     SubArgumentPointAndFloat(pos, 3.0f),
			                                 &Creature::LookAtPosition, NULL);
		}
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3441)) SubArgumentPoint(pos),
		                             &Creature::LookAtPosition, NULL);
		return 0;
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForLookOutToSea(unsigned long param_1)
{
	MapCoords coast;
	MapCoords sea;
	LHPoint   coastPos;
	LHPoint   seaPos;
	if (creature->mind->ExplorationMap.FindNearest(REGION_TYPE_COAST, creature->Pos, &coast,
	                                               PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 1) &&
	    creature->mind->ExplorationMap.FindNearest(REGION_TYPE_SEA, coast, &sea,
	                                               PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 1))
	{
		coastPos = coast.ConvertToLHPoint();
		seaPos = sea.ConvertToLHPoint();
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3463))
		                                 SubArgumentPointAndFloat(coastPos, 2.0f * creature->GetHeight()),
		                             &Creature::LookWhileGoingTowardsPoint, NULL);
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3464))
		                                     SubArgumentPoint(seaPos),
		                                 &Creature::LookAtPosition, NULL);
		if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3465)) == 0)
		{
			SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
			                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3467))
			                                     SubArgumentPointAndFloat(seaPos, 3.0f),
			                                 &Creature::LookAtPosition, NULL);
		}
		return 0;
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForLookAtSun(unsigned long param_1)
{
	LHPoint pos(-50000.0f, 0.0f, -50000.0f);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3480)) SubArgumentPoint(pos),
	                             &Creature::LookAtPosition, NULL);
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3481)) == 0)
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3483))
		                                     SubArgumentPointAndFloat(pos, 3.0f),
		                                 &Creature::LookAtPosition, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForLookAtMoon(unsigned long param_1)
{
	LHPoint pos = LH3DAtmos::GetMoonPos();
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3492)) SubArgumentPoint(pos),
	                             &Creature::LookAtPosition, NULL);
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3493)) == 0)
	{
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3495))
		                                     SubArgumentPointAndFloat(pos, 3.0f),
		                                 &Creature::LookAtPosition, NULL);
	}
	if (creature->alignment->value < 0.0f)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3499)) SubArgumentInteger(0x35),
		                             NULL, &Creature::SetFaceForActionAmazed);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForLookDownCliff(unsigned long param_1)
{
	return 1;
}

int CreatureAgenda::ConstructSubActionsForExploreAndCastTeleport(unsigned long param_1)
{
	return ConstructSubActionsForCastHelpfulSpellOnObject(MAGIC_TYPE_TELEPORT);
}

int CreatureAgenda::ConstructSubActionsForHurlObjectInHand(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3520))
	                                     SubArgumentObject(plans[0].ObjectToActOn),
	                                 &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForEatWithFriend(unsigned long param_1)
{
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForDrinkWithFriend(unsigned long param_1)
{
	MapCoords coast;
	MapCoords sea;
	int       foundCoast = creature->mind->ExplorationMap.FindNearest(REGION_TYPE_COAST, creature->Pos, &coast,
	                                                                  PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 1);
	int       foundSea = creature->mind->ExplorationMap.FindNearest(REGION_TYPE_SEA, coast, &sea,
	                                                                PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 1);
	if (foundCoast && foundSea)
	{
		Creature* other = plans[0].ObjectToActOn->GetPointer()->CastCreature();
		if (other != NULL)
		{
			LHPoint coastPos;
			GLandscape::ConvertMapCoordToLandscapePoint(coast, coastPos);
			LHPoint otherPos = coastPos + LHPoint(other->GetCreature3D()->GetStandingHeight(), 0.0f, 0.0f);
			LHPoint seaPos;
			GLandscape::ConvertMapCoordToLandscapePoint(sea, seaPos);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3548))
			                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0x10),
			                             &Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3549))
			                             SubArgumentPointAndFloat(otherPos, other->GetHeight()),
			                         &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3550))
			                                 SubArgumentPointAndFloat(coastPos, creature->GetHeight()),
			                             &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3551))
			                                 SubArgumentObject(plans[0].ObjectToActOn),
			                             &Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3552)) SubArgumentPoint(seaPos),
			                         &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3553))
			                                 SubArgumentPoint(seaPos),
			                             &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3554)) SubArgumentInteger(0x47),
			                         NULL, NULL);
			SubActionAgenda.AddMainSubAction(
				CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3555)) SubArgumentInteger(0x47), NULL, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_DRINK, NULL, NULL, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DRINK, NULL, NULL, NULL);
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3558)) SubArgumentObjectAndFloat(
					plans[0].ObjectToActOn,
					4.0f + GRand::GameFloatRand(4.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3558))),
				&Creature::LookAtObjectFlutteringEyelids, &Creature::SetFaceForActionSmile);
			return 0;
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForPooWithFriend(unsigned long param_1)
{
	Creature* other = plans[0].ObjectToActOn->GetPointer()->CastCreature();
	if (other != NULL)
	{
		LH3DCreature* myCreature3D = creature->GetCreature3D();
		LH3DCreature* otherCreature3D = other->GetCreature3D();
		LHPoint       middle = myCreature3D->GetPos() + (otherCreature3D->GetPos() - myCreature3D->GetPos()) * 0.5f;
		LHPoint       myPos = middle + LHPoint(myCreature3D->GetStandingHeight(), 0.0f, 0.0f);
		LHPoint       otherPos = middle - LHPoint(otherCreature3D->GetStandingHeight(), 0.0f, 0.0f);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3577))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0x10),
		                             &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3578))
		                             SubArgumentPointAndFloat(otherPos, other->GetHeight()),
		                         &Creature::LookWhileGoingTowardsPoint, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3579))
		                                 SubArgumentPointAndFloat(myPos, creature->GetHeight()),
		                             &Creature::LookWhileGoingTowardsPoint, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3580))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_STATIC_ACTION,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3581))
		                             SubArgumentIntegerAndFloat(0x20, 4.0f),
		                         NULL, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_STATIC_ACTION,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3582))
		                                     SubArgumentIntegerAndFloat(0x20, 4.0f),
		                                 NULL, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_POO, NULL, NULL, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POO, NULL, NULL, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(
			CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3585)) SubArgumentObjectAndFloat(
				plans[0].ObjectToActOn,
				4.0f + GRand::GameFloatRand(4.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3585))),
			&Creature::LookAtObjectArgument, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3586)) SubArgumentInteger(0x37),
		                             NULL, NULL);
		return 0;
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForSitWithFriend(unsigned long param_1)
{
	Creature* other = plans[0].ObjectToActOn->GetPointer()->CastCreature();
	if (other != NULL)
	{
		LH3DCreature* myBody = creature->GetCreature3D();
		LH3DCreature* otherBody = other->GetCreature3D();
		LHPoint       middle = myBody->GetPos() + (otherBody->GetPos() - myBody->GetPos()) * 0.5f;
		MapCoords     coords(middle);
		float         radius = (creature->GetHeight() + other->GetHeight()) * 1.7f;
		if (creature->FindClearArea(&coords, radius, 0))
		{
			middle = coords.GetLHPoint();
			LHPoint offset(radius * 0.25f, 0.0f, radius * 0.25f);
			LHPoint myPos = middle + offset;
			LHPoint otherPos = middle - offset;
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3612))
			                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0x10),
			                             &Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3613))
			                             SubArgumentPointAndFloat(otherPos, other->GetHeight()),
			                         &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3614))
			                                 SubArgumentPointAndFloat(myPos, creature->GetHeight()),
			                             &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3615))
			                                 SubArgumentObject(plans[0].ObjectToActOn),
			                             &Creature::LookAtObjectFlutteringEyelids, NULL);
			CreatureBelief* belief = other->mind->AddBeliefAboutObject(other, creature);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3617))
			                             SubArgumentObjectAndFloat(belief, 0.1f),
			                         &Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3618))
			                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
			                             &Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddOrder(
				other, CREATURE_SUB_STATE_ACTIONS_STATIC_ACTION,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3619)) SubArgumentIntegerAndFloat(
					0x26, 10.0f + GRand::GameFloatRand(5.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3619))),
				&Creature::LookAround, NULL);
			SubActionAgenda.AddMainSubAction(
				CREATURE_SUB_STATE_ACTIONS_STATIC_ACTION,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3620)) SubArgumentIntegerAndFloat(
					0x26, 10.0f + GRand::GameFloatRand(5.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3620))),
				&Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3621))
			                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
			                             &Creature::LookAtObjectFlutteringEyelids, NULL);
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3622)) SubArgumentInteger(0x37), NULL, NULL);
			return 0;
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForBeHappyWithFriend(unsigned long param_1)
{
	Creature* other = plans[0].ObjectToActOn->GetPointer()->CastCreature();
	if (other != NULL)
	{
		LH3DCreature* myBody = creature->GetCreature3D();
		LH3DCreature* otherBody = other->GetCreature3D();
		LHPoint       middle = myBody->GetPos() + (otherBody->GetPos() - myBody->GetPos()) * 0.5f;
		LHPoint       myPos = middle + LHPoint(myBody->GetStandingHeight(), 0.0f, 0.0f);
		LHPoint       otherPos = middle - LHPoint(otherBody->GetStandingHeight(), 0.0f, 0.0f);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3641))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0x10),
		                             &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3642))
		                             SubArgumentPointAndFloat(otherPos, other->GetHeight()),
		                         &Creature::LookWhileGoingTowardsPoint, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3643))
		                                 SubArgumentPointAndFloat(myPos, creature->GetHeight()),
		                             &Creature::LookWhileGoingTowardsPoint, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3644))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookAtObjectArgument, NULL);
		CreatureBelief* belief = other->mind->AddBeliefAboutObject(other, creature);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3646))
		                             SubArgumentObjectAndFloat(belief, 0.1f),
		                         &Creature::LookAtObjectFlutteringEyelids, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3647))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
		                             &Creature::LookAtObjectFlutteringEyelids, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3648)) SubArgumentInteger(0x37),
		                         &Creature::LookAround, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3649)) SubArgumentInteger(0x37),
		                             NULL, NULL);
		return 0;
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForSleepWithFriend(unsigned long param_1)
{
	Creature* other = plans[0].ObjectToActOn->GetPointer()->CastCreature();
	if (other != NULL)
	{
		MapCoords coords = creature->Pos;
		float     radius = 2.0f * (creature->GetHeight() + other->GetHeight());
		if (creature->FindClearArea(&coords, radius, 0))
		{
			if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3667)) == 0)
			{
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3669))
				                                 SubArgumentInteger(0x39),
				                             &Creature::LookJustWokenUp, NULL);
			}
			LH3DCreature* myBody = creature->GetCreature3D();
			LH3DCreature* otherBody = other->GetCreature3D();
			LHPoint       centre = coords.GetLHPoint();
			LHPoint       offset(radius * 0.25f, 0.0f, radius * 0.25f);
			LHPoint       myPos = centre + offset;
			LHPoint       otherPos = centre - offset;
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3677))
			                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0x10),
			                             &Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3678))
			                             SubArgumentPointAndFloat(otherPos, other->GetHeight()),
			                         &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3679))
			                                 SubArgumentPointAndFloat(myPos, creature->GetHeight()),
			                             &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3680))
			                                 SubArgumentObject(plans[0].ObjectToActOn),
			                             &Creature::LookAtObjectArgument, NULL);
			CreatureBelief* belief = other->mind->AddBeliefAboutObject(other, creature);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3682))
			                             SubArgumentObjectAndFloat(belief, 0.1f),
			                         &Creature::LookAtObjectFlutteringEyelids, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3683))
			                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
			                             &Creature::LookAtObjectFlutteringEyelids, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_STATIC_ACTION,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3684))
			                             SubArgumentIntegerAndFloat(0x1d, 17.0f),
			                         NULL, NULL);
			SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_STATIC_ACTION,
			                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3685))
			                                     SubArgumentIntegerAndFloat(0x1d, 17.0f),
			                                 NULL, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3686))
			                                 SubArgumentInteger(0x3f),
			                             &Creature::LookJustWokenUp, &Creature::SetFaceForActionGrimace);
			return 0;
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForGoToBeachWithFriend(unsigned long param_1)
{
	MapCoords coast;
	MapCoords sea;
	int       foundCoast = creature->mind->ExplorationMap.FindNearest(REGION_TYPE_COAST, creature->Pos, &coast,
	                                                                  PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 1);
	int       foundSea = creature->mind->ExplorationMap.FindNearest(REGION_TYPE_SEA, coast, &sea,
	                                                                PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 1);
	if (foundCoast && foundSea)
	{
		Creature* other = plans[0].ObjectToActOn->GetPointer()->CastCreature();
		if (other != NULL)
		{
			LHPoint coastPos;
			GLandscape::ConvertMapCoordToLandscapePoint(coast, coastPos);
			LHPoint otherPos = coastPos + LHPoint(other->GetCreature3D()->GetStandingHeight(), 0.0f, 0.0f);
			LHPoint seaPos;
			GLandscape::ConvertMapCoordToLandscapePoint(sea, seaPos);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3710))
			                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0x10),
			                             &Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3711))
			                             SubArgumentPointAndFloat(otherPos, other->GetHeight()),
			                         &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3712))
			                                 SubArgumentPointAndFloat(coastPos, creature->GetHeight()),
			                             &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3713))
			                                 SubArgumentObject(plans[0].ObjectToActOn),
			                             &Creature::LookAtObjectArgument, NULL);
			CreatureBelief* belief = other->mind->AddBeliefAboutObject(other, creature);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3715))
			                             SubArgumentObjectAndFloat(belief, 2.1f),
			                         &Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
			                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3716))
			                                     SubArgumentPointAndFloat(seaPos, 3.0f),
			                                 &Creature::LookAtPosition, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3717)) SubArgumentPoint(seaPos),
			                         &Creature::LookAtPosition, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3718))
			                                 SubArgumentPointAndFloat(seaPos, 3.0f),
			                             &Creature::LookAtPosition, &Creature::SetFaceForActionSmile);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3719))
			                             SubArgumentObjectAndFloat(belief, 2.1f),
			                         &Creature::LookAtObjectFlutteringEyelids, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3720))
			                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.1f),
			                             &Creature::LookAtObjectFlutteringEyelids, NULL);
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3721)) SubArgumentInteger(0x37), NULL, NULL);
			return 0;
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForEnterCitadel(unsigned long param_1)
{
	if (creature->GetPlayer() != NULL)
	{
		Citadel* citadel = creature->GetPlayer()->GetCitadel();
		if (citadel != NULL)
		{
			CitadelHeart* heart = citadel->heart.Get();
			if (heart != NULL)
			{
				LHPoint homePos;
				GLandscape::ConvertMapCoordToLandscapePoint(creature->HomePos, homePos);
				creature->mind->agenda.Destination = creature->HomePos;
				SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
				                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3743))
				                                     SubArgumentPointAndFloat(homePos, creature->GetHeight()),
				                                 &Creature::LookWhileGoingTowardsPoint, NULL);
				LHPoint heartPos;
				GLandscape::ConvertMapCoordToLandscapePoint(heart->Pos, heartPos);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3746))
				                                 SubArgumentPoint(heartPos),
				                             &Creature::LookAtPosition, &Creature::SetFaceForActionSmile);
				creature->mind->AddBeliefAboutObject(creature, heart);
				LHPoint myPos = creature->GetCreature3D()->GetPos();
				LHPoint direction = heartPos - myPos;
				float   distance = direction.GetNorme() - 1.3f * heart->GetRoutePlanRadius(creature);
				direction.Normalise();
				LHPoint target = myPos + direction * distance;
				SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
				                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3755))
				                                     SubArgumentPointAndFloat(target, creature->GetHeight()),
				                                 &Creature::LookWhileGoingTowardsPoint, NULL);
				return 0;
			}
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForBePatheticWithPlayer(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FOLLOW_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3770)) SubArgumentInteger(0x4a),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForBeCrossWithPlayer(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FOLLOW_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3779))
			SubArgumentInteger(GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3779)) ? 0xde : 0x46),
		NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForKissFriendsArse(unsigned long param_1)
{
	Creature* other = plans[0].ObjectToActOn->GetPointer()->CastCreature();
	if (other != NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3789))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0x10),
		                             &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_STATIC_ACTION,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3790))
		                             SubArgumentIntegerAndFloat(0x20, 4.0f),
		                         NULL, &Creature::SetFaceForActionPuzzled);
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_KISS,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3791))
		                                     SubArgumentObject(plans[0].ObjectToActOn),
		                                 NULL, NULL);
		return 0;
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForArgueWithFriend(unsigned long param_1)
{
	Creature* other = plans[0].ObjectToActOn->GetPointer()->CastCreature();
	if (other != NULL)
	{
		CreatureBelief* otherBelief = other->mind->AddBeliefAboutObject(other, creature);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3805))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0x10),
		                             &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3806))
		                             SubArgumentObjectAndFloat(otherBelief, creature->GetHeight() * 3.0f),
		                         NULL, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3807)) SubArgumentObjectAndFloat(
										 plans[0].ObjectToActOn, creature->GetHeight() * 3.0f),
		                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddOrder(
			other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3808)) SubArgumentObjectAndFloat(
				otherBelief, 4.0f + GRand::GameFloatRand(4.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3808))),
			NULL, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3809))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 1.0f),
		                             &Creature::LookAtObjectFlutteringEyelids, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3810))
		                             SubArgumentObjectAndFloat(otherBelief, 1.0f),
		                         NULL, &Creature::SetFaceForActionAnger);
		SubActionAgenda.AddSubAction(
			CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3811)) SubArgumentObjectAndFloat(
				plans[0].ObjectToActOn,
				4.0f + GRand::GameFloatRand(4.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3811))),
			&Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3812))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3813)) SubArgumentInteger(0x35), NULL,
		                         &Creature::SetFaceForActionAnger);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3814)) SubArgumentInteger(0x35),
		                             NULL, &Creature::SetFaceForActionAnger);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_WAIT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3815))
		                             SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(5.0f)),
		                         NULL, &Creature::SetFaceForActionAnger);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3816))
		                                 SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(5.0f)),
		                             NULL, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_WAIT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3817))
		                             SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(2.0f)),
		                         NULL, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3818)) SubArgumentInteger(
											 GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(2.0f)),
		                                 NULL, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3819))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
		                             &Creature::LookAtObjectFlutteringEyelids, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3820)) SubArgumentInteger(0x37),
		                             NULL, NULL);
		return 0;
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForMopeAboutWithFriend(unsigned long param_1)
{
	Creature* other = plans[0].ObjectToActOn->GetPointer()->CastCreature();
	if (other != NULL)
	{
		CreatureBelief* otherBelief = other->mind->AddBeliefAboutObject(other, creature);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3834))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0x10),
		                             &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3835))
		                             SubArgumentObjectAndFloat(otherBelief, creature->GetHeight() * 3.0f),
		                         NULL, &Creature::SetFaceForMoodSad);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3836)) SubArgumentObjectAndFloat(
										 plans[0].ObjectToActOn, creature->GetHeight() * 3.0f),
		                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForMoodSad);
		SubActionAgenda.AddOrder(
			other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3837)) SubArgumentObjectAndFloat(
				otherBelief, 4.0f + GRand::GameFloatRand(4.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3837))),
			NULL, &Creature::SetFaceForMoodSad);
		SubActionAgenda.AddSubAction(
			CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3838)) SubArgumentObjectAndFloat(
				plans[0].ObjectToActOn,
				4.0f + GRand::GameFloatRand(4.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3838))),
			&Creature::LookAtObjectFlutteringEyelids, &Creature::SetFaceForMoodSad);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3839)) SubArgumentInteger(0x38), NULL,
		                         &Creature::SetFaceForMoodSad);
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3840))
		                                     SubArgumentInteger(0x38),
		                                 NULL, &Creature::SetFaceForMoodSad);
		if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3841)) == 0)
		{
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3843))
			                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
			                             &Creature::LookAtObjectFlutteringEyelids, NULL);
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3844)) SubArgumentInteger(0x37), NULL, NULL);
		}
		return 0;
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForConfuseFriend(unsigned long param_1)
{
	Creature* other = plans[0].ObjectToActOn->GetPointer()->CastCreature();
	if (other != NULL)
	{
		CreatureBelief* otherBelief = other->mind->AddBeliefAboutObject(other, creature);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3859))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0x10),
		                             &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3860))
		                             SubArgumentObjectAndFloat(otherBelief, creature->GetHeight() * 3.0f),
		                         NULL, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3861)) SubArgumentObjectAndFloat(
										 plans[0].ObjectToActOn, creature->GetHeight() * 3.0f),
		                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddOrder(
			other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3862)) SubArgumentObjectAndFloat(
				otherBelief, 4.0f + GRand::GameFloatRand(4.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3862))),
			NULL, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(
			CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3863)) SubArgumentObjectAndFloat(
				plans[0].ObjectToActOn,
				4.0f + GRand::GameFloatRand(4.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3863))),
			&Creature::LookAtObjectArgument, &Creature::SetFaceForActionSmile);
		LHPoint pos;
		GLandscape::ConvertMapCoordToLandscapePoint(creature->HomePos, pos);
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3866))
		                                     SubArgumentPointAndFloat(pos, 3.0f),
		                                 &Creature::LookAtPosition, &Creature::SetFaceForActionGrimace);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3867)) SubArgumentPoint(pos), NULL,
		                         &Creature::SetFaceForActionPuzzled);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3868))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f),
		                             &Creature::LookAtObjectFlutteringEyelids, &Creature::SetFaceForMoodSad);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3869)) SubArgumentInteger(0x3f), NULL,
		                         &Creature::SetFaceForActionPuzzled);
		return 0;
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForShowOffToFriend(unsigned long param_1)
{
	Creature* other = plans[0].ObjectToActOn->GetPointer()->CastCreature();
	if (other != NULL)
	{
		CreatureBelief* otherBelief = other->mind->AddBeliefAboutObject(other, creature);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3883))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0x10),
		                             &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3884))
		                             SubArgumentObjectAndFloat(otherBelief, creature->GetHeight() * 3.0f),
		                         NULL, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3885)) SubArgumentObjectAndFloat(
										 plans[0].ObjectToActOn, creature->GetHeight() * 3.0f),
		                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddOrder(
			other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3886)) SubArgumentObjectAndFloat(
				otherBelief, 4.0f + GRand::GameFloatRand(4.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3886))),
			NULL, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(
			CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3887)) SubArgumentObjectAndFloat(
				plans[0].ObjectToActOn,
				4.0f + GRand::GameFloatRand(4.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3887))),
			&Creature::LookAtObjectFlutteringEyelids, &Creature::SetFaceForActionSmile);
		LHPoint pos;
		GLandscape::ConvertMapCoordToLandscapePoint(creature->HomePos, pos);
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3890))
		                                     SubArgumentPointAndFloat(pos, 3.0f),
		                                 &Creature::LookAtPosition, &Creature::SetFaceForActionGrimace);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3891)) SubArgumentPoint(pos), NULL,
		                         &Creature::SetFaceForActionPuzzled);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3892))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForMoodSad);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3893)) SubArgumentInteger(0x3f), NULL,
		                         &Creature::SetFaceForActionPuzzled);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3894))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
		                             &Creature::LookAtObjectFlutteringEyelids, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3895)) SubArgumentInteger(0x37),
		                             NULL, NULL);
		return 0;
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForCastOneOffSpellInHandCompassionate(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried != NULL)
	{
		OneOffSpellSeed* seed = carried->CastOneOffSpellSeed();
		if (seed != NULL)
		{
			MAGIC_TYPE magicType = seed->GetSeedInfo()->GetFirstMagicType();
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3911))
			                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, CastSpellDistance),
			                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionCompassion);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3912))
			                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
			                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_HIDE_OBJECT_IN_HAND, NULL, NULL, NULL);
			SubActionAgenda.AddCastSpellSubAction(plans[0].ObjectToActOn, magicType);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DESTROY_OBJECT_TO_USE, NULL, NULL, NULL);
			return 0;
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForCastOneOffSpellInHandPlayful(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried != NULL)
	{
		OneOffSpellSeed* seed = carried->CastOneOffSpellSeed();
		if (seed != NULL)
		{
			MAGIC_TYPE magicType = seed->GetSeedInfo()->GetFirstMagicType();
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3932))
			                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, CastSpellDistance),
			                             &Creature::LookWhileGoingTowardsObject,
			                             &Creature::SetFaceForActionPlayfulness);
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_GET_AWAY_FROM_OBJECT,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3933))
					SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f * creature->GetHeight()),
				&Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3934))
			                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
			                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionPlayfulness);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_HIDE_OBJECT_IN_HAND, NULL, NULL, NULL);
			SubActionAgenda.AddCastSpellSubAction(plans[0].ObjectToActOn, magicType);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DESTROY_OBJECT_TO_USE, NULL, NULL, NULL);
			return 0;
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForCastOneOffSpellInHandToRestoreHealth(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried != NULL)
	{
		OneOffSpellSeed* seed = carried->CastOneOffSpellSeed();
		if (seed != NULL)
		{
			MAGIC_TYPE magicType = seed->GetSeedInfo()->GetFirstMagicType();
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_HIDE_OBJECT_IN_HAND, NULL, NULL, NULL);
			// Unused on both platforms, as if left over from HealHimself
			LHPoint pos = creature->GetCreature3D()->position;
			SubActionAgenda.AddMainSubAction(
				CREATURE_SUB_STATE_ACTIONS_CAST_SPELL_AT_OBJECT,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3958)) SubArgumentObjectIntegerFloatAndSpell(
					creature->mind->GetBeliefAboutObject(creature), 0x29, 3.0f, magicType),
				NULL, &Creature::SetFaceForActionGrimace);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DESTROY_OBJECT_TO_USE, NULL, NULL, NULL);
			return 0;
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForPickUpAndCastOneOffSpellAggressive(unsigned long param_1)
{
	if (plans[0].ObjectToUse != NULL)
	{
		OneOffSpellSeed* seed = plans[0].ObjectToUse->GetPointer()->CastOneOffSpellSeed();
		if (seed != NULL)
		{
			MAGIC_TYPE magicType = seed->GetSeedInfo()->GetFirstMagicType();
			if (creature->physical->GetObjectCarried() == NULL)
			{
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3978))
				                                 SubArgumentObject(plans[0].ObjectToUse),
				                             &Creature::LookWhileGoingTowardsObject, NULL);
			}
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3980))
			                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, CastSpellDistance),
			                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionAnger);
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_GET_AWAY_FROM_OBJECT,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3981))
					SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f * creature->GetHeight()),
				&Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3982))
			                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
			                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_HIDE_OBJECT_IN_HAND, NULL, NULL, NULL);
			SubActionAgenda.AddCastSpellSubAction(plans[0].ObjectToActOn, magicType);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DESTROY_OBJECT_TO_USE, NULL, NULL, NULL);
			return 0;
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForPickUpAndCastOneOffSpellCompassionate(unsigned long param_1)
{
	if (plans[0].ObjectToUse != NULL)
	{
		OneOffSpellSeed* seed = plans[0].ObjectToUse->GetPointer()->CastOneOffSpellSeed();
		if (seed != NULL)
		{
			MAGIC_TYPE magicType = seed->GetSeedInfo()->GetFirstMagicType();
			if (creature->physical->GetObjectCarried() == NULL)
			{
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4004))
				                                 SubArgumentObject(plans[0].ObjectToUse),
				                             &Creature::LookWhileGoingTowardsObject, NULL);
			}
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4006))
			                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, CastSpellDistance),
			                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionCompassion);
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_GET_AWAY_FROM_OBJECT,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4007))
					SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f * creature->GetHeight()),
				&Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4008))
			                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
			                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_HIDE_OBJECT_IN_HAND, NULL, NULL, NULL);
			SubActionAgenda.AddCastSpellSubAction(plans[0].ObjectToActOn, magicType);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DESTROY_OBJECT_TO_USE, NULL, NULL, NULL);
			return 0;
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForPickUpAndCastOneOffSpellPlayful(unsigned long param_1)
{
	if (plans[0].ObjectToUse != NULL)
	{
		OneOffSpellSeed* seed = plans[0].ObjectToUse->GetPointer()->CastOneOffSpellSeed();
		if (seed != NULL)
		{
			MAGIC_TYPE magicType = seed->GetSeedInfo()->GetFirstMagicType();
			if (creature->physical->GetObjectCarried() == NULL)
			{
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4030))
				                                 SubArgumentObject(plans[0].ObjectToUse),
				                             &Creature::LookWhileGoingTowardsObject, NULL);
			}
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4032))
			                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, CastSpellDistance),
			                             &Creature::LookWhileGoingTowardsObject,
			                             &Creature::SetFaceForActionPlayfulness);
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_GET_AWAY_FROM_OBJECT,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4033))
					SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f * creature->GetHeight()),
				&Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4034))
			                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
			                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionPlayfulness);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_HIDE_OBJECT_IN_HAND, NULL, NULL, NULL);
			SubActionAgenda.AddCastSpellSubAction(plans[0].ObjectToActOn, magicType);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DESTROY_OBJECT_TO_USE, NULL, NULL, NULL);
			return 0;
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForPickUpAndCastOneOffSpellToRestoreHealth(unsigned long param_1)
{
	if (plans[0].ObjectToUse != NULL)
	{
		OneOffSpellSeed* seed = plans[0].ObjectToUse->GetPointer()->CastOneOffSpellSeed();
		if (seed != NULL)
		{
			MAGIC_TYPE magicType = seed->GetSeedInfo()->GetFirstMagicType();
			if (creature->physical->GetObjectCarried() == NULL)
			{
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4057))
				                                 SubArgumentObject(plans[0].ObjectToUse),
				                             &Creature::LookWhileGoingTowardsObject, NULL);
			}
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_WAIT,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4059))
					SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
						10.0f + GRand::GameFloatRand(20.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4059)))),
				NULL, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_HIDE_OBJECT_IN_HAND, NULL, NULL, NULL);
			LH3DCreature* creature3D = creature->GetCreature3D();
			SubActionAgenda.AddMainSubAction(
				CREATURE_SUB_STATE_ACTIONS_CAST_SPELL_AT_OBJECT,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4064)) SubArgumentObjectIntegerFloatAndSpell(
					creature->mind->GetBeliefAboutObject(creature), 0x29, 3.0f, magicType),
				NULL, &Creature::SetFaceForActionGrimace);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DESTROY_OBJECT_TO_USE, NULL, NULL, NULL);
			return 0;
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForKick(unsigned long param_1)
{
	Object* object = dynamic_cast<Object*>(plans[0].ObjectToActOn->GetPointer());
	if (object != NULL)
	{
		// Unused on both platforms
		LHPoint pos = creature->GetCreature3D()->position;
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4080))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.0f),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4081))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
		                             &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_KICK_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4082))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookAtObjectArgument, NULL);
		return 0;
	}
	creature->FinishActionUnsuccessfully("no object to kick", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForCatch(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_CATCH,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4092))
	                                     SubArgumentObject(plans[0].ObjectToActOn),
	                                 NULL, &Creature::SetFaceForActionSmile);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForCastMagicWater(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4099))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f * creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4100))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionSmile);
	// Unused on both platforms
	LHPoint pos = plans[0].ObjectToActOn->GetPos().GetLHPoint();
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_CAST_SPELL_AT_OBJECT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4104))
			SubArgumentObjectIntegerFloatAndSpell(plans[0].ObjectToActOn, 0x2f, 3.0f, MAGIC_TYPE_WATER),
		NULL, &Creature::SetFaceForActionSmile);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForPlayThrowingGameWithFriend(unsigned long param_1)
{
	CreatureBelief* friendBelief = plans[0].ObjectToActOn;
	if (friendBelief != NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4114))
		                                 SubArgumentObjectAndFloat(friendBelief, creature->GetHeight() * 5.0f),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4115))
		                                 SubArgumentObjectAndFloat(friendBelief, 0.1f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionSmile);
		Creature* other = dynamic_cast<Creature*>(friendBelief->GetPointer());
		if (other != NULL)
		{
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4119))
			                                 SubArgumentObjectAndInteger(friendBelief, 3),
			                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionPlayfulness);
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_DEMOBILISE_OBJECT,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4121)) SubArgumentObject(friendBelief), NULL, NULL);
			CreatureBelief* otherBelief = other->mind->AddBeliefAboutObject(other, creature);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4123))
			                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
			                             &Creature::LookAtObjectFlutteringEyelids, NULL);
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4124)) SubArgumentInteger(0x37), NULL, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4125))
			                             SubArgumentObjectAndFloat(otherBelief, 0.1f),
			                         &Creature::LookAtObjectArgument, &Creature::SetFaceForActionGrimace);
			CreatureBelief* toy = plans[0].ObjectToUse;
			if (toy != NULL)
			{
				if (creature->physical->GetObjectCarried() == NULL)
				{
					SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
					                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4131))
					                                 SubArgumentObject(toy),
					                             &Creature::LookWhileGoingTowardsObject, NULL);
				}
				LHPoint pos = other->Pos.GetLHPoint();
				pos.y += other->GetCreature3D()->GetStandingHeight() * 0.82f;
				SubActionAgenda.AddMainSubAction(
					CREATURE_SUB_STATE_ACTIONS_THROW_AT_POS,
					new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4135)) SubArgumentPoint(pos), NULL, NULL);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4136)) SubArgumentInteger(
												 GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(3.0f)),
				                             NULL, NULL);
				pos = creature->Pos.GetLHPoint();
				pos.y += 0.82f * creature->GetCreature3D()->GetStandingHeight();
				CreatureBelief* toyBelief = other->mind->AddBeliefAboutObject(other, toy->GetPointer());
				SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_PICKUP,
				                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4140))
				                             SubArgumentObject(toyBelief),
				                         &Creature::LookWhileGoingTowardsObject, NULL);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_OBJECT,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4141))
				                                 SubArgumentObject(friendBelief),
				                             &Creature::LookAtObjectArgument, NULL);
				SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_THROW_AT_POS,
				                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4142)) SubArgumentPoint(pos),
				                         NULL, NULL);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_OBJECT,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4143))
				                                 SubArgumentObject(friendBelief),
				                             &Creature::LookAtObjectArgument, NULL);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REMOBILISE_OBJECT,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4144))
				                                 SubArgumentObject(plans[0].ObjectToActOn),
				                             NULL, NULL);
				return 0;
			}
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForCastMagicWaterOnMyself(unsigned long param_1)
{
	float     radius = 1.7f * creature->GetHeight();
	MapCoords coords = creature->Pos;
	if (creature->FindClearArea(&coords, radius, 0))
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4164))
		                                 SubArgumentPointAndFloat(coords.GetLHPoint(), 2.0f * creature->GetHeight()),
		                             &Creature::LookWhileGoingTowardsPoint, NULL);
		SubActionAgenda.AddMainSubAction(
			CREATURE_SUB_STATE_ACTIONS_CAST_SPELL_AT_OBJECT,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4165)) SubArgumentObjectIntegerFloatAndSpell(
				creature->mind->GetBeliefAboutObject(creature), 0x2f, 3.0f, MAGIC_TYPE_WATER),
			NULL, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_STOP_BEING_ON_FIRE, NULL, NULL, NULL);
		return 0;
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForNoticeHelpfulAction(unsigned long param_1)
{
	if (creature->physical->GetObjectCarried() == NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4178))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f),
		                             &Creature::LookAtFlyingObject, &Creature::SetFaceForActionAmazed);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_LOOK_AT_CAMERA,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4181))
	                                     SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.0f)),
	                                 &Creature::LookAtCamera, &Creature::SetFaceForActionCuriosity);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_LOOK_AT_CAMERA,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4183))
	                                     SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.0f)),
	                                 &Creature::LookAtCamera, &Creature::SetFaceForActionCompassion);
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4184)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4186)) SubArgumentInteger(0x37),
		                             NULL, NULL);
	}
	else
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4190)) SubArgumentInteger(0xdc),
		                             NULL, NULL);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForNoticeAggressiveAction(unsigned long param_1)
{
	if (creature->physical->GetObjectCarried() == NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4200))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.8f),
		                             &Creature::LookAtFlyingObject, &Creature::SetFaceForActionAmazed);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_LOOK_AT_CAMERA,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4204))
	                                     SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.0f)),
	                                 &Creature::LookAtCamera, &Creature::SetFaceForActionAnger);
	if (GRand::GameRand(3, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4205)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4207)) SubArgumentInteger(0xda),
		                             NULL, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4209)) SubArgumentInteger(0x35), NULL,
	                             NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForNoticeAction(unsigned long param_1)
{
	if (creature->physical->GetObjectCarried() == NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4218))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f),
		                             &Creature::LookAtFlyingObject, &Creature::SetFaceForActionAmazed);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_LOOK_AT_CAMERA,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4221))
	                                     SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.0f)),
	                                 &Creature::LookAtCamera, &Creature::SetFaceForActionCuriosity);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_LOOK_AT_CAMERA,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4223))
	                                     SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.0f)),
	                                 &Creature::LookAtCamera, &Creature::SetFaceForActionCuriosity);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4224)) SubArgumentInteger(0xdc), NULL,
	                             NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForPutFoodFromFieldByWorshipSite(unsigned long param_1)
{
	if (plans[0].ObjectToUse != NULL)
	{
		Object* carried = creature->physical->GetObjectCarried();
		if (carried == NULL || !carried->CanBeEatenByCreature(creature))
		{
			LHPoint pos;
			GLandscape::ConvertMapCoordToLandscapePoint(plans[0].ObjectToUse->GetPos(), pos);
			belief = plans[0].ObjectToUse;
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4238))
			                                 SubArgumentPointAndFloat(pos, creature->GetHeight()),
			                             NULL, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4239))
			                                 SubArgumentObjectAndFloat(plans[0].ObjectToUse, 0.1f),
			                             NULL, NULL);
			CreatureBelief* field = plans[0].ObjectToUse;
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CLEAR_OBJECT_TO_ACT_ON, NULL, NULL, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CREATE_PICK_UP_THEN_REMOVE,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4242))
			                                 SubArgumentObjectAndInteger(field, 0x11),
			                             NULL, NULL);
		}
		WorshipSite* site = dynamic_cast<WorshipSite*>(plans[0].ObjectToActOn->GetPointer());
		if (site != NULL)
		{
			LHPoint pos;
			GLandscape::ConvertMapCoordToLandscapePoint(site->GetResourcePos(RESOURCE_TYPE_FOOD, -1), pos);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4248))
			                                 SubArgumentPointAndFloat(pos, creature->GetHeight()),
			                             &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddMainSubAction(
				CREATURE_SUB_STATE_ACTIONS_DISCARD,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4249)) SubArgumentInteger(0x61), NULL, NULL);
			return 0;
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForPutFishByWorshipSite(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried == NULL || !carried->CanBeEatenByCreature(creature))
	{
		FishFarm* farm = FishFarm::FindClosestFishFarm(creature->Pos, 600.0f);
		if (farm != NULL)
		{
			LHPoint pos = farm->field_0x88 != NULL ? farm->field_0x88->field_0x48 : farm->Pos.GetLHPoint();
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4267))
			                                 SubArgumentPointAndFloat(pos, max(creature->GetHeight(), 15.0f)),
			                             &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CREATE_FISH_FROM_SEA, NULL,
			                             &Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP_CREATED_OBJECT, NULL, NULL, NULL);
		}
		else
		{
			return 1;
		}
	}
	LHPoint pos;
	GLandscape::ConvertMapCoordToLandscapePoint(plans[0].ObjectToActOn->Pos, pos);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4278))
	                                 SubArgumentPointAndFloat(pos, creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsPoint, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4279)) SubArgumentInteger(0x61),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForGiveWoodFromTreeToBuildingSite(unsigned long action_argument)
{
	return ConstructSubActionsForGiveWoodFromTreeToStoragePit(action_argument);
}

int CreatureAgenda::ConstructSubActionsForRepositionObjectToUseNearObjectToActOn(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried == NULL || !carried->IsTree(creature))
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4295))
		                                 SubArgumentObject(plans[0].ObjectToUse),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4298))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.0f),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4299))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.0f),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4300)) SubArgumentInteger(0x61), NULL,
	                             NULL);
	if (plans[0].ObjectToActOn != NULL && plans[0].ObjectToActOn->GetPointer() != NULL)
	{
		Tree* tree = dynamic_cast<Tree*>(plans[0].ObjectToActOn->GetPointer());
		if (tree != NULL)
			creature->RecentTrees.Add(tree);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForDanceOutsideWorshipSite(unsigned long param_1)
{
	float    distance = min(creature->GetHeight() * 6.0f, 50.0f);
	GPlayer* player = creature->GetPlayer();
	if (player != NULL)
	{
		CreatureBelief* heart = creature->mind->AddBeliefAboutObject(creature, player->citadel.Get()->heart.Get());
		plans[0].ObjectToActOn = heart;
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4322))
		                                 SubArgumentObjectAndFloat(heart, distance),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_START_THE_DANCE, NULL, NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4324))
		                                 SubArgumentObjectAndFloat(heart, 2.0f),
		                             &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DANCE,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4325))
		                                 SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(60.0f)),
		                             NULL, NULL);
		return 0;
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForDanceAroundArtefact(unsigned long param_1)
{
	float distance = 4.0f * creature->GetHeight() < 50.0f ? 4.0f * creature->GetHeight() : 50.0f;
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4336))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, distance),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_START_THE_DANCE, NULL, NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DANCE,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4338))
	                                 SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(60.0f)),
	                             NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForStealSpell(unsigned long param_1)
{
	if (creature->GetPlayer() != NULL)
	{
		SPELL_SEED_TYPE type = creature->ChooseSpellSeedTypeToSteal(plans[0].ObjectToActOn->GetPointer());
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4354))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 40.0f),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4355))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 1.4f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(
			CREATURE_SUB_STATE_ACTIONS_STATIC_ACTION,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4356)) SubArgumentIntegerAndFloat(0x2c, 3.0f), NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REMOVE_AND_CREATE_SPELL_FROM_TOTEM_STATUE,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4357))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, type),
		                             NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP_CREATED_OBJECT, NULL, NULL, NULL);
		Town* town = creature->FindTownBelongingToMeWhichNeedsSpell(type);
		if (town != NULL)
		{
			TotemStatue* statue = town->GetTotemStatue();
			if (statue != NULL)
			{
				CreatureBelief* belief = creature->mind->AddBeliefAboutObject(creature, statue);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4366))
				                                 SubArgumentObjectAndFloat(belief, 40.0f),
				                             &Creature::LookWhileGoingTowardsObject, NULL);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4367))
				                                 SubArgumentObjectAndFloat(belief, 1.4f),
				                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionSmile);
				SubActionAgenda.AddMainSubAction(
					CREATURE_SUB_STATE_ACTIONS_DISCARD,
					new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4368)) SubArgumentInteger(0x61), NULL, NULL);
				SubActionAgenda.AddSubAction(
					CREATURE_SUB_STATE_ACTIONS_ADD_AND_DESTROY_SPELL_FROM_TOTEM_STATUE,
					new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4369)) SubArgumentObject(belief), NULL, NULL);
				return 0;
			}
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForStealScaffold(unsigned long param_1)
{
	LHPoint home;
	GLandscape::ConvertMapCoordToLandscapePoint(creature->HomePos, home);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4383))
	                                 SubArgumentObject(plans[0].ObjectToActOn),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4384))
	                                 SubArgumentPointAndFloat(home, creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsPoint, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4385)) SubArgumentInteger(0x61),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForCatchFireball(unsigned long param_1)
{
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForTellCreatureToSodOff(unsigned long param_1)
{
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4399)) == 0)
	{
		return ConstructSubActionsForFight(param_1);
	}
	Creature* other = dynamic_cast<Creature*>(plans[0].ObjectToActOn->GetPointer());
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4404))
	                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 2),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionPlayfulness);
	SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_DEMOBILISE_OBJECT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4406)) SubArgumentObject(plans[0].ObjectToActOn), NULL, NULL);
	CreatureBelief* belief = other->mind->AddBeliefAboutObject(other, creature);
	SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4408))
	                             SubArgumentObjectAndFloat(belief, 0.1f),
	                         &Creature::LookAtObjectArgument, &Creature::SetFaceForActionGrimace);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4409))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 1.4f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionSmile);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4410)) SubArgumentInteger(0x35), NULL,
	                             &Creature::SetFaceForActionAmazed);
	LHPoint direction = other->GetCreature3D()->GetPos() - creature->GetCreature3D()->GetPos();
	LHPoint target = other->GetCreature3D()->GetPos() + direction * 1.0f;
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4413))
	                                     SubArgumentPointAndFloat(target, 3.0f),
	                                 &Creature::LookAtPosition, &Creature::SetFaceForActionGrimace);
	SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4414)) SubArgumentInteger(0x38), NULL,
	                         NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4415)) SubArgumentInteger(0x35), NULL,
	                             &Creature::SetFaceForActionAmazed);
	SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4416))
	                             SubArgumentPointAndFloat(target, 2.0f * other->GetHeight()),
	                         &Creature::LookWhileGoingTowardsPoint, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4417))
	                                 SubArgumentObject(plans[0].ObjectToActOn),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4418)) SubArgumentInteger(0x38), NULL,
	                         NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4419)) SubArgumentInteger(0x35), NULL,
	                             &Creature::SetFaceForActionAmazed);
	SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_REMOBILISE_OBJECT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4420)) SubArgumentObject(plans[0].ObjectToActOn), NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForOrderFriendAround(unsigned long param_1)
{
	Creature* other = dynamic_cast<Creature*>(plans[0].ObjectToActOn->GetPointer());
	if (other != NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4429))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 3),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionPlayfulness);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DEMOBILISE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4431))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             NULL, NULL);
		CreatureBelief* belief = other->mind->AddBeliefAboutObject(other, creature);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4433))
		                             SubArgumentObjectAndFloat(belief, 0.1f),
		                         &Creature::LookAtObjectArgument, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4434))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 1.4f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionSmile);
		LHPoint   direction = other->GetCreature3D()->GetPos() - creature->GetCreature3D()->GetPos();
		LHPoint   target = other->GetCreature3D()->GetPos() + direction * 1.0f;
		MapCoords coords(target);
		float     radius = other->Get2DRadius() * 4.0f;
		if (other->FindClearArea(&coords, radius, 0))
		{
			target = coords.GetLHPoint();
			SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
			                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4443))
			                                     SubArgumentPointAndFloat(target, 3.0f),
			                                 &Creature::LookAtPosition, &Creature::SetFaceForActionGrimace);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4444)) SubArgumentInteger(0x37),
			                         NULL, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4445))
			                                 SubArgumentInteger(0x37),
			                             NULL, &Creature::SetFaceForActionAmazed);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4446))
			                             SubArgumentPointAndFloat(target, 2.0f * other->GetHeight()),
			                         &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4447))
			                                 SubArgumentObject(plans[0].ObjectToActOn),
			                             &Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_STATIC_ACTION,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4448))
			                             SubArgumentIntegerAndFloat(0x26, 4.0f),
			                         NULL, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4449))
			                                 SubArgumentInteger(0x37),
			                             NULL, &Creature::SetFaceForActionAmazed);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REMOBILISE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4450))
			                                 SubArgumentObject(plans[0].ObjectToActOn),
			                             NULL, NULL);
			return 0;
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForTakeFoodFromFieldHome(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried == NULL || !carried->CanBeEatenByCreature(creature))
	{
		LHPoint pos;
		GLandscape::ConvertMapCoordToLandscapePoint(plans[0].ObjectToActOn->GetPos(), pos);
		belief = plans[0].ObjectToActOn;
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4466))
		                                 SubArgumentPointAndFloat(pos, creature->GetHeight()),
		                             NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4467))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
		                             NULL, NULL);
		CreatureBelief* field = plans[0].ObjectToActOn;
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CLEAR_OBJECT_TO_ACT_ON, NULL, NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CREATE_PICK_UP_THEN_REMOVE,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4470))
		                                 SubArgumentObjectAndInteger(field, 0x11),
		                             NULL, NULL);
	}
	LHPoint home;
	GLandscape::ConvertMapCoordToLandscapePoint(creature->HomePos, home);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4474))
	                                 SubArgumentPointAndFloat(home, creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsPoint, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4475)) SubArgumentInteger(0x61),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForTakeFishHome(unsigned long param_1)
{
	Object* carried = creature->physical->GetObjectCarried();
	if (carried == NULL || !carried->CanBeEatenByCreature(creature))
	{
		FishFarm* farm = FishFarm::FindClosestFishFarm(creature->Pos, 600.0f);
		if (farm != NULL)
		{
			LHPoint pos = farm->field_0x88 != NULL ? farm->field_0x88->field_0x48 : farm->Pos.GetLHPoint();
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4489))
			                                 SubArgumentPointAndFloat(pos, max(creature->GetHeight(), 15.0f)),
			                             &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CREATE_FISH_FROM_SEA, NULL,
			                             &Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP_CREATED_OBJECT, NULL, NULL, NULL);
		}
		else
		{
			return 1;
		}
	}
	LHPoint home;
	GLandscape::ConvertMapCoordToLandscapePoint(creature->HomePos, home);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4500))
	                                 SubArgumentPointAndFloat(home, creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsPoint, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4501)) SubArgumentInteger(0x61),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForWaveAtFriend(unsigned long param_1)
{
	Creature* other = dynamic_cast<Creature*>(plans[0].ObjectToActOn->GetPointer());
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4509))
	                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 3),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionPlayfulness);
	SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_DEMOBILISE_OBJECT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4511)) SubArgumentObject(plans[0].ObjectToActOn), NULL, NULL);
	CreatureBelief* belief = other->mind->AddBeliefAboutObject(other, creature);
	SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4513))
	                             SubArgumentObjectAndFloat(belief, 0.1f),
	                         &Creature::LookAtObjectArgument, &Creature::SetFaceForActionGrimace);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4514))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 1.4f),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionSmile);
	SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4515)) SubArgumentInteger(0x48), NULL,
	                         NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4516)) SubArgumentInteger(0x48),
	                                 NULL, NULL);
	SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_REMOBILISE_OBJECT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4517)) SubArgumentObject(plans[0].ObjectToActOn), NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForDeadForever(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_FAINT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4523)) SubArgumentInteger(0x6a),
	                                 NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4524))
	                                 SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(864000.0f)),
	                             NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForStealAndPutInTown(unsigned long param_1)
{
	GPlayer* player = creature->GetPlayer();
	if (player != NULL)
	{
		Town* nearest = NULL;
		float nearestDistance = MaxFloat;
		FOREACH_LH_LIST_HEAD(Town, town, player->towns)
		{
			float distance = GUtils::GetDistanceInMetres(town->Pos, creature->Pos);
			if (distance < nearestDistance)
			{
				nearestDistance = distance;
				nearest = town;
			}
		}
		if (nearest != NULL)
		{
			StoragePit* pit = nearest->GetStoragePit();
			if (pit != NULL)
			{
				CreatureBelief* belief = creature->mind->AddBeliefAboutObject(creature, pit);
				if (belief != NULL)
				{
					if (creature->physical->GetObjectCarried() == NULL)
					{
						SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
						                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4555))
						                                 SubArgumentObject(plans[0].ObjectToActOn),
						                             &Creature::LookWhileGoingTowardsObject, NULL);
					}
					SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
					                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4557))
					                                 SubArgumentObjectAndFloat(belief, 3.0f * creature->GetHeight()),
					                             &Creature::LookWhileGoingTowardsObject, NULL);
					SubActionAgenda.AddSubAction(
						CREATURE_SUB_STATE_ACTIONS_DISCARD,
						new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4558)) SubArgumentInteger(0x61), NULL, NULL);
				}
			}
		}
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForStealAndPutByCitadel(unsigned long param_1)
{
	if (creature->GetPlayer() != NULL)
	{
		if (creature->physical->GetObjectCarried() == NULL)
		{
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4578))
			                                 SubArgumentObject(plans[0].ObjectToActOn),
			                             &Creature::LookWhileGoingTowardsObject, NULL);
		}
		creature->mind->agenda.Destination = creature->HomePos;
		SubActionAgenda.AddMainSubAction(
			CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4581))
				SubArgumentPointAndFloat(creature->HomePos.GetLHPoint(), 2.0f * creature->GetHeight()),
			&Creature::LookWhileGoingTowardsPoint, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4582)) SubArgumentInteger(0x61),
		                             NULL, NULL);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForBreakRock(unsigned long param_1)
{
	if (creature->physical->GetObjectCarried() == NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4596))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
	}
	MapCoords coords = creature->Pos;
	coords.SetWholeX((long)((coords.MetersX() + 3.0f * creature->GetHeight()) * (float)0x10000 / MetresPerMapCell));
	coords.SetWholeZ((long)((coords.MetersZ() + 3.0f * creature->GetHeight()) * (float)0x10000 / MetresPerMapCell));
	LHPoint pos;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, pos);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW_AT_POS,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4603)) SubArgumentPoint(pos),
	                                 &Creature::LookWhileGoingTowardsPoint, NULL);
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_SHATTER_ROCK,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4604)) SubArgumentObject(plans[0].ObjectToActOn), NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForNoticeStealingAction(unsigned long param_1)
{
	if (creature->physical->GetObjectCarried() == NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4613))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f),
		                             &Creature::LookAtFlyingObject, &Creature::SetFaceForActionAmazed);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_LOOK_AT_CAMERA,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4616))
	                                     SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.0f)),
	                                 &Creature::LookAtCamera, &Creature::SetFaceForActionCuriosity);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_LOOK_AT_CAMERA,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4618))
	                                     SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.0f)),
	                                 &Creature::LookAtCamera, &Creature::SetFaceForActionCuriosity);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4619)) SubArgumentInteger(0x3c), NULL,
	                             NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForNoticePlayfulAction(unsigned long param_1)
{
	if (creature->physical->GetObjectCarried() == NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4628))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f),
		                             &Creature::LookAtFlyingObject, &Creature::SetFaceForActionAmazed);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_LOOK_AT_CAMERA,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4631))
	                                     SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.0f)),
	                                 &Creature::LookAtCamera, &Creature::SetFaceForActionCuriosity);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_LOOK_AT_CAMERA,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4633))
	                                     SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.0f)),
	                                 &Creature::LookAtCamera, &Creature::SetFaceForActionCuriosity);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4634)) SubArgumentInteger(0x37), NULL,
	                             NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForEatFromFieldWithFriend(unsigned long param_1)
{
	CreatureBelief* friendBelief = plans[0].ObjectToActOn;
	if (friendBelief != NULL)
	{
		Creature* other = friendBelief->GetPointer()->CastCreature();
		if (other != NULL)
		{
			CreatureBelief* field = creature->GetNearbyObject(&GameThingWithPos::IsField, NULL, NULL);
			if (field != NULL)
			{
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4650))
				                                 SubArgumentObjectAndInteger(friendBelief, 0x10),
				                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionPlayfulness);
				CreatureBelief* otherBelief = other->mind->AddBeliefAboutObject(other, field->GetPointer());
				LHPoint         pos;
				GLandscape::ConvertMapCoordToLandscapePoint(field->Pos, pos);
				pos.x -= 10.0f;
				SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
				                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4656))
				                             SubArgumentPointAndFloat(pos, creature->GetHeight()),
				                         NULL, NULL);
				pos.x += 20.0f;
				belief = field;
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4659))
				                                 SubArgumentPointAndFloat(pos, creature->GetHeight()),
				                             NULL, NULL);
				SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
				                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4660))
				                             SubArgumentObjectAndFloat(otherBelief, 0.1f),
				                         NULL, NULL);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4661))
				                                 SubArgumentObjectAndFloat(field, 0.1f),
				                             NULL, NULL);
				SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_CREATE_PICK_UP_THEN_REMOVE,
				                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4662))
				                             SubArgumentObjectAndInteger(otherBelief, 0x11),
				                         NULL, NULL);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CREATE_PICK_UP_THEN_REMOVE,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4663))
				                                 SubArgumentObjectAndInteger(field, 0x11),
				                             NULL, NULL);
				SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_EAT, NULL, NULL, NULL);
				SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_EAT, NULL, NULL, NULL);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4666))
				                                 SubArgumentObjectAndFloat(friendBelief, 0.1f),
				                             NULL, NULL);
				SubActionAgenda.AddSubAction(
					CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
					new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4667)) SubArgumentInteger(0x37), NULL, NULL);
				SubActionAgenda.AddSubAction(
					CREATURE_SUB_STATE_ACTIONS_REMOBILISE_OBJECT,
					new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4668)) SubArgumentObject(friendBelief), NULL, NULL);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4669))
				                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
				                             &Creature::LookAtObjectFlutteringEyelids, NULL);
				SubActionAgenda.AddSubAction(
					CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
					new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4670)) SubArgumentInteger(0x37), NULL, NULL);
				return 0;
			}
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForGetFriendToGiveMeFoodFromField(unsigned long param_1)
{
	CreatureBelief* friendBelief = plans[0].ObjectToActOn;
	if (friendBelief != NULL)
	{
		Creature* other = friendBelief->GetPointer()->CastCreature();
		if (other != NULL)
		{
			CreatureBelief* field = creature->GetNearbyObject(&GameThingWithPos::IsField, NULL, NULL);
			if (field != NULL)
			{
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4691))
				                                 SubArgumentObjectAndInteger(friendBelief, 0x10),
				                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionPlayfulness);
				CreatureBelief* fieldBelief = other->mind->AddBeliefAboutObject(other, field->GetPointer());
				LHPoint         pos;
				GLandscape::ConvertMapCoordToLandscapePoint(field->Pos, pos);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4695))
				                                 SubArgumentObjectAndFloat(field, 2.0f),
				                             NULL, &Creature::SetFaceForActionSmile);
				CreatureBelief* otherBelief = other->mind->AddBeliefAboutObject(other, creature);
				SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
				                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4697))
				                             SubArgumentObjectAndFloat(otherBelief, 1.0f),
				                         NULL, NULL);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4698))
				                                 SubArgumentObjectAndFloat(field, creature->GetHeight() * 3.0f),
				                             &Creature::LookWhileGoingTowardsObject, NULL);
				SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
				                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4699))
				                             SubArgumentPointAndFloat(pos, creature->GetHeight()),
				                         NULL, NULL);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_CREATURE_TO_BE_FREE,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4700))
				                                 SubArgumentObjectAndInteger(friendBelief, 4),
				                             NULL, NULL);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4701)) SubArgumentInteger(
												 GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.0f)),
				                             NULL, NULL);
				SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
				                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4702))
				                             SubArgumentObjectAndFloat(field, 0.1f),
				                         NULL, NULL);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4703))
				                                 SubArgumentObjectAndFloat(field, 0.1f),
				                             NULL, NULL);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4704))
				                                 SubArgumentObjectAndFloat(field, 2.0f),
				                             NULL, &Creature::SetFaceForActionSmile);
				SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_CREATE_PICK_UP_THEN_REMOVE,
				                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4705))
				                             SubArgumentObjectAndInteger(fieldBelief, 0x11),
				                         NULL, NULL);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4706)) SubArgumentInteger(
												 GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(2.0f)),
				                             NULL, NULL);
				SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
				                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4707))
				                             SubArgumentObjectAndFloat(otherBelief, 0.0f),
				                         &Creature::LookWhileGoingTowardsObject, NULL);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4708)) SubArgumentInteger(
												 GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.0f)),
				                             NULL, NULL);
				SubActionAgenda.AddOrder(
					other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
					new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4709)) SubArgumentObjectAndFloat(otherBelief, 0.1f),
					&Creature::LookAtObjectFlutteringEyelids, &Creature::SetFaceForActionCompassion);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4710)) SubArgumentInteger(
												 GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.0f)),
				                             NULL, NULL);
				SubActionAgenda.AddOrder(
					other, CREATURE_SUB_STATE_ACTIONS_DISCARD,
					new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4711)) SubArgumentInteger(0x61), NULL, NULL);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_CREATURE_TO_BE_FREE,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4712))
				                                 SubArgumentObjectAndInteger(friendBelief, 4),
				                             NULL, NULL);
				SubActionAgenda.AddSubAction(
					CREATURE_SUB_STATE_ACTIONS_CREATED_HAND_OBJECT_EX_NIHILO,
					new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4713)) SubArgumentInteger(0x11), NULL, NULL);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP_CREATED_OBJECT, NULL, NULL, NULL);
				SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_EAT, NULL, NULL, NULL);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4716))
				                                 SubArgumentObjectAndFloat(friendBelief, 0.1f),
				                             NULL, NULL);
				SubActionAgenda.AddSubAction(
					CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
					new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4717)) SubArgumentInteger(0x37), NULL, NULL);
				SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_DESTROY_CREATED_OBJECT, NULL, NULL, NULL);
				SubActionAgenda.AddSubAction(
					CREATURE_SUB_STATE_ACTIONS_REMOBILISE_OBJECT,
					new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4719)) SubArgumentObject(friendBelief), NULL, NULL);
				return 0;
			}
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForEatFishWithFriend(unsigned long param_1)
{
	CreatureBelief* friendBelief = plans[0].ObjectToActOn;
	if (friendBelief != NULL)
	{
		Creature* other = friendBelief->GetPointer()->CastCreature();
		if (other != NULL)
		{
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4737))
			                                 SubArgumentObjectAndInteger(friendBelief, 0x10),
			                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionPlayfulness);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4738))
			                                 SubArgumentObjectAndFloat(friendBelief, creature->GetHeight() * 2.5f),
			                             &Creature::LookWhileGoingTowardsObject,
			                             &Creature::SetFaceForActionPlayfulness);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_MOVE_TO_WATER, NULL, NULL, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_WATER, NULL, NULL, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_CREATE_FISH_FROM_SEA, NULL, NULL, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CREATE_FISH_FROM_SEA, NULL, NULL, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_PICKUP_CREATED_OBJECT, NULL, NULL, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP_CREATED_OBJECT, NULL, NULL, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_EAT, NULL, NULL, NULL);
			SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_EAT, NULL, NULL, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4747))
			                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
			                             &Creature::LookAtObjectFlutteringEyelids, NULL);
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4748)) SubArgumentInteger(0x37), NULL, NULL);
			return 0;
		}
	}
	return 1;
}

int CreatureAgenda::ConstructSubActionsForGetFriendToGiveMeFish(unsigned long param_1)
{
	CreatureBelief* friendBelief = plans[0].ObjectToActOn;
	if (friendBelief != NULL)
	{
		Creature* other = friendBelief->GetPointer()->CastCreature();
		MapCoords coast;
		MapCoords sea;
		int foundCoast = creature->mind->ExplorationMap.FindNearest(REGION_TYPE_COAST, creature->Pos, &coast,
		                                                            PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 1);
		int foundSea = creature->mind->ExplorationMap.FindNearest(REGION_TYPE_SEA, coast, &sea,
		                                                          PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 1);
		if (other != NULL && foundSea && foundCoast)
		{
			LHPoint coastPos;
			GLandscape::ConvertMapCoordToLandscapePoint(coast, coastPos);
			LHPoint seaPos;
			GLandscape::ConvertMapCoordToLandscapePoint(sea, seaPos);
			CreatureBelief* otherBelief = other->mind->AddBeliefAboutObject(other, creature);
			LHPoint         direction = creature->GetCreature3D()->GetPos() - coastPos;
			if ((float)fabs(direction.x) > 0.001f || (float)fabs(direction.z) > 0.001f)
			{
				direction.FastNormalizeInline();
			}
			else
			{
				direction.x = 1.0f;
				direction.y = 0.0f;
				direction.z = 1.0f;
			}
			LHPoint target = coastPos + direction * creature->GetHeight() * 4.0f;
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4782))
			                                 SubArgumentObjectAndInteger(friendBelief, 0x10),
			                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionPlayfulness);
			SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
			                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4783))
			                                     SubArgumentPointAndFloat(seaPos, 2.0f),
			                                 &Creature::LookAtPosition, &Creature::SetFaceForActionAmazed);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4784))
			                             SubArgumentPointAndFloat(coastPos, other->GetHeight()),
			                         &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4785))
			                                 SubArgumentPointAndFloat(target, creature->GetHeight() * 5.0f),
			                             &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_CREATURE_TO_BE_FREE,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4786))
			                                 SubArgumentObjectAndInteger(friendBelief, 4),
			                             NULL, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4787)) SubArgumentPoint(seaPos),
			                         &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_CREATURE_TO_BE_FREE,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4788))
			                                 SubArgumentObjectAndInteger(friendBelief, 4),
			                             NULL, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_CREATE_FISH_FROM_SEA,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4789)) SubArgumentPoint(seaPos),
			                         &Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_CREATURE_TO_BE_FREE,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4790))
			                                 SubArgumentObjectAndInteger(friendBelief, 4),
			                             NULL, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_PICKUP_CREATED_OBJECT, NULL, NULL, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_CREATURE_TO_BE_FREE,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4792))
			                                 SubArgumentObjectAndInteger(friendBelief, 4),
			                             NULL, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4793))
			                             SubArgumentObjectAndFloat(otherBelief, 0.0f),
			                         &Creature::LookWhileGoingTowardsObject, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_CREATURE_TO_BE_FREE,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4794))
			                                 SubArgumentObjectAndInteger(friendBelief, 4),
			                             NULL, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4795))
			                             SubArgumentObjectAndFloat(otherBelief, 0.1f),
			                         &Creature::LookAtObjectFlutteringEyelids, &Creature::SetFaceForActionCompassion);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4796)) SubArgumentInteger(
											 GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.0f)),
			                             NULL, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_DISCARD,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4797)) SubArgumentInteger(0x61),
			                         NULL, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_CREATURE_TO_BE_FREE,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4798))
			                                 SubArgumentObjectAndInteger(friendBelief, 4),
			                             NULL, NULL);
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_CREATED_HAND_OBJECT_EX_NIHILO,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4799)) SubArgumentInteger(0x11), NULL, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP_CREATED_OBJECT, NULL, NULL, NULL);
			SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_EAT, NULL, NULL, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4802))
			                                 SubArgumentObjectAndFloat(friendBelief, 0.1f),
			                             NULL, NULL);
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4803)) SubArgumentInteger(0x37), NULL, NULL);
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_DESTROY_CREATED_OBJECT, NULL, NULL, NULL);
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_REMOBILISE_OBJECT,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4805)) SubArgumentObject(friendBelief), NULL, NULL);
			return 0;
		}
	}
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForAttackTownWithFriend(unsigned long param_1)
{
	CreatureBelief* friendBelief = plans[0].ObjectToActOn;
	if (friendBelief != NULL)
	{
		Creature*       other = friendBelief->GetPointer()->CastCreature();
		CreatureBelief* otherBelief = other->mind->AddBeliefAboutObject(other, creature);
		if (other != NULL)
		{
			Town*       town = creature->Pos.GetNearestTown(MaxFloat);
			StoragePit* pit = town->GetStoragePit();
			if (town != NULL && pit != NULL)
			{
				CreatureBelief* townBelief = creature->mind->GetBeliefAboutObject(town);
				CreatureBelief* otherTownBelief = other->mind->AddBeliefAboutObject(other, town);
				CreatureBelief* pitBelief = creature->mind->AddBeliefAboutObject(creature, pit);
				CreatureBelief* otherPitBelief = other->mind->AddBeliefAboutObject(other, pit);
				if (townBelief != NULL)
				{
					SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
					                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4834))
					                                 SubArgumentObjectAndInteger(friendBelief, 0x10),
					                             &Creature::LookAtObjectArgument,
					                             &Creature::SetFaceForActionPlayfulness);
					SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
					                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4835))
					                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
					                             &Creature::LookAtObjectFlutteringEyelids, NULL);
					SubActionAgenda.AddSubAction(
						CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
						new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4836)) SubArgumentInteger(0x37), NULL, NULL);
					SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
					                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4837))
					                                     SubArgumentPointAndFloat(town->Pos.GetLHPoint(), 2.0f),
					                                 &Creature::LookAtPosition, &Creature::SetFaceForActionPlayfulness);
					float distance = 2.0f * (pit->Get2DRadius() + creature->GetHeight());
					SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
					                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4839))
					                             SubArgumentObjectAndFloat(otherPitBelief, distance),
					                         &Creature::LookWhileGoingTowardsObject, NULL);
					SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
					                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4840))
					                                 SubArgumentObjectAndFloat(pitBelief, distance),
					                             &Creature::LookWhileGoingTowardsObject, NULL);
					SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
					                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4841))
					                             SubArgumentObjectAndFloat(otherBelief, 0.1f),
					                         NULL, NULL);
					SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
					                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4842))
					                                 SubArgumentObjectAndFloat(friendBelief, 0.1f),
					                             NULL, NULL);
					SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_APPLY_DESIRE_TO_OBJECT,
					                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4843))
					                             SubArgumentObjectAndInteger(otherTownBelief, 2),
					                         NULL, NULL);
					SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_APPLY_DESIRE_TO_OBJECT,
					                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4844))
					                                 SubArgumentObjectAndInteger(townBelief, 2),
					                             NULL, NULL);
					return 0;
				}
			}
		}
	}
	creature->FinishActionUnsuccessfully("no object to use", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForHelpTownWithFriend(unsigned long param_1)
{
	CreatureBelief* friendBelief = plans[0].ObjectToActOn;
	if (friendBelief != NULL)
	{
		Creature*       other = friendBelief->GetPointer()->CastCreature();
		CreatureBelief* otherBelief = other->mind->AddBeliefAboutObject(other, creature);
		if (other != NULL)
		{
			Town*       town = creature->Pos.GetNearestTown(MaxFloat);
			StoragePit* pit = town->GetStoragePit();
			if (town != NULL && pit != NULL)
			{
				CreatureBelief* townBelief = creature->mind->GetBeliefAboutObject(town);
				CreatureBelief* otherTownBelief = other->mind->AddBeliefAboutObject(other, town);
				CreatureBelief* pitBelief = creature->mind->AddBeliefAboutObject(creature, pit);
				CreatureBelief* otherPitBelief = other->mind->AddBeliefAboutObject(other, pit);
				if (townBelief != NULL)
				{
					SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
					                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4874))
					                                 SubArgumentObjectAndInteger(friendBelief, 0x10),
					                             &Creature::LookAtObjectArgument,
					                             &Creature::SetFaceForActionPlayfulness);
					SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
					                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4875))
					                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
					                             &Creature::LookAtObjectFlutteringEyelids, NULL);
					SubActionAgenda.AddSubAction(
						CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
						new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4876)) SubArgumentInteger(0x37), NULL, NULL);
					SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_POINT,
					                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4877))
					                                     SubArgumentPointAndFloat(town->Pos.GetLHPoint(), 2.0f),
					                                 &Creature::LookAtPosition, &Creature::SetFaceForActionPlayfulness);
					float distance = 2.0f * (pit->Get2DRadius() + creature->GetHeight());
					SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
					                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4879))
					                             SubArgumentObjectAndFloat(otherPitBelief, distance),
					                         &Creature::LookWhileGoingTowardsObject, NULL);
					SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
					                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4880))
					                                 SubArgumentObjectAndFloat(pitBelief, distance),
					                             &Creature::LookWhileGoingTowardsObject, NULL);
					SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
					                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4881))
					                             SubArgumentObjectAndFloat(otherBelief, 0.1f),
					                         NULL, NULL);
					SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
					                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4882))
					                                 SubArgumentObjectAndFloat(friendBelief, 0.1f),
					                             NULL, NULL);
					SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_APPLY_DESIRE_TO_OBJECT,
					                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4883))
					                             SubArgumentObjectAndInteger(otherTownBelief, 1),
					                         NULL, NULL);
					SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_APPLY_DESIRE_TO_OBJECT,
					                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4884))
					                                 SubArgumentObjectAndInteger(townBelief, 1),
					                             NULL, NULL);
					return 0;
				}
			}
		}
	}
	creature->FinishActionUnsuccessfully("no object to use", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForExamineObjectInHand(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_HELD_OBJECT_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4897)) SubArgumentInteger(0x67),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCuriosity);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForEatObjectInHand(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_EAT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4904)) SubArgumentObject(plans[0].ObjectToActOn), NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForStrokeObjectInHand(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_HELD_OBJECT_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4911)) SubArgumentInteger(0x64),
	                                 &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_HEAL,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4912))
	                                 SubArgumentObject(plans[0].ObjectToActOn),
	                             NULL, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4913)) SubArgumentInteger(0x61), NULL,
	                             &Creature::SetFaceForActionCompassion);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForThrowObjectInHand(unsigned long param_1)
{
	GInterfaceStatus* status = creature ? creature->GetNearestHandInterfaceStatus() : NULL;
	if (status != NULL)
	{
		LHPoint pos = status->GetCameraPos();
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW_AT_POS,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4926)) SubArgumentPoint(pos),
		                                 &Creature::LookAtCamera, NULL);
		return 0;
	}
	return 1;
}

int CreatureAgenda::ConstructSubActionsForGetAttentionFromFriend(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4935))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectFlutteringEyelids, NULL);
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4936)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4938))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.4f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForMoodSad);
	}
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4940)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4942)) SubArgumentInteger(0x48),
		                             NULL, NULL);
	}
	if (GRand::GameRand(3, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4944)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4946)) SubArgumentInteger(0x45),
		                             NULL, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4948))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectFlutteringEyelids, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4949)) SubArgumentInteger(0x38),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForExamineOtherCreatureWithFriend(unsigned long param_1)
{
	if (plans[0].ObjectToUse != NULL)
	{
		Creature* other = dynamic_cast<Creature*>(plans[0].ObjectToActOn->GetPointer());
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4960))
		                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 3),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionPlayfulness);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DEMOBILISE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4961))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             NULL, NULL);
		CreatureBelief* belief = other->mind->AddBeliefAboutObject(other, plans[0].ObjectToUse->GetPointer());
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4963))
		                             SubArgumentObjectAndFloat(belief, 0.1f),
		                         &Creature::LookAtObjectArgument, &Creature::SetFaceForActionPlayfulness);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4964))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToUse, 0.1f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionPlayfulness);
		SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
		                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4965))
		                             SubArgumentObjectAndFloat(belief, 1.0f),
		                         &Creature::LookAtObjectArgument, &Creature::SetFaceForActionPlayfulness);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4966))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToUse, 1.0f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionPlayfulness);
		if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4967)) == 0)
		{
			SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4969)) SubArgumentInteger(0x37),
			                         NULL, NULL);
		}
		if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4971)) == 0)
		{
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4973)) SubArgumentInteger(0x37), NULL, NULL);
		}
		return 0;
	}
	creature->FinishActionUnsuccessfully("no object to use", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForGiveFriendToy(unsigned long action_argument)
{
	return ConstructSubActionsForGiveToCreature(action_argument);
}

int CreatureAgenda::ConstructSubActionsForSacrifice(unsigned long param_1)
{
	if (creature->GetCitadel() != NULL)
	{
		WorshipSite* site;
		for (uint32_t i = 0; i < MAX_WORSHIP_SITES; i++)
		{
			site = creature->GetCitadel()->WorshipSites[i];
			if (site != NULL)
			{
				break;
			}
		}
		if (site != NULL)
		{
			LHPoint pos = site->GetTotemPos().GetLHPoint();
			Object* carried = creature->physical->GetObjectCarried();
			if (carried == NULL || !carried->IsLiving(creature))
			{
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5006))
				                                 SubArgumentObject(plans[0].ObjectToActOn),
				                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionAnger);
			}
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5008))
			                                 SubArgumentPointAndFloat(pos, creature->GetHeight() * 3.0f),
			                             &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5009)) SubArgumentPoint(pos),
			                             &Creature::LookAtPosition, NULL);
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_DISCARD,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5010)) SubArgumentInteger(0x61), NULL, NULL);
			return 0;
		}
	}
	creature->FinishActionUnsuccessfully("no object to use", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForSetFireToObject(unsigned long param_1)
{
	if (plans[0].ObjectToUse != NULL)
	{
		if (creature->physical->GetObjectCarried() == NULL)
		{
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5025))
			                                 SubArgumentObject(plans[0].ObjectToUse),
			                             &Creature::LookWhileGoingTowardsObject, NULL);
		}
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5027))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 1.0f),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5028))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
		                             &Creature::LookAtObjectFlutteringEyelids, &Creature::SetFaceForActionAnger);
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5029))
		                                     SubArgumentInteger(0x61),
		                                 NULL, &Creature::SetFaceForActionSmile);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_OBJECT_TO_BE_IN_MAP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5030))
		                                 SubArgumentObject(plans[0].ObjectToUse),
		                             &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5031))
		                                 SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.0f)),
		                             NULL, &Creature::SetFaceForActionAnger);
		return 0;
	}
	creature->FinishActionUnsuccessfully("no object to use", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForWatchPlayer(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WATCH_PLAYER_WHILE_HE_HAS_YOUR_ATTENTION, NULL,
	                             &Creature::LookAtPlayer, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForDropCowInStoragePit(unsigned long param_1)
{
	if (plans[0].ObjectToUse != NULL && dynamic_cast<Cow*>(plans[0].ObjectToUse->GetPointer()) != NULL)
	{
		CreatureBelief* cow = plans[0].ObjectToUse;
		Object*         carried = creature->physical->GetObjectCarried();
		if (carried == NULL || !carried->IsCow(creature))
		{
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5056)) SubArgumentObject(cow),
			                             &Creature::LookWhileGoingTowardsObject, NULL);
		}
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5058))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
		                             &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_THROW_POS,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5059))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, creature->GetHeight()),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CONSIDER_ACTION_COMPLETED, NULL, NULL, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CLEAR_OBJECT_TO_USE, NULL, NULL, NULL);
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW_IN_PILE,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5062))
		                                     SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0),
		                                 NULL, NULL);
		return 0;
	}
	creature->FinishActionUnsuccessfully("no cow found", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForCastShieldAroundTown(unsigned long action_argument)
{
	return ConstructSubActionsForCastShield(action_argument);
}

int CreatureAgenda::ConstructSubActionsForMakeDiscipleBreeder(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5079))
	                                 SubArgumentObject(plans[0].ObjectToActOn),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_HELD_OBJECT_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5080)) SubArgumentInteger(0x64),
	                                 &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MAKE_DISCIPLE,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5081))
	                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, VILLAGER_DISCIPLE_BREEDER),
	                             NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5082)) SubArgumentInteger(0x61), NULL,
	                             NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForPlayGameWithVillagers(unsigned long param_1)
{
	creature->FinishActionUnsuccessfully("not implemented", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForTakeVillagerHomeToSleep(unsigned long param_1)
{
	if (plans[0].ObjectToActOn != NULL)
	{
		Villager* villager = dynamic_cast<Villager*>(plans[0].ObjectToActOn->GetPointer());
		if (villager != NULL && villager->GetAbode() != NULL)
		{
			Object* carried = creature->physical->GetObjectCarried();
			if (carried == NULL || !carried->IsVillager(creature))
			{
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5104))
				                                 SubArgumentObject(plans[0].ObjectToActOn),
				                             &Creature::LookWhileGoingTowardsObject, NULL);
			}
			CreatureBelief* abode = creature->mind->AddBeliefAboutObject(creature, villager->GetAbode());
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5107))
			                                 SubArgumentObjectAndFloat(abode, 2.0f),
			                             &Creature::LookWhileGoingTowardsObject, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5108))
			                                 SubArgumentObjectAndFloat(abode, 0.1f),
			                             &Creature::LookAtObjectArgument, NULL);
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_DISCARD,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5109)) SubArgumentInteger(0x61), NULL, NULL);
			return 0;
		}
	}
	creature->FinishActionUnsuccessfully("invalid plan", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForKickBallAround(unsigned long param_1)
{
	for (unsigned long i = 0; i < GRand::GameRand(3, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5120)) + 2; i++)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5122))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.0f),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5123))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
		                             &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5124))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.0f),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_KICK_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5125))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookAtObjectArgument, NULL);
		if (GRand::GameRand(4, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5127)) == 0)
		{
			SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
			                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5129))
			                                     SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 1.0f),
			                                 &Creature::LookAtObjectArgument, &Creature::SetFaceForActionSmile);
		}
		else
		{
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_WAIT,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5133))
					SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
						0.4f + GRand::GameFloatRand(0.6f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5133)))),
				NULL, NULL);
		}
	}
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5136)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5138)) SubArgumentInteger(0x37),
		                             NULL, NULL);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForThrowBallAtObject(unsigned long param_1)
{
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5145)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5147)) SubArgumentInteger(0x37),
		                             NULL, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5149))
	                                 SubArgumentObject(plans[0].ObjectToUse),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_THROW_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5150))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, creature->GetHeight()),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5151))
	                                     SubArgumentObject(plans[0].ObjectToActOn),
	                                 &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
	if (GRand::GameRand(2, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5152)) == 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5154)) SubArgumentInteger(0x37),
		                             NULL, NULL);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForDanceOnYourOwnByTheSea(unsigned long param_1)
{
	MapCoords coast;
	MapCoords sea;
	creature->mind->ExplorationMap.FindNearest(REGION_TYPE_COAST, creature->Pos, &coast,
	                                           PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 1);
	creature->mind->ExplorationMap.FindNearest(REGION_TYPE_SEA, creature->Pos, &sea,
	                                           PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 1);
	LHPoint coastPos;
	GLandscape::ConvertMapCoordToLandscapePoint(coast, coastPos);
	LHPoint seaPos;
	GLandscape::ConvertMapCoordToLandscapePoint(sea, seaPos);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5167))
	                                 SubArgumentPointAndFloat(coastPos, creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsPoint, &Creature::SetFaceForActionSmile);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5168)) SubArgumentPoint(seaPos),
	                             &Creature::LookAtPosition, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_PRACTICE_DANCE,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5169)) SubArgumentFloat(20.0f),
	                                 NULL, &Creature::SetFaceForActionPlayfulness);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForDancePlayfullyWithVillagersWatching(unsigned long param_1)
{
	creature->FinishActionUnsuccessfully("invalid plan", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForDancePlayfullyWithVillagersParticipating(unsigned long param_1)
{
	creature->FinishActionUnsuccessfully("invalid plan", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForTellVillagersAStory(unsigned long param_1)
{
	creature->FinishActionUnsuccessfully("invalid plan", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForPlayfullyFrightenVillagers(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5197))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 3.0f * creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5198))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5199)) SubArgumentInteger(0x3d),
	                             &Creature::LookFrightened, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForCastAmusingSpellOnCreature(unsigned long param_1)
{
	uint32_t   numSpells = 0;
	MAGIC_TYPE spells[MAGIC_TYPE_LAST];
	for (MAGIC_TYPE spell = MAGIC_TYPE_CREATURE_SPELL_FREEZE; spell <= MAGIC_TYPE_CREATURE_SPELL_ITCHY;
	     spell = (MAGIC_TYPE)(spell + 1))
	{
		CreatureMental* mind = creature->mind;
		if (mind->ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_MAGIC, spell) &&
		    creature->HasEnoughEnergyToCastSpell(spell))
		{
			spells[numSpells] = spell;
			numSpells++;
		}
	}
	if (numSpells > 0)
	{
		MAGIC_TYPE magicType = spells[GRand::GameRand(numSpells, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5217))];
		if (GRand::GameRand(5, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5219)) == 0)
		{
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5221))
			                                 SubArgumentInteger(0x43),
			                             NULL, &Creature::SetFaceForActionPlayfulness);
		}
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5223)) SubArgumentObjectAndFloat(
										 plans[0].ObjectToActOn, creature->GetHeight() * 4.0f),
		                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionPlayfulness);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GET_AWAY_FROM_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5224)) SubArgumentObjectAndFloat(
										 plans[0].ObjectToActOn, 2.0f * creature->GetHeight()),
		                             &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5225))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
		uint32_t gesture = GMagicInfo::Infos[magicType]->GestureType;
		if (gesture != 0)
		{
			SubActionAgenda.AddSubAction(
				CREATURE_SUB_STATE_ACTIONS_GESTURE,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5229)) SubArgumentInteger(gesture), NULL, NULL);
		}
		SubActionAgenda.AddCastSpellSubAction(plans[0].ObjectToActOn, magicType);
		return 0;
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5234)) SubArgumentInteger(0x43), NULL,
	                             &Creature::SetFaceForActionPlayfulness);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForKickTree(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5241))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.0f),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5242))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_KICK_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5243))
	                                 SubArgumentObject(plans[0].ObjectToActOn),
	                             &Creature::LookAtObjectArgument, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForPlayfullyInteractWithVillager(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5250))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f * creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5251))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, NULL);
	if (GRand::GameRand(3, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5252)) > 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5254)) SubArgumentInteger(0x43),
		                             NULL, NULL);
	}
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FACIAL_ANIMATION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5256)) SubArgumentInteger(
									 GRand::GameRand(10, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5256)) + 0x10),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5257))
	                                     SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 5.0f),
	                                 &Creature::LookAtObjectArgument, &Creature::SetFaceForActionSmile);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FACIAL_ANIMATION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5258)) SubArgumentInteger(
									 GRand::GameRand(10, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5258)) + 0x10),
	                             &Creature::LookAtObjectArgument, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForPlayfullyKissVillager(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5266))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f * creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5267))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_SINGLE_KISS, NULL, NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForBringVillagerToWorshipSite(unsigned long param_1)
{
	if (plans[0].ObjectToUse != NULL && dynamic_cast<Villager*>(plans[0].ObjectToUse->GetPointer()) != NULL)
	{
		CreatureBelief* villager = plans[0].ObjectToUse;
		Object*         carried = creature->physical->GetObjectCarried();
		if (carried == NULL || !carried->IsVillager(creature))
		{
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5283))
			                                 SubArgumentObject(villager),
			                             &Creature::LookWhileGoingTowardsObject, NULL);
		}
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5285))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
		                             &Creature::LookAtObjectArgument, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5286))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.0f),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5287)) SubArgumentInteger(0x61),
		                             NULL, &Creature::SetFaceForActionCompassion);
		return 0;
	}
	creature->FinishActionUnsuccessfully("no villager found", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForStealFoodFromStoragePit(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5298))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToUse, 0.0f),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5299))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToUse, 0.1f),
	                             NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CREATE_PICK_UP_THEN_REMOVE,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5300))
	                                 SubArgumentObjectAndInteger(plans[0].ObjectToUse, 0x11),
	                             NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_THROW_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5301))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, creature->GetHeight()),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5302))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CONSIDER_ACTION_COMPLETED, NULL, NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CLEAR_OBJECT_TO_USE, NULL, NULL, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW_IN_PILE,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5305))
	                                     SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 1),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForStealWoodFromStoragePit(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5312))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToUse, 0.0f),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5313))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToUse, 0.1f),
	                             NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CREATE_PICK_UP_THEN_REMOVE,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5314))
	                                 SubArgumentObjectAndInteger(plans[0].ObjectToUse, 0x10),
	                             NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_THROW_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5315))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, creature->GetHeight()),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5316))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 0.1f),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CONSIDER_ACTION_COMPLETED, NULL, NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CLEAR_OBJECT_TO_USE, NULL, NULL, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW_IN_PILE,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5319))
	                                     SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 1),
	                                 NULL, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForStealSpellSeed(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5326))
	                                 SubArgumentObject(plans[0].ObjectToActOn),
	                             &Creature::LookWhileGoingTowardsObject, NULL);
	LHPoint home;
	GLandscape::ConvertMapCoordToLandscapePoint(creature->HomePos, home);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5329))
	                                 SubArgumentPointAndFloat(home, 2.0f * creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsPoint, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5330)) SubArgumentInteger(0x61), NULL,
	                             &Creature::SetFaceForActionCompassion);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForStealAnimal(unsigned long param_1)
{
	if (creature->GetPlayer() != NULL)
	{
		Town*             nearest = NULL;
		float             nearestDistance = 1.0e11f;
		LHListHead<Town>& towns = creature->GetPlayer()->towns;
		FOREACH_LH_LIST_HEAD(Town, town, towns)
		{
			float distance = GUtils::GetDistanceInMetres(town->Pos, creature->Pos);
			if (distance < nearestDistance)
			{
				nearestDistance = distance;
				nearest = town;
			}
		}
		if (nearest != NULL)
		{
			StoragePit* pit = nearest->GetStoragePit();
			if (pit != NULL)
			{
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5355))
				                                 SubArgumentObject(plans[0].ObjectToActOn),
				                             &Creature::LookWhileGoingTowardsObject, NULL);
				CreatureBelief* belief = creature->mind->AddBeliefAboutObject(creature, pit);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_THROW_POS,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5357))
				                                 SubArgumentObjectAndFloat(belief, creature->GetHeight()),
				                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
				                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5358))
				                                 SubArgumentObjectAndFloat(belief, 0.1f),
				                             &Creature::LookAtObjectArgument, NULL);
				SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_CONSIDER_ACTION_COMPLETED, NULL, NULL, NULL);
				SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW_IN_PILE,
				                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5360))
				                                     SubArgumentObjectAndInteger(belief, 0),
				                                 NULL, NULL);
				return 0;
			}
		}
	}
	return 1;
}

int CreatureAgenda::ConstructSubActionsForStealVillager(unsigned long param_1)
{
	if (creature->GetPlayer() != NULL)
	{
		Town*             nearest = NULL;
		float             nearestDistance = 1.0e11f;
		LHListHead<Town>& towns = creature->GetPlayer()->towns;
		FOREACH_LH_LIST_HEAD(Town, town, towns)
		{
			float distance = GUtils::GetDistanceInMetres(town->Pos, creature->Pos);
			if (distance < nearestDistance)
			{
				nearestDistance = distance;
				nearest = town;
			}
		}
		if (nearest != NULL)
		{
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5386))
			                                 SubArgumentObject(plans[0].ObjectToActOn),
			                             &Creature::LookWhileGoingTowardsObject, NULL);
			LHPoint pos = nearest->Pos.GetLHPoint();
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5388))
			                                 SubArgumentPointAndFloat(pos, 60.0f),
			                             &Creature::LookWhileGoingTowardsPoint, NULL);
			SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
			                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5389))
			                                 SubArgumentInteger(0x61),
			                             NULL, &Creature::SetFaceForActionCompassion);
			return 0;
		}
	}
	return 1;
}

int CreatureAgenda::ConstructSubActionsForHowlAtFriend(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5399))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 2.0f),
	                             &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5400)) SubArgumentInteger(0xd9), NULL,
	                             NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForHowlAtPlayer(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5408)) SubArgumentInteger(0xd9), NULL,
	                             NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForTellFriendAJoke(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5415))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, creature->GetHeight() * 3.0f),
	                             &Creature::LookAtObjectFlutteringEyelids, &Creature::SetFaceForActionSmile);
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5416)) SubArgumentObjectAndFloat(
			plans[0].ObjectToActOn,
			GRand::GameFloatRand(4.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5416)) + 4.0f),
		&Creature::LookAtObjectFlutteringEyelids, &Creature::SetFaceForActionSmile);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5417))
	                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0x10),
	                             &Creature::LookAtObjectArgument, NULL);
	Creature*       other = plans[0].ObjectToActOn->GetPointer()->CastCreature();
	CreatureBelief* belief = other->mind->AddBeliefAboutObject(other, creature);
	SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5420))
	                             SubArgumentObjectAndFloat(belief, 4.0f),
	                         &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TALK,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5421))
	                                 SubArgumentObject(plans[0].ObjectToActOn),
	                             &Creature::LookAtObjectFlutteringEyelids, NULL);
	SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5422)) SubArgumentInteger(0xda), NULL,
	                         NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForPrayToPlayer(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5430)) SubArgumentInteger(0xdd), NULL,
	                             NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForPrayAtCitadel(unsigned long param_1)
{
	LHPoint home;
	GLandscape::ConvertMapCoordToLandscapePoint(creature->HomePos, home);
	creature->mind->agenda.Destination = creature->HomePos;
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5440))
	                                     SubArgumentPointAndFloat(home, creature->GetHeight()),
	                                 &Creature::LookWhileGoingTowardsPoint, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5441)) SubArgumentInteger(0xdd), NULL,
	                             NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForTalkToFriend(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5448))
	                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, creature->GetHeight() * 3.0f),
	                             &Creature::LookAtObjectFlutteringEyelids, &Creature::SetFaceForActionSmile);
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5449)) SubArgumentObjectAndFloat(
			plans[0].ObjectToActOn,
			GRand::GameFloatRand(4.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5449)) + 4.0f),
		&Creature::LookAtObjectFlutteringEyelids, &Creature::SetFaceForActionSmile);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_REQUEST_PARTNER,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5450))
	                                 SubArgumentObjectAndInteger(plans[0].ObjectToActOn, 0x10),
	                             &Creature::LookAtObjectArgument, NULL);
	Creature*       other = plans[0].ObjectToActOn->GetPointer()->CastCreature();
	CreatureBelief* belief = other->mind->AddBeliefAboutObject(other, creature);
	SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
	                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5453))
	                             SubArgumentObjectAndFloat(belief, 4.0f),
	                         &Creature::LookAtObjectArgument, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TALK,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5454))
	                                 SubArgumentObject(plans[0].ObjectToActOn),
	                             &Creature::LookAtObjectFlutteringEyelids, NULL);
	SubActionAgenda.AddOrder(other, CREATURE_SUB_STATE_ACTIONS_TALK,
	                         new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5455)) SubArgumentObject(belief),
	                         &Creature::LookAtObjectFlutteringEyelids, NULL);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForPointOutHighlight(unsigned long param_1)
{
	GInterfaceStatus* status = creature != NULL ? creature->GetNearestCameraInterfaceStatus() : NULL;
	if (status != NULL)
	{
		LHPoint cameraPos = status->GetCameraPos();
		if (PointDistance(cameraPos, creature->Pos.GetLHPoint()) > 30.0f)
		{
			SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_LOOK_AT_CAMERA,
			                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5470)) SubArgumentInteger(
												 GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.0f)),
			                                 &Creature::LookAtCamera, &Creature::SetFaceForActionCuriosity);
			SubActionAgenda.AddMainSubAction(
				CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
				new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5471)) SubArgumentInteger(0x45), NULL, NULL);
		}
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5473))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 1.0f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAmazed);
		SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_LOOK_AT_CAMERA,
		                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5474)) SubArgumentInteger(
											 GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(2.0f)),
		                                 &Creature::LookAtCamera, &Creature::SetFaceForActionCuriosity);
		return 0;
	}
	creature->FinishActionUnsuccessfully("no camera", 1, 1);
	return 1;
}

int CreatureAgenda::ConstructSubActionsForTakeToyHome(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5484))
	                                 SubArgumentObject(plans[0].ObjectToActOn),
	                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionCompassion);
	LHPoint home;
	GLandscape::ConvertMapCoordToLandscapePoint(creature->HomePos, home);
	home.x += GRand::GameFloatRand(10.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5487)) - 5.0f;
	home.z += GRand::GameFloatRand(10.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5488)) - 5.0f;
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5489)) SubArgumentPointAndFloat(
									 home, creature->GetHeight() > 5.0f ? 5.0f : creature->GetHeight()),
	                             &Creature::LookWhileGoingTowardsPoint, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_DISCARD,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5490))
			SubArgumentInteger(GRand::GameRand(10, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5490)) > 1 ? 97 : 95),
		NULL, &Creature::SetFaceForActionCompassion);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForStrokeToy(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5497))
	                                 SubArgumentObject(plans[0].ObjectToActOn),
	                             &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionCompassion);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_HELD_OBJECT_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5498)) SubArgumentInteger(0x64),
	                                 &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCompassion);
	return 0;
}

int CreatureAgenda::ConstructSubActionsForThrowDie(unsigned long param_1)
{
	if (creature->physical->GetObjectCarried() == NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_PICKUP,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5507))
		                                 SubArgumentObject(plans[0].ObjectToActOn),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
	}
	MapCoords coords = creature->Pos;
	coords.SetWholeX((long)((coords.MetersX() + 1.2f * creature->GetHeight()) * (float)0x10000 / MetresPerMapCell));
	coords.SetWholeZ((long)((coords.MetersZ() + 1.2f * creature->GetHeight()) * (float)0x10000 / MetresPerMapCell));
	LHPoint pos;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, pos);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW_AT_POS,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5514)) SubArgumentPoint(pos),
	                                 &Creature::LookWhileGoingTowardsPoint, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_LOOK_AT_FLYING_OBJECT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5515))
	                                     SubArgumentObject(plans[0].ObjectToActOn),
	                                 &Creature::LookAtFlyingObject, &Creature::SetFaceForActionAmazed);
	if (GRand::GameRand(3, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5516)) > 0)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5518)) SubArgumentInteger(0x37),
		                             NULL, NULL);
	}
	else
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5522)) SubArgumentInteger(0x38),
		                             NULL, NULL);
	}
	return 0;
}

int CreatureAgenda::ConstructSubActionsForWaterTreeForTown(unsigned long param_1)
{
	if (plans[0].ObjectToUse != NULL)
	{
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5532))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToUse, 2.0f * creature->GetHeight()),
		                             &Creature::LookWhileGoingTowardsObject, NULL);
		SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OBJECT,
		                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5533))
		                                 SubArgumentObjectAndFloat(plans[0].ObjectToUse, 0.1f),
		                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionSmile);
		// Unused on both platforms, and taken from ObjectToActOn rather than the tree in ObjectToUse
		LHPoint pos = plans[0].ObjectToActOn->GetPos().GetLHPoint();
		SubActionAgenda.AddMainSubAction(
			CREATURE_SUB_STATE_ACTIONS_CAST_SPELL_AT_OBJECT,
			new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5535))
				SubArgumentObjectIntegerFloatAndSpell(plans[0].ObjectToUse, 0x2f, 3.0f, MAGIC_TYPE_WATER),
			NULL, &Creature::SetFaceForActionSmile);
		return 0;
	}
	creature->FinishActionUnsuccessfully("no object to use", 1, 1);
	return 1;
}
