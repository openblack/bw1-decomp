#ifndef BW1_DECOMP_LH3D_DYNAMIC_SHADOW_INCLUDED_H
#define BW1_DECOMP_LH3D_DYNAMIC_SHADOW_INCLUDED_H

#include <re_common.h> /* For bool32_t */

// Forward Declares

class LH3DObject;

struct LH3DDynamicShadow
{
	void*    field_0x0;
	bool32_t UseDefaultSun;

	// Static methods

	// BW1W120 008745a0 BW1M119 010ca460 (LHCombined Release)
	static LH3DDynamicShadow* Create();

	// Non-virtual methods

	// BW1W120 008745e0 BW1M119 010ca3e0 (LHCombined Release)
	void Release();
	// BW1W120 00874850 BW1M119 01010930 (LHCombined Release)
	void Prepare(LH3DObject* object);
};

#endif /* BW1_DECOMP_LH3D_DYNAMIC_SHADOW_INCLUDED_H */
