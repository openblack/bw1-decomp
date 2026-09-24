#ifndef BW1_DECOMP_ALIGNMENT_INCLUDED_H
#define BW1_DECOMP_ALIGNMENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */

#include "Base.h" /* For struct Base */

// Forward Declares

class Abode;
class EffectValues;
class Object;

class GAlignment : public Base
{
public:
	float value; /* 0x8 */
	float field_0xc;

	// Override methods

	// BW1W120 004740e0 BW1M119 011e63d0
	virtual ~GAlignment();

	// Non-virtual methods

	// BW1W120 00414410 BW1M119 010a7380
	void Update(Object* object, EffectValues& values, float param_3);
	// BW1W120 00414520 BW1M119 010a7210
	void Update(Abode* abode, RESOURCE_TYPE type, int amount, float param_4);
	// BW1W120 004146f0 BW1M119 010a6e70
	void CrudeSet(float value);
};

#endif /* BW1_DECOMP_ALIGNMENT_INCLUDED_H */
