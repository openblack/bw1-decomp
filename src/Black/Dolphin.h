#ifndef BW1_DECOMP_DOLPHIN_INCLUDED_H
#define BW1_DECOMP_DOLPHIN_INCLUDED_H

#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For struct LHListNode */

#include "MobileObject.h" /* For class MobileObject */

#ifdef VERSION_BW1WCI
enum DOLPHIN_STATE
{
	DOLPHIN_STATE_IDLE,
	DOLPHIN_STATE_MOVE,
};
#endif

class Dolphin : public MobileObject
{
public:
	LHListNode<Dolphin> next;
#ifdef VERSION_BW1WCI
	uint32_t  field_0x6c;
	MapCoords Destination;

	// BW1WCI inlined BW1MCI119 0152d960
	const MapCoords& GetDestination() { return Destination; }
	// BW1WCI 0052a4e0 BW1MCI119 01631120
	bool HasFinishedAnimation();
	// BW1WCI 0052a160 BW1MCI119 01631500
	void SetupMoveToPos(const MapCoords& pos, DOLPHIN_STATE state, DOLPHIN_STATE arrive_state);
#endif
};

#ifdef VERSION_BW1WCI
class ScriptDolphin : public Dolphin
{
public:
	// BW1WCI 00c59968 BW1MCI119 null
	static float ScriptSpeed;
	// BW1WCI 00c59964 BW1MCI119 null
	static float ScriptWait;

	// BW1WCI 0052a6a0 BW1MCI119 01630cf0
	static ScriptDolphin* Create(const MapCoords& coords, const GMobileObjectInfo* info, float y_angle, float scale);
	// BW1WCI 0052a700 BW1MCI119 01630b70
	void MoveRandomlyBetween(const MapCoords& from, const MapCoords& to);
};
#endif

#endif /* BW1_DECOMP_DOLPHIN_INCLUDED_H */
