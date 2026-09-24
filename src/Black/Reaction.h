#ifndef BW1_DECOMP_REACTION_INCLUDED_H
#define BW1_DECOMP_REACTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum REACTION */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class GameThingWithPos;
class Living;
class ReactionInfo;

class Reaction : public GameThing
{
public:
	GameThingWithPos* target; /* 0x14 */
	uint32_t          field_0x18;
	uint32_t          field_0x1c;
	uint32_t          field_0x20;
	REACTION          type;
	uint32_t          field_0x28;
	uint32_t          field_0x2c;
	uint32_t          field_0x30;
	uint32_t          field_0x34;
	GPlayer*          player;
	float             field_0x3c;
	Reaction*         next; /* 0x40 */

	// Override methods

	// BW1W120 0055c800 BW1M119 0113f170
	virtual ~Reaction();
	// BW1W120 006e3aa0 BW1M119 0113ee20
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055c7b0 BW1M119 0109bad0
	virtual GPlayer* GetPlayer();
	// BW1W120 0055c7c0 BW1M119 0113ccd0
	virtual void SetPlayer(GPlayer* param_1);
	// BW1W120 0055c7d0 BW1M119 0104bec0
	virtual float GetRadius();
	// BW1W120 0055c7f0 BW1M119 0113cda0
	virtual char* GetDebugText();
	// BW1W120 006e4ba0 BW1M119 0113d100
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006e4990 BW1M119 0113d580
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055c7e0 BW1M119 0113cd60
	virtual uint32_t GetSaveType();

	// Static methods

	// BW1W120 006e3b50 BW1M119 0106f2b0
	static void ProcessReactions();
	// BW1W120 006e3d70 BW1M119 0113ec00
	static Reaction* CreateReaction(GameThingWithPos* target, uint8_t param_2, GPlayer* player, int param_4);
	// BW1W120 006e4780 BW1M119 0113de50
	static Reaction* RemoveAllReactionsOfTypeInitiatedByObject(GameThingWithPos* target, REACTION reaction);
	// BW1W120 006e4870 BW1M119 0113dbd0
	static Reaction* GetReactionInitiatedByObject(GameThingWithPos* target);

	// Non-virtual methods

	// BW1W120 006e4700 BW1M119 0108e570
	ReactionInfo* GetInfo() const;
	// BW1W120 inlined BW1M119 01150160
	REACTION GetFunctionIndex() const { return type; }
	// BW1W120 006e48a0 BW1M119 0113db00
	float GetDefaultReactionMultiplier(Living* param_1);
};

#endif /* BW1_DECOMP_REACTION_INCLUDED_H */
