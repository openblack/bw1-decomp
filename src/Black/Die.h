#ifndef BW1_DECOMP_DIE_INCLUDED_H
#define BW1_DECOMP_DIE_INCLUDED_H

#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For struct LHListNode */

#include "MobileStatic.h" /* For class MobileStatic */

class Die : public MobileStatic
{
public:
	LHListNode<Die> next;
};

#endif /* BW1_DECOMP_DIE_INCLUDED_H */
