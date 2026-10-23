#ifndef BW1_DECOMP_CANNON_INCLUDED_H
#define BW1_DECOMP_CANNON_INCLUDED_H

#include <stdint.h> /* For uint8_t */

#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For struct LHListNode */

#include "MultiMapFixed.h" /* For class MultiMapFixed */

class Cannon : public MultiMapFixed
{
public:
	uint8_t            field_0x7c[0x20];
	LHListNode<Cannon> next;
};

#endif /* BW1_DECOMP_CANNON_INCLUDED_H */
