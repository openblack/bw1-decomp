#ifndef BW1_DECOMP_BITMAP_16B_INCLUDED_H
#define BW1_DECOMP_BITMAP_16B_INCLUDED_H

#include <stddef.h>
#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include <re_common.h> /* For bool32_t */

// The pixel formats of a raw file read by Bitmap16B::CreateFromRawOnHD.
enum BITMAP_16B_RAW_FORMAT
{
	BITMAP_16B_RAW_FORMAT_RGBA = 0,
	BITMAP_16B_RAW_FORMAT_RGB = 1,
};

// A bitmap of 16 bit pixels, allocated in one block with its header.
struct Bitmap16B
{
	long      Type;   /* 0x0 */
	long      Width;  /* 0x4 */
	long      Height; /* 0x8 */
	uint16_t* Data;   /* 0xc */

	// Static methods

	// BW1W120 00822130 BW1M119 01073b20 (LHCombined Release)
	static Bitmap16B* Create(long width, long height, long type);
	// BW1W120 00822190 BW1M119 010d8d80 (LHCombined Release)
	static Bitmap16B* CreateFromHD(char* name, bool32_t keep_format);
	// BW1W120 00822360 BW1M119 010d92f0 (LHCombined Release)
	static Bitmap16B* CreateFromRawOnHD(char* name, bool32_t check_size, long format);
	// BW1W120 008224b0 BW1M119 0107bf40 (LHCombined Release)
	static Bitmap16B* CreateFromTGAOnHD(char* name);

	// Non-virtual methods

	// BW1W120 00822180 BW1M119 01080460 (LHCombined Release)
	void Release();
	// BW1W120 00822540 BW1M119 010804b0 (LHCombined Release)
	void SaveOnHD(char* name);
};
static_assert(sizeof(Bitmap16B) == 0x10, "Data type is of wrong size");
static_assert(offsetof(Bitmap16B, Data) == 0xc, "Data member is at the wrong offset");

#endif /* BW1_DECOMP_BITMAP_16B_INCLUDED_H */
