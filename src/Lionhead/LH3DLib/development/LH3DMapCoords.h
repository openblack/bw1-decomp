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

	// BW1W120 00441b60 BW1M119 0104cbc0
	LH3DMapCoords() : x(0), z(0), altitude(0.0f) {}
	// World units to 16.16 fixed point: a cell is 10 units across.
	LH3DMapCoords(float _x, float _z)
		: x((LH3DMapCoordsFull)((float)(_x * (float)0x10000) / 10.0f)),
		  z((LH3DMapCoordsFull)((float)(_z * (float)0x10000) / 10.0f)), altitude(0.0f)
	{
	}

	// Non-virtual methods

	// BW1W120 inlined
	void AddToMapX(uint16_t x) const;
	// BW1W120 inlined
	void AddToMapZ(uint16_t z) const;
	// BW1W120 inlined BW1M119 inlined
	void CentreOnMap();
	// BW1W120 inlined BW1M119 inlined
	void SetFractionX(uint16_t x);
	// BW1W120 inlined BW1M119 inlined
	void SetFractionZ(uint16_t z);
	// BW1W120 inlined BW1M119 0104c450
	uint16_t MapX() const { return CellX; }
	// BW1W120 inlined BW1M119 0104c370
	uint16_t MapZ() const { return CellZ; }
	// BW1W120 inlined BW1M119 01048140
	int32_t WholeX() const { return x; }
	// BW1W120 inlined BW1M119 010484b0
	int32_t WholeZ() const { return z; }
	// BW1W120 inlined BW1M119 inlined
	void SetMapX(uint16_t x) const;
	// BW1W120 inlined BW1M119 inlined
	void SetMapZ(uint16_t z) const;
	// BW1W120 inlined BW1M119 0104d810
	void SetWholeX(int x);
	// BW1W120 inlined BW1M119 0104d850
	void SetWholeZ(int z);
	// BW1W120 inlined BW1M119 0104d890
	void SetAltitude(float altitude);
	// BW1W120 0054b820 BW1M119 inlined
	void SetToZero();
};

#endif /* BW1_DECOMP_LH3D_MAP_COORDS_INCLUDED_H */
