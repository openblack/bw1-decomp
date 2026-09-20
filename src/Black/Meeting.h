#ifndef BW1_DECOMP_MEETING_INCLUDED_H
#define BW1_DECOMP_MEETING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class GPlayer;
class GameThing;
class Town;

class Meeting : public GameThingWithPos
{
public:
	// Override methods

	// BW1W120 00606160 BW1M100 inlined Meeting::_dt(void)
	virtual ~Meeting();
	// BW1W120 00606180 BW1M100 inlined Meeting::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00606230 BW1M100 inlined Meeting::GetPlayer(void)
	virtual GPlayer* GetPlayer();
	// BW1W120 00606150 BW1M100 inlined Meeting::RemoveDance(void)
	virtual void RemoveDance();
	// BW1W120 00606140 BW1M100 inlined Meeting::GetTown(void)
	virtual Town* GetTown();
};

#endif /* BW1_DECOMP_MEETING_INCLUDED_H */
