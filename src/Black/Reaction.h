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

	// BW1W120 0055c800 BW1M100 10136550 Reaction::_dt(void)
	virtual ~Reaction();
	// BW1W120 006e3aa0 BW1M100 10136200 Reaction::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055c7b0 BW1M100 10099cb0 Reaction::GetPlayer(void)
	virtual GPlayer* GetPlayer();
	// BW1W120 0055c7c0 BW1M100 10134150 Reaction::SetPlayer(GPlayer *)
	virtual void SetPlayer(GPlayer* param_1);
	// BW1W120 0055c7d0 BW1M100 10049510 Reaction::GetRadius(void)
	virtual float GetRadius();
	// BW1W120 0055c7f0 BW1M100 101342c0 Reaction::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 006e4ba0 BW1M100 10134400 Reaction::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006e4990 BW1M100 10134810 Reaction::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055c7e0 BW1M100 10134280 Reaction::GetSaveType(void)
	virtual uint32_t GetSaveType();

	// Static methods

	// BW1W120 006e3d70 BW1M100 10136010 Reaction::CreateReaction(GameThingWithPos *, unsigned char, GPlayer *, int)
	static Reaction* CreateReaction(GameThingWithPos* param_1, uint8_t param_2, GPlayer* player, int param_4);

	// Non-virtual methods

	// BW1W120 006e4700 BW1M100 1008c230 Reaction::GetInfo(void) const
	ReactionInfo* GetInfo();
	// BW1W120 006e48a0 BW1M100 10134d90 Reaction::GetDefaultReactionMultiplier(Living *)
	float GetDefaultReactionMultiplier(Living* param_1);
};

#endif /* BW1_DECOMP_REACTION_INCLUDED_H */
