#ifndef BW1_DECOMP_GJ_UTILS_INCLUDED_H
#define BW1_DECOMP_GJ_UTILS_INCLUDED_H

// Forward Declares

struct LH3DMaterial;
struct LH3DMesh;
struct LHMatrix;
struct LHPoint;
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
	// BW1W120 0057d2b0 BW1M119 012c40a0
	static void PostRotateByQuaternion(float angle, const LHPoint* axis, LHMatrix* matrix);
	// BW1W120 005906e0 BW1M119 012ff530
	static void GetRandomSurfacePos(LH3DMesh* mesh, LHMatrix& matrix, LHPoint* pos, LHPoint* normal);
	// BW1W120 inlined BW1M119 01057f60
	template <class T> static T Linterp(const T& from, const T& to, float t) { return from + (to - from) * t; }
	// BW1W120 inlined BW1M119 010defc0
	template <class T> static void Linterp(const T& from, const T& to, float t, T* result)
	{
		*result = from + (to - from) * t;
	}
	// BW1W120 inlined BW1M119 013fa270
	template <class T> static void LinterpNoBoundsCheck(const T& from, const T& to, float t, T* result)
	{
		*result = from + (to - from) * t;
	}
	// BW1W120 inlined BW1M119 010c8150
	static unsigned long ModulateColor(unsigned long color1, unsigned long color2)
	{
		return ((((color2 >> 24) * (color1 >> 24)) >> 8) << 24) |
		       (((((color2 >> 16) & 0xff) * ((color1 >> 16) & 0xff)) >> 8) << 16) |
		       (((((color2 >> 8) & 0xff) * ((color1 >> 8) & 0xff)) >> 8) << 8) |
		       (((color2 & 0xff) * (color1 & 0xff)) >> 8);
	}
};

// BW1W120 inlined BW1M119 01054d10
inline float boundf(float low, float value, float high)
{
	return value > low ? (value < high ? value : high) : low;
}

inline float LinterpTable(const float* keys, const float* values, int count, float key)
{
	if (key <= keys[0])
	{
		return values[0];
	}
	if (key >= keys[count - 1])
	{
		return values[count - 1];
	}
	for (int i = 0; i < count - 1; i++)
	{
		if (key < keys[i + 1])
		{
			return GJUtils::Linterp(values[i], values[i + 1], (key - keys[i]) / (keys[i + 1] - keys[i]));
		}
	}
	return values[count - 1];
}

class GlobalTextures
{
public:
	// BW1W120 0057d440 BW1M119 012c3df0
	static LH3DMaterial* GetLightSheetMaterial();

	enum FROZ_MAT_TYPE
	{
		FROZ_MAT_TYPE_0 = 0x0,
	};

	enum VOL_FX_MAT_TYPE
	{
		VOL_FX_MAT_TYPE_6 = 0x6,
	};

	// BW1W120 0057d4c0 BW1M119 012c3c30
	static LH3DMaterial* GetFrozMaterial(FROZ_MAT_TYPE type);
	// BW1W120 0057d540 BW1M119 012c3a70
	static LH3DMaterial* GetAnimVolFXMaterial(VOL_FX_MAT_TYPE type);
};

#endif /* BW1_DECOMP_GJ_UTILS_INCLUDED_H */
