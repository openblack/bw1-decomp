#ifndef BW1_DECOMP_TREE_INFO_INCLUDED_H
#define BW1_DECOMP_TREE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <chlasm/Enum.h> /* For enum CARRIED_TREE_TYPE, enum MESH_LIST */

#include "SingleMapFixedInfo.h" /* For struct GSingleMapFixedInfo */
#include "InfoLoaders.h"        /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GTreeInfo : public GSingleMapFixedInfo
{
public:
	MESH_LIST         GrowingMesh; /* 0x104 */
	MESH_LIST         BurningMesh;
	uint32_t          Strength;
	float             Defence;
	float             StartLife; /* 0x114 */
	uint32_t          GrowsAfterNumGameTurns;
	float             GrowthAmount;
	uint32_t          BurnCheckAroundEvery;
	uint32_t          RandomBurnChance; /* 0x124 */
	float             MinSize;
	float             MaxSize;
	float             RainingAcceleratorMultiplier;
	float             WaterSpellAcceleratorMultiplier; /* 0x134 */
	CARRIED_TREE_TYPE CarriedType;
	uint16_t          MaxNumTreesCanProduce; /* 0x13c */

	// Override methods

	// BW1W120 inlined BW1M119 0115da10
	virtual ~GTreeInfo() {}
	// BW1W120 0074c5a0 BW1M119 0115df10
	virtual LH3DColor GetDebugColor() const;
	// BW1W120 00749d60 BW1M119 0115d890
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos);
	// BW1W120 0074c5c0 BW1M119 0115de10
	virtual void UpdateValue(float value, uint32_t offset, uint32_t param_3);

	// Static data

	// BW1W120 00da3ad8
	static GTreeInfo Infos[TREE_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 01161680
	static GTreeInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Tree.h.
	// Out of line: LoadBinary at 0042eab0, Load at 0042e9d0.
	INFO_DATA_BLOCK(GrowingMesh, MaxNumTreesCanProduce)
	INFO_DERIVED_LOADERS(GSingleMapFixedInfo, "Tree.h", 23)
};
static_assert(sizeof(GTreeInfo) == 0x140, "Data type is of wrong size");

#endif /* BW1_DECOMP_TREE_INFO_INCLUDED_H */
