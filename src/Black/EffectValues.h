#ifndef BW1_DECOMP_EFFECT_VALUES_INCLUDED_H
#define BW1_DECOMP_EFFECT_VALUES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For EFFECT_TYPE_LAST, enum EFFECT_TYPE */

#include "Base.h"      /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

class GPlayer;
class GameThing;

struct EffectNumbers
{
	float values[EFFECT_TYPE_LAST]; /* 0x0 */

	// Non-virtual methods

	// BW1W120 00525720 BW1M100 100cba20 EffectNumbers::operator*=(const float&)
	EffectNumbers& operator*=(const float& rhs);
};

class EffectValues : public Base
{
public:
	EffectNumbers numbers; /* 0x8 */
	float         field_0x24;
	GameThing*    applied_by;
	MapCoords     coords;
	uint32_t      field_0x38;
	GPlayer*      player;

	// Override methods

	// BW1W120 00524f40 BW1M100 10412ff0 EffectValues::_dt(void)
	virtual ~EffectValues();

	// Constructors

	// BW1W120 00525040 BW1M100 100cc350 EffectValues::EffectValues(EFFECT_TYPE, float, GameThing *, float, GPlayer *)
	EffectValues(EFFECT_TYPE type, float value, GameThing* source, float param_4, GPlayer* player);
};

#endif /* BW1_DECOMP_EFFECT_VALUES_INCLUDED_H */
