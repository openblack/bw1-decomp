#ifndef BW1_DECOMP_DANCE_ANIM_ENTRY_INCLUDED_H
#define BW1_DECOMP_DANCE_ANIM_ENTRY_INCLUDED_H

#include <chlasm/AllMeshes.h> /* For enum ANIM_LIST */

#define DANCE_ANIM_ENTRY_COUNT 48

class DanceAnimEntry
{
public:
	char      Name[0x80];
	ANIM_LIST MaleAnim;
	ANIM_LIST FemaleAnim;

	// Static data

	// BW1W120 00be68f0
	static DanceAnimEntry Table[DANCE_ANIM_ENTRY_COUNT];

	// Static methods

	// BW1W120 inlined BW1M119 012ad830
	static DanceAnimEntry* GetDanceAnimTable() { return Table; }
};

#endif /* BW1_DECOMP_DANCE_ANIM_ENTRY_INCLUDED_H */
