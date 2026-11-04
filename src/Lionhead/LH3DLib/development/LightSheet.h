#ifndef BW1_DECOMP_LIGHT_SHEET_INCLUDED_H
#define BW1_DECOMP_LIGHT_SHEET_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <re_common.h>                            /* For bool32_t */

// Forward Declares

struct LH3DColor;
struct LH3DMaterial;

#define LIGHT_SHEET_VERTICES_PER_POINT  3
#define LIGHT_SHEET_INDICES_PER_SEGMENT 12

struct LightSheet
{
	int           NumPoints; /* 0x0 */
	LHPoint       Centre;    /* 0x4 */
	float         ScaleFac;
	float         WaveHeight;
	float         SampleInterval;
	float         ScrollSpeed;
	LHPoint*      Points; /* 0x20 */
	float*        Intensity;
	float*        Heights;
	uint32_t      Colour;
	float         WavePhase;
	float         ScrollOffset;
	float         PulseLevel;
	float         SampleTimer;
	LH3DColor*    Colours; /* 0x40 */
	LHPoint*      Positions;
	long*         Indices;
	float*        UVs;
	int           NumVertices; /* 0x50 */
	int           NumIndices;
	LH3DMaterial* Material;
	bool32_t      ForceFieldMode;
	float         PulseTarget; /* 0x60 */
	float         AnimationTime;

	// Constructors

	// BW1W120 0083e690 BW1M119 010cd9e0 (LHCombined Release)
	LightSheet();
	// BW1W120 0083e6b0 BW1M119 010afde0
	~LightSheet();

	// Non-virtual methods

	// BW1W120 0083e4f0 BW1M119 010099c0 (LHCombined Release)
	void Update(float time);
	// BW1W120 0083e8c0 BW1M119 0100fad0 (LHCombined Release)
	void DoTheDrawing(LH3DMaterial* material);
	// BW1W120 inlined BW1M119 011af650
	void SetScaleFac(float scale_fac) { ScaleFac = scale_fac; }
	// BW1W120 0083e710 BW1M119 010cd630 (LHCombined Release)
	void Init(int num_points);
	// BW1W120 inlined BW1M119 inlined
	void ResetPulses()
	{
		SetScaleFac(1.0f);
		ForceFieldMode = true;
		PulseTarget = 0.0f;
		for (int i = 0; i < NumPoints; i++)
		{
			Intensity[i] = 0.0f;
			Heights[i] = 250.0f;
		}
	}
	// BW1W120 0083e610 BW1M119 010cda30 (LHCombined Release)
	void PulseForceField(LHPoint position, float radius);
	// BW1W120 0083e6b0 BW1M119 010cd8e0 (LHCombined Release)
	void Close();
	// BW1W120 004246e0 BW1M119 010929d0 (LHCombined Release)
	void Draw() { DoTheDrawing(Material); }
};

#endif /* BW1_DECOMP_LIGHT_SHEET_INCLUDED_H */
