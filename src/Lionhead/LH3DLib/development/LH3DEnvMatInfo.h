#ifndef BW1_DECOMP_LH3D_ENV_MAT_INFO_INCLUDED_H
#define BW1_DECOMP_LH3D_ENV_MAT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

struct LH3DMaterial;
struct LH3DTexture;

// The environment map material of an object. The second texture coordinates of an environment mapped primitive
// are scaled by Scale and moved by Offset.
struct LH3DEnvMatInfo
{
	LH3DMaterial* Material; /* 0x0 */
	LH3DTexture*  Texture;
	float         OffsetU; /* 0x8 */
	float         OffsetV;
	float         ScaleU; /* 0x10 */
	float         ScaleV;

	// Non-virtual methods

	// BW1W120 0080b380 BW1M119 01080390 (LHCombined Release)
	void LoadEnvMat(char* name, float offset_u, float offset_v, float scale_u, float scale_v);
	// BW1W120 0080b3d0 BW1M119 01080300 (LHCombined Release)
	void ReleaseEnvMat();
};
static_assert(sizeof(LH3DEnvMatInfo) == 0x18, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_ENV_MAT_INFO_INCLUDED_H */
