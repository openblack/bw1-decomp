#ifndef BW1_DECOMP_LH3D_SPRITE_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_SPRITE_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LH3DObject.h" /* For struct LH3DObject */

// Forward Declares

struct LH3DSmoke;
struct LHPoint;

// The height above its position a fire sprite of type LH3D_SPRITE_OBJECT_TYPE_FIRE_00 is drawn at.
#define LH3D_SPRITE_OBJECT_FIRE_00_OFFSET 0.35f

enum LH3D_SPRITE_OBJECT_TYPE
{
	LH3D_SPRITE_OBJECT_TYPE_SMOKE = 0,
	LH3D_SPRITE_OBJECT_TYPE_FIRE_00 = 1,
	LH3D_SPRITE_OBJECT_TYPE_FIRE_35 = 2,
};

class LH3DSpriteObject : public LH3DObject
{
public:
	LH3DSmoke* smoke; /* 0x7c */

	// Virtual methods

	// BW1W120 008154b0 BW1M119 01081620 (LHCombined Release)
	virtual bool32_t IsShadowOnTexture() { return false; }
	// BW1W120 008154c0 BW1M119 01081670 (LHCombined Release)
	virtual bool32_t IsFootPrintOnTexture() { return false; }
	// BW1W120 008154d0 BW1M119 010816c0 (LHCombined Release)
	virtual void __fastcall SetEnumFlag(bool32_t flag) {}
	// BW1W120 008154e0 BW1M119 01081700 (LHCombined Release)
	virtual bool32_t GetEnumFlag() { return false; }
	// BW1W120 00815580 BW1M119 01074ef0 (LHCombined Release)
	virtual void Release();
	// BW1W120 00815590 BW1M119 01074e90 (LHCombined Release)
	virtual void AddDrawing();
	// BW1W120 008155a0 BW1M119 01074e30 (LHCombined Release)
	virtual void Draw();
	// BW1W120 008155d0 BW1M119 01074d50 (LHCombined Release)
	virtual void SetPosition(float x, float y, float z);
	// BW1W120 008155b0 BW1M119 01074dc0 (LHCombined Release)
	virtual void __fastcall SetPosition(const LHPoint& point, float y_angle, float scale);

	// Constructors

	// BW1W120 00815380 BW1M119 01075020 (LHCombined Release)
	LH3DSpriteObject(long type);

	// Destructor

	// BW1W120 008154f0 BW1M119 01074f30 (LHCombined Release)
	~LH3DSpriteObject();
};

#endif /* BW1_DECOMP_LH3D_SPRITE_OBJECT_INCLUDED_H */
