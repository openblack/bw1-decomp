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
	// BW1W120 004d2800 BW1M119 null
	void EmpathiseWithPlayer(CREATURE_DESIRES desire);
};

#endif /* BW1_DECOMP_CREATURE_MENTAL_INCLUDED_H */
