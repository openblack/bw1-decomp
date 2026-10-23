#ifndef BW1_DECOMP_DOLPHIN_INCLUDED_H
#define BW1_DECOMP_DOLPHIN_INCLUDED_H

#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For struct LHListNode */

#include "MobileObject.h" /* For class MobileObject */

class Dolphin : public MobileObject
{
public:
	LHListNode<Dolphin> next;
};

#endif /* BW1_DECOMP_DOLPHIN_INCLUDED_H */
