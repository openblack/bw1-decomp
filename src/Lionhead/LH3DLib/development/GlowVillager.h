#ifndef BW1_DECOMP_GLOW_VILLAGER_INCLUDED_H
#define BW1_DECOMP_GLOW_VILLAGER_INCLUDED_H

// Forward Declares

class LH3DObject;
struct LH3DMaterial;
struct LH3DSprite;
struct LHPoint;

#define GLOW_VILLAGER_MAX_GLOWS 0x400

class GlowVillager
{
public:
	// BW1W120 00eb99d0 BW1M119 011f1e6c (LHCombined Release)
	static long g_count;
	// BW1W120 00eb99d4 BW1M119 011f1e68 (LHCombined Release)
	static LH3DSprite* g_sprite;
	// BW1W120 00eb99d8 BW1M119 011f1e64 (LHCombined Release)
	static LH3DSprite* g_sp_type;
	// BW1W120 00eb99dc BW1M119 011f1e60 (LHCombined Release)
	static LH3DMaterial* g_material;
	// BW1W120 00eb99e0 BW1M119 011f1e5c (LHCombined Release)
	static long g_offset;
	// BW1W120 00eb99e4 BW1M119 011f1e58 (LHCombined Release)
	static LH3DObject* g_the_one;
	// BW1W120 00eb99e8 BW1M119 011f1e54 (LHCombined Release)
	static int g_index;
	// BW1W120 00c383d0 BW1M119 011cea34 (LHCombined Release)
	static float g_scale;

	// BW1W120 008241b0 BW1M119 01010c30 (LHCombined Release)
	static void AddGlow(LHPoint* pos, float size);
	// BW1W120 00824400 BW1M119 0100ab40 (LHCombined Release)
	static void SetNewFrame();
};

#endif /* BW1_DECOMP_GLOW_VILLAGER_INCLUDED_H */
