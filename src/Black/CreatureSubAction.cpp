#include "MapCellConstants.h"
#include "GameTimeConstants.h"
#include "CreatureAttitudeConstants.h"
#include "CreatureSubAction.h"

#include "ColourConstants.h" /* For White */

#include <chlasm/CreatureSpec.h> /* For C_OBJECT_REMOVE_PUT_DOWN */

#include "Creature.h"
#include "Creature3D.h"
#include "CreatureContext.h"
#include "CreatureMental.h"
#include "CreatureMentalBelief.h"
#include "CreaturePhysical.h"
#include "CreatureSubStateTableEntry.h"
#include "Game.h"
#include "GameInfo.h"
#include "Global.h"
#include "Object.h"
#include "Rand.h"
#include "SubArgument.h" /* For class SubArgumentObjectIntegerFloatAndSpell */
#include "Utils.h"       /* For GUtils::GetDistanceInMetres */

#if defined(VERSION_BW1W100)
#undef ORIGINAL_LINE
// 1.00 has 8 fewer lines before ProcessSubAction's random call, and none added after it.
#define ORIGINAL_LINE(line) ((line) - 8)
#elif defined(VERSION_BW1WCI)
#undef ORIGINAL_LINE
// Creature Isle has 14 more lines before ProcessSubAction's random call and 61 more by AddCastSpellSubAction.
#define ORIGINAL_LINE(line) ((line) + ((line) < 400 ? 14 : 61))
#endif

// clang-format off
CreatureSubStateTableEntry CreatureSubStateTableEntry::SubStateTable[NUM_CREATURE_SUB_STATES] = {
	{"Pickup", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN_UNLESS_TARGET, {&Creature::SubStateInitiatePickUp, &Creature::SubStatePerformPickUp, NULL, NULL}},
	{"Discard", CREATURE_SUB_STATE_HELD_OBJECT_REQUIRED, {&Creature::SubStateInitiateDiscard, &Creature::SubStatePerformDiscard, &Creature::SubStateFinishDiscard, NULL}},
	{"Eat", CREATURE_SUB_STATE_HELD_OBJECT_REQUIRED, {&Creature::SubStateInitiateEat, &Creature::SubStatePerformEat, &Creature::SubStateFinishEat, &Creature::AbortEat}},
	{"HeldObjectAction", CREATURE_SUB_STATE_HELD_OBJECT_REQUIRED, {&Creature::SubStateInitiateHeldObjectAction, &Creature::SubStatePerformHeldObjectAction, NULL, NULL}},
	{"StaticAction", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiateStaticAction, &Creature::SubStatePerformStaticAction, &Creature::SubStateFinishStaticAction, &Creature::AbortStaticAction}},
	{"Throw", CREATURE_SUB_STATE_HELD_OBJECT_REQUIRED, {&Creature::SubStateInitiateThrow, &Creature::SubStatePerformThrow, &Creature::SubStateFinishThrow, NULL}},
	{"TurnToFaceObject", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateTurnToFaceObject, &Creature::SubStatePerformTurnToFaceObject, &Creature::SubStateFinishTurnToFaceObject, NULL}},
	{"TurnToFacePos", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateTurnToFacePos, &Creature::SubStatePerformTurnToFacePos, NULL, NULL}},
	{"MoveToPos", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateMoveToPos, NULL, &Creature::SubStateFinishMoveToPos, NULL}},
	{"RunAway", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateRunAway, &Creature::SubStatePerformRunAway, NULL, NULL}},
	{"IndividualAction", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiateIndividualAction, &Creature::SubStatePerformIndividualAction, NULL, NULL}},
	{"ChooseObjectToHurl", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformChooseObjectToHurl, NULL, NULL}},
	{"AddVillagersToDance", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformAddVillagersToDance, NULL, NULL}},
	{"FacialAnimation", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformFacialAnimation, NULL, NULL}},
	{"Faint", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiateFaint, &Creature::SubStatePerformFaint, NULL, NULL}},
	{"Poo", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {NULL, NULL, &Creature::SubStateFinishPoo, NULL}},
	{"MoveToThrowPos", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateMoveToThrowPos, &Creature::SubStatePerformMoveToThrowPos, NULL, NULL}},
	{"Stomp", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateStomp, &Creature::SubStatePerformStomp, NULL, NULL}},
	{"LookAtHand", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformLookAtHand, NULL, NULL}},
	{"RenderImmobile", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, NULL, &Creature::SubStateFinishRenderObjectImmobile, NULL}},
	{"AddToShape", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, NULL, &Creature::SubStateFinishAddObjectToShape, NULL}},
	{"MoveToDropPos", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformMoveToDropPos, NULL, NULL}},
	{"TurnToFaceAwayFromObject", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateTurnToFaceAwayFromObject, &Creature::SubStatePerformTurnToFaceAwayFromObject, NULL, NULL}},
	{"Dance", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiateDance, &Creature::SubStatePerformDance, &Creature::SubStateFinishDance, NULL}},
	{"Wait", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformWait, NULL, NULL}},
	{"WaitForDancersToStopMoving", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformWaitForDancersToStopMoving, NULL, NULL}},
	{"WaitForDancersToStartDancing", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformWaitForDancersToStartDancing, NULL, NULL}},
	{"Heal", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformHeal, NULL, NULL}},
	{"Fight", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiateFight, &Creature::SubStatePerformFight, &Creature::SubStateFinishFight, NULL}},
	{"StopMoving", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateStopMoving, &Creature::SubStatePerformStopMoving, NULL, NULL}},
	{"FollowCamera", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateFollowCamera, &Creature::SubStatePerformFollowCamera, NULL, NULL}},
	{"TurnToFaceCamera", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateTurnToFaceCamera, &Creature::SubStatePerformTurnToFaceCamera, NULL, NULL}},
	{"CommunicateToPlayer", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiateCommunicateToPlayer, &Creature::SubStatePerformCommunicateToPlayer, NULL, NULL}},
	{"ReduceDesire", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStateReduceDesire, NULL, NULL}},
	{"Loop", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStateLoop, NULL, NULL}},
	{"WalkAlongCoast", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, NULL, NULL, NULL}},
	{"CheckValue", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformCheckValue, NULL, NULL}},
	{"Repair", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStateRepair, NULL, NULL}},
	{"DestroyObject", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStateDestroyObject, NULL, NULL}},
	{"CastSpellAtObject", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiateCastSpell, &Creature::SubStatePerformCastSpellAtObject, &Creature::SubStateFinishCastSpell, &Creature::AbortStaticAction}},
	{"CastSpellAtPos", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiateCastSpell, &Creature::SubStatePerformCastSpellAtPos, &Creature::SubStateFinishCastSpell, &Creature::AbortStaticAction}},
	{"PutOutFire", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {NULL, &Creature::SubStatePerformPutOutFire, NULL, NULL}},
	{"DancingDuringEditor", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiateDanceDuringEditing, &Creature::SubStatePerformDance, NULL, NULL}},
	{"CastSpotVisual", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiateCastSpotVisual, &Creature::SubStatePerformCastSpotVisual, &Creature::SubStateFinishCastSpotVisual, &Creature::AbortStaticAction}},
	{"StartTheDance", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {NULL, &Creature::SubStatePerformStartTheDance, NULL, NULL}},
	{"TellVillagersToGoToPos", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformTellVillagersToGoNearPos, NULL, NULL}},
	{"TellVillagersToDance", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformTellVillagersToStartDancing, NULL, NULL}},
	{"StartLooking", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformStartLooking, NULL, NULL}},
	{"StopLooking", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformStopLooking, NULL, NULL}},
	{"RaiseTotem", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiateInteractWithTotem, &Creature::SubStatePerformRaiseTotem, NULL, NULL}},
	{"LowerTotem", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiateInteractWithTotem, &Creature::SubStatePerformLowerTotem, NULL, NULL}},
	{"Drink", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {NULL, &Creature::SubStatePerformDrink, NULL, NULL}},
	{"HealHimself", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {NULL, &Creature::SubStatePerformHealHimself, NULL, NULL}},
	{"InspectCreature", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitialiseInspectCreature, &Creature::SubStatePerformInspectCreature, NULL, NULL}},
	{"CreateHandObjectFromObject", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {NULL, &Creature::SubStatePerformCreateHandObjectFromObject, NULL, NULL}},
	{"PickupCreatedObject", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiatePickUpCreatedObject, &Creature::SubStatePerformPickUpCreatedObject, NULL, NULL}},
	{"ThrowAtPos", CREATURE_SUB_STATE_HELD_OBJECT_REQUIRED, {&Creature::SubStateInitiateThrowAtPos, &Creature::SubStatePerformThrow, &Creature::SubStateFinishThrow, NULL}},
	{"AddReactionToObject", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {NULL, &Creature::SubStatePerformAddReactionToObject, NULL, NULL}},
	{"RequestCreatureDoSomethingWithObject", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {NULL, &Creature::SubStatePerformRequestDoSomethingWithObject, NULL, NULL}},
	{"RunAwayFromPlayer", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateRunAwayFromHand, &Creature::SubStatePerformRunAwayFromHand, NULL, NULL}},
	{"StartFire", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {NULL, &Creature::SubStatePerformSetOnFire, NULL, NULL}},
	{"GoNearObject", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateGoNearObject, &Creature::SubStatePerformGoNearObject, NULL, NULL}},
	{"ObserveObject", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformObserveObject, NULL, NULL}},
	{"FollowInterestingObject", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformFollowInterestingObject, &Creature::SubStateFinishFollowInterestingObject, NULL}},
	{"InScript", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformInScript, NULL, NULL}},
	{"LookAtFlyingObject", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformLookAtFlyingObject, NULL, NULL}},
	{"LookAtCamera", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformLookAtCamera, NULL, NULL}},
	{"FollowHand", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateFollowHand, &Creature::SubStatePerformFollowHand, NULL, NULL}},
	{"FaceDownSlope", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateFaceDownSlope, &Creature::SubStatePerformFaceDownSlope, NULL, NULL}},
	{"AddToHome", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformAddToHome, NULL, NULL}},
	{"WaitForObject", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformWaitForObject, NULL, NULL}},
	{"SeeWhoWinsGame", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateSeeWhoWinsGame, &Creature::SubStatePerformSeeWhoWinsGame, NULL, NULL}},
	{"RespondAfterFight", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateRespondAfterFight, &Creature::SubStatePerformRespondAfterFight, NULL, NULL}},
	{"CreateFootPrint", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformCreateFootPrint, NULL, NULL}},
	{"OrderCreature", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformOrderCreature, NULL, NULL}},
	{"WaitForCreatureToPickUp", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformWaitForCreatureToPickUp, NULL, NULL}},
	{"DemobiliseObject", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformDemobiliseObject, NULL, NULL}},
	{"RemobiliseObject", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformRemobiliseObject, NULL, NULL}},
	{"WaitForever", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformWaitForever, NULL, NULL}},
	{"Kiss", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformKiss, &Creature::SubStateFinishKiss, NULL}},
	{"PointAtPoint", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiatePointAtPoint, &Creature::SubStatePerformPointAtPoint, &Creature::SubStateFinishPoint, NULL}},
	{"PointAtObject", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiatePointAtObject, &Creature::SubStatePerformPointAtObject, &Creature::SubStateFinishPoint, NULL}},
	{"DoTeleport", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformDoTeleport, NULL, &Creature::AbortFizz}},
	{"StopReacting", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformStopReacting, NULL, NULL}},
	{"SetSpeed", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformSetSpeed, NULL, NULL}},
	{"TurnToFaceHand", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiateTurnToFaceHand, &Creature::SubStatePerformTurnToFaceHand, NULL, NULL}},
	{"PickUpFromHand", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiatePickUpFromHand, &Creature::SubStatePerformPickUpFromHand, NULL, NULL}},
	{"TurnToFaceOtherPlayersCamera", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateTurnToFaceOtherPlayersCamera, &Creature::SubStatePerformTurnToFaceOtherPlayersCamera, NULL, NULL}},
	{"Gesture", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateGesture, &Creature::SubStatePerformGesture, &Creature::SubStateFinishGesture, NULL}},
	{"RequestPartner", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformRequestPartner, NULL, NULL}},
	{"WaitForCreatureToBeFree", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateWaitForCreatureToBeFree, &Creature::SubStatePerformWaitForCreatureToBeFree, NULL, NULL}},
	{"ActOnObjectInHand", CREATURE_SUB_STATE_HELD_OBJECT_REQUIRED, {NULL, &Creature::SubStatePerformActOnObjectInHand, NULL, NULL}},
	{"CreateFishFromSea", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {NULL, &Creature::SubStatePerformCreateFishFromSea, NULL, NULL}},
	{"TransportedByTeleport", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateTransportedByTeleport, &Creature::SubStatePerformTransportedByTeleport, &Creature::SubStateFinishTransportedByTeleport, &Creature::AbortFizz}},
	{"PracticeDance", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiatePracticeDance, &Creature::SubStatePerformPracticeDance, NULL, NULL}},
	{"ThrowInPile", CREATURE_SUB_STATE_HELD_OBJECT_REQUIRED, {&Creature::SubStateInitiateThrowInPile, &Creature::SubStatePerformThrow, &Creature::SubStateFinishThrowInPile, NULL}},
	{"LoopAction", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformLoopAction, NULL, NULL}},
	{"ConsiderActionCompleted", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformConsiderActionCompleted, NULL, NULL}},
	{"CreateArena", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformCreateArena, NULL, NULL}},
	{"MoveToArena", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateMoveToArena, NULL, &Creature::SubStateFinishMoveToPos, NULL}},
	{"TellVillagersToEnterState", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformTellVillagersToEnterState, NULL, NULL}},
	{"Resurrect", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformResurrect, NULL, NULL}},
	{"SwapMindWithOtherCreature", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiateSwapMindWithOtherCreature, &Creature::SubStatePerformSwapMindWithOtherCreature, &Creature::SubStateFinishSwapMindWithOtherCreature, NULL}},
	{"Fail", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformFail, NULL, NULL}},
	{"WaitForObjectToBeInMap", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformWaitForObjectToBeInMap, NULL, NULL}},
	{"SetPos", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformSetPos, NULL, NULL}},
	{"HideObjectInHand", CREATURE_SUB_STATE_HELD_OBJECT_REQUIRED, {NULL, &Creature::SubStatePerformHideObjectInHand, NULL, NULL}},
	{"DestroyObjectToUse", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformDestroyObjectToUse, NULL, NULL}},
	{"ClearObjectToActOn", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformClearObjectToActOn, NULL, NULL}},
	{"ClearObjectToUse", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformClearObjectToUse, NULL, NULL}},
	{"Catch", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {NULL, &Creature::SubStatePerformCatch, NULL, NULL}},
	{"KickObject", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformKick, NULL, NULL}},
	{"TranportHome", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateTransportHome, &Creature::SubStatePerformTransportHome, &Creature::SubStateFinishTransportHome, &Creature::AbortFizz}},
	{"RemoveAndCreateSpellFromTotemStatue", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {NULL, &Creature::SubStatePerformRemoveAndCreateSpellFromTotem, NULL, NULL}},
	{"AddAndDestroySpellFromTotemStatue", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {NULL, &Creature::SubStatePerformAddAndDestroySpellFromTotem, NULL, NULL}},
	{"MoveToThrowAtPos", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateMoveToThrowAtPos, &Creature::SubStatePerformMoveToThrowPos, NULL, NULL}},
	{"Lightbulb", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformLightbulb, NULL, NULL}},
	{"ShatterRock", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformShatterRock, NULL, NULL}},
	{"PickUpObjectCreatedByCreature", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiatePickUpCreatedByCreature, &Creature::SubStatePerformPickUp, NULL, NULL}},
	{"DestroyCreatedObject", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformDestroyCreatedObject, NULL, NULL}},
	{"CreatedHandObjectExNihilo", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformCreateHandObjectExNihilo, NULL, NULL}},
	{"ApplyDesireToObject", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformApplyDesireToObject, NULL, NULL}},
	{"MoveToWater", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateMoveToNearestWater, NULL, &Creature::SubStateFinishMoveToPos, NULL}},
	{"StopControlledByTeleport", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformStopControlledByTeleport, NULL, NULL}},
	{"WatchPlayerWhileHeHasYourAttention", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformWatchPlayer, NULL, NULL}},
	{"MakeDisciple", CREATURE_SUB_STATE_HELD_OBJECT_REQUIRED, {NULL, &Creature::SubStatePerformMakeDisciple, NULL, NULL}},
	{"SetDance", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateSetDance, &Creature::SubStatePerformSetDance, NULL, NULL}},
	{"SingleKiss", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformSingleKiss, &Creature::SubStateFinishKiss, NULL}},
	{"EatCreatedObject", CREATURE_SUB_STATE_HELD_OBJECT_REQUIRED, {&Creature::SubStateInitiateEat, &Creature::SubStatePerformEat, &Creature::SubStateFinishEatCreatedObject, NULL}},
	{"PointAtArena", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiatePointAtArena, &Creature::SubStatePerformPointAtPoint, &Creature::SubStateFinishPoint, NULL}},
	{"RestToGetBetter", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiateRestToGetBetter, &Creature::SubStatePerformRestToGetBetter, &Creature::SubStateFinishStaticAction, &Creature::AbortStaticAction}},
	{"TellVillagersToGoToStartDancePos", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformTellVillagersToGoToDancePos, NULL, NULL}},
	{"Sleep", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiateSleep, &Creature::SubStatePerformSleep, NULL, &Creature::AbortStaticAction}},
	{"WaitUntilFree", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformWaitUntilFree, NULL, NULL}},
	{"StopBeingOnFire", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformStopBeingOnFire, NULL, NULL}},
	{"GetAwayFromObject", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateGetAwayFromObject, &Creature::SubStatePerformGetAwayFromObject, NULL, NULL}},
	{"LookAtCameraInWideScreen", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformLookAtCameraInWideScreen, NULL, NULL}},
	{"Talk", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateTalk, &Creature::SubStatePerformTalk, NULL, NULL}},
	{"CreatePickUpThenRemove", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiateCreatePickUpThenRemove, &Creature::SubStateInitiatePickUpCreatedObject, &Creature::SubStatePerformCreatePickUpThenRemove, NULL}},
	{"WaitForSpellsToWearOff", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformWaitForSpellsToWearOff, NULL, NULL}},
#if !defined(VERSION_BW1W100)
	{"CreateMagicFood", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {NULL, &Creature::SubStatePerformCreateMagicFood, NULL, NULL}},
	{"Build", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {NULL, &Creature::SubStatePerformBuild, NULL, NULL}},
	{"EatNearestFoodPile", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {NULL, &Creature::SubStateEatNearestFoodPile, NULL, NULL}},
#ifdef VERSION_BW1WCI
	{"CreatePlannedAbode", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformCreatePlannedAbode, NULL, NULL}},
	{"CreatePlannedCivicBuilding", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformCreatePlannedCivicBuilding, NULL, NULL}},
	{"GoNearPlannedObject", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateGoNearPlannedObject, &Creature::SubStatePerformTurnToFacePos, NULL, NULL}},
	{"FacePlannedObject", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateTurnToFacePlannedObject, &Creature::SubStatePerformTurnToFacePos, NULL, NULL}},
	{"AddPlannedObject", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformAddPlannedObject, NULL, NULL}},
	{"RespondToDice", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiateRespondToDice, &Creature::SubStatePerformIndividualAction, NULL, NULL}},
	{"GoToOtherSideOfObject", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {&Creature::SubStateInitiateGoToOtherSideOfObject, &Creature::SubStatePerformGoToOtherSideOfObject, NULL, NULL}},
	{"CastPlannedAbode", CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN, {&Creature::SubStateInitiateCastPlannedAbode, &Creature::SubStatePerformCastPlannedAbode, &Creature::SubStateFinishCastPlannedAbode, &Creature::AbortStaticAction}},
	{"TurnOffNavigation", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformTurnOffNavigation, NULL, NULL}},
	{"TurnOnNavigation", CREATURE_SUB_STATE_HELD_OBJECT_IGNORED, {NULL, &Creature::SubStatePerformTurnOnNavigation, NULL, NULL}},
#endif
#endif
};
// clang-format on

inline Object* CreatureBelief::GetObjectPointer()
{
	return dynamic_cast<Object*>(Pointer);
}

#define SUB_ACTION_DEBUG_CATEGORY 4

#ifdef VERSION_BW1WCI
#define CREATURE_FAST_SPELL_INTERVAL 60.0f
#define CREATURE_FAST_SPELL_DISTANCE 800.0f
#endif

void Creature::ProcessSubAction()
{
	if (!mind->agenda.SubActionAgenda.IsValid())
	{
		return;
	}
	if (mind->agenda.SubActionAgenda.field_0x20 != 0)
	{
		if (physical->Creature3d->IsPerformingBodyAction())
		{
			return;
		}
		mind->agenda.SubActionAgenda.field_0x20 = 0;
	}
	int (Creature::*function)();
	while (
		(function = CreatureSubStateTableEntry::SubStateTable
	                    [mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.CurrentSubAction].Action]
	                        .Function[mind->agenda.SubActionAgenda.SubActionState]) == NULL)
	{
		if (!mind->agenda.SubActionAgenda.NextPart(this))
		{
			FinishActionSuccessfully();
			return;
		}
	}
	uint32_t index = mind->agenda.SubActionAgenda.CurrentSubAction;
	if (mind->agenda.SubActionAgenda.IsNewSubAction)
	{
#if defined(VERSION_BW1W100)
		mind->FaceState.TimeSinceFace = -1;
		mind->agenda.SubActionAgenda.IsNewSubAction = false;
#else
		mind->agenda.SubActionAgenda.IsNewSubAction = false;
#ifndef VERSION_BW1WCI
		if (index >= mind->agenda.SubActionAgenda.MainSubAction)
		{
			UpdateTykesFromAction();
		}
#endif
		mind->FaceState.TimeSinceFace = -1;
#endif
		switch (
			CreatureSubStateTableEntry::SubStateTable[mind->agenda.SubActionAgenda.SubActions[index].Action].HeldObject)
		{
		case CREATURE_SUB_STATE_HELD_OBJECT_REQUIRED:
			if (physical->Creature3d->HeldObject == NULL)
			{
				FinishActionUnsuccessfully("Stopping because I don't have anything to carry", true, true);
				return;
			}
			break;
		case CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN:
			if (physical->Creature3d->HeldObject != NULL)
			{
				long          action = GetPutDownAction();
				LH3DCreature* creature3d = physical->Creature3d;
				if (creature3d->StartObjectRemoveAction(action))
				{
					return;
				}
				mind->agenda.SubActionAgenda.IsNewSubAction = true;
				return;
			}
			break;
		case CREATURE_SUB_STATE_HELD_OBJECT_PUT_DOWN_UNLESS_TARGET:
			if (physical->Creature3d->HeldObject != NULL)
			{
				CreatureBelief* belief = mind->agenda.SubActionAgenda.SubActions[index].Belief;
				if (belief != NULL && belief->GetObjectPointer() == physical->ObjectCarried)
				{
					if (!mind->agenda.SubActionAgenda.NextIndex())
					{
						FinishActionSuccessfully();
					}
					return;
				}
				if (!physical->Creature3d->StartObjectRemoveAction(C_OBJECT_REMOVE_PUT_DOWN))
				{
					mind->agenda.SubActionAgenda.IsNewSubAction = true;
					return;
				}
				physical->ObjectCarried = NULL;
				return;
			}
			break;
		}
	}
	{
		uint32_t index = mind->agenda.SubActionAgenda.CurrentSubAction;
		uint32_t state = mind->agenda.SubActionAgenda.SubActionState;
		uint32_t turnsPerFace = (uint32_t)(GGameInfo::Info.NumGameTicksPerSecond() * mind->FaceState.FaceInterval);
		if (mind->FaceState.TimeSinceFace > turnsPerFace)
		{
			void (Creature::*face)() = mind->agenda.SubActionAgenda.SubActions[index].FaceFunction;
			if (face != NULL)
			{
				void (Creature::*function)() = mind->agenda.SubActionAgenda.SubActions[index].FaceFunction;
				(this->*function)();
				mind->FaceState.TimeSinceFace = 0;
				mind->FaceState.RandomOffset += GAME_RAND(305, 7);
			}
		}
		else
		{
			mind->FaceState.TimeSinceFace++;
		}
		mind->agenda.SubActionAgenda.TurnsInPart++;
		CREATURE_SUB_STATE_ACTIONS action = mind->agenda.SubActionAgenda.SubActions[index].Action;
		GGlobal::Global.debug.SetMessage(SUB_ACTION_DEBUG_CATEGORY, "SubAction %s",
		                                 CreatureSubStateTableEntry::SubStateTable[action].Name);
		switch ((this->*CreatureSubStateTableEntry::SubStateTable[action].Function[state])())
		{
		case CREATURE_SUB_STATE_RESULT_FAILURE:
			FinishActionUnsuccessfully("Stopping because SubState returned Failure", true, true);
			return;
		case CREATURE_SUB_STATE_RESULT_FINISHED:
			if (GetInterfaceStatusLookingAtCreature() != NULL && mind->IsActionSufficientlyCompletedToBePerceived())
			{
				CreatureContext* context = mind->learning.GetCurrentContext();
				context->WasSeen = true;
				context->GameTurnWasSeen = GGame::g_game->data.GameTurn;
			}
			if (!mind->agenda.SubActionAgenda.NextPart(this))
			{
				FinishActionSuccessfully();
			}
			return;
		case CREATURE_SUB_STATE_RESULT_ABORT:
			FinishActionUnsuccessfully("Stopping because SubState returned Abort", true, true);
			return;
		}
	}
}

CreatureSubActionAgenda::CreatureSubActionAgenda(Creature* creature)
{
	CurrentSubAction = 0;
	IsNewSubAction = true;
	PotResourcesTransferred = false;
	SubActionState = 0;
	NumSubActions = 0;
	TurnsInPart = 0;
	MainSubAction = CREATURE_SUB_ACTION_NO_MAIN;
	field_0xc38 = 0;
	AskedToPlayGame = false;
	Partner = NULL;
	field_0x20 = 0;
	HandStatus = NULL;
	GestureFraction = 0.0f;
	this->creature = creature;
	GoesOutsideConfinedArea = false;
}

#ifdef VERSION_BW1WCI
inline bool32_t CreatureSubActionAgenda::CheckGoesOutsideConfinedArea(SubArgument* argument)
{
	if (argument->GetDestination()->GetDistance2D(creature->ConfinementCentre.GetLHPoint()) >
	        creature->ConfinementRadius &&
	    creature->mind->agenda.CurrentPlan.creature_action != CREATURE_GO_TO_TELEPORT)
	{
		GoesOutsideConfinedArea = true;
		return true;
	}
	if (creature->ConfinedToObject &&
	    argument->GetDestination()->GetDistance2D(creature->HomePos.GetLHPoint()) > creature->DistanceFromHome)
	{
		GoesOutsideConfinedArea = true;
		return true;
	}
	return false;
}
#endif

#ifdef VERSION_BW1WCI
static inline float DivideCount(__int64* count, unsigned long seen, float must)
{
	((unsigned long*)count)[0] = seen;
	((unsigned long*)count)[1] = 0;
	return (float)*count / must;
}
#endif

void CreatureSubActionAgenda::AddSubAction(CREATURE_SUB_STATE_ACTIONS action, SubArgument* argument,
                                           int (Creature::*look_function)(MapCoords* destination),
                                           void (Creature::*face_function)())
{
#ifdef VERSION_BW1WCI
	if ((creature->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) == 0 && creature->IsConfinedToArea() &&
	    creature->GoingBackToConfinedArea == false &&
	    (action >= CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS &&
	     (action <= CREATURE_SUB_STATE_ACTIONS_RUN_AWAY || action == CREATURE_SUB_STATE_ACTIONS_MOVE_TO_DROP_POS)) &&
	    argument->GetDestination() != NULL && CheckGoesOutsideConfinedArea(argument))
	{
		return;
	}
	if ((creature->ConfinedToObject || creature->GetPlayer() != NULL) &&
	    (creature->GameTurnLastCastFastSpell == 0 ||
	     GGame::g_game->data.GameTurn - creature->GameTurnLastCastFastSpell >
	         (uint32_t)(GGameInfo::Info.NumGameTicksPerSecond() * CREATURE_FAST_SPELL_INTERVAL)))
	{
		CreatureMental* mental = creature->mind;
		if (mental->ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_MAGIC,
		                                          MAGIC_TYPE_CREATURE_SPELL_FAST) &&
		    creature->physical->ObjectCarried == NULL &&
		    (creature->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) == 0)
		{
			__int64 count[1];
			float   learnt =
				1.0f < creature->mind->learning.NumTimesMagicActionSeen[MAGIC_TYPE_CREATURE_SPELL_FAST] /
							max(1.0f, creature->NumTimesMagicActionMustBeSeenBeforeItIsLearnt(
										  MAGIC_TYPE_CREATURE_SPELL_FAST) -
			                              1.0f)
					? 1.0f
					: DivideCount(
						  count, creature->mind->learning.NumTimesMagicActionSeen[MAGIC_TYPE_CREATURE_SPELL_FAST],
						  max(1.0f,
			                  creature->NumTimesMagicActionMustBeSeenBeforeItIsLearnt(MAGIC_TYPE_CREATURE_SPELL_FAST) -
			                      1.0f));
			if (learnt >= 1.0f && creature->HasEnoughEnergyToCastSpell(MAGIC_TYPE_CREATURE_SPELL_FAST))
			{
				switch (action)
				{
				case CREATURE_SUB_STATE_ACTIONS_GO_NEAR_OBJECT:
					if (argument->GetObjectA() != NULL &&
					    GUtils::GetDistanceInMetres(argument->GetObjectA()->GetPos(), creature->Pos) >
					        CREATURE_FAST_SPELL_DISTANCE)
					{
						AddCastSpellSubAction(creature->mind->GetBeliefAboutObject(creature),
						                      MAGIC_TYPE_CREATURE_SPELL_FAST);
						creature->GameTurnLastCastFastSpell = GGame::g_game->data.GameTurn;
					}
					break;
				case CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS:
					if (argument->GetDestination()->GetDistance(creature->Pos.GetLHPoint()) >
					    CREATURE_FAST_SPELL_DISTANCE)
					{
						AddCastSpellSubAction(creature->mind->GetBeliefAboutObject(creature),
						                      MAGIC_TYPE_CREATURE_SPELL_FAST);
						creature->GameTurnLastCastFastSpell = GGame::g_game->data.GameTurn;
					}
					break;
				}
			}
		}
	}
#else
	if ((creature->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) == 0 && creature->IsConfinedToArea() &&
	    creature->GoingBackToConfinedArea == false &&
	    (action >= CREATURE_SUB_STATE_ACTIONS_MOVE_TO_POS &&
	     (action <= CREATURE_SUB_STATE_ACTIONS_RUN_AWAY || action == CREATURE_SUB_STATE_ACTIONS_MOVE_TO_DROP_POS)) &&
	    argument->GetDestination() != NULL &&
	    argument->GetDestination()->GetDistance2D(creature->ConfinementCentre.GetLHPoint()) >
	        creature->ConfinementRadius &&
	    creature->mind->agenda.CurrentPlan.creature_action != CREATURE_GO_TO_TELEPORT)
	{
		GoesOutsideConfinedArea = true;
		return;
	}
#endif
	uint32_t index = NumSubActions;
	SubActions[index].Action = action;
	SubActions[index].Belief = NULL;
	if (argument != NULL)
	{
		argument->SetArgumentOfSubActionAgenda(this, index);
		delete argument;
	}
	SubActions[index].LookFunction = look_function;
	SubActions[index].FaceFunction = face_function;
	SubActions[index].OrderTarget = NULL;
	NumSubActions++;
}

void CreatureSubActionAgenda::AddMainSubAction(CREATURE_SUB_STATE_ACTIONS action, SubArgument* argument,
                                               int (Creature::*look_function)(MapCoords* destination),
                                               void (Creature::*face_function)())
{
	AddSubAction(action, argument, look_function, face_function);
	if ("Richard: no subactions?")
	{
		MainSubAction = NumSubActions - 1;
	}
	else
	{
		MainSubAction = 0;
	}
}

void CreatureSubActionAgenda::AddOrder(Creature* creature, CREATURE_SUB_STATE_ACTIONS action, SubArgument* argument,
                                       int (Creature::*look_function)(MapCoords* destination),
                                       void (Creature::*face_function)())
{
	uint32_t index = NumSubActions;
	SubActions[index].Action = CREATURE_SUB_STATE_ACTIONS_ORDER_CREATURE;
	SubActions[index].OrderTarget = creature;
	SubActions[index].OrderAction = action;
	if (argument != NULL)
	{
		argument->SetArgumentOfSubActionAgenda(this, index);
		delete argument;
	}
	SubActions[index].LookFunction = look_function;
	SubActions[index].FaceFunction = face_function;
	NumSubActions++;
}

void CreatureSubActionAgenda::AddCastSpellSubAction(CreatureBelief* belief, unsigned long magic_type)
{
	AddMainSubAction(CREATURE_SUB_STATE_ACTIONS_CAST_SPELL_AT_OBJECT,
	                 NEW(454) SubArgumentObjectIntegerFloatAndSpell(belief, 0x29, 3.0f, magic_type), NULL,
	                 &Creature::SetFaceForActionGrimace);
}

bool32_t CreatureSubActionAgenda::NextIndex()
{
	IsNewSubAction = true;
	CurrentSubAction++;
	ResetPart();
	if (CurrentSubAction >= NumSubActions)
	{
		CurrentSubAction = 0;
		SubActionState = 0;
		return false;
	}
	return true;
}

bool32_t CreatureSubActionAgenda::NextPart(Creature* creature)
{
	SubActionState++;
	if (SubActionState == CREATURE_SUB_ACTION_PARTS)
	{
		if (NumSubActions - 1 == CurrentSubAction)
		{
			creature->UpdateOnCompletion();
		}
		return NextIndex();
	}
	return true;
}

void CreatureSubActionAgenda::ResetPart()
{
	SubActionState = 0;
	TurnsInPart = 0;
}

void CreatureSubActionAgenda::ClearSubActionAgenda()
{
	IsNewSubAction = true;
	CurrentSubAction = 0;
	SubActionState = 0;
	TurnsInPart = 0;
	ResetPart();
	NumSubActions = 0;
	MainSubAction = CREATURE_SUB_ACTION_NO_MAIN;
	GoesOutsideConfinedArea = false;
	for (int i = 0; i < ARRAY_SIZE(SubActions); i++)
	{
		SubActions[i].Belief = NULL;
	}
}
