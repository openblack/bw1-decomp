#ifndef BW1_DECOMP_LH3D_Z_SORTER_INCLUDED_H
#define BW1_DECOMP_LH3D_Z_SORTER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Black/DrawingObject.h>

#define LH3D_Z_SORTER_CAPACITY     2048
#define LH3D_Z_SORTER_ENTRY_SIZE   0x14
#define LH3D_Z_SORTER_POINTER_SIZE 4
#define LH3D_Z_SORTER_HEADER_BYTES 0x600
#define LH3D_Z_SORTER_MAX_COUNT    (LH3D_Z_SORTER_CAPACITY - 2)

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

	uint32_t field_0x0;
	uint16_t MaxCount;
	uint16_t Count;
	void*    Entries;
	uint8_t  field_0xc[LH3D_Z_SORTER_HEADER_BYTES];
	void*    SortedList;
	void*    Scratch;

	// BW1W120 00ee9d30 BW1M119 01356448 (LHCombined Release)
	static unsigned long UserData;

	// BW1W120 0083f2b0 BW1M119 010d83f0 (LHCombined Release)
	static LH3DZSorter* __fastcall Create(long max_objects);

	// BW1W120 0083f2f0 BW1M119 010d83a0 (LHCombined Release)
	void Release();
	// BW1W120 0083f3b0 BW1M119 0100ad50 (LHCombined Release)
	void OpenSort();
	// BW1W120 0083f300 BW1M119 010d8360 (LHCombined Release)
	void CloseSort();
	// BW1W120 0083f310 BW1M119 0101bf70 (LHCombined Release)
	void __fastcall NewZObject(void* object, DrawCallback draw, float distance, unsigned long flags);
};
static_assert(sizeof(LH3DZSorter::ZObject) == 0x18, "Data type is of wrong size");
static_assert(sizeof(LH3DZSorter) == 0x614, "Data type is of wrong size");

// BW1W120 00ee9d38 BW1M119 01346440 (LHCombined Release)
extern LH3DZSorter::ZObject* g_z_first;

#endif /* BW1_DECOMP_LH3D_Z_SORTER_INCLUDED_H */
