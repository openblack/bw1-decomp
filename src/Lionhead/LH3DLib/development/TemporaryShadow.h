#ifndef BW1_DECOMP_TEMPORARY_SHADOW_INCLUDED_H
#define BW1_DECOMP_TEMPORARY_SHADOW_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <re_common.h> /* For bool32_t */

// Forward Declares

class LH3DObject;
struct LH3DDynamicShadow;

// A dynamic shadow given to an object for a while, in place of its own shadow.
class TemporaryShadow
{
public:
	// Static members

	// BW1W120 00eb99fc BW1M119 011f1e38 (LHCombined Release)
	static TemporaryShadow* g_first;

	TemporaryShadow*   Next;
	LH3DObject*        Object;
	bool32_t           HumanShadowed;
	bool32_t           Disappear;
	bool32_t           Active;
	LH3DDynamicShadow* Shadow;

	// Constructors

	// BW1W120 00825090 BW1M119 01069da0 (LHCombined Release)
	TemporaryShadow(LH3DObject* object);

	// Destructor

	// BW1W120 008250f0 BW1M119 0109ff00 (LHCombined Release)
	~TemporaryShadow();

	// Static methods

	// BW1W120 00825130 BW1M119 010b4cd0 (LHCombined Release)
	static void DeleteThisOne(LH3DObject* object);
	// BW1W120 00825190 BW1M119 01009930 (LHCombined Release)
	static void UpdateAll();
};
static_assert(sizeof(TemporaryShadow) == 0x18, "Data type is of wrong size");

#endif /* BW1_DECOMP_TEMPORARY_SHADOW_INCLUDED_H */
