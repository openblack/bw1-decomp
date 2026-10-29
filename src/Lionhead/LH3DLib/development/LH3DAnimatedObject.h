#ifndef BW1_DECOMP_LH3D_ANIMATED_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_ANIMATED_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t */
#include <string.h> /* For memset */

#include "LH3DMesh.h"         /* For LH3DMesh */
#include "LH3DMeshedObject.h" /* For struct LH3DMeshedObject */

// Forward Declares

struct LH3DAnim;
struct LH3DMaterial;

class LH3DAnimatedObject : public LH3DMeshedObject
{
public:
	LH3DAnim* CurrentAnim; /* 0x80 */
	long      CurrentCycleTime;
	LH3DAnim* LastAnim;
	long      LastCycleTime;
	float     BlendFactor; /* 0x90 */
	uint32_t  field_0x94;
	LH3DMesh* Meshes[LH3D_MESH_LOD_LEVEL_LAST];

	// Virtual methods

	// BW1W120 0080b870 BW1M119 0102f940 (LHCombined Release)
	virtual LH3DAnim* GetCurrentAnim() { return CurrentAnim; }
	// BW1W120 0080b880 BW1M119 01030720 (LHCombined Release)
	virtual void __fastcall SetCurrentCycleTime(long time) { CurrentCycleTime = time; }
	// BW1W120 0080b890 BW1M119 01030420 (LHCombined Release)
	virtual long GetCurrentCycleTime() { return CurrentCycleTime; }
	// BW1W120 0080b8a0 BW1M119 01080520 (LHCombined Release)
	virtual void __fastcall SetLastAnim(LH3DAnim* anim) { LastAnim = anim; }
	// BW1W120 0080b8b0 BW1M119 01080570 (LHCombined Release)
	virtual LH3DAnim* GetLastAnim() { return LastAnim; }
	// BW1W120 0080b8c0 BW1M119 010805b0 (LHCombined Release)
	virtual void __fastcall SetLastCycleTime(long time) { LastCycleTime = time; }
	// BW1W120 0080b8d0 BW1M119 01080600 (LHCombined Release)
	virtual long GetLastCycleTime() { return LastCycleTime; }
	// BW1W120 0080b8e0 BW1M119 01080650 (LHCombined Release)
	virtual void SetBlendFactor(float factor) { BlendFactor = factor; }
	// BW1W120 0080b8f0 BW1M119 01034740 (LHCombined Release)
	virtual float GetBlendFactor() { return BlendFactor; }
	// BW1W120 0080b900 BW1M119 01005db0 (LHCombined Release)
	virtual bool32_t IsAnimated() { return true; }
	// BW1W120 0080b910 BW1M119 010a6380 (LHCombined Release)
	virtual void __fastcall SetMesh(LH3DMesh* mesh1, LH3DMesh* mesh2, LH3DMesh* mesh3)
	{
		Meshes[LH3D_MESH_LOD_LEVEL_NEAR] = mesh1;
		Meshes[LH3D_MESH_LOD_LEVEL_MEDIUM] = mesh2 ? mesh2 : mesh1;
		Meshes[LH3D_MESH_LOD_LEVEL_FAR] = mesh3 ? mesh3 : mesh1;
		if (Meshes[LH3D_MESH_LOD_LEVEL_NEAR] != NULL)
		{
			Meshes[LH3D_MESH_LOD_LEVEL_NEAR]->AddReference();
		}
		if (Meshes[LH3D_MESH_LOD_LEVEL_MEDIUM] != NULL)
		{
			Meshes[LH3D_MESH_LOD_LEVEL_MEDIUM]->AddReference();
		}
		if (Meshes[LH3D_MESH_LOD_LEVEL_FAR] != NULL)
		{
			Meshes[LH3D_MESH_LOD_LEVEL_FAR]->AddReference();
		}
		LH3DMeshedObject::SetMesh(mesh2 ? mesh2 : (mesh1 ? mesh1 : mesh3), NULL, NULL);
	}
	// BW1W120 00816580 BW1M119 010731a0 (LHCombined Release)
	virtual void Release();
	// BW1W120 00812170 BW1M119 010248e0 (LHCombined Release)
	virtual void Draw();
	// BW1W120 008175b0 BW1M119 010717e0 (LHCombined Release)
	virtual void DrawSpecialLight(float time, unsigned long special_color);
	// BW1W120 00810e20 BW1M119 0103abe0 (LHCombined Release)
	virtual void DrawUnderWater();
	// BW1W120 00811c70 BW1M119 01078450 (LHCombined Release)
	virtual void DrawCutByPlane();
	// BW1W120 0080fb50 BW1M119 0107a640 (LHCombined Release)
	virtual void DrawSnow();
	// BW1W120 0080f3d0 BW1M119 0107ac10 (LHCombined Release)
	virtual void DrawSnow(LH3DMaterial* material);
	// BW1W120 00811e70 BW1M119 01078100 (LHCombined Release)
	virtual void DrawVolLightGJ(unsigned long color, unsigned long specular, LH3DMaterial* material);
	// BW1W120 0080fcd0 BW1M119 0107a470 (LHCombined Release)
	virtual void DrawEnvMapMT();
	// BW1W120 0080fe00 BW1M119 0107a2a0 (LHCombined Release)
	virtual void DrawRefMapMT();
	// BW1W120 00810d20 BW1M119 01079210 (LHCombined Release)
	virtual void DrawNormals() const;
	// BW1W120 00817930 BW1M119 01070c60 (LHCombined Release)
	virtual void DrawFroz(float froz_amount, unsigned long froz_color, LH3DMaterial* material);
	// BW1W120 00813190 BW1M119 01077b80 (LHCombined Release)
	virtual void __fastcall DrawIntoSprite(void* sprite_data);
	// BW1W120 008185c0 BW1M119 01033d60 (LHCombined Release)
	virtual void __fastcall SetCurrentAnim(LH3DAnim* anim);
	// BW1W120 00811630 BW1M119 01078c30 (LHCombined Release)
	virtual bool32_t CheckTriangleCollide();

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	LH3DAnimatedObject()
	{
		g_count_animated_object++;
		CurrentAnim = NULL;
		CurrentCycleTime = 0;
		LastAnim = NULL;
		LastCycleTime = 0;
		BlendFactor = 0.0f;
		field_0x94 = 0;
		for (int i = 0; i < LH3D_MESH_LOD_LEVEL_LAST; i++)
		{
			Meshes[i] = NULL;
		}
	}

	// Destructor

	// BW1W120 008165c0 BW1M119 inlined
	~LH3DAnimatedObject()
	{
		for (int i = 0; i < LH3D_MESH_LOD_LEVEL_LAST; i++)
		{
			if (Meshes[i] != NULL)
			{
				Meshes[i]->Release();
				Meshes[i] = NULL;
			}
		}
	}

	// Non-virtual methods

	// BW1W120 00814040 BW1M119 010762a0 (LHCombined Release)
	void DoFrozPart(float froz_amount, unsigned long froz_color, LH3DMaterial* material);
};

#endif /* BW1_DECOMP_LH3D_ANIMATED_OBJECT_INCLUDED_H */
