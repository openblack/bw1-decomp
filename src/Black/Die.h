#ifndef BW1_DECOMP_DIE_INCLUDED_H
#define BW1_DECOMP_DIE_INCLUDED_H

#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For struct LHListNode */

#include "MobileStatic.h" /* For class MobileStatic */

class Die : public MobileStatic
{
public:
	LHListNode<Die> next;
#ifdef VERSION_BW1WCI
	uint8_t  field_0x8c[0x10];
	uint32_t Check;

	// BW1WCI 00528e10 BW1MCI119 01633610
	static Die* Create(const MapCoords& coords, float y_angle, float scale);
	// BW1WCI 00528e70 BW1MCI119 016334f0
	long GetValue();
	// BW1WCI 00528ff0 BW1MCI119 01633250
	void SetValue(long value);
#endif
};

#endif /* BW1_DECOMP_DIE_INCLUDED_H */
