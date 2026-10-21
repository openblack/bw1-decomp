#ifndef BW1_DECOMP_CREATURE_MENTAL_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <stdio.h>  /* For FILE */

#include <Lionhead/LHLib/ver5.0/LHFastPointer.h> /* For struct LHFastPointer */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>  /* For struct LHLinkedList */

#include "Base.h"                        /* For struct Base */
#include "CreatureAction.h"              /* For struct CreatureActionOpinions, struct CreaturePreviousActions */
#include "CreatureActionsKnownAbout.h"   /* For struct CreatureActionsKnownAbout */
#include "CreatureAgenda.h"              /* For struct CreatureAgenda */
#include "CreatureAttitudeToPlayer.h"    /* For struct CreatureAttitudeToPlayer */
#include "CreatureExplorationMap.h"      /* For struct CreatureExplorationMap */
#include "CreatureFace.h"                /* For struct CreatureFaceState */
#include "CreatureLearning.h"            /* For struct CreatureLearning, enum LESSON_TYPE, enum LESSON_ORIGIN_TYPE */
#include "CreatureLook.h"                /* For struct CreatureLookState */
#include "CreatureMentalAttributeTest.h" /* For struct DecisionTreeCollection */
#include "CreatureMentalBeliefs.h"       /* For struct CreatureBeliefs */
#include "CreatureMentalDebug.h"         /* For struct CreatureMentalDebug */
#include "CreatureMentalDesire.h"        /* For struct CreatureDesires */
#include "CreatureObjectsInspected.h"    /* For struct CreatureObjectsInspected */
#include "CreaturePlan.h"                /* For CreatureDesiresTried */
#include "CreatureVisionState.h"         /* For struct CreatureVisionState */
#include "MapCoords.h"                   /* For struct MapCoords */

// Forward Declares

class Creature;
class CreatureAttitudeToCreature;
class CreatureBelief;
class CreatureInfo;
class GameThingWithPos;
class GPlayer;

enum CREATURE_DECISION_TYPE
{
	CREATURE_DECISION_NORMAL,
};

struct CreatureActionConsidered
{
	float Priority;
	float NoveltyModification;
	float Possible;
};

struct CreatureInnatePersonality
{
	float Niceness;
	float Aggression;
	float Lethargy;
	float Friendliness;
	float Communicativeness;
	float Extroversion;
	float InterestInThingToLookAt[THING_TO_LOOK_AT_TYPE_LAST];

	// BW1W120 004e2e70 BW1M119 0126ad50
	CreatureInnatePersonality(const CreatureInfo* info);
};

class CreatureMental : public Base
{
public:
	// BW1W120 00c82f48
	static bool32_t DebugDrawConfinement;
	// BW1W120 00c82f4c
	static bool32_t DebugDrawLine;
	// BW1W120 00c82f50
	static bool32_t DebugDrawMarker;
	// BW1W120 00c82f54
	static bool32_t DebugDrawPath;
	// BW1W120 00c82f58
	static bool32_t DebugDrawObjectToActOn;

	// BW1W120 004e7820 BW1M119 0126dfb0
	void                                      SaveMind(char* path);
	CreatureDesires                           desires;
	CreatureAgenda                            agenda;
	CreatureBeliefs                           beliefs;
	DecisionTreeCollection                    decision_tree_collection;
	CreatureActionOpinions                    ActionOpinions;
	CreatureLearning                          learning;
	CreatureAttitudeToPlayer                  AttitudeToPlayer;
	LHLinkedList<CreatureAttitudeToCreature*> AttitudesToCreatures;
	CreatureActionsKnownAbout                 ActionsKnownAbout;
	CreatureInnatePersonality                 InnatePersonality;
	CreatureVisionState                       VisionState;
	CreatureExplorationMap                    ExplorationMap;
	CreaturePreviousActions                   PreviousActions;
	CreatureLookState                         LookState;
	uint8_t                                   field_0x1d3f8[0x14];
	CreatureFaceState                         FaceState;
	CreatureObjectsInspected                  ObjectsInspected;
	CreatureBelief*                           ContextBelief;
	CreatureBelief*                           CitadelHeartBelief;
	bool32_t                                  AvoidOwnPlayersThingsWhenAngry;
	CreatureActionConsidered                  ActionsConsidered[NUM_CREATURE_DESIRES][MAX_NUM_ACTIONS_FOR_EACH_DESIRE];
	CreatureMentalDebug                       debug;
	LHFastPointer<Creature>                   creature;
	TOWN_DESIRE_INFO                          TownDesireToHelp;
	uint32_t                                  TownDesireToHelpIndex;
	bool32_t                                  CanChooseTownDesireToHelp;
	float                                     TownDesireToHelpLevel;
	uint32_t                                  NumTimesTownDesireHelped;
	bool32_t                                  IsDemobilised;
	uint32_t                                  GameTurnLastReactedToFlyingObject;
	uint32_t                                  GameTurnLastReactedToObjectCrushed;
	uint32_t                                  field_0x20d3c;
#ifdef VERSION_BW1WCI
	uint32_t ci_field_0xd068;
#endif

	// Constructors

	// BW1W120 004d22f0 BW1M119 0124aa30
	CreatureMental(Creature* creature, const CreatureInfo* info, const MapCoords& pos, GPlayer* player);

	// Override methods

	// BW1W120 004d2590 BW1M119 0124a460
	virtual ~CreatureMental();

	// Non-virtual methods

#ifndef VERSION_BW1WCI
	// BW1W120 004d26e0 BW1M119 inlined
	void ClearActionsConsidered();
#endif // VERSION_BW1WCI
	// BW1W120 004d2710 BW1M119 0124a3d0
	bool32_t IsReadyToFinishAction();
	// BW1W120 004d2740 BW1M119 0124a320
	void CheckIfIHaveSeenTheMostImportantObjects();
	// BW1W120 004d2780 BW1M119 0124a210
	void CheckIfIHaveSeenAnImportantObject(CreatureBelief* belief, bool32_t looked_at_pos, bool32_t seen);

	// BW1W120 004d3800 BW1M119 0124b5a0
	bool32_t IsActionSufficientlyCompletedToBePerceived();
	// BW1W120 004d7b80 BW1M119 01258470
	CreatureBelief* GetBeliefAboutObject(GameThingWithPos* object);
	// BW1W120 004d7bd0 BW1M119 01258250
	CreatureBelief* AddBeliefAboutObject(Creature* creature, GameThingWithPos* object);
	// BW1W120 004d7af0 BW1M119 012586a0
	CreatureBelief* CreateBeliefAboutContext();
	// BW1W120 004d7b00 BW1M119 012585c0
	CreatureBelief* CreateBelief(GameThingWithPos* object, GPlayer* player);
	// BW1W120 004d7b50 BW1M119 01258520
	void DeleteBelief(CreatureBelief* belief);
	// BW1W120 004d7d90 BW1M119 01257f90
	bool32_t IsBeliefCurrentlyUsedInAgenda(CreatureBelief* belief);
	// BW1W120 004d82a0 BW1M119 01257610
	void UpdateBeliefAboutContext();
	// BW1W120 004d83c0 BW1M119 01256b70
	void RemoveBeliefsAboutDeletedObjects();
	// BW1W120 004de800 BW1M119 01260940
	void UpdateSourcesFromBelief(CreatureBelief* belief);
	// BW1W120 004e1570 BW1M119 01267200
	void ReconsiderDecision();
	// BW1W120 004c45c0 BW1M119 012355d0
	float CalculateDesirabilityOfProposedActivity(CREATURE_DESIRES desire, GameThingWithPos* activity_object);
	// BW1W120 004c4640 BW1M119 null
	float FUN004c4640(CREATURE_DESIRES desire, GameThingWithPos* activity_object, CREATURE_ACTION action,
	                  GameThingWithPos* object_to_act_on, GameThingWithPos* object_to_use);
	// BW1W120 004c47d0 BW1M119 null
	float FUN004c47d0(CREATURE_DESIRES desire, GameThingWithPos* activity_object);
	// BW1W120 004c4870 BW1M119 null
	float FUN004c4870(CREATURE_DESIRES desire, GameThingWithPos* activity_object, CREATURE_ACTION action,
	                  GameThingWithPos* object_to_act_on, GameThingWithPos* object_to_use);
	// BW1W120 004e9900 BW1M119 01271ea0
	float GetActivityObjectUsefulness(CreatureBelief* object, CREATURE_DESIRES desire);
	// BW1W120 004e9bb0 BW1M119 01271b80
	float GetUsefulnessOfUsingObject(CreatureBelief* object, CREATURE_ACTION action);
	// BW1W120 004f1ef0 BW1M119 0127aaf0
	float CalculateDistancePriority(CREATURE_DESIRES desire, CreatureBelief* object);
	// BW1W120 004f1e30 BW1M119 0127acf0
	CreatureBelief* FindBestObjectToUseForAction(CREATURE_DESIRES desire, CREATURE_ACTION action,
	                                             CreatureBelief* object_to_act_on);
	// BW1W120 004f17f0 BW1M119 0127b7a0
	CREATURE_ACTION GetNthActionForPlan(CreaturePlan& plan, unsigned long index);
	// BW1W120 004f1a10 BW1M119 0127b540
	bool32_t ConsiderAction(CREATURE_DESIRES desire, CREATURE_ACTION action, CreatureBelief* object_to_act_on,
	                        CreatureActionsTried* actions_tried, CreaturePlan& plan);
	// BW1W120 004e36c0 BW1M119 015ef9d0
	bool32_t IsObjectSuitableAsActivityObject(CREATURE_DESIRES desire, GameThingWithPos* object);
	// BW1W120 004e3820 BW1M119 015ef570
	bool32_t IsObjectSuitableToUse(CreatureBelief* belief, CREATURE_ACTION action);
	// BW1W120 004e9a70 BW1M119 01271bf0
	float GetObjectToActOnUsefulness(CreatureBelief* object, CREATURE_DESIRES desire);
	// BW1W120 004e3730 BW1M119 015ef7e0
	bool32_t IsObjectSuitableForDesire(CreatureBelief* belief, CREATURE_DESIRES desire);
	// BW1W120 004c5030 BW1M119 015e8980
	void ConsiderActivitiesWhichDontRequireAnObject(CreaturePlan& plan, CreatureDesiresTried& desires_tried,
	                                                CREATURE_DECISION_TYPE decision_type,
	                                                bool32_t               allow_no_object_to_act_on);
	// BW1W120 004c5130 BW1M119 015e86f0
	void AssessParticularObject(CreatureBelief* belief, CreaturePlan& plan, CreatureDesiresTried& desires_tried,
	                            CREATURE_DECISION_TYPE decision_type);
	// BW1W120 004c5280 BW1M119 015e85e0
	CREATURE_DESIRES FindBestGoalForActivityObject(CreatureBelief* belief, CreatureDesiresTried& desires_tried);
	// BW1W120 004c52d0 BW1M119 015e8450
	bool32_t FindSomethingToDoOnParticularObject(CreatureBelief* activity_object, CreatureBelief* object_to_act_on,
	                                             CreaturePlan& plan);
	// BW1W120 004c5390 BW1M119 015e81f0
	bool32_t FindSomethingToDoOnObjectUsingObject(CreatureBelief* activity_object, CreatureBelief* object_to_act_on,
	                                              CreatureBelief* object_to_use, CreaturePlan& plan);
	// BW1W120 004e3800 BW1M119 015ef750
	bool32_t IsObjectSuitableForAction(GameThingWithPos* object, CREATURE_ACTION action);
	// BW1W120 004d2800 BW1M119 null
	void EmpathiseWithPlayer(CREATURE_DESIRE_SOURCE source);
	// BW1W120 004c4c80 BW1M119 012364d0
	CreatureAttitudeToCreature* GetAttitudeToCreature(Creature* other_creature);
	// BW1W120 004c4d20 BW1M119 012363b0
	void UpdateAttitudesToCreatures();
	// BW1W120 004c4d50 BW1M119 01236160
	void UpdateHowNiceIsCreature(Creature* other_creature, float niceness);
	// BW1W120 004c4f60 BW1M119 01235fc0
	void UpdateHowMuchAttentionPaidToMeByCreature(Creature* other_creature, float attention);
	// BW1W120 004e0410 BW1M119 01268cf0
	float GetBestContextToLearnFrom(CreatureContext& context);
	// BW1W120 004e06a0 BW1M119 01268230
	void RespondToPlayerFeedback(float feedback);
	// BW1W120 004e0fc0 BW1M119 01267cc0
	void LearnLessonsFromFeedback(CreatureContext& context, float feedback, bool32_t player_involved,
	                              LESSON_ORIGIN_TYPE origin, unsigned long* lesson_count);
	// BW1W120 004e1080 BW1M119 01267ba0
	void UpdateAttitudeToPlayerFromFeedback(float feedback);
	// BW1W120 004e1150 BW1M119 012679a0
	void LearnFromPlayerWatchingAndNotPunishing(CreatureContext& context);
	// BW1W120 004e11c0 BW1M119 012674a0
	bool32_t LearnParticularLessonFromFeedback(CreatureContext& context, float feedback, LESSON_TYPE lesson_type,
	                                           bool32_t player_involved, unsigned long* lesson_count,
	                                           LESSON_ORIGIN_TYPE origin);
	// BW1W120 004e14c0 BW1M119 01267370
	AttributeTest* LearnParticularLesson(CreatureLearningContext* context, float feedback);
	// BW1W120 004e15a0 BW1M119 01267110
	bool32_t UpdateDesireFromLesson(CreatureContext& context, float feedback, bool32_t player_involved);
	// BW1W120 004e15e0 BW1M119 null
	void UpdateActionOpinionFromLesson(CreatureContext& context, float feedback);
	// BW1W120 004e1670 BW1M119 01266c80
	void UpdateLessonText(CreatureContext& context, unsigned long lesson_index, AttributeTest* test,
	                      LESSON_ORIGIN_TYPE origin);
	// BW1W120 004e1f70 BW1M119 01266330
	float HowMuchCreatureKnowsAboutSatisfyingDesire(CREATURE_DESIRES desire);
	// BW1W120 004e29e0 BW1M119 01269950
	uint32_t GetNumNormalActionsLeftToLearnWhichCanBeTaughtByComputerPlayer();
	// BW1W120 004e2a20 BW1M119 null
	uint32_t GetNumMagicActionsLeftToLearnWhichCanBeTaughtByComputerPlayer();
	// BW1W120 004e2a60 BW1M119 01269850
	bool32_t FillInFirstNormalActionLeftToLearn(CREATURE_ACTION_LEARNING_TYPE* type, unsigned long* action);
	// BW1W120 004e2ac0 BW1M119 012696f0
	bool32_t FillInFirstAggressiveMagicActionLeftToLearn(CREATURE_ACTION_LEARNING_TYPE* type, unsigned long* action);
	// BW1W120 004e2b60 BW1M119 01269590
	bool32_t FillInFirstCompassionateMagicActionLeftToLearn(CREATURE_ACTION_LEARNING_TYPE* type, unsigned long* action);
	// BW1W120 004e2c00 BW1M119 01269450
	bool32_t FillInFirstImpressiveMagicActionLeftToLearn(CREATURE_ACTION_LEARNING_TYPE* type, unsigned long* action);
	// BW1W120 004c4f10 BW1M119 01236090
	void UpdateHowImpressiveIsCreature(Creature* other_creature, float impressiveness);
	// BW1W120 004e2380 BW1M119 0126a110
	bool32_t ConsiderLearningAction(CREATURE_ACTION_LEARNING_TYPE type, unsigned long action);
	// BW1W120 004dce20 BW1M119 0125d210
	void SetCheatDominantDesire(CREATURE_DESIRES desire, float seconds, bool32_t suppress_needs);
	// BW1W120 004dcf20 BW1M119 0125d0a0
	void ClearCheatDominantDesire();
	// BW1W120 004c7660 BW1M119 null
	void Dump(FILE* file, unsigned long indent);
};
#ifdef VERSION_BW1WCI
static_assert(offsetof(CreatureMental, learning) == 0x2b20, "Data member is at the wrong offset");
static_assert(offsetof(CreatureMental, AttitudeToPlayer) == 0x4f48, "Data member is at the wrong offset");
static_assert(offsetof(CreatureMental, creature) == 0xd044, "Data member is at the wrong offset");
static_assert(sizeof(CreatureMental) == 0xd070, "Data type is of wrong size");
#else
static_assert(offsetof(CreatureMental, learning) == 0x2ad8, "Data member is at the wrong offset");
static_assert(offsetof(CreatureMental, AttitudeToPlayer) == 0x18c40, "Data member is at the wrong offset");
static_assert(offsetof(CreatureMental, creature) == 0x20d18, "Data member is at the wrong offset");
static_assert(sizeof(CreatureMental) == 0x20d40, "Data type is of wrong size");
#endif

#endif /* BW1_DECOMP_CREATURE_MENTAL_INCLUDED_H */
