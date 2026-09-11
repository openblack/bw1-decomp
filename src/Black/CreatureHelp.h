#ifndef BW1_DECOMP_CREATURE_HELP_INCLUDED_H
#define BW1_DECOMP_CREATURE_HELP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

class GameThingWithPos;

struct CreatureHelpState
{
	uint32_t field_0x0;
	uint32_t field_0x4;
	uint32_t field_0x8;
	uint32_t field_0xc;
	uint32_t field_0x10[0xc];
	uint32_t field_0x40[0xc];
	uint32_t field_0x70[0x6];
	// These are scalars, not a vector. UpdateHelp (004c9c90) reads the timestamp
	// and toggles +0x90; SendCandidateHelpScript (004c9fe0) compares +0x94.
	uint32_t field_0x88;
	uint32_t field_0x8c;
	uint32_t field_0x90;
	uint32_t field_0x94;

	// Constructors

	// BW1W120 004c9c30 BW1M100 1023b830 CreatureHelpState::CreatureHelpState(void)
	CreatureHelpState();
};

// Creature's constructor (00474690) places this at +0x188 and the next member at +0x220.
static_assert(sizeof(CreatureHelpState) == 0x98, "CreatureHelpState size is incorrect");

struct CreatureHelpStackEntry
{
	uint32_t          field_0x0;
	GameThingWithPos* thing;
	MapCoords         coords;
	uint32_t          field_0x14;
	uint32_t          field_0x18;

	// Constructors

	// BW1W120 004ca6f0 BW1M100 102389e0 CreatureHelpStackEntry::__ct(unsigned long, GameThingWithPos *, MapCoords const &)
	CreatureHelpStackEntry(uint32_t param_2, GameThingWithPos* thing, const MapCoords* coord);
};

#endif /* BW1_DECOMP_CREATURE_HELP_INCLUDED_H */
