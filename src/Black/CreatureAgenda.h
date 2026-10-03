#ifndef BW1_DECOMP_CREATURE_AGENDA_INCLUDED_H
#define BW1_DECOMP_CREATURE_AGENDA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t */

#include "Base.h"                 /* For struct Base */
#include "CreatureAction.h"       /* For struct CreatureActionTableEntry */
#include "CreatureCommandState.h" /* For struct CreatureCommandState */
#include "CreatureMimic.h"        /* For struct CreatureMimicState */
#include "CreaturePlan.h"         /* For struct CreaturePlan, struct CreaturePlanState */
#include "CreatureSubAction.h"    /* For struct CreatureSubActionAgenda */
#include "MapCoords.h"            /* For struct MapCoords */

// Forward Declares

class Creature;
class CreatureBelief;
class CreatureInfo;

class CreatureAgenda : public Base
{
public:
	CreaturePlanState       PlanState;
	CreaturePlan            plans[0x2];
	CreatureSubActionAgenda SubActionAgenda;
	CreatureCommandState    CommandState;
	Creature*               creature;
	uint32_t                field_0x1518;
	uint32_t                field_0x151c;
	CreatureMimicState      MimicState;
	uint32_t                field_0x155c;
	CreatureBelief*         belief;
	uint32_t                field_0x1564;
	MapCoords               Destination;
	MapCoords               PosToRunAwayFrom;
	uint32_t                field_0x1580;
	uint32_t                field_0x1584;
	uint32_t                field_0x1588;
	uint8_t                 field_0x158c[0x520];
	uint32_t                field_0x1aac;
	uint32_t                field_0x1ab0;
	uint8_t                 field_0x1ab4[0xc];
	uint32_t                field_0x1ac0;
	uint32_t                field_0x1ac4;
	uint32_t                field_0x1ac8;
	int32_t                 field_0x1acc;
	uint32_t                field_0x1ad0;
	uint32_t                field_0x1ad4;
	uint32_t                field_0x1ad8;
	uint32_t                field_0x1adc;
	uint32_t                field_0x1ae0;
	uint32_t                field_0x1ae4;
	uint32_t                field_0x1ae8;
	uint32_t                field_0x1aec;
	uint32_t                field_0x1af0;
	uint32_t                field_0x1af4;

	// Override methods

	// BW1W120 004d3600 BW1M119 0124b3e0
	virtual ~CreatureAgenda();

	// Constructors

	// BW1W120 004d34b0 BW1M119 0124b950
	CreatureAgenda(CreatureInfo* info);

	// Non-virtual methods

	// BW1W120 0049a7d0 BW1M119 01232ca0
	int ConstructSubActionsForExamineByPickingUp(unsigned long param_1);
	// BW1W120 0049aa20 BW1M119 01232ac0
	int ConstructSubActionsForEatAlive(unsigned long param_1);
	// BW1W120 0049abb0 BW1M119 01232850
	int ConstructSubActionsForPoo(unsigned long param_1);
	// BW1W120 0049adf0 BW1M119 012325c0
	int ConstructSubActionsForHurl(unsigned long param_1);
	// BW1W120 0049b010 BW1M119 01232570
	int ConstructSubActionsForMoveToPos(unsigned long param_1);
	// BW1W120 0049b020 BW1M119 01232390
	int ConstructSubActionsForRunAwayFromObject(unsigned long param_1);
	// BW1W120 0049b1c0 BW1M119 012320f0
	int ConstructSubActionsForSleep(unsigned long param_1);
	// BW1W120 0049b420 BW1M119 01231e10
	int ConstructSubActionsForSleepOnTheSpot(unsigned long param_1);
	// BW1W120 0049b660 BW1M119 01231ca0
	int ConstructSubActionsForStomp(unsigned long param_1);
	// BW1W120 0049b770 BW1M119 01231960
	int ConstructSubActionsForDeath(unsigned long param_1);
	// BW1W120 0049ba10 BW1M119 012318a0
	int ConstructSubActionsForLookAtHand(unsigned long param_1);
	// BW1W120 0049ba70 BW1M119 012315d0
	int ConstructSubActionsForExamineByLooking(unsigned long param_1);
	// BW1W120 0049bcd0 BW1M119 01230bb0
	int ConstructSubActionsForFight(unsigned long param_1);
	// BW1W120 0049c690 BW1M119 01230a40
	int ConstructSubActionsForFollowPlayer(unsigned long param_1);
	// BW1W120 0049c790 BW1M119 01230800
	int ConstructSubActionsForStroke(unsigned long param_1);
	// BW1W120 0049c960 BW1M119 01230760
	int ConstructSubActionsForDanceImpressivelyWithVillagers(unsigned long dance_type);
	// BW1W120 0049c9a0 BW1M119 01230080
	int ConstructSubActionsForDanceWithVillagers(unsigned long param_1);
	// BW1W120 0049cfe0 BW1M119 0122fea0
	int ConstructSubActionsForEatAfterExamining(unsigned long param_1);
	// BW1W120 0049d160 BW1M119 0122fcc0
	int ConstructSubActionsForStompAndEat(unsigned long param_1);
	// BW1W120 0049d2e0 BW1M119 0122f9f0
	int ConstructSubActionsForStoneAndEat(unsigned long param_1);
	// BW1W120 0049d550 BW1M119 0122f8e0
	int ConstructSubActionsForCommunicateState(unsigned long param_1);
	// BW1W120 0049d5e0 BW1M119 0122f6e0
	int ConstructSubActionsForShowPlayerAnObject(unsigned long param_1);
	// BW1W120 0049d750 BW1M119 0122f510
	int ConstructSubActionsForGoToHillAndLook(unsigned long param_1);
	// BW1W120 0049d8d0 BW1M119 0122f300
	int ConstructSubActionsForGoToHillAndSit(unsigned long param_1);
	// BW1W120 0049da90 BW1M119 0122efe0
	int ConstructSubActionsForGoToHillAndWalkAlongRidge(unsigned long param_1);
	// BW1W120 0049dd70 BW1M119 0122ebe0
	int ConstructSubActionsForGiveWoodFromTreeToStoragePit(unsigned long param_1);
	// BW1W120 0049e100 BW1M119 0122eae0
	int ConstructSubActionsForHelpBuildHouse(unsigned long param_1);
	// BW1W120 0049e190 BW1M119 0122e7d0
	int ConstructSubActionsForHelpRepairHouse(unsigned long param_1);
	// BW1W120 0049e460 BW1M119 0122e770
	int ConstructSubActionsForBringToTown(unsigned long param_1);
	// BW1W120 0049e470 BW1M119 0122e500
	int ConstructSubActionsForPutOutFire(unsigned long param_1);
	// BW1W120 0049e650 BW1M119 0122e210
	int ConstructSubActionsForShowImpressiveAnimation(unsigned long param_1);
	// BW1W120 0049e8c0 BW1M119 0122dde0
	int ConstructSubActionsForCastImpressiveSpell(unsigned long param_1);
	// BW1W120 0049ec80 BW1M119 0122db30
	int ConstructSubActionsForThrowInTheSea(unsigned long param_1);
	// BW1W120 0049eee0 BW1M119 0122d7e0
	int ConstructSubActionsForPullSillyFaces(unsigned long param_1);
	// BW1W120 0049f1e0 BW1M119 0122d1e0
	int ConstructSubActionsForLookAtReflection(unsigned long param_1);
	// BW1W120 0049f7d0 BW1M119 0122cdd0
	int ConstructSubActionsForCastFireball(unsigned long param_1);
	// BW1W120 0049fb30 BW1M119 0122cad0
	int ConstructSubActionsForCastExplosion(unsigned long param_1);
	// BW1W120 0049fdc0 BW1M119 0122c810
	int ConstructSubActionsForCastMagicFood(unsigned long param_1);
	// BW1W120 004a0010 BW1M119 0122c5e0
	int ConstructSubActionsForCastMagicForest(unsigned long param_1);
	// BW1W120 004a01e0 BW1M119 0122c4b0
	int ConstructSubActionsForFollowAround(unsigned long param_1);
	// BW1W120 004a0280 BW1M119 0122c3c0
	int ConstructSubActionsForPuke(unsigned long param_1);
	// BW1W120 004a0300 BW1M119 0122c120
	int ConstructSubActionsForBringSomethingBackToTheCitadel(unsigned long param_1);
	// BW1W120 004a0540 BW1M119 0122b3b0
	int ConstructSubActionsForThrowStonesInTheSeaWithFriend(unsigned long param_1);
	// BW1W120 004a1320 BW1M119 0122b340
	int ConstructSubActionsForPlayGameWithCreatureMainPart(unsigned long param_1);
	// BW1W120 004a1330 BW1M119 0122b0d0
	int ConstructSubActionsForPracticeThrow(unsigned long param_1);
	// BW1W120 004a1510 BW1M119 0122b040
	int ConstructSubActionsForDestroyAggressor(unsigned long param_1);
	// BW1W120 004a1540 BW1M119 0122af20
	int ConstructSubActionsForCastShield(unsigned long action_argument);
	// BW1W120 004a15f0 BW1M119 0122a9e0
	int ConstructSubActionsForDrinkFromTheSea(unsigned long param_1);
	// BW1W120 004a1bd0 BW1M119 0122a7b0
	int ConstructSubActionsForRaiseTotemPole(unsigned long param_1);
	// BW1W120 004a1db0 BW1M119 0122a580
	int ConstructSubActionsForLowerTotemPole(unsigned long param_1);
	// BW1W120 004a1f90 BW1M119 0122a400
	int ConstructSubActionsForHealHimself(unsigned long param_1);
	// BW1W120 004a20a0 BW1M119 0122a290
	int ConstructSubActionsForRestToGetBetter(unsigned long param_1);
	// BW1W120 004a2190 BW1M119 0122a080
	int ConstructSubActionsForSmileAtFriend(unsigned long param_1);
	// BW1W120 004a2330 BW1M119 01229dd0
	int ConstructSubActionsForFollowFriendAround(unsigned long param_1);
	// BW1W120 004a2560 BW1M119 012298c0
	int ConstructSubActionsForDanceWithFriend(unsigned long param_1);
	// BW1W120 004a2a40 BW1M119 012296d0
	int ConstructSubActionsForInspectCreature(unsigned long param_1);
	// BW1W120 004a2bc0 BW1M119 01229420
	int ConstructSubActionsForHoldObject(unsigned long param_1);
	// BW1W120 004a2e10 BW1M119 01229120
	int ConstructSubActionsForEatFromStoragePit(unsigned long param_1);
	// BW1W120 004a30e0 BW1M119 01228e50
	int ConstructSubActionsForEatFromField(unsigned long param_1);
	// BW1W120 004a3350 BW1M119 01228a30
	int ConstructSubActionsForGiveFoodFromFieldToStoragePit(unsigned long param_1);
	// BW1W120 004a3720 BW1M119 01228940
	int ConstructSubActionsForPutDown(unsigned long param_1);
	// BW1W120 004a37b0 BW1M119 01228330
	int ConstructSubActionsForGiveToCreature(unsigned long param_1);
	// BW1W120 004a3da0 BW1M119 01228140
	int ConstructSubActionsForThrowAtCamera(unsigned long param_1);
	// BW1W120 004a3f10 BW1M119 01227f60
	int ConstructSubActionsForRunAwayFromPlayer(unsigned long param_1);
	// BW1W120 004a40b0 BW1M119 01227e70
	int ConstructSubActionsForSneeze(unsigned long param_1);
	// BW1W120 004a4140 BW1M119 01227d80
	int ConstructSubActionsForShiver(unsigned long param_1);
	// BW1W120 004a41d0 BW1M119 01227d00
	int ConstructSubActionsForStartFire(unsigned long param_1);
	// BW1W120 004a41f0 BW1M119 01227c10
	int ConstructSubActionsForShowHotness(unsigned long param_1);
	// BW1W120 004a4280 BW1M119 01227b20
	int ConstructSubActionsForScratch(unsigned long param_1);
	// BW1W120 004a4310 BW1M119 01227950
	int ConstructSubActionsForExploreCoast(unsigned long param_1);
	// BW1W120 004a4490 BW1M119 01227780
	int ConstructSubActionsForExploreTowns(unsigned long param_1);
	// BW1W120 004a4610 BW1M119 01227460
	int ConstructSubActionsForSleepByObject(unsigned long param_1);
	// BW1W120 004a48a0 BW1M119 012272f0
	int ConstructSubActionsForExamineByFollowing(unsigned long param_1);
	// BW1W120 004a4980 BW1M119 01227150
	int ConstructSubActionsForLookAtFlyingObject(unsigned long param_1);
	// BW1W120 004a4ab0 BW1M119 01226c50
	int ConstructSubActionsForSitDown(unsigned long param_1);
	// BW1W120 004a4ed0 BW1M119 01226b40
	int ConstructSubActionsForLookAtCamera(unsigned long param_1);
	// BW1W120 004a4f70 BW1M119 01226760
	int ConstructSubActionsForLookAtCameraInWideScreen(unsigned long param_1);
	// BW1W120 004a5320 BW1M119 012266e0
	int ConstructSubActionsForCreateHome(unsigned long param_1);
	// BW1W120 004a5340 BW1M119 01226270
	int ConstructSubActionsForBuildHome(unsigned long param_1);
	// BW1W120 004a5740 BW1M119 01225fb0
	int ConstructSubActionsForBringHome(unsigned long param_1);
	// BW1W120 004a59c0 BW1M119 01225d60
	int ConstructSubActionsForSleepAtPos(unsigned long param_1);
	// BW1W120 004a5ba0 BW1M119 01225c70
	int ConstructSubActionsForShowLearntLesson(unsigned long param_1);
	// BW1W120 004a5c20 BW1M119 01225b80
	int ConstructSubActionsForPracticeDance(unsigned long param_1);
	// BW1W120 004a5ca0 BW1M119 01225a70
	int ConstructSubActionsForGoToMiddleOfScreen(unsigned long param_1);
	// BW1W120 004a5d30 BW1M119 01225930
	int ConstructSubActionsForGoToHand(unsigned long param_1);
	// BW1W120 004a5e00 BW1M119 012257f0
	int ConstructSubActionsForWaveAtPlayer(unsigned long param_1);
	// BW1W120 004a5eb0 BW1M119 01225600
	int ConstructSubActionsForWaveAtObject(unsigned long param_1);
	// BW1W120 004a6020 BW1M119 01225460
	int ConstructSubActionsForLookConfused(unsigned long param_1);
	// BW1W120 004a6140 BW1M119 012251a0
	int ConstructSubActionsForEatFromTree(unsigned long param_1);
	// BW1W120 004a63b0 BW1M119 01224ea0
	int ConstructSubActionsForCastLightningBolt(unsigned long param_1);
	// BW1W120 004a6650 BW1M119 01224b80
	int ConstructSubActionsForCastAggressiveSpellOnObject(unsigned long param_1);
	// BW1W120 004a6910 BW1M119 01224830
	int ConstructSubActionsForCastHelpfulSpellOnObject(unsigned long param_1);
	// BW1W120 004a6be0 BW1M119 01224510
	int ConstructSubActionsForCastPlayfulSpellOnObject(unsigned long param_1);
	// BW1W120 004a6ea0 BW1M119 012243c0
	int ConstructSubActionsForRunToObject(unsigned long param_1);
	// BW1W120 004a6f50 BW1M119 01224360
	int ConstructSubActionsForRunAroundRaceTrack(unsigned long param_1);
	// BW1W120 004a6f60 BW1M119 01224310
	int ConstructSubActionsNullFunction(unsigned long param_1);
	// BW1W120 004a6f70 BW1M119 01223c10
	int ConstructSubActionsForShowFriendDestructiveSpell(unsigned long param_1);
	// BW1W120 004a75d0 BW1M119 01223450
	int ConstructSubActionsForShowFriendCreationSpell(unsigned long param_1);
	// BW1W120 004a7d20 BW1M119 012233c0
	int ConstructSubActionsForShowFriendObject(unsigned long param_1);
	// BW1W120 004a7d40 BW1M119 01222cb0
	int ConstructSubActionsForShowFriendMyHome(unsigned long param_1);
	// BW1W120 004a8410 BW1M119 01222500
	int ConstructSubActionsForShowFriendMyCitadel(unsigned long param_1);
	// BW1W120 004a8b50 BW1M119 01221ed0
	int ConstructSubActionsForKissFriend(unsigned long param_1);
	// BW1W120 004a9120 BW1M119 01221ce0
	int ConstructSubActionsForGoToTeleport(unsigned long param_1);
	// BW1W120 004a92e0 BW1M119 01221250
	int ConstructSubActionsForRunRaceWithFriend(unsigned long param_1);
	// BW1W120 004a9d90 BW1M119 01220410
	int ConstructSubActionsForPlayGameOfThrowingStonesAtCan(unsigned long param_1);
	// BW1W120 004aab90 BW1M119 0121fd40
	int ConstructSubActionsForSitOnTopOfHillWithFriend(unsigned long param_1);
	// BW1W120 004ab200 BW1M119 0121fc30
	int ConstructSubActionsForTakeObjectFromHand(unsigned long param_1);
	// BW1W120 004ab290 BW1M119 0121faf0
	int ConstructSubActionsForGesture(unsigned long gesture_type);
	// BW1W120 004ab350 BW1M119 0121f780
	int ConstructSubActionsForFishAndEat(unsigned long param_1);
	// BW1W120 004ab610 BW1M119 0121f350
	int ConstructSubActionsForGiveFishToStoragePit(unsigned long param_1);
	// BW1W120 004ab9b0 BW1M119 0121efe0
	int ConstructSubActionsForBehaveStrangely(unsigned long param_1);
	// BW1W120 004abcf0 BW1M119 0121ee10
	int ConstructSubActionsForPineForFriend(unsigned long param_1);
	// BW1W120 004abe60 BW1M119 0121ec30
	int ConstructSubActionsForLookForFriend(unsigned long param_1);
	// BW1W120 004abfe0 BW1M119 0121e7e0
	int ConstructSubActionsForCastTeleportAndUseItToGetToMarker(unsigned long param_1);
	// BW1W120 004ac3b0 BW1M119 0121e680
	int ConstructSubActionsForDiePermanently(unsigned long param_1);
	// BW1W120 004ac4c0 BW1M119 0121e360
	int ConstructSubActionsForSitDownByBeach(unsigned long param_1);
	// BW1W120 004ac780 BW1M119 0121e000
	int ConstructSubActionsForShowCreatureYouHateHim(unsigned long param_1);
	// BW1W120 004aca70 BW1M119 0121dd10
	int ConstructSubActionsForAttackerThrowBallAtGoal(unsigned long param_1);
	// BW1W120 004accb0 BW1M119 0121dc90
	int ConstructSubActionsForAttackerKickBallAtGoal(unsigned long action_argument);
	// BW1W120 004accc0 BW1M119 0121db30
	int ConstructSubActionsForDefenderStompOnBall(unsigned long param_1);
	// BW1W120 004acdb0 BW1M119 0121dac0
	int ConstructSubActionsForDefenderClearBall(unsigned long action_argument);
	// BW1W120 004acdc0 BW1M119 0121da50
	int ConstructSubActionsForGoalieCatchBall(unsigned long action_argument);
	// BW1W120 004acdd0 BW1M119 0121d780
	int ConstructSubActionsForGoalieFoulAttacker(unsigned long param_1);
	// BW1W120 004acf70 BW1M119 0121d690
	int ConstructSubActionsForCelebrateGoal(unsigned long param_1);
	// BW1W120 004ad000 BW1M119 0121d590
	int ConstructSubActionsForCommiserateGoal(unsigned long param_1);
	// BW1W120 004ad090 BW1M119 0121d2a0
	int ConstructSubActionsForCastOneOffSpellInHandAggressive(unsigned long param_1);
	// BW1W120 004ad2f0 BW1M119 0121d0b0
	int ConstructSubActionsForRunAwayFromPos(unsigned long param_1);
	// BW1W120 004ad490 BW1M119 0121cd00
	int ConstructSubActionsForExaminePos(unsigned long param_1);
	// BW1W120 004ad820 BW1M119 0121c8a0
	int ConstructSubActionsForGiveFruitFromTreeToStoragePit(unsigned long param_1);
	// BW1W120 004adc20 BW1M119 0121c440
	int ConstructSubActionsForGiveMagicFoodToStoragePit(unsigned long param_1);
	// BW1W120 004ae020 BW1M119 0121bfb0
	int ConstructSubActionsForGiveMagicWoodToStoragePit(unsigned long param_1);
	// BW1W120 004ae450 BW1M119 0121bcf0
	int ConstructSubActionsForEatFromFoodPile(unsigned long param_1);
	// BW1W120 004ae6c0 BW1M119 0121bbf0
	int ConstructSubActionsForSmashStoneInHalf(unsigned long param_1);
	// BW1W120 004ae740 BW1M119 0121ba10
	int ConstructSubActionsForBeSad(unsigned long param_1);
	// BW1W120 004ae8e0 BW1M119 0121b890
	int ConstructSubActionsForBeingIdle(unsigned long param_1);
	// BW1W120 004aea10 BW1M119 0121b720
	int ConstructSubActionsForGoHome(unsigned long param_1);
	// BW1W120 004aeb40 BW1M119 0121b620
	int ConstructSubActionsForPointAtObject(unsigned long param_1);
	// BW1W120 004aebd0 BW1M119 0121b370
	int ConstructSubActionsForBringFoodHome(unsigned long param_1);
	// BW1W120 004aee40 BW1M119 0121aac0
	int ConstructSubActionsForHangAroundAtHome(unsigned long param_1);
	// BW1W120 004af640 BW1M119 0121aa30
	int ConstructSubActionsForGoOutAndLookForFood(unsigned long param_1);
	// BW1W120 004af660 BW1M119 0121a860
	int ConstructSubActionsForShowPlayerHowNiceYouReckon(unsigned long param_1);
	// BW1W120 004af760 BW1M119 0121a6b0
	int ConstructSubActionsForPointAtCamera(unsigned long param_1);
	// BW1W120 004af890 BW1M119 0121a500
	int ConstructSubActionsForPointAtHand(unsigned long param_1);
	// BW1W120 004af9c0 BW1M119 0121a330
	int ConstructSubActionsForRunHome(unsigned long param_1);
	// BW1W120 004afb40 BW1M119 0121a0d0
	int ConstructSubActionsForPlayThrowingGameWithPlayer(unsigned long param_1);
	// BW1W120 004afd10 BW1M119 01219de0
	int ConstructSubActionsForBeSillyWithPlayer(unsigned long param_1);
	// BW1W120 004affc0 BW1M119 01219b20
	int ConstructSubActionsForShowCreatureHowNiceYouReckon(unsigned long param_1);
	// BW1W120 004b0250 BW1M119 01219950
	int ConstructSubActionsForBeFrightenedOnTheSpot(unsigned long param_1);
	// BW1W120 004b03c0 BW1M119 01219800
	int ConstructSubActionsForPooDiscretely(unsigned long action_argument);
	// BW1W120 004b04b0 BW1M119 01219790
	int ConstructSubActionsForWatchTelly(unsigned long action_argument);
	// BW1W120 004b04c0 BW1M119 01219720
	int ConstructSubActionsForFart(unsigned long action_argument);
	// BW1W120 004b04d0 BW1M119 01219600
	int ConstructSubActionsForRestOnTheSpot(unsigned long param_1);
	// BW1W120 004b0590 BW1M119 012193b0
	int ConstructSubActionsForGoHomeToRecover(unsigned long param_1);
	// BW1W120 004b0770 BW1M119 012192f0
	int ConstructSubActionsForMimicPlayer(unsigned long param_1);
	// BW1W120 004b07d0 BW1M119 01219180
	int ConstructSubActionsForGetHigh(unsigned long param_1);
	// BW1W120 004b08e0 BW1M119 01219070
	int ConstructSubActionsForSwapMindWithOtherCreature(unsigned long param_1);
	// BW1W120 004b0970 BW1M119 01218ef0
	int ConstructSubActionsForLookButDontApproach(unsigned long param_1);
	// BW1W120 004b0aa0 BW1M119 01218be0
	int ConstructSubActionsForCastLightningStorm(unsigned long param_1);
	// BW1W120 004b0d50 BW1M119 01218a70
	int ConstructSubActionsForLookForever(unsigned long param_1);
	// BW1W120 004b0e60 BW1M119 01218790
	int ConstructSubActionsForLookAtCitadel(unsigned long param_1);
	// BW1W120 004b1100 BW1M119 01218500
	int ConstructSubActionsForLookAtMountains(unsigned long param_1);
	// BW1W120 004b1330 BW1M119 01218200
	int ConstructSubActionsForLookOutToSea(unsigned long param_1);
	// BW1W120 004b15d0 BW1M119 01218050
	int ConstructSubActionsForLookAtSun(unsigned long param_1);
	// BW1W120 004b1710 BW1M119 01217db0
	int ConstructSubActionsForLookAtMoon(unsigned long param_1);
	// BW1W120 004b18e0 BW1M119 01217d50
	int ConstructSubActionsForLookDownCliff(unsigned long param_1);
	// BW1W120 004b18f0 BW1M119 01217cd0
	int ConstructSubActionsForExploreAndCastTeleport(unsigned long param_1);
	// BW1W120 004b1900 BW1M119 01217bd0
	int ConstructSubActionsForHurlObjectInHand(unsigned long param_1);
	// BW1W120 004b1980 BW1M119 01217b40
	int ConstructSubActionsForEatWithFriend(unsigned long param_1);
	// BW1W120 004b19a0 BW1M119 01217500
	int ConstructSubActionsForDrinkWithFriend(unsigned long param_1);
	// BW1W120 004b1fd0 BW1M119 01216f10
	int ConstructSubActionsForPooWithFriend(unsigned long param_1);
	// BW1W120 004b2540 BW1M119 01216850
	int ConstructSubActionsForSitWithFriend(unsigned long param_1);
	// BW1W120 004b2b90 BW1M119 012162e0
	int ConstructSubActionsForBeHappyWithFriend(unsigned long param_1);
	// BW1W120 004b3030 BW1M119 01215c40
	int ConstructSubActionsForSleepWithFriend(unsigned long param_1);
	// BW1W120 004b35e0 BW1M119 01215580
	int ConstructSubActionsForGoToBeachWithFriend(unsigned long param_1);
	// BW1W120 004b3c80 BW1M119 01215140
	int ConstructSubActionsForEnterCitadel(unsigned long param_1);
	// BW1W120 004b4060 BW1M119 01214fc0
	int ConstructSubActionsForBePatheticWithPlayer(unsigned long param_1);
	// BW1W120 004b4160 BW1M119 01214e20
	int ConstructSubActionsForBeCrossWithPlayer(unsigned long param_1);
	// BW1W120 004b4280 BW1M119 01214c10
	int ConstructSubActionsForKissFriendsArse(unsigned long param_1);
	// BW1W120 004b4430 BW1M119 01214400
	int ConstructSubActionsForArgueWithFriend(unsigned long param_1);
	// BW1W120 004b4c20 BW1M119 01213ef0
	int ConstructSubActionsForMopeAboutWithFriend(unsigned long param_1);
	// BW1W120 004b50d0 BW1M119 012139b0
	int ConstructSubActionsForConfuseFriend(unsigned long param_1);
	// BW1W120 004b55d0 BW1M119 012133a0
	int ConstructSubActionsForShowOffToFriend(unsigned long param_1);
	// BW1W120 004b5bb0 BW1M119 01213140
	int ConstructSubActionsForCastOneOffSpellInHandCompassionate(unsigned long param_1);
	// BW1W120 004b5d80 BW1M119 01212e50
	int ConstructSubActionsForCastOneOffSpellInHandPlayful(unsigned long param_1);
	// BW1W120 004b5fe0 BW1M119 01212c50
	int ConstructSubActionsForCastOneOffSpellInHandToRestoreHealth(unsigned long param_1);
	// BW1W120 004b6150 BW1M119 012128f0
	int ConstructSubActionsForPickUpAndCastOneOffSpellAggressive(unsigned long param_1);
	// BW1W120 004b6430 BW1M119 01212580
	int ConstructSubActionsForPickUpAndCastOneOffSpellCompassionate(unsigned long param_1);
	// BW1W120 004b6710 BW1M119 01212220
	int ConstructSubActionsForPickUpAndCastOneOffSpellPlayful(unsigned long param_1);
	// BW1W120 004b69f0 BW1M119 01211f20
	int ConstructSubActionsForPickUpAndCastOneOffSpellToRestoreHealth(unsigned long param_1);
	// BW1W120 004b6c80 BW1M119 01211d10
	int ConstructSubActionsForKick(unsigned long param_1);
	// BW1W120 004b6e20 BW1M119 01211c20
	int ConstructSubActionsForCatch(unsigned long param_1);
	// BW1W120 004b6ea0 BW1M119 01211a00
	int ConstructSubActionsForCastMagicWater(unsigned long param_1);
	// BW1W120 004b7030 BW1M119 01211210
	int ConstructSubActionsForPlayThrowingGameWithFriend(unsigned long param_1);
	// BW1W120 004b7800 BW1M119 01210f50
	int ConstructSubActionsForCastMagicWaterOnMyself(unsigned long param_1);
	// BW1W120 004b79f0 BW1M119 01210c30
	int ConstructSubActionsForNoticeHelpfulAction(unsigned long param_1);
	// BW1W120 004b7cb0 BW1M119 01210990
	int ConstructSubActionsForNoticeAggressiveAction(unsigned long param_1);
	// BW1W120 004b7f00 BW1M119 012106f0
	int ConstructSubActionsForNoticeAction(unsigned long param_1);
	// BW1W120 004b8150 BW1M119 012102e0
	int ConstructSubActionsForPutFoodFromFieldByWorshipSite(unsigned long param_1);
	// BW1W120 004b8510 BW1M119 0120ff90
	int ConstructSubActionsForPutFishByWorshipSite(unsigned long param_1);
	// BW1W120 004b8800 BW1M119 0120ff10
	int ConstructSubActionsForGiveWoodFromTreeToBuildingSite(unsigned long action_argument);
	// BW1W120 004b8810 BW1M119 0120fc20
	int ConstructSubActionsForRepositionObjectToUseNearObjectToActOn(unsigned long param_1);
	// BW1W120 004b8a60 BW1M119 0120f960
	int ConstructSubActionsForDanceOutsideWorshipSite(unsigned long param_1);
	// BW1W120 004b8cc0 BW1M119 0120f770
	int ConstructSubActionsForDanceAroundArtefact(unsigned long param_1);
	// BW1W120 004b8e50 BW1M119 0120f2e0
	int ConstructSubActionsForStealSpell(unsigned long param_1);
	// BW1W120 004b9280 BW1M119 0120f0d0
	int ConstructSubActionsForStealScaffold(unsigned long param_1);
	// BW1W120 004b9430 BW1M119 0120f040
	int ConstructSubActionsForCatchFireball(unsigned long param_1);
	// BW1W120 004b9450 BW1M119 0120e940
	int ConstructSubActionsForTellCreatureToSodOff(unsigned long param_1);
	// BW1W120 004b9ad0 BW1M119 0120e250
	int ConstructSubActionsForOrderFriendAround(unsigned long param_1);
	// BW1W120 004ba150 BW1M119 0120ded0
	int ConstructSubActionsForTakeFoodFromFieldHome(unsigned long param_1);
	// BW1W120 004ba4b0 BW1M119 0120db80
	int ConstructSubActionsForTakeFishHome(unsigned long param_1);
	// BW1W120 004ba7b0 BW1M119 0120d7e0
	int ConstructSubActionsForWaveAtFriend(unsigned long param_1);
	// BW1W120 004baaf0 BW1M119 0120d680
	int ConstructSubActionsForDeadForever(unsigned long param_1);
	// BW1W120 004bac00 BW1M119 0120d3f0
	int ConstructSubActionsForStealAndPutInTown(unsigned long param_1);
	// BW1W120 004bae20 BW1M119 0120d170
	int ConstructSubActionsForStealAndPutByCitadel(unsigned long param_1);
	// BW1W120 004bb000 BW1M119 0120ceb0
	int ConstructSubActionsForBreakRock(unsigned long param_1);
	// BW1W120 004bb250 BW1M119 0120cc00
	int ConstructSubActionsForNoticeStealingAction(unsigned long param_1);
	// BW1W120 004bb4a0 BW1M119 0120c950
	int ConstructSubActionsForNoticePlayfulAction(unsigned long param_1);
	// BW1W120 004bb6f0 BW1M119 0120c280
	int ConstructSubActionsForEatFromFieldWithFriend(unsigned long param_1);
	// BW1W120 004bbd80 BW1M119 0120b760
	int ConstructSubActionsForGetFriendToGiveMeFoodFromField(unsigned long param_1);
	// BW1W120 004bc8c0 BW1M119 0120b2f0
	int ConstructSubActionsForEatFishWithFriend(unsigned long param_1);
	// BW1W120 004bcca0 BW1M119 0120a680
	int ConstructSubActionsForGetFriendToGiveMeFish(unsigned long param_1);
	// BW1W120 004bd920 BW1M119 0120a090
	int ConstructSubActionsForAttackTownWithFriend(unsigned long param_1);
	// BW1W120 004bdec0 BW1M119 01209aa0
	int ConstructSubActionsForHelpTownWithFriend(unsigned long param_1);
	// BW1W120 004be460 BW1M119 012099a0
	int ConstructSubActionsForExamineObjectInHand(unsigned long param_1);
	// BW1W120 004be4e0 BW1M119 012098a0
	int ConstructSubActionsForEatObjectInHand(unsigned long param_1);
	// BW1W120 004be570 BW1M119 012096e0
	int ConstructSubActionsForStrokeObjectInHand(unsigned long param_1);
	// BW1W120 004be6c0 BW1M119 01209590
	int ConstructSubActionsForThrowObjectInHand(unsigned long param_1);
	// BW1W120 004be7a0 BW1M119 01209260
	int ConstructSubActionsForGetAttentionFromFriend(unsigned long param_1);
	// BW1W120 004beaa0 BW1M119 01208df0
	int ConstructSubActionsForExamineOtherCreatureWithFriend(unsigned long param_1);
	// BW1W120 004beeb0 BW1M119 01208d80
	int ConstructSubActionsForGiveFriendToy(unsigned long action_argument);
	// BW1W120 004beec0 BW1M119 01208a30
	int ConstructSubActionsForSacrifice(unsigned long param_1);
	// BW1W120 004bf140 BW1M119 012086e0
	int ConstructSubActionsForSetFireToObject(unsigned long param_1);
	// BW1W120 004bf440 BW1M119 01208630
	int ConstructSubActionsForWatchPlayer(unsigned long param_1);
	// BW1W120 004bf490 BW1M119 012082e0
	int ConstructSubActionsForDropCowInStoragePit(unsigned long param_1);
	// BW1W120 004bf770 BW1M119 01208260
	int ConstructSubActionsForCastShieldAroundTown(unsigned long action_argument);
	// BW1W120 004bf780 BW1M119 01208030
	int ConstructSubActionsForMakeDiscipleBreeder(unsigned long param_1);
	// BW1W120 004bf940 BW1M119 01207fa0
	int ConstructSubActionsForPlayGameWithVillagers(unsigned long param_1);
	// BW1W120 004bf960 BW1M119 01207cc0
	int ConstructSubActionsForTakeVillagerHomeToSleep(unsigned long param_1);
	// BW1W120 004bfbe0 BW1M119 012078f0
	int ConstructSubActionsForKickBallAround(unsigned long param_1);
	// BW1W120 004bffa0 BW1M119 01207620
	int ConstructSubActionsForThrowBallAtObject(unsigned long param_1);
	// BW1W120 004c0220 BW1M119 01207390
	int ConstructSubActionsForDanceOnYourOwnByTheSea(unsigned long param_1);
	// BW1W120 004c0470 BW1M119 012072f0
	int ConstructSubActionsForDancePlayfullyWithVillagersWatching(unsigned long param_1);
	// BW1W120 004c0490 BW1M119 01207250
	int ConstructSubActionsForDancePlayfullyWithVillagersParticipating(unsigned long param_1);
	// BW1W120 004c04b0 BW1M119 012071c0
	int ConstructSubActionsForTellVillagersAStory(unsigned long param_1);
	// BW1W120 004c04d0 BW1M119 01206fc0
	int ConstructSubActionsForPlayfullyFrightenVillagers(unsigned long param_1);
	// BW1W120 004c0640 BW1M119 01206bc0
	int ConstructSubActionsForCastAmusingSpellOnCreature(unsigned long param_1);
	// BW1W120 004c09d0 BW1M119 01206a00
	int ConstructSubActionsForKickTree(unsigned long param_1);
	// BW1W120 004c0b30 BW1M119 012066a0
	int ConstructSubActionsForPlayfullyInteractWithVillager(unsigned long param_1);
	// BW1W120 004c0e30 BW1M119 012064d0
	int ConstructSubActionsForPlayfullyKissVillager(unsigned long param_1);
	// BW1W120 004c0f70 BW1M119 01206210
	int ConstructSubActionsForBringVillagerToWorshipSite(unsigned long param_1);
	// BW1W120 004c11c0 BW1M119 01205e60
	int ConstructSubActionsForStealFoodFromStoragePit(unsigned long param_1);
	// BW1W120 004c1510 BW1M119 01205ab0
	int ConstructSubActionsForStealWoodFromStoragePit(unsigned long param_1);
	// BW1W120 004c1860 BW1M119 01205890
	int ConstructSubActionsForStealSpellSeed(unsigned long param_1);
	// BW1W120 004c1a10 BW1M119 01205560
	int ConstructSubActionsForStealAnimal(unsigned long param_1);
	// BW1W120 004c1cd0 BW1M119 012052e0
	int ConstructSubActionsForStealVillager(unsigned long param_1);
	// BW1W120 004c1ed0 BW1M119 01205170
	int ConstructSubActionsForHowlAtFriend(unsigned long param_1);
	// BW1W120 004c1fd0 BW1M119 01205040
	int ConstructSubActionsForHowlAtPlayer(unsigned long param_1);
	// BW1W120 004c2090 BW1M119 01204cd0
	int ConstructSubActionsForTellFriendAJoke(unsigned long param_1);
	// BW1W120 004c2390 BW1M119 01204ba0
	int ConstructSubActionsForPrayToPlayer(unsigned long param_1);
	// BW1W120 004c2450 BW1M119 012049f0
	int ConstructSubActionsForPrayAtCitadel(unsigned long param_1);
	// BW1W120 004c25d0 BW1M119 01204680
	int ConstructSubActionsForTalkToFriend(unsigned long param_1);
	// BW1W120 004c28d0 BW1M119 01204380
	int ConstructSubActionsForPointOutHighlight(unsigned long param_1);
	// BW1W120 004c2bb0 BW1M119 012040f0
	int ConstructSubActionsForTakeToyHome(unsigned long param_1);
	// BW1W120 004c2de0 BW1M119 01203f90
	int ConstructSubActionsForStrokeToy(unsigned long param_1);
	// BW1W120 004c2ec0 BW1M119 01203bf0
	int ConstructSubActionsForThrowDie(unsigned long param_1);
	// BW1W120 004c31e0 BW1M119 01203960
	int ConstructSubActionsForWaterTreeForTown(unsigned long param_1);

	// BW1W120 009d1678
	static CreatureActionTableEntry ActionTable[NUM_CREATURE_ACTIONS];
};

#endif /* BW1_DECOMP_CREATURE_AGENDA_INCLUDED_H */
