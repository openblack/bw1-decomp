#ifndef BW1_DECOMP_LH3D_MIST_INCLUDED_H
#define BW1_DECOMP_LH3D_MIST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LH3DStaticObject.h" /* For struct LH3DStaticObject */

#define LH3D_MIST_FLAG_VISIBLE 0x1

class LH3DMist : public LH3DStaticObject
{
public:
	uint32_t  Flags;
	uint32_t  field_0x84;
	float     Scale;
	float     Ratio;
	uint32_t  Alpha;
	LH3DMist* next;
	uint32_t  field_0x98;

	// BW1W120 00e9a120 BW1M119 012d3604 (LHCombined Release)
	static LH3DMist* g_first_mist;

	// Constructors

	// BW1W120 007f9560 BW1M119 010b2e10 (LHCombined Release)
	LH3DMist();

	// Static methods

	// BW1W120 007f9540 BW1M119 010b2f60 (LHCombined Release)
	static bool32_t Close();
};

#endif /* BW1_DECOMP_LH3D_MIST_INCLUDED_H */
