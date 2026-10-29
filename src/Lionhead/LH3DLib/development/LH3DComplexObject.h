#ifndef BW1_DECOMP_LH3D_COMPLEX_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_COMPLEX_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t */

#include "LH3DStaticObject.h" /* For struct LH3DStaticObject */
#include "TShadowInfo.h"      /* For TShadowInfo */

// Forward Declares

struct LH3DMaterial;
struct LH3DObjectHair;
struct LHMatrix;

// The colour a complex object is frozen with until told otherwise.
#define LH3D_COMPLEX_OBJECT_DEFAULT_FROZ_COLOR 0x6090ff
// The frozen or fizzing amount from which a complex object's hair is no longer drawn.
#define LH3D_COMPLEX_OBJECT_HAIR_MAX_EFFECT 0.2f
// How many times its bounding box diagonal a complex object's shadow can fall from it.
#define LH3D_COMPLEX_OBJECT_SHADOW_DISTANCE_SCALE 3.0f
// The height above a complex object a vertical shadow is cast from.
#define LH3D_COMPLEX_OBJECT_VERTICAL_SHADOW_HEIGHT 200.0f

class LH3DComplexObject : public LH3DStaticObject
{
public:
	LHMatrix*          BoneMatrices;
	TShadowInfo*       ShadowInfo;
	LH3DObjectHair*    hair;
	LH3DObject*        CarriedObject;
	LH3DMaterial*      FrozMaterial;
	float              FrozAmount;
	unsigned long      FrozParam;
	LH3DMaterial*      FizzMaterial;
	float              FizzAmount;
	float              FizzU;
	float              FizzV;
	bool32_t           Hidden;
	LH3DComplexObject* next;
	bool32_t           DrawAfterFrame;
	bool32_t           DrawnAfterFrame;
	bool32_t           VerticalShadow;

	// BW1W120 00ea1aec BW1M119 012b1edc (LHCombined Release)
	static LH3DComplexObject* g_first_co;

	// Virtual methods

	// BW1W120 0080b9d0 BW1M119 01070240 (LHCombined Release)
	virtual void __fastcall SetFootPrintOnTexture(bool32_t foot_print_on_texture) {}
	// BW1W120 0080b9e0 BW1M119 01070290 (LHCombined Release)
	virtual bool32_t IsFootPrintOnTexture() { return false; }
	// BW1W120 0080b9f0 BW1M119 010702e0 (LHCombined Release)
	virtual bool32_t IsComplex() { return true; }
	// BW1W120 0080ba00 BW1M119 01070320 (LHCombined Release)
	virtual TShadowInfo* GetShadowInfo() { return ShadowInfo; }
	// BW1W120 00816710 BW1M119 01072f30 (LHCombined Release)
	virtual void Release();
	// BW1W120 00813340 BW1M119 010778e0 (LHCombined Release)
	virtual void AddDrawing();
	// BW1W120 008156a0 BW1M119 01074af0 (LHCombined Release)
	virtual bool32_t DrawWithClipping();
	// BW1W120 00813ba0 BW1M119 010360b0 (LHCombined Release)
	virtual void Draw();
	// BW1W120 00813300 BW1M119 01037cb0 (LHCombined Release)
	virtual void DrawUnderWater();
	// BW1W120 00814910 BW1M119 01075770 (LHCombined Release)
	virtual void DrawSnow();
	// BW1W120 00814680 BW1M119 01075b30 (LHCombined Release)
	virtual void DrawEnvMapMT();
	// BW1W120 00814c20 BW1M119 01075440 (LHCombined Release)
	virtual void DrawRefMapMT();
	// BW1W120 00813430 BW1M119 010774b0 (LHCombined Release)
	virtual void DrawFizz();
	// BW1W120 00815770 BW1M119 010747f0 (LHCombined Release)
	virtual void DrawFroz();
	// BW1W120 00814e80 BW1M119 01075250 (LHCombined Release)
	virtual void DrawForMouse();
	// BW1W120 00811950 BW1M119 01078a50 (LHCombined Release)
	virtual bool32_t CheckTriangleCollide();
	// BW1W120 00811ae0 BW1M119 01078690 (LHCombined Release)
	virtual bool32_t CheckPixelCollide();
	// BW1W120 00816830 BW1M119 01072e80 (LHCombined Release)
	virtual void SetCarriedObject(LH3DObject* object);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	LH3DComplexObject()
	{
		g_count_complex_object++;
		BoneMatrices = NULL;
		ShadowInfo = NULL;
		hair = NULL;
		CarriedObject = NULL;
		DrawAfterFrame = false;
		DrawnAfterFrame = false;
		next = g_first_co;
		g_first_co = this;
		FrozMaterial = NULL;
		FrozAmount = 0.0f;
		FrozParam = LH3D_COMPLEX_OBJECT_DEFAULT_FROZ_COLOR;
		FizzMaterial = NULL;
		FizzAmount = 0.0f;
		FizzU = 0.0f;
		FizzV = 0.0f;
		Hidden = false;
	}

	// Destructor

	// BW1W120 00816740 BW1M119 inlined
	~LH3DComplexObject()
	{
		LH3DComplexObject* previous = NULL;
		for (LH3DComplexObject* object = g_first_co; object != this; object = object->next)
		{
			previous = object;
		}
		if (previous != NULL)
		{
			previous->next = next;
		}
		else
		{
			g_first_co = next;
		}
		if (ShadowInfo != NULL)
		{
			ShadowInfo->Release();
			ShadowInfo = NULL;
		}
	}

	// Non-virtual methods

	// BW1W120 0080c020 BW1M119 0107f450 (LHCombined Release)
	void CreateDynamicShadow();
	// BW1W120 00814350 BW1M119 01075e90 (LHCombined Release)
	void DoFrozPart();
	// BW1W120 00814fd0 BW1M119 01013bf0 (LHCombined Release)
	void PrepareShadow();
};

#endif /* BW1_DECOMP_LH3D_COMPLEX_OBJECT_INCLUDED_H */
