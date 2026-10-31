#ifndef BW1_DECOMP_INTERFACE_COLLIDE_INCLUDED_H
#define BW1_DECOMP_INTERFACE_COLLIDE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h"      /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct Bubble;
struct Leash;
class Object;

class GInterfaceCollide : public Base
{
public:
	MapCoords pos;         /* 0x8 */
	float     PosDistance; /* 0x14 */
	Object*   object;
	float     ObjectDistance;
	Bubble*   bubble; /* 0x20 */
	float     BubbleDistance;
	Leash*    leash;
	float     LeashDistance;

	// Non-virtual methods

	// BW1W120 inlined BW1M119 0100f810
	MapCoords& GetPos() { return pos; }
	// BW1W120 inlined BW1M119 010b9c30
	Object* GetObjectA() { return object; }

	// Implicit destructor, only Base is destroyed.
	// BW1W120 005ce380
};

#endif /* BW1_DECOMP_INTERFACE_COLLIDE_INCLUDED_H */
