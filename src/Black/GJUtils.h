#ifndef BW1_DECOMP_GJ_UTILS_INCLUDED_H
#define BW1_DECOMP_GJ_UTILS_INCLUDED_H

#include <chlasm/Enum.h> /* For enum GESTURE_TYPE */

// Forward Declares

struct LH3DMaterial;
struct LH3DMesh;
struct LHMatrix;
struct LHPoint;
struct MaterialProperties;
class TSphere;

// Giles Jermy's static helpers (see GJBaseUtils.h for the attribution) (meshes, materials, spheres, quaternions and interpolation templates such
// as Linterp and LinterpTableValues in the Mac symbols). Only the members below are declared so far.
struct LH3DTexture;

class GJUtils
{
public:
	struct Quaternion
	{
		// BW1W120 inlined BW1M119 inlined
		Quaternion() : W(0.0f), X(0.0f), Y(0.0f), Z(0.0f) {}

		float W; /* 0x0 */
		float X;
		float Y;
		float Z; /* 0xc */
	};

	// BW1W120 0057dfb0 BW1M119 012c2db0
	static LH3DMesh* GetSharedMesh(const char* path, const MaterialProperties& props);
	// BW1W120 0057dbe0 BW1M119 012c3280
	static LH3DTexture* CreateSharedTexture(const char* path);
	// BW1W120 0057e120 BW1M119 012c2c50
	static void SetMaterialProperties(LH3DMaterial* material, const MaterialProperties& prop);
	// BW1W120 0057e1d0 BW1M119 012c2b70
	static void SetMaterialProperties(LH3DMesh* mesh, const MaterialProperties& prop);
	// BW1W120 0057d2b0 BW1M119 012c40a0
	static void PostRotateByQuaternion(float angle, const LHPoint* axis, LHMatrix* matrix);
	// BW1W120 005906e0 BW1M119 012ff530
	static void GetRandomSurfacePos(LH3DMesh* mesh, LHMatrix& matrix, LHPoint* pos, LHPoint* normal);
	// BW1W120 00590460 BW1M119 012ff6f0
	static void GetRandomLocalSurfacePos(LH3DMesh* mesh, LHPoint* pos, LHPoint* normal);
	// BW1W120 00590010 BW1M119 012ff280
	static float Spline(float t, int count, float* keys);
	// BW1W120 0057c9f0 BW1M119 012c4d00
	static bool32_t PointIsInSphere(const TSphere& sphere, const LHPoint& point, float radius);
	// BW1W120 0057d3d0 BW1M119 012c3fd0
	static LH3DMesh* LoadMeshFile(const char* path);
	// BW1W120 0057d420 BW1M119 012c3ed0
	static LH3DMesh* LoadMeshFile(const char* path, const MaterialProperties& props);
	// BW1W120 0057ccd0 BW1M119 012c45d0
	static bool FindIntersect(const TSphere& sphere, const LHPoint& from, const LHPoint& to, float radius,
	                          LHPoint* intersect);
	// BW1W120 0057cfd0 BW1M119 012c4410
	static void DeflectOffSphere(const TSphere& sphere, const LHPoint& point, LHPoint* velocity);
	// BW1W120 0057d0b0 BW1M119 012c42b0
	static void QuaternionToMatrix(const Quaternion* quaternion, LHMatrix* matrix);
	// BW1W120 0057d1d0 BW1M119 012c4130
	static void SetRotateByQuaternion(float angle, const LHPoint* axis, LHMatrix* matrix);
	// BW1W120 0057e060 BW1M119 null
	static LH3DMesh* GetSharedMesh(const char* path);
	// BW1W120 inlined BW1M119 01057f60
	template <class T> static T Linterp(const T& from, const T& to, float t) { return from + (to - from) * t; }
	// BW1W120 inlined BW1M119 01055100
	template <class T> static T LinterpNoBoundsCheck(const T& from, const T& to, float t)
	{
		return from + (to - from) * t;
	}
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

// BW1W120 inlined BW1M119 inlined
inline void Wrap(float& value, float range)
{
	float t = value;
	value = t - (int)(t / range) * range;
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

#define GLOBAL_TEXTURES_GESTURE_SHEETS     2
#define GLOBAL_TEXTURES_GESTURES_PER_SHEET 16

class GlobalTextures
{
public:
	// BW1W120 0057d440 BW1M119 012c3df0
	static LH3DMaterial* GetLightSheetMaterial();
	// BW1W120 0057d590 BW1M119 012c39a0
	static LH3DMaterial* GetHighlightMaterial();
	// BW1W120 0057d5d0 BW1M119 012c38a0
	static LH3DMaterial* GetGestureMaterialAndOffset(GESTURE_TYPE type, long* offset);

	enum FROZ_MAT_TYPE
	{
		FROZ_MAT_TYPE_0 = 0x0,
		FROZ_MAT_TYPE_COUNT = 0x3,
	};

	enum VOL_FX_MAT_TYPE
	{
		VOL_FX_MAT_TYPE_6 = 0x6,
		VOL_FX_MAT_TYPE_COUNT = 0x7,
	};

	// BW1W120 0057d480 BW1M119 012c3d00
	static LH3DMaterial* GetAdditiveSmokeMaterial();
	// BW1W120 0057d500 BW1M119 012c3b60
	static LH3DMaterial* GetFizzMaterial();
	// BW1W120 0057d4c0 BW1M119 012c3c30
	static LH3DMaterial* GetFrozMaterial(FROZ_MAT_TYPE type);
	// BW1W120 0057d540 BW1M119 012c3a70
	static LH3DMaterial* GetAnimVolFXMaterial(VOL_FX_MAT_TYPE type);
};

class GlobalTextures2
{
public:
	// BW1W120 00590440 BW1M119 012ff920
	static LH3DMaterial* GetPlayerSymbolMaterialMultiplicative();
	// BW1W120 00590420 BW1M119 012ff9d0
	static LH3DMaterial* GetPlayerSymbolMaterial();
};

#endif /* BW1_DECOMP_GJ_UTILS_INCLUDED_H */
