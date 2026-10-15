#ifndef BW1_DECOMP_REACTION_INCLUDED_H
#define BW1_DECOMP_REACTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h>                          /* For enum REACTION */
#include <Lionhead/LHLib/ver5.0/LHDynamicStack.h> /* For class LHDynamicStack */
#include <Lionhead/LHLib/ver5.0/LHListNode.h>     /* For struct LHListNode */
#include <re_common.h>                            /* For bool32_t */

#include "GameThing.h" /* For struct GameThing */
#include "LHPTR.h"     /* For class LHPTR */

// Forward Declares

class Base;
class Dance;
class GPlayer;
class GameOSFile;
class GameThingWithPos;
class Living;
struct MapCoords;
class ReactionInfo;

#define REACTION_PRIORITY_MAX 255

class Reaction : public GameThing
{
public:
	GameThingWithPos*       InitiatingObject;
	LHDynamicStack<Living*> ReactingLivings;
	bool32_t                Stealth;
	REACTION                type;
	LHPTR<Dance>            ReactionDance;
	uint32_t                GameTurnStarted;
	bool32_t                Active;
	bool32_t                ShuttingDown;
	GPlayer*                player;
	float                   Radius;
	LHListNode<Reaction>    next;

	// Override methods

	// BW1W120 006e3a60 BW1M119 0113f170
	virtual ~Reaction();
	// BW1W120 006e3aa0 BW1M119 0113ee20
	virtual void ToBeDeleted(bool32_t delete_now);
	// BW1W120 0055c7b0 BW1M119 0109bad0
	virtual GPlayer* GetPlayer() { return player; }
	// BW1W120 0055c7c0 BW1M119 0113ccd0
	virtual void SetPlayer(GPlayer* new_player) { player = new_player; }
	// BW1W120 0055c7d0 BW1M119 0104bec0
	virtual float GetRadius() { return Radius; }
	// BW1W120 0055c7f0 BW1M119 0113cda0
	virtual char* GetDebugText() { return "Reaction:"; }
	// BW1W120 006e4ba0 BW1M119 0113d100
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006e4990 BW1M119 0113d580
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0055c7e0 BW1M119 0113cd60
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_REACTION; }

	// BW1W120 inlined BW1M119 inlined
	Reaction() {}
	// BW1W120 006e39d0 BW1M119 0113f250
	Reaction(GameThingWithPos* initiating_object, uint8_t reaction, GPlayer* reaction_player);

	// Static methods

	// BW1W120 006e3b50 BW1M119 0106f2b0
	static void ProcessReactions();
	// BW1W120 006e3d70 BW1M119 0113ec00
	static Reaction* CreateReaction(GameThingWithPos* initiating_object, uint8_t reaction, GPlayer* reaction_player,
	                                bool32_t start_now);
	// BW1W120 006e3e10 BW1M119 0104c110
	static void SpreadReaction(const MapCoords& pos, uint16_t spiral_size, uint8_t reaction,
	                           GameThingWithPos* initiating_object, Reaction* spreading_reaction);
	// BW1W120 006e3f90 BW1M119 0104c620
	static void ApplyReactionToLivingObjectsAtSquare(long x, long z, GameThingWithPos* initiating_object,
	                                                 Reaction* spreading_reaction, uint8_t reaction);
	// BW1W120 006e4750 BW1M119 0113df40
	static void RemoveAllReactionsInitiatedByObject(GameThingWithPos* initiating_object);
	// BW1W120 006e4780 BW1M119 0113de50
	static void RemoveAllReactionsOfTypeInitiatedByObject(GameThingWithPos* initiating_object, REACTION reaction);
	// BW1W120 006e47c0 BW1M119 0113ddb0
	static void SetActiveAllReactionsInitiatedByObject(GameThingWithPos* initiating_object, bool32_t active);
	// BW1W120 006e47f0 BW1M119 0113dcc0
	static void DisableReactionsWhenInitiatorInHand(GameThingWithPos* initiating_object);
	// BW1W120 006e4870 BW1M119 0113dbd0
	static Reaction* GetReactionInitiatedByObject(GameThingWithPos* initiating_object);

	// Non-virtual methods

	// BW1W120 006e3cb0 BW1M119 0107f7f0
	void Process();
	// BW1W120 006e45c0 BW1M119 01083ef0
	MapCoords GetPos();
	// BW1W120 006e4620 BW1M119 01014ff0
	uint8_t Priority(const Living* living, float distance, Reaction* current_reaction) const;
	// BW1W120 006e4700 BW1M119 0108e570
	ReactionInfo* GetInfo() const;
	// BW1W120 006e4720 BW1M119 0113e000
	void ShutDown();
	// BW1W120 006e4830 BW1M119 0113dc70
	void SetInitiatingObject(GameThingWithPos* initiating_object);
	// BW1W120 inlined BW1M119 015967b0
	GameThingWithPos* GetInitiatingObject() const { return InitiatingObject; }
	// BW1W120 inlined BW1M119 01150160
	REACTION GetFunctionIndex() const { return type; }
	// BW1W120 006e48a0 BW1M119 0113db00
	float GetDefaultReactionMultiplier(Living* living);
	// BW1W120 006e48e0 BW1M119 0113da30
	float ImpressiveMultiplierForTownDesire(Living* living);
	// BW1W120 006e4d70 BW1M119 0102d510
	MapCoords StandardGetPosFunction();
	// BW1W120 006e4da0 BW1M119 0113cf90
	MapCoords ShieldGetPosFunction();
	// BW1W120 006e4dc0 BW1M119 0109abb0
	void StandardModifyAlignmentFunction(Living* living);
};

#endif /* BW1_DECOMP_REACTION_INCLUDED_H */
