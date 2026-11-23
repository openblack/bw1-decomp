#ifndef BW1_DECOMP_ARROW_INCLUDED_H
#define BW1_DECOMP_ARROW_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ArrowInfo.h"    /* For class GArrowInfo */
#include "GameThing.h"    /* For class GameThing */
#include "MobileObject.h" /* For struct MobileObject */

#define ARROW_FLIGHT_FRACTION 0.5f
#define ARROW_GRAVITY         -19.62f

// Forward Declares

class Base;
class GPlayer;
class GameThingWithPos;

class Arrow : public MobileObject
{
public:
	GameThing* Shooter; /* 0x68 */

	// Override methods

	// BW1W120 00425bf0 BW1M119 inlined
	virtual GPlayer* GetPlayer() { return Shooter->GetPlayer(); }

	// BW1W120 inlined BW1M119 inlined
	Arrow(const MapCoords& coords, const GArrowInfo* info, GameThing* shooter)
		: MobileObject(coords, info, NULL, 0.0f, 1.0f)
	{
		Shooter = shooter;
	}

	// Static methods

	// BW1W120 004259b0 BW1M119 inlined
	static Arrow* Create(const MapCoords& coords, const GArrowInfo* info, GameThingWithPos* target, GameThing* shooter);
};

#endif /* BW1_DECOMP_ARROW_INCLUDED_H */
