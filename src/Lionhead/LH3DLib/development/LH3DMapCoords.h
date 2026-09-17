#ifndef BW1_DECOMP_LH3D_MAP_COORDS_INCLUDED_H
#define BW1_DECOMP_LH3D_MAP_COORDS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t */

// fabricated
typedef int32_t LH3DMapCoordsFull;

struct LH3DMapCoords
{
	union {
		LH3DMapCoordsFull x; /* 0x0 */
		struct
		{
			uint16_t FractionX;
			uint16_t CellX;
		};
	};
	union {
		LH3DMapCoordsFull z; /* 0x4 */
		struct
		{
			uint16_t FractionZ;
			uint16_t CellZ;
		};
	};
	float altitude; /* 0x8 */

	// Constructors

	// BW1W120 00441b60 LH3DMapCoords::LH3DMapCoords(void)
	LH3DMapCoords() : x(0), z(0), altitude(0.0f) {}

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
	uint16_t MapX() const { return CellX; }
	// BW1W120 inlined BW1M100 100499b0 LH3DMapCoords::MapZ(void) const
	uint16_t MapZ() const { return CellZ; }
	// BW1W120 inlined BW1M100 100456f0 LH3DMapCoords::WholeX(void) const
	int32_t WholeX() const { return x; }
	// BW1W120 inlined BW1M100 10045a60 LH3DMapCoords::WholeZ(void) const
	int32_t WholeZ() const { return z; }
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
