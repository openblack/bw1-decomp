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

	// Override methods

	// BW1W120 005ce380 BW1M100 1017a1d0 GInterfaceCollide::_dt(void)
	virtual ~GInterfaceCollide();
};

#endif /* BW1_DECOMP_INTERFACE_COLLIDE_INCLUDED_H */
