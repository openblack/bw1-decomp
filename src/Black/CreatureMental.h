#ifndef BW1_DECOMP_CREATURE_MENTAL_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h"                        /* For struct Base */
#include "CreatureAction.h"              /* For struct CreatureActionOpinions, struct CreaturePreviousActions */
#include "CreatureActionsKnownAbout.h"   /* For struct CreatureActionsKnownAbout */
#include "CreatureAgenda.h"              /* For struct CreatureAgenda */
#include "CreatureAttitudeToPlayer.h"    /* For struct CreatureAttitudeToPlayer */
#include "CreatureExplorationMap.h"      /* For struct CreatureExplorationMap */
#include "CreatureFace.h"                /* For struct CreatureFaceState */
#include "CreatureLearning.h"            /* For struct CreatureLearning */
#include "CreatureLook.h"                /* For struct CreatureLookState */
#include "CreatureMentalAttributeTest.h" /* For struct DecisionTreeCollection */
#include "CreatureMentalBeliefs.h"       /* For struct CreatureBeliefs */
#include "CreatureMentalDebug.h"         /* For struct CreatureMentalDebug */
#include "CreatureMentalDesire.h"        /* For struct CreatureDesires */
#include "CreatureObjectsInspected.h"    /* For struct CreatureObjectsInspected */
#include "CreatureVisionState.h"         /* For struct CreatureVisionState */
#include "MapCoords.h"                   /* For struct MapCoords */

// Forward Declares

class Creature;
class CreatureAttitudeToCreature;
class CreatureBelief;
class GameThingWithPos;

struct CreatureInnatePersonality
{
	float field_0x0;
	float field_0x4;
	float field_0x8;
	float field_0xc;
	float field_0x10;
	float field_0x14;
	float field_0x18[0x3];
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
	void                      SaveMind(char* path);
	CreatureDesires           desires;
	CreatureAgenda            agenda;
	CreatureBeliefs           beliefs;
	DecisionTreeCollection    decision_tree_collection;
	CreatureActionOpinions    ActionOpinions;
	CreatureLearning          learning;
	CreatureAttitudeToPlayer  AttitudeToPlayer;
	uint32_t                  field_0x1a9f4;
	uint32_t                  field_0x1a9f8;
	CreatureActionsKnownAbout ActionsKnownAbout;
	CreatureInnatePersonality InnatePersonality;
	CreatureVisionState       VisionState;
	CreatureExplorationMap    ExplorationMap;
	uint8_t                   field_0x1ca98[0x400];
	CreaturePreviousActions   PreviousActions;
	CreatureLookState         LookState;
	uint8_t                   field_0x1d3f8[0x14];
	CreatureFaceState         FaceState;
	CreatureObjectsInspected  ObjectsInspected;
	uint32_t                  field_0x1d480;
	CreatureBelief*           CitadelHeartBelief;
	uint32_t                  field_0x1d488;
	MapCoords                 field_0x1d48c[0x1e][0x28];
	CreatureMentalDebug       debug;
	Creature*                 creature;
	int                       field_0x20d1c;
	uint32_t                  field_0x20d20;
	uint32_t                  field_0x20d24;
	uint32_t                  field_0x20d28;
	uint32_t                  field_0x20d2c;
	uint32_t                  field_0x20d230;
	uint32_t                  field_0x20d234;
	uint32_t                  field_0x20d238;
	uint32_t                  field_0x20d23c;

	// Override methods

	// BW1W120 004d2560 BW1M119 0124a460
	virtual ~CreatureMental();

	// Non-virtual methods

	// BW1W120 004d7b80 BW1M119 01258470
	CreatureBelief* GetBeliefAboutObject(GameThingWithPos* object);
	// BW1W120 004d7bd0 BW1M119 01258250
	CreatureBelief* AddBeliefAboutObject(Creature* creature, GameThingWithPos* object);
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
	// BW1W120 004e9a70 BW1M119 01271bf0
	float GetObjectToActOnUsefulness(CreatureBelief* object, CREATURE_DESIRES desire);
	// BW1W120 004d2800 BW1M119 null
	void EmpathiseWithPlayer(CREATURE_DESIRES desire);
	// BW1W120 004c4c80 BW1M119 012364d0
	CreatureAttitudeToCreature* GetAttitudeToCreature(Creature* creature);
};

#endif /* BW1_DECOMP_CREATURE_MENTAL_INCLUDED_H */
