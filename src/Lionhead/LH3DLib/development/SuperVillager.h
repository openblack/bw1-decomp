#ifndef BW1_DECOMP_SUPER_VILLAGER_INCLUDED_H
#define BW1_DECOMP_SUPER_VILLAGER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LH3DAnimatedObject.h" /* For LH3DAnimatedObject */

// Forward Declares

class LH3DEye;
class TemporaryShadow;
struct LH3DAnim;
struct LH3DMesh;

class SuperVillager
{
public:
	// Static members

	// BW1W120 00eb9a08 BW1M119 011f1e30 (LHCombined Release)
	static SuperVillager* g_first;

	TemporaryShadow*    Shadow;
	LH3DAnimatedObject* Object;
	SuperVillager*      Next;
	LH3DAnim*           LastAnim;
	long                LastCycleTime;
	float               Heading;
	void*               UserData;
	LH3DEye*            Eyes;
	LH3DMesh*           SavedMeshes[LH3D_MESH_LOD_LEVEL_LAST];
	LH3DMesh*           Mesh;
	union {
		uint32_t Flags;
		struct
		{
			uint32_t AtIntro : 1;
			uint32_t NoSmoothing : 1;
		};
	};

	// Constructors

	// BW1W120 00825e40 BW1M119 0111a1b0 (LHCombined Release)
	SuperVillager();

	// Destructor

	// BW1W120 00825e70 BW1M119 01127c10 (LHCombined Release)
	~SuperVillager();

	// Static methods

	// BW1W120 00825440 BW1M119 0113aeb0 (LHCombined Release)
	static void ReleaseThisOne(LH3DAnimatedObject* object);
	// BW1W120 008254a0 BW1M119 01012140 (LHCombined Release)
	static void DrawAll();
	// BW1W120 00825f20 BW1M119 0107fee0 (LHCombined Release)
	static SuperVillager* Create(LH3DAnimatedObject* object, long eyes, LH3DMesh* mesh);

	// Non-virtual methods

	// BW1W120 00825400 BW1M119 0100e850 (LHCombined Release)
	void AddDrawing();
	// BW1W120 00825530 BW1M119 01036f40 (LHCombined Release)
	void Draw();
	// BW1W120 00826180 BW1M119 010b39b0 (LHCombined Release)
	void Release();
};
static_assert(sizeof(SuperVillager) == 0x34, "Data type is of wrong size");

#endif /* BW1_DECOMP_SUPER_VILLAGER_INCLUDED_H */
