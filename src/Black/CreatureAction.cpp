#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "CreatureAction.h"

struct CreatureActionTableEntry
{
	const char* Name;                                                             /* 0x0 */
	bool32_t (Creature::*IsPossible)(CreaturePlan& plan, CREATURE_ACTION action); /* 0x10 */
	int (CreatureAgenda::*ConstructSubActions)(unsigned long action_argument);    /* 0x20 */
	MAGIC_TYPE MagicType;                                                         /* 0x30 */
	bool32_t (GameThingWithPos::*IsValidObjectToActOn)(Creature* creature);       /* 0x34 */
	bool32_t (GameThingWithPos::*IsValidObjectToUse)(Creature* creature);         /* 0x38 */
	bool32_t (GameThingWithPos::*IsValidObjectToUseToo)(Creature* creature);      /* 0x3c */
	uint32_t (GameThingWithPos::*AttitudeToCreature)();                           /* 0x40 */
	bool32_t NeedsObjectToUse;                                                    /* 0x44 */
	float (GameThingWithPos::*UsefulnessMultiplier)(Creature* creature);          /* 0x48 */
};
static_assert(sizeof(CreatureActionTableEntry) == 0x50, "Data type is of wrong size");

#include <Lionhead/LH3DLib/development/LH3DAtmos.h> /* For LH3DAtmos::GetMoonPos */
#include <chlasm/Enum.h>                            /* For NUM_CREATURE_DESIRES */

#include "Alignment.h"                 /* For struct GAlignment */
#include "Citadel.h"                   /* For struct Citadel */
#include "CitadelHeart.h"              /* For struct CitadelHeart */
#include "ColourConstants.h"           /* For White */
#include "Creature.h"                  /* For struct Creature */
#include "CreatureActionInfo.h"        /* For struct CreatureActionInfo */
#include "CreatureAgenda.h"            /* For struct CreatureAgenda */
#include "CreatureInfo.h"              /* For struct CreatureInfo */
#include "CreatureInitialDesireInfo.h" /* For struct CreatureInitialDesireInfo */
#include "CreatureMental.h"            /* For struct CreatureMental */
#include "CreatureMentalBelief.h"      /* For struct CreatureBelief */
#include "CreatureMentalDesire.h"      /* For struct CreatureDesireActionEntry, struct CreatureDesireAttributeEntry */
#include "CreatureMorph.h"             /* For struct LH3DCreature */
#include "CreaturePhysical.h"          /* For struct CreaturePhysical */
#include "Football.h"                  /* For struct Football */
#include "Game.h"                      /* For struct GGame */
#include "GameInfo.h"                  /* For struct GGameInfo */
#include "InterfaceStatus.h"           /* For struct GInterfaceStatus */
#include "Landscape.h"                 /* For GLandscape::ConvertMapCoordToLandscapePoint */
#include "OneOffSpellSeed.h"           /* For struct OneOffSpellSeed */
#include "Rand.h"                      /* For struct GRand */
#include "SpellSeedInfo.h"             /* For struct GSpellSeedInfo */
#include "SubArgument.h"               /* For struct SubArgument */
#include "Town.h"                      /* For struct Town */
#include "Tree.h"                      /* For struct Tree */
#include "Villager.h"                  /* For struct Villager */
#include "WorshipSite.h"               /* For struct WorshipSite */

#if defined(VERSION_BW1W100)
#define CREATURE_ACTION_FILE "C:\\dev\\black\\CreatureAction.cpp"
// 1.0 has 9 more lines in HelpBuildHouse, then 3 more and 1 fewer around AttackerThrowBallAtGoal.
#define CREATURE_ACTION_LINE(line) ((line) + ((line) < 915 ? 0 : (line) < 2700 ? 9 : (line) < 2740 ? 12 : 11))
#elif defined(VERSION_BW1W110)
#define CREATURE_ACTION_FILE       "C:\\dev\\Black\\CreatureAction.cpp"
#define CREATURE_ACTION_LINE(line) (line)
#else
#define CREATURE_ACTION_FILE       "C:\\dev\\MP\\Black\\CreatureAction.cpp"
#define CREATURE_ACTION_LINE(line) (line)
#endif

const float CastSpellDistance = 50.0f;

inline float MapCoords::MetersX() const
{
	return WholeX() * MetresPerMapCell / (float)0x10000;
}

inline float MapCoords::MetersZ() const
{
	return WholeZ() * MetresPerMapCell / (float)0x10000;
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

// BW1W120 0049a7a0
bool32_t Creature::IsHomeUnderConstruction(CreaturePlan& plan, CREATURE_ACTION action)
{
	if (HomeExists && !HasFinishedBuildingHome())
	{
		return TRUE;
	}
	return FALSE;
}

// BW1W120 0049a7c0
bool32_t Creature::HasNoHome(CreaturePlan& plan, CREATURE_ACTION action)
{
	return HomeExists == 0;
}

// BW1W120 0049a7d0 BW1M119 01232ca0
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

// BW1W120 0049aa20 BW1M119 01232ac0
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

// BW1W120 0049abb0 BW1M119 01232850
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

// BW1W120 0049adf0 BW1M119 012325c0
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

// BW1W120 0049b010 BW1M119 01232570
int CreatureAgenda::ConstructSubActionsForMoveToPos(unsigned long param_1)
{
	return 0;
}

// BW1W120 0049b020 BW1M119 01232390
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

// BW1W120 0049b1c0 BW1M119 012320f0
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

// BW1W120 0049b420 BW1M119 01231e10
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

// BW1W120 0049b660 BW1M119 01231ca0
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

// BW1W120 0049ba10 BW1M119 012318a0
int CreatureAgenda::ConstructSubActionsForLookAtHand(unsigned long param_1)
{
	creature->TurnsUntilNextStateChange = 15;
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_LOOK_AT_HAND, NULL, &Creature::LookAtHand,
	                                 &Creature::SetFaceForActionCuriosity);
	return 0;
}

// BW1W120 0049ba70 BW1M119 012315d0
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

// BW1W120 0049c690 BW1M119 01230a40
int CreatureAgenda::ConstructSubActionsForFollowPlayer(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FOLLOW_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(649)) SubArgumentInteger(0x45),
	                                 NULL, NULL);
	return 0;
}

// BW1W120 0049c790 BW1M119 01230800
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

// BW1W120 0049c960 BW1M119 01230760
int CreatureAgenda::ConstructSubActionsForDanceImpressivelyWithVillagers(unsigned long dance_type)
{
	creature->LastImpressiveDanceTurn = GGame::g_game->data.GameTurn;
	creature->LastImpressiveDanceType = dance_type;
	return ConstructSubActionsForDanceWithVillagers(dance_type);
}

// BW1W120 0049cfe0 BW1M119 0122fea0
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

// BW1W120 0049d160 BW1M119 0122fcc0
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

// BW1W120 0049d2e0 BW1M119 0122f9f0
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

// BW1W120 0049d550 BW1M119 0122f8e0
int CreatureAgenda::ConstructSubActionsForCommunicateState(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera,
	                             &Creature::SetFaceForActionReflectAttitudeToPlayer);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_COMMUNICATE_TO_PLAYER, NULL, &Creature::LookAtCamera,
	                                 &Creature::SetFaceForActionReflectAttitudeToPlayer);
	return 0;
}

// BW1W120 0049d5e0 BW1M119 0122f6e0
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

// BW1W120 0049d750 BW1M119 0122f510
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

// BW1W120 0049d8d0 BW1M119 0122f300
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

// BW1W120 0049e100 BW1M119 0122eae0
int CreatureAgenda::ConstructSubActionsForHelpBuildHouse(unsigned long param_1)
{
	ConstructSubActionsForCastHelpfulSpellOnObject(MAGIC_TYPE_WOOD);
	SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_BUILD,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(911)) SubArgumentObject(plans[0].ObjectToActOn), NULL, NULL);
	return 0;
}

// BW1W120 0049e460 BW1M119 0122e770
int CreatureAgenda::ConstructSubActionsForBringToTown(unsigned long param_1)
{
	return 0;
}

// BW1W120 0049e470 BW1M119 0122e500
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

// BW1W120 0049e650 BW1M119 0122e210
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

// BW1W120 0049ec80 BW1M119 0122db30
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

// BW1W120 004a0010 BW1M119 0122c5e0
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

// BW1W120 004a01e0 BW1M119 0122c4b0
int CreatureAgenda::ConstructSubActionsForFollowAround(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1183)) SubArgumentObjectAndFloat(
										 plans[0].ObjectToActOn, creature->GetHeight() * 5.0f),
	                                 &Creature::LookWhileGoingTowardsObject, NULL);
	return 0;
}

// BW1W120 004a0280 BW1M119 0122c3c0
int CreatureAgenda::ConstructSubActionsForPuke(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_STATIC_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1190))
	                                     SubArgumentIntegerAndFloat(0x23, 4.0f),
	                                 NULL, &Creature::SetFaceForActionGrimace);
	return 0;
}

// BW1W120 004a0300 BW1M119 0122c120
int CreatureAgenda::ConstructSubActionsForBringSomethingBackToTheCitadel(unsigned long param_1)
{
	CreatureBelief* heart = creature->mind->CitadelHeartBelief;
	// TODO: Unused, but both versions make this call.
	Object* heartObject = heart->GetObjectPointer();
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

// BW1W120 004a1320 BW1M119 0122b340
int CreatureAgenda::ConstructSubActionsForPlayGameWithCreatureMainPart(unsigned long param_1)
{
	return 0;
}

// BW1W120 004a1330 BW1M119 0122b0d0
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

// BW1W120 004a1510 BW1M119 0122b040
int CreatureAgenda::ConstructSubActionsForDestroyAggressor(unsigned long param_1)
{
	dynamic_cast<Town*>(plans[0].ActivityObject->GetPointer());
	return 0;
}

// BW1W120 004a1540 BW1M119 0122af20
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

// BW1W120 004a1bd0 BW1M119 0122a7b0
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

// BW1W120 004a1db0 BW1M119 0122a580
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

// BW1W120 004a1f90 BW1M119 0122a400
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

// BW1W120 004a20a0 BW1M119 0122a290
int CreatureAgenda::ConstructSubActionsForRestToGetBetter(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FACE_DOWN_SLOPE, NULL, NULL, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_REST_TO_GET_BETTER, NULL, NULL, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1419)) SubArgumentInteger(0x3f),
	                             &Creature::LookJustWokenUp, &Creature::SetFaceForActionGrimace);
	return 0;
}

// BW1W120 004a2190 BW1M119 0122a080
int CreatureAgenda::ConstructSubActionsForSmileAtFriend(unsigned long param_1)
{
	// TODO: In the second sub action the target loads plans[0].ObjectToActOn before the 4.0f add and stores the
	// vtable before Float; the order of the add's operands, a double constant or a cast do not move it.
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

// BW1W120 004a2330 BW1M119 01229dd0
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

// BW1W120 004a2a40 BW1M119 012296d0
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

// BW1W120 004a2bc0 BW1M119 01229420
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
	// TODO: The target schedules the 40.0f add after the inlined division, see ConvertRealWorldSecondsToGameTicks
	SubActionAgenda.AddSubAction(
		CREATURE_SUB_STATE_ACTIONS_WAIT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1504))
			SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
				40.0f + GRand::GameFloatRand(10.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1504)))),
		&Creature::LookAtCamera, &Creature::SetFaceForActionReflectAttitudeToPlayer);
	return 0;
}

// BW1W120 004a30e0 BW1M119 01228e50
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

// BW1W120 004a3720 BW1M119 01228940
int CreatureAgenda::ConstructSubActionsForPutDown(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_DISCARD,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1595)) SubArgumentInteger(0x61), NULL,
	                             NULL);
	return 0;
}

// BW1W120 004a3da0 BW1M119 01228140
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

// BW1W120 004a3f10 BW1M119 01227f60
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

// BW1W120 004a40b0 BW1M119 01227e70
int CreatureAgenda::ConstructSubActionsForSneeze(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1672)) SubArgumentInteger(0x3e),
	                                 NULL, NULL);
	return 0;
}

// BW1W120 004a4140 BW1M119 01227d80
int CreatureAgenda::ConstructSubActionsForShiver(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1679)) SubArgumentInteger(0x3b),
	                                 NULL, NULL);
	return 0;
}

// BW1W120 004a41d0 BW1M119 01227d00
int CreatureAgenda::ConstructSubActionsForStartFire(unsigned long param_1)
{
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

// BW1W120 004a41f0 BW1M119 01227c10
int CreatureAgenda::ConstructSubActionsForShowHotness(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1699)) SubArgumentInteger(0x3a),
	                                 NULL, NULL);
	return 0;
}

// BW1W120 004a4280 BW1M119 01227b20
int CreatureAgenda::ConstructSubActionsForScratch(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1706)) SubArgumentInteger(0x3c),
	                                 NULL, NULL);
	return 0;
}

// BW1W120 004a4310 BW1M119 01227950
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

// BW1W120 004a4490 BW1M119 01227780
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

// BW1W120 004a48a0 BW1M119 012272f0
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

// BW1W120 004a4980 BW1M119 01227150
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

// BW1W120 004a4ed0 BW1M119 01226b40
int CreatureAgenda::ConstructSubActionsForLookAtCamera(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_LOOK_AT_CAMERA,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1840))
	                                     SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(5.0f)),
	                                 &Creature::LookAtCamera, &Creature::SetFaceForActionCuriosity);
	return 0;
}

// BW1W120 004a5320 BW1M119 012266e0
int CreatureAgenda::ConstructSubActionsForCreateHome(unsigned long param_1)
{
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

// BW1W120 004a5740 BW1M119 01225fb0
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

// BW1W120 004a59c0 BW1M119 01225d60
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

// BW1W120 004a5ba0 BW1M119 01225c70
int CreatureAgenda::ConstructSubActionsForShowLearntLesson(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1944)) SubArgumentInteger(0x3c),
	                                 NULL, &Creature::SetFaceForActionSmile);
	return 0;
}

// BW1W120 004a5c20 BW1M119 01225b80
int CreatureAgenda::ConstructSubActionsForPracticeDance(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_PRACTICE_DANCE,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1951)) SubArgumentFloat(20.0f),
	                                 NULL, &Creature::SetFaceForActionSmile);
	return 0;
}

// BW1W120 004a5ca0 BW1M119 01225a70
int CreatureAgenda::ConstructSubActionsForGoToMiddleOfScreen(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FOLLOW_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera,
	                                 NULL);
	return 0;
}

// BW1W120 004a5d30 BW1M119 01225930
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

// BW1W120 004a5e00 BW1M119 012257f0
int CreatureAgenda::ConstructSubActionsForWaveAtPlayer(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(1979)) SubArgumentInteger(0x48),
	                                 &Creature::LookAtCamera, NULL);
	return 0;
}

// BW1W120 004a5eb0 BW1M119 01225600
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

// BW1W120 004a6020 BW1M119 01225460
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

// BW1W120 004a6140 BW1M119 012251a0
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

// BW1W120 004a6ea0 BW1M119 012243c0
int CreatureAgenda::ConstructSubActionsForRunToObject(unsigned long param_1)
{
	creature->physical->Creature3d->SetRequiredSpeed(((const CreatureInfo*)creature->info)->RunSpeed);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2122)) SubArgumentObjectAndFloat(
										 plans[0].ObjectToActOn, creature->GetHeight() * 1.5f),
	                                 &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionSmile);
	return 0;
}

// BW1W120 004a6f50 BW1M119 01224360
int CreatureAgenda::ConstructSubActionsForRunAroundRaceTrack(unsigned long param_1)
{
	return 0;
}

// BW1W120 004a6f60 BW1M119 01224310
int CreatureAgenda::ConstructSubActionsNullFunction(unsigned long param_1)
{
	return 0;
}

// BW1W120 004a7d20 BW1M119 012233c0
int CreatureAgenda::ConstructSubActionsForShowFriendObject(unsigned long param_1)
{
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

// BW1W120 004a9120 BW1M119 01221ce0
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

// BW1W120 004ab200 BW1M119 0121fc30
int CreatureAgenda::ConstructSubActionsForTakeObjectFromHand(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_OTHER_PLAYERS_CAMERA, NULL,
	                             &Creature::LookAtHand, &Creature::SetFaceForActionCuriosity);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_PICK_UP_FROM_HAND, NULL, &Creature::LookAtHand,
	                                 &Creature::SetFaceForActionCuriosity);
	return 0;
}

// BW1W120 004ab290 BW1M119 0121faf0
int CreatureAgenda::ConstructSubActionsForGesture(unsigned long gesture_type)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_GESTURE,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2525)) SubArgumentInteger(gesture_type), NULL, NULL);
	return 0;
}

// BW1W120 004abcf0 BW1M119 0121ee10
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

// BW1W120 004abe60 BW1M119 0121ec30
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

// BW1W120 004ac3b0 BW1M119 0121e680
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

// BW1W120 004accb0 BW1M119 0121dc90
int CreatureAgenda::ConstructSubActionsForAttackerKickBallAtGoal(unsigned long action_argument)
{
	return ConstructSubActionsForAttackerThrowBallAtGoal(action_argument);
}

// BW1W120 004accc0 BW1M119 0121db30
int CreatureAgenda::ConstructSubActionsForDefenderStompOnBall(unsigned long param_1)
{
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
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

// BW1W120 004acdb0 BW1M119 0121dac0
int CreatureAgenda::ConstructSubActionsForDefenderClearBall(unsigned long action_argument)
{
	return ConstructSubActionsForAttackerThrowBallAtGoal(action_argument);
}

// BW1W120 004acdc0 BW1M119 0121da50
int CreatureAgenda::ConstructSubActionsForGoalieCatchBall(unsigned long action_argument)
{
	return ConstructSubActionsForAttackerThrowBallAtGoal(action_argument);
}

// BW1W120 004acf70 BW1M119 0121d690
int CreatureAgenda::ConstructSubActionsForCelebrateGoal(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2819)) SubArgumentInteger(0x37),
	                                 NULL, NULL);
	return 0;
}

// BW1W120 004ad000 BW1M119 0121d590
int CreatureAgenda::ConstructSubActionsForCommiserateGoal(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(2826)) SubArgumentInteger(0x38),
	                                 NULL, NULL);
	return 0;
}

// BW1W120 004ad090 BW1M119 0121d2a0
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

// BW1W120 004ad2f0 BW1M119 0121d0b0
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

// BW1W120 004ae450 BW1M119 0121bcf0
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

// BW1W120 004ae6c0 BW1M119 0121bbf0
int CreatureAgenda::ConstructSubActionsForSmashStoneInHalf(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_STOMP,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3006))
	                                     SubArgumentObject(plans[0].ObjectToActOn),
	                                 &Creature::LookWhileGoingTowardsObject, &Creature::SetFaceForActionAnger);
	return 0;
}

// BW1W120 004ae740 BW1M119 0121ba10
int CreatureAgenda::ConstructSubActionsForBeSad(unsigned long param_1)
{
	// TODO: The target schedules the 2.0f add after the inlined division, see ConvertRealWorldSecondsToGameTicks
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

// BW1W120 004ae8e0 BW1M119 0121b890
int CreatureAgenda::ConstructSubActionsForBeingIdle(unsigned long param_1)
{
	// TODO: The target schedules the 1.0f add after the inlined division, see ConvertRealWorldSecondsToGameTicks
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

// BW1W120 004aea10 BW1M119 0121b720
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

// BW1W120 004aeb40 BW1M119 0121b620
int CreatureAgenda::ConstructSubActionsForPointAtObject(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_POINT_AT_OBJECT,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3049))
	                                     SubArgumentObjectAndFloat(plans[0].ObjectToActOn, 5.0f),
	                                 &Creature::LookAtFlyingObject, &Creature::SetFaceForActionAmazed);
	return 0;
}

// BW1W120 004aebd0 BW1M119 0121b370
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

// BW1W120 004af640 BW1M119 0121aa30
int CreatureAgenda::ConstructSubActionsForGoOutAndLookForFood(unsigned long param_1)
{
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

// BW1W120 004af660 BW1M119 0121a860
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

// BW1W120 004af760 BW1M119 0121a6b0
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

// BW1W120 004af890 BW1M119 0121a500
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

// BW1W120 004af9c0 BW1M119 0121a330
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

// BW1W120 004afb40 BW1M119 0121a0d0
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

// BW1W120 004b0250 BW1M119 01219950
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

// BW1W120 004b03c0 BW1M119 01219800
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

// BW1W120 004b04b0 BW1M119 01219790
int CreatureAgenda::ConstructSubActionsForWatchTelly(unsigned long action_argument)
{
	return ConstructSubActionsForPoo(action_argument);
}

// BW1W120 004b04c0 BW1M119 01219720
int CreatureAgenda::ConstructSubActionsForFart(unsigned long action_argument)
{
	return ConstructSubActionsForPoo(action_argument);
}

// BW1W120 004b04d0 BW1M119 01219600
int CreatureAgenda::ConstructSubActionsForRestOnTheSpot(unsigned long param_1)
{
	// TODO: The target schedules the 3.0f add after the inlined division, see ConvertRealWorldSecondsToGameTicks
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_WAIT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3331))
			SubArgumentInteger(GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
				3.0f + GRand::GameFloatRand(8.0f, CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3331)))),
		&Creature::LookDown, &Creature::SetFaceForMoodExhausted);
	return 0;
}

// BW1W120 004b0590 BW1M119 012193b0
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

// BW1W120 004b0770 BW1M119 012192f0
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

// BW1W120 004b07d0 BW1M119 01219180
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

// BW1W120 004b08e0 BW1M119 01219070
int CreatureAgenda::ConstructSubActionsForSwapMindWithOtherCreature(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WAIT_FOR_SPELLS_TO_WEAR_OFF, NULL, NULL, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_SWAP_MIND_WITH_OTHER_CREATURE, NULL, NULL, NULL);
	return 0;
}

// BW1W120 004b0970 BW1M119 01218ef0
int CreatureAgenda::ConstructSubActionsForLookButDontApproach(unsigned long param_1)
{
	// TODO: The target schedules the 1.1f add after the inlined division, see ConvertRealWorldSecondsToGameTicks
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

// BW1W120 004b0d50 BW1M119 01218a70
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

// BW1W120 004b1100 BW1M119 01218500
int CreatureAgenda::ConstructSubActionsForLookAtMountains(unsigned long param_1)
{
	// TODO: The target spills this to the stack and has a 12 byte smaller frame; the instructions otherwise match.
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

// BW1W120 004b15d0 BW1M119 01218050
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

// BW1W120 004b1710 BW1M119 01217db0
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

// BW1W120 004b18e0 BW1M119 01217d50
int CreatureAgenda::ConstructSubActionsForLookDownCliff(unsigned long param_1)
{
	return 1;
}

// BW1W120 004b18f0 BW1M119 01217cd0
int CreatureAgenda::ConstructSubActionsForExploreAndCastTeleport(unsigned long param_1)
{
	return ConstructSubActionsForCastHelpfulSpellOnObject(MAGIC_TYPE_TELEPORT);
}

// BW1W120 004b1900 BW1M119 01217bd0
int CreatureAgenda::ConstructSubActionsForHurlObjectInHand(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_THROW,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3520))
	                                     SubArgumentObject(plans[0].ObjectToActOn),
	                                 &Creature::LookAtObjectArgument, &Creature::SetFaceForActionAnger);
	return 0;
}

// BW1W120 004b1980 BW1M119 01217b40
int CreatureAgenda::ConstructSubActionsForEatWithFriend(unsigned long param_1)
{
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

// BW1W120 004b4060 BW1M119 01214fc0
int CreatureAgenda::ConstructSubActionsForBePatheticWithPlayer(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_FOLLOW_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(3770)) SubArgumentInteger(0x4a),
	                                 NULL, NULL);
	return 0;
}

// BW1W120 004b4160 BW1M119 01214e20
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

// BW1W120 004b4280 BW1M119 01214c10
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

// BW1W120 004b5bb0 BW1M119 01213140
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

// BW1W120 004b5d80 BW1M119 01212e50
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

// BW1W120 004b5fe0 BW1M119 01212c50
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

// BW1W120 004b6c80 BW1M119 01211d10
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

// BW1W120 004b6e20 BW1M119 01211c20
int CreatureAgenda::ConstructSubActionsForCatch(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_CATCH,
	                                 new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4092))
	                                     SubArgumentObject(plans[0].ObjectToActOn),
	                                 NULL, &Creature::SetFaceForActionSmile);
	return 0;
}

// BW1W120 004b6ea0 BW1M119 01211a00
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

// BW1W120 004b7800 BW1M119 01210f50
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

// BW1W120 004b7cb0 BW1M119 01210990
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

// BW1W120 004b7f00 BW1M119 012106f0
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

// BW1W120 004b8800 BW1M119 0120ff10
int CreatureAgenda::ConstructSubActionsForGiveWoodFromTreeToBuildingSite(unsigned long action_argument)
{
	return ConstructSubActionsForGiveWoodFromTreeToStoragePit(action_argument);
}

// BW1W120 004b8810 BW1M119 0120fc20
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

// BW1W120 004b8a60 BW1M119 0120f960
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

// BW1W120 004b8cc0 BW1M119 0120f770
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

// BW1W120 004b9280 BW1M119 0120f0d0
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

// BW1W120 004b9430 BW1M119 0120f040
int CreatureAgenda::ConstructSubActionsForCatchFireball(unsigned long param_1)
{
	creature->FinishActionUnsuccessfully("failed to construct subactions", 1, 1);
	return 1;
}

// BW1W120 004baaf0 BW1M119 0120d680
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

// BW1W120 004bae20 BW1M119 0120d170
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

// BW1W120 004bb000 BW1M119 0120ceb0
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

// BW1W120 004bb250 BW1M119 0120cc00
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

// BW1W120 004bb4a0 BW1M119 0120c950
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

// BW1W120 004be460 BW1M119 012099a0
int CreatureAgenda::ConstructSubActionsForExamineObjectInHand(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_HELD_OBJECT_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4897)) SubArgumentInteger(0x67),
	                             &Creature::LookAtObjectArgument, &Creature::SetFaceForActionCuriosity);
	return 0;
}

// BW1W120 004be4e0 BW1M119 012098a0
int CreatureAgenda::ConstructSubActionsForEatObjectInHand(unsigned long param_1)
{
	SubActionAgenda.AddMainSubAction(
		CREATURE_SUB_STATE_ACTIONS_EAT,
		new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(4904)) SubArgumentObject(plans[0].ObjectToActOn), NULL, NULL);
	return 0;
}

// BW1W120 004be570 BW1M119 012096e0
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

// BW1W120 004be6c0 BW1M119 01209590
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

// BW1W120 004beeb0 BW1M119 01208d80
int CreatureAgenda::ConstructSubActionsForGiveFriendToy(unsigned long action_argument)
{
	return ConstructSubActionsForGiveToCreature(action_argument);
}

// BW1W120 004beec0 BW1M119 01208a30
int CreatureAgenda::ConstructSubActionsForSacrifice(unsigned long param_1)
{
	if (creature->GetCitadel() != NULL)
	{
		WorshipSite* site;
		for (uint32_t i = 0; i < 6; i++)
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

// BW1W120 004bf440 BW1M119 01208630
int CreatureAgenda::ConstructSubActionsForWatchPlayer(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_WATCH_PLAYER_WHILE_HE_HAS_YOUR_ATTENTION, NULL,
	                             &Creature::LookAtPlayer, NULL);
	return 0;
}

// BW1W120 004bf770 BW1M119 01208260
int CreatureAgenda::ConstructSubActionsForCastShieldAroundTown(unsigned long action_argument)
{
	return ConstructSubActionsForCastShield(action_argument);
}

// BW1W120 004bf780 BW1M119 01208030
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

// BW1W120 004bf940 BW1M119 01207fa0
int CreatureAgenda::ConstructSubActionsForPlayGameWithVillagers(unsigned long param_1)
{
	creature->FinishActionUnsuccessfully("not implemented", 1, 1);
	return 1;
}

// BW1W120 004bf960 BW1M119 01207cc0
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

// BW1W120 004bffa0 BW1M119 01207620
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

// BW1W120 004c0220 BW1M119 01207390
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

// BW1W120 004c0470 BW1M119 012072f0
int CreatureAgenda::ConstructSubActionsForDancePlayfullyWithVillagersWatching(unsigned long param_1)
{
	creature->FinishActionUnsuccessfully("invalid plan", 1, 1);
	return 1;
}

// BW1W120 004c0490 BW1M119 01207250
int CreatureAgenda::ConstructSubActionsForDancePlayfullyWithVillagersParticipating(unsigned long param_1)
{
	creature->FinishActionUnsuccessfully("invalid plan", 1, 1);
	return 1;
}

// BW1W120 004c04b0 BW1M119 012071c0
int CreatureAgenda::ConstructSubActionsForTellVillagersAStory(unsigned long param_1)
{
	creature->FinishActionUnsuccessfully("invalid plan", 1, 1);
	return 1;
}

// BW1W120 004c04d0 BW1M119 01206fc0
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

// BW1W120 004c09d0 BW1M119 01206a00
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

// BW1W120 004c0e30 BW1M119 012064d0
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

// BW1W120 004c0f70 BW1M119 01206210
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

// BW1W120 004c1860 BW1M119 01205890
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

// BW1W120 004c1ed0 BW1M119 01205170
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

// BW1W120 004c1fd0 BW1M119 01205040
int CreatureAgenda::ConstructSubActionsForHowlAtPlayer(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5408)) SubArgumentInteger(0xd9), NULL,
	                             NULL);
	return 0;
}

// BW1W120 004c2390 BW1M119 01204ba0
int CreatureAgenda::ConstructSubActionsForPrayToPlayer(unsigned long param_1)
{
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_TURN_TO_FACE_CAMERA, NULL, &Creature::LookAtCamera, NULL);
	SubActionAgenda.AddSubAction(CREATURE_SUB_STATE_ACTIONS_INDIVIDUAL_ACTION,
	                             new (CREATURE_ACTION_FILE, CREATURE_ACTION_LINE(5430)) SubArgumentInteger(0xdd), NULL,
	                             NULL);
	return 0;
}

// BW1W120 004c2450 BW1M119 012049f0
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

// BW1W120 004c2bb0 BW1M119 012040f0
int CreatureAgenda::ConstructSubActionsForTakeToyHome(unsigned long param_1)
{
	// TODO: The target adds home.x before pushing the second GameFloatRand's 10.0f argument.
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

// BW1W120 004c2de0 BW1M119 01203f90
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

// BW1W120 004c31e0 BW1M119 01203960
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
