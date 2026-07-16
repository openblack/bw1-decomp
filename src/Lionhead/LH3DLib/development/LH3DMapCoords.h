#ifndef BW1_DECOMP_LH3D_MAP_COORDS_INCLUDED_H
#define BW1_DECOMP_LH3D_MAP_COORDS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t */

// fabricated
typedef int32_t LH3DMapCoordsFull;

struct LH3DMapCoords
{
	LH3DMapCoordsFull x; /* 0x0 */
	LH3DMapCoordsFull z;
	float             altitude;

	// Non-virtual methods

	// BW1W120 inlined BW1M100 1006a8c0 LH3DMapCoords::AddToMapX(void) const
	void AddToMapX(uint16_t x);
	// BW1W120 inlined BW1M100 1006a880 LH3DMapCoords::AddToMapZ(void) const
	void AddToMapZ(uint16_t z);
	// BW1W120 inlined BW1M100 inlined LH3DMapCoords::CentreOnMap(void)
	void CentreOnMap();
	// BW1W120 inlined BW1M100 inlined LH3DMapCoords::SetFractionX(short)
	void SetFractionX(uint16_t x);
	// BW1W120 inlined BW1M100 inlined LH3DMapCoords::SetFractionZ(short)
	void SetFractionZ(uint16_t z);
	// BW1W120 inlined BW1M100 10049a90 LH3DMapCoords::MapX(void) const
	uint16_t MapX();
	// BW1W120 inlined BW1M100 100499b0 LH3DMapCoords::MapZ(void) const
	uint16_t MapZ();
	// BW1W120 inlined BW1M100 100456f0 LH3DMapCoords::WholeX(void) const
	uint32_t WholeX();
	// BW1W120 inlined BW1M100 10045a60 LH3DMapCoords::WholeZ(void) const
	uint32_t WholeZ();
	// BW1W120 inlined BW1M100 inlined LH3DMapCoords::SetMapX(short) const
	void SetMapX(uint16_t x);
	// BW1W120 inlined BW1M100 inlined LH3DMapCoords::SetMapZ(short) const
	void SetMapZ(uint16_t z);
	// BW1W120 inlined BW1M100 1004ae60 LH3DMapCoords::SetWholeX(int)
	void SetWholeX(int x);
	// BW1W120 inlined BW1M100 1004aea0 LH3DMapCoords::SetWholeZ(int)
	void SetWholeZ(int z);
	// BW1W120 inlined BW1M100 1004aee0 LH3DMapCoords::SetAltitude(float)
	void SetAltitude(float altitude);
	// BW1W120 0054b820 BW1M100 inlined LH3DMapCoords::SetToZero(void)
	void SetToZero();
};

#endif /* BW1_DECOMP_LH3D_MAP_COORDS_INCLUDED_H */
