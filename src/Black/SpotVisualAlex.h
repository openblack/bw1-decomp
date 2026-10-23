#ifndef BW1_DECOMP_SPOT_VISUAL_ALEX_INCLUDED_H
#define BW1_DECOMP_SPOT_VISUAL_ALEX_INCLUDED_H

#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For struct LHListNode */

#include "GameThingWithPos.h" /* For class GameThingWithPos */

class SpotVisualAlex : public GameThingWithPos
{
public:
	LHListNode<SpotVisualAlex> next;
};

#endif /* BW1_DECOMP_SPOT_VISUAL_ALEX_INCLUDED_H */
