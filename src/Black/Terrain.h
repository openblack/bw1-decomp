#ifndef BW1_DECOMP_TERRAIN_INCLUDED_H
#define BW1_DECOMP_TERRAIN_INCLUDED_H

#include <stdint.h> /* For uint16_t */

// Forward Declares

class GTerrainMaterialInfo;

class Terrain
{
public:
	// Static methods

	// BW1W120 00735330 BW1M119 0106a3b0
	static GTerrainMaterialInfo* GetMaterialInfo(uint16_t x, uint16_t z);
};

#endif /* BW1_DECOMP_TERRAIN_INCLUDED_H */
