#ifndef BW1_DECOMP_LH3D_Z_SORTER_INCLUDED_H
#define BW1_DECOMP_LH3D_Z_SORTER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Black/DrawingObject.h>

class LH3DZSorter
{
public:
	typedef void (DrawingObject::*DrawCallback)();

	struct ZObject
	{
		uint32_t      field_0x0;
		void*         Object;
		DrawCallback  Draw;
		unsigned long Flags;
		float         Distance;
		ZObject*      Next;
	};

	// BW1W120 00ee9d30 BW1M119 01356448 (LHCombined Release)
	static unsigned long UserData;

	// Static methods

	// BW1W120 0083f2b0 BW1M119 010d83f0 (LHCombined Release)
	static LH3DZSorter* __fastcall Create(long max_objects);

	// Non-virtual methods

	// BW1W120 0083f2f0 BW1M119 010d83a0 (LHCombined Release)
	void Release();
	// BW1W120 0083f3b0 BW1M119 0100ad50 (LHCombined Release)
	void OpenSort();
	// ECX=this, EDX=object; three stack arguments, RET 0x0c.
	// BW1W120 0083f310 BW1M119 0101bf70 (LHCombined Release)
	void __fastcall NewZObject(void* object, DrawCallback draw, float distance, unsigned long flags);
};
static_assert(sizeof(LH3DZSorter::ZObject) == 0x18, "Data type is of wrong size");

// BW1W120 00ee9d38 BW1M119 01346440 (LHCombined Release)
extern LH3DZSorter::ZObject* g_z_first;

#endif /* BW1_DECOMP_LH3D_Z_SORTER_INCLUDED_H */
