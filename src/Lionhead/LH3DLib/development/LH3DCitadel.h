#ifndef BW1_DECOMP_LH3D_CITADEL_INCLUDED_H
#define BW1_DECOMP_LH3D_CITADEL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "LH3DStaticMorphableObject.h" /* For struct LH3DStaticMorphableObject */

// Forward Declares

struct LH3DMesh;
struct LHMatrix;
struct LHPoint;

// The highest stage a citadel reaches, just under the fully built one.
#define LH3D_CITADEL_MAX_STAGE 0.9999f
// The stages of a citadel's building, counted by GetStage.
#define LH3D_CITADEL_STAGES 2

class LH3DCitadel : public LH3DStaticMorphableObject
{
public:
	float     field_0x84;
	float     field_0x88;
	float     Stage; /* 0x8c */
	float     field_0x90;
	float     field_0x94;
	float     Nasty; /* 0x98 */
	float     Life;
	uint8_t   field_0xa0[0xc];
	LH3DMesh* CitadelMesh; /* 0xac */
	uint8_t   field_0xb0[0x10];

	// Static data

	// BW1W120 00faa7e4 BW1M119 011e3b5c (LHCombined Release)
	static LH3DMesh* g_mesh_entrance;

	// Virtual methods

	// BW1W120 0080baa0 BW1M119 01037ec0 (LHCombined Release)
	virtual void SetStage(float stage)
	{
		if (stage < 0.0f)
		{
			Stage = 0.0f;
		}
		else if (stage > 1.0f)
		{
			Stage = 1.0f;
		}
		else
		{
			Stage = stage;
		}
	}
	// BW1W120 0080baf0 BW1M119 010de380 (LHCombined Release)
	virtual long GetStage(float stage)
	{
		if (stage >= 1.0f)
		{
			stage = LH3D_CITADEL_MAX_STAGE;
		}
		else if (stage < 0.0f)
		{
			stage = 0.0f;
		}
		return (long)(stage * LH3D_CITADEL_STAGES);
	}
	// BW1W120 0080bb40 BW1M119 01146ad0 (LHCombined Release)
	virtual float GetStage() { return Stage; }
	// BW1W120 0080bb50 BW1M119 01037e60 (LHCombined Release)
	virtual void SetNasty(float nasty)
	{
		if (nasty < 0.0f)
		{
			Nasty = 0.0f;
		}
		else if (nasty >= 1.0f)
		{
			Nasty = LH3D_CITADEL_MAX_STAGE;
		}
		else
		{
			Nasty = nasty;
		}
	}
	// BW1W120 0080bba0 BW1M119 01070360 (LHCombined Release)
	virtual float GetNasty() { return Nasty; }
	// BW1W120 0080bbb0 BW1M119 010d6c90 (LHCombined Release)
	virtual bool32_t IsTemple() { return true; }
	// BW1W120 0080bbc0 BW1M119 010af040 (LHCombined Release)
	virtual LH3DMesh* GetTempleEntrance() { return g_mesh_entrance; }
	// BW1W120 008830a0 BW1M119 0111b1f0 (LHCombined Release)
	virtual void Release();
	// BW1W120 00882a40 BW1M119 01011700 (LHCombined Release)
	virtual void Draw();
	// BW1W120 008831c0 BW1M119 010de6c0 (LHCombined Release)
	virtual bool32_t __fastcall GetExtraPos(long index, LHPoint* point) const;
	// BW1W120 008833b0 BW1M119 0104b9f0 (LHCombined Release)
	virtual bool32_t __fastcall GetExtraPos(long index, LHMatrix* matrix);
	// BW1W120 00882ad0 BW1M119 01037a80 (LHCombined Release)
	virtual bool32_t IsChangedSize();
	// BW1W120 00883120 BW1M119 0103af80 (LHCombined Release)
	virtual void SetTempleLife(float life);
	// BW1W120 00882b10 BW1M119 0109b620 (LHCombined Release)
	virtual bool32_t ProcessAlignement();
	// BW1W120 00882730 BW1M119 010414e0 (LHCombined Release)
	virtual void InitTemple(LHPoint* point, float percent_built, unsigned long player);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	LH3DCitadel() { g_count_static_object++; }
};

#endif /* BW1_DECOMP_LH3D_CITADEL_INCLUDED_H */
