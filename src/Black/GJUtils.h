#ifndef BW1_DECOMP_GJ_UTILS_INCLUDED_H
#define BW1_DECOMP_GJ_UTILS_INCLUDED_H

// Forward Declares

struct LH3DMaterial;
struct LH3DMesh;
struct MaterialProperties;

// Giles Jermy's static helpers (see GJBaseUtils.h for the attribution) (meshes, materials, spheres, quaternions and interpolation templates such
// as Linterp and LinterpTableValues in the Mac symbols). Only the members below are declared so far.
class GJUtils
{
public:
	// BW1W120 0057dfb0 BW1M119 012c2db0
	static LH3DMesh* GetSharedMesh(const char* path, const MaterialProperties& props);
	// BW1W120 0057e120 BW1M119 012c2c50
	static void SetMaterialProperties(LH3DMaterial* material, const MaterialProperties& prop);
	// BW1W120 0057e1d0 BW1M119 012c2b70
	static void SetMaterialProperties(LH3DMesh* mesh, const MaterialProperties& prop);
};

#endif /* BW1_DECOMP_GJ_UTILS_INCLUDED_H */
