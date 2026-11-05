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

#ifdef VERSION_BW1WCI
	// BW1WCI 0046aaf0 BW1MCI119 0162c880
	void Fire();
	// BW1WCI 0046acd0 BW1MCI119 0162c520
	void SetOrientation(float angle, float pitch);
#endif
};

#endif /* BW1_DECOMP_CANNON_INCLUDED_H */
