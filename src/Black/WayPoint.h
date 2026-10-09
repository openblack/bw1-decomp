#ifndef BW1_DECOMP_WAY_POINT_INCLUDED_H
#define BW1_DECOMP_WAY_POINT_INCLUDED_H

#include <assert.h>                           /* For static_assert */
#include <stdint.h>                           /* For uint32_t, uint8_t */
#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For struct LHListNode */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class GameThing;

class WayPoint : public GameThingWithPos
{
public:
	LHListNode<WayPoint> next;

	// Override methods

	// BW1W120 00770b50 BW1M119 01167ec0
	virtual ~WayPoint();
	// BW1W120 00770c00 BW1M119 01167c40
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00770b30 BW1M119 01167990
	virtual char* GetDebugText();
	// BW1W120 00770b20 BW1M119 01167950
	virtual uint32_t GetSaveType();
	// BW1W120 00770b40 BW1M119 011679d0
	virtual const char* GetText();

	// BW1W120 00770b70 BW1M119 01167f50
	WayPoint();
};

#endif /* BW1_DECOMP_WAY_POINT_INCLUDED_H */
