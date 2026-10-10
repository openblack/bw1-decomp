#ifndef BW1_DECOMP_CREED_INCLUDED_H
#define BW1_DECOMP_CREED_INCLUDED_H

#include <stdint.h> /* For uint32_t */

#include "Object.h" /* For class Object */

class Creed : public Object
{
public:
	// BW1W120 0050b330 BW1M119 010c3750
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 0050b340 BW1M119 010c3790
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 0050b350 BW1M119 010c37d0
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_CREED_INCLUDED_H */
