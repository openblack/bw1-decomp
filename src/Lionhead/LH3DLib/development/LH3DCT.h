#ifndef BW1_DECOMP_LH3D_CT_INCLUDED_H
#define BW1_DECOMP_LH3D_CT_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <ddraw.h>     /* For DDSURFACEDESC2, IDirectDrawSurface7 */
#include <re_common.h> /* For bool32_t */

// A texture compressed into a DXT surface.
struct LH3DCT
{
	// A compressed texture as saved: its size in bytes, the description of its surface, then the surface's data.
	struct DataOnDisk
	{
		unsigned long  Size; /* 0x0 */
		DDSURFACEDESC2 Desc; /* 0x4 */
	};

	unsigned long        Size;    /* 0x0 */
	IDirectDrawSurface7* Surface; /* 0x4 */

	// BW1W120 0087f6d0 BW1M119 0115fee0 (LHCombined Release)
	static LH3DCT* Create(DataOnDisk* data, bool32_t alpha);

	// BW1W120 0087f880 BW1M119 010d82d0 (LHCombined Release)
	void Release();
	// BW1W120 0087f8b0 BW1M119 010b4ac0 (LHCombined Release)
	DataOnDisk* CreateSavingData();
};
static_assert(sizeof(LH3DCT) == 0x8, "Data type is of wrong size");
static_assert(sizeof(LH3DCT::DataOnDisk) == 0x80, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_CT_INCLUDED_H */
