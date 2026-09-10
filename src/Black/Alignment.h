#ifndef BW1_DECOMP_ALIGNMENT_INCLUDED_H
#define BW1_DECOMP_ALIGNMENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */

#include "Base.h" /* For struct Base */

// Forward Declares

class Abode;

class GAlignment : public Base
{
public:
	float value; /* 0x8 */
	float field_0xc;

	// Override methods

	// BW1W120 004740e0 BW1M100 101debf0 GAlignment::_dt(void)
	virtual ~GAlignment();

	// Non-virtual methods

	// BW1W120 00414520 BW1M100 100a3e80 GAlignment::Update(Abode *, RESOURCE_TYPE, long, float)
	void Update(Abode* abode, RESOURCE_TYPE type, int amount, float param_4);
};

#endif /* BW1_DECOMP_ALIGNMENT_INCLUDED_H */
