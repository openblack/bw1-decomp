#ifndef BW1_DECOMP_MESH_LOD_INFO_INCLUDED_H
#define BW1_DECOMP_MESH_LOD_INFO_INCLUDED_H

#include <stdint.h>    /* For uint16_t */
#include <re_common.h> /* For bool32_t */

// Neighbours drawn at a coarser level of detail, one bit per side (LandBlock::MeshLodType).
#define MESH_LOD_NORTH      0x01
#define MESH_LOD_WEST       0x02
#define MESH_LOD_EAST       0x04
#define MESH_LOD_SOUTH      0x08
#define MESH_LOD_TYPE_COUNT 15

// How a block's grid is trimmed for each MeshLodType: the sides set to 1 lose their outer row of cells, which the
// border triangles below then fill in, stitched to the neighbour's coarser vertices.
struct MeshLodInfo
{
	bool32_t HasBorder;
	int      North;
	int      South;
	int      West;
	int      East;
	int      field_0x14;

	// BW1W120 00e9a130 BW1M119 011ceb4c (LHCombined Release)
	static MeshLodInfo g_mesh_lod_info[MESH_LOD_TYPE_COUNT];
	// BW1W120 00c37230 BW1M119 011ceb50 (LHCombined Release)
	static uint16_t g_NORTH_01[24][3];
	// BW1W120 00c372c0 BW1M119 011cebe0 (LHCombined Release)
	static uint16_t g_SOUTH_01[24][3];
	// BW1W120 00c37350 BW1M119 011cec70 (LHCombined Release)
	static uint16_t g_WEST_01[24][3];
	// BW1W120 00c373e0 BW1M119 011ced00 (LHCombined Release)
	static uint16_t g_EAST_01[24][3];
	// BW1W120 00c37470 BW1M119 011ced90 (LHCombined Release)
	static uint16_t g_NORTH_WEST_01[46][3];
	// BW1W120 00c37584 BW1M119 011ceea4 (LHCombined Release)
	static uint16_t g_NORTH_EAST_01[46][3];
	// BW1W120 00c37698 BW1M119 011cefb8 (LHCombined Release)
	static uint16_t g_SOUTH_WEST_01[46][3];
	// BW1W120 00c377ac BW1M119 011cf0cc (LHCombined Release)
	static uint16_t g_SOUTH_EAST_01[46][3];
	// BW1W120 00c378c0 BW1M119 011cf1e0 (LHCombined Release)
	static uint16_t g_NORTH_12[12][3];
	// BW1W120 00c37908 BW1M119 011cf228 (LHCombined Release)
	static uint16_t g_SOUTH_12[12][3];
	// BW1W120 00c37950 BW1M119 011cf270 (LHCombined Release)
	static uint16_t g_WEST_12[12][3];
	// BW1W120 00c37998 BW1M119 011cf2b8 (LHCombined Release)
	static uint16_t g_EAST_12[12][3];
	// BW1W120 00c379e0 BW1M119 011cf300 (LHCombined Release)
	static uint16_t g_NORTH_WEST_12[22][3];
	// BW1W120 00c37a64 BW1M119 011cf384 (LHCombined Release)
	static uint16_t g_NORTH_EAST_12[22][3];
	// BW1W120 00c37ae8 BW1M119 011cf408 (LHCombined Release)
	static uint16_t g_SOUTH_WEST_12[22][3];
	// BW1W120 00c37b6c BW1M119 011cf48c (LHCombined Release)
	static uint16_t g_SOUTH_EAST_12[22][3];
};

#endif /* BW1_DECOMP_MESH_LOD_INFO_INCLUDED_H */
