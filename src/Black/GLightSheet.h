#ifndef BW1_DECOMP_GLIGHT_SHEET_INCLUDED_H
#define BW1_DECOMP_GLIGHT_SHEET_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h>  /* For struct LH3DColor */
#include <LHPoint.h>                                 /* For struct LHPoint */
#include <Lionhead/LH3DLib/development/LightSheet.h> /* For struct LightSheet */

#define LIGHT_SHEET_COLOUR_MASK 0xffffff
#define LIGHT_SHEET_TIME_SCALE  0.001f

class GLightSheet : public LightSheet
{
public:
	LHPoint  Origin; /* 0x68 */
	float    Radius;
	uint32_t NumSamples;
	uint32_t Colour;
	float    Intensity;

	// BW1W120 004244d0 BW1M119 010afcf0
	GLightSheet(const LHPoint& origin, float radius, LH3DColor colour, float wave_height, float scale_fac,
	            uint32_t num_samples);
	// BW1W120 00424530 BW1M119 010afc50
	~GLightSheet();

	// BW1W120 inlined BW1M119 inlined
	float GetIntensity() { return Intensity; }
	// BW1W120 inlined BW1M119 inlined
	void SetIntensity(float intensity) { Intensity = intensity; }
	// BW1W120 00424550 BW1M119 010afab0
	void Init();
	// BW1W120 00424650 BW1M119 010af9c0
	void Draw();
};
static_assert(sizeof(GLightSheet) == 0x84, "Data type is of wrong size");

#endif /* BW1_DECOMP_GLIGHT_SHEET_INCLUDED_H */
