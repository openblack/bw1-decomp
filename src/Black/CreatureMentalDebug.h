#ifndef BW1_DECOMP_CREATURE_MENTAL_DEBUG_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_DEBUG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <re_common.h> /* For bool32_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "Base.h" /* For struct Base */

class CreatureMentalDebug : public Base
{
public:
	uint32_t field_0x8;
	int      NumLostMostImportantObjectMessages;
	uint32_t field_0x10;
	uint32_t field_0x14;
	bool32_t IsProcessing;
	bool32_t ShowMaterialEffects;
	bool32_t IsLooking;
	LHPoint  LineStart;
	LHPoint  LineEnd;
	int      LineTurnsLeft;
	LHPoint  MarkerPos;

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	CreatureMentalDebug()
	{
		LineTurnsLeft = 0;
		field_0x8 = NumLostMostImportantObjectMessages = field_0x10 = field_0x14 = 0;
		ShowMaterialEffects = IsLooking = true;
	}
};
static_assert(sizeof(CreatureMentalDebug) == 0x4c, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_MENTAL_DEBUG_INCLUDED_H */
