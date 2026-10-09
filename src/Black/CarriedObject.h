#ifndef BW1_DECOMP_CARRIED_OBJECT_INCLUDED_H
#define BW1_DECOMP_CARRIED_OBJECT_INCLUDED_H

#include <chlasm/Enum.h> /* For enum CARRIED_OBJECT */

class LH3DObject;

class CarriedObject
{
public:
	// BW1W120 00462530 BW1M119 010c1a60
	static void Init();
	// BW1W120 004628d0 BW1M119 010c19c0
	static void Reset();
	// BW1W120 00462900 BW1M119 0105a180
	static LH3DObject* Get3DCarriedObject(CARRIED_OBJECT type);
};

#endif /* BW1_DECOMP_CARRIED_OBJECT_INCLUDED_H */
