#ifndef BW1_DECOMP_EFFECT_VALUES_INCLUDED_H
#define BW1_DECOMP_EFFECT_VALUES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum EFFECT_TYPE, enum MAGIC_TYPE */

#include "Base.h"          /* For struct Base */
#include "EffectNumbers.h" /* For struct EffectNumbers */
#include "MapCoords.h"     /* For struct MapCoords */

// Forward Declares

class GPlayer;
class GameThing;

class EffectValues : public Base
{
public:
	EffectNumbers numbers; /* 0x8 */
	float         field_0x24;
	GameThing*    AppliedBy;
	MapCoords     coords;
	uint32_t      field_0x38;
	GPlayer*      player;

	// Override methods

	// BW1W120 00524f40 BW1M119 014821b0
	// virtual ~EffectValues();

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	EffectValues() : AppliedBy(NULL), field_0x38(0) { SetToZero(); }
	// BW1W120 00525040 BW1M119 010d0680
	EffectValues(EFFECT_TYPE type, float value, GameThing* source, float param_4, GPlayer* player);

	// Non-virtual methods

	// BW1W120 005254c0 BW1M119 010d0070
	GPlayer* GetPlayer() const;
	// BW1W120 00525910 BW1M119 010cfbf0
	GPlayer* GetCausedPlayer() const;
	// BW1W120 00525500 BW1M119 010cfff0
	void SetToZero();
};

// BW1W120 00524ed0 BW1M119 010d0b60
void operator++(MAGIC_TYPE& type, int);

#endif /* BW1_DECOMP_EFFECT_VALUES_INCLUDED_H */
