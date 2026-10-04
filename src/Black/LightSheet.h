#ifndef BW1_DECOMP_LIGHT_SHEET_INCLUDED_H
#define BW1_DECOMP_LIGHT_SHEET_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

// Forward Declares

struct LH3DMaterial;

struct LightSheet
{
	void          Update(float time);                   // 0083e4f0
	void          DoTheDrawing(LH3DMaterial* material); // 0083e8c0
	int           count;                                /* 0x0 */
	float         field_0x4;
	float         field_0x8;
	float         field_0xc;
	float         field_0x10;
	float         field_0x14;
	float         field_0x18;
	float         field_0x1c;
	LHPoint*      field_0x20;
	float*        field_0x24;
	float*        field_0x28;
	uint32_t      field_0x2c;
	uint32_t      field_0x30;
	float         field_0x34;
	uint32_t      field_0x38;
	uint32_t      field_0x3c;
	float         field_0x40;
	float*        field_0x44;
	uint16_t*     field_0x48;
	float*        field_0x4c;
	uint32_t      field_0x50;
	int           field_0x54;
	LH3DMaterial* Material0x58;
	uint32_t      field_0x5c;
	float         field_0x60;
	uint32_t      field_0x64;

	// Constructors

	// BW1W120 0083e690 BW1M119 010cd9e0 (LHCombined Release)
	LightSheet();

	// Non-virtual methods

	// BW1W120 inlined BW1M119 011af650
	void SetScaleFac(float scale_fac) { field_0x10 = scale_fac; }
	// BW1W120 0083e710 BW1M119 010cd630 (LHCombined Release)
	void Init(int count);
	// BW1W120 inlined BW1M119 inlined
	void ResetPulses()
	{
		SetScaleFac(1.0f);
		field_0x5c = 1;
		field_0x60 = 0.0f;
		for (int i = 0; i < count; i++)
		{
			field_0x24[i] = 0.0f;
			field_0x28[i] = 250.0f;
		}
	}
	// BW1W120 0083e610 BW1M119 010cda30 (LHCombined Release)
	void PulseForceField(LHPoint param_1, float param_2);
};

#endif /* BW1_DECOMP_LIGHT_SHEET_INCLUDED_H */
