#ifndef BW1_DECOMP_GOLDEN_SHOWER_INCLUDED_H
#define BW1_DECOMP_GOLDEN_SHOWER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */
#include <stdint.h> /* For int32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "GJBaseUtils.h" /* For class GJArray */

struct LH3DMaterial;
struct LH3DSprite;

#define GOLDEN_SHOWER_SPARKLE_COUNT    20
#define GOLDEN_SHOWER_SPARKLE_LIFETIME 8000
#define GOLDEN_SHOWER_FADE_IN_TIME     5000
#define GOLDEN_SHOWER_FADE_OUT_TIME    (GOLDEN_SHOWER_SPARKLE_LIFETIME - GOLDEN_SHOWER_FADE_IN_TIME)
#define GOLDEN_SHOWER_FRAME_COUNT      32
#define GOLDEN_SHOWER_FRAME_TIME       50

class GoldenShower
{
public:
	struct Sparkle
	{
		int32_t Age;
		float   Angle;
	};

	GJArray<Sparkle> Sparkles;
	uint8_t          FrameOffset;
	uint8_t          Alpha;
	LHPoint          Position;
	bool             Dirty;

	// BW1W120 00d4ee14
	static LH3DSprite* Sprite;
	// BW1W120 00d4ee18
	static LH3DMaterial* Material;

	// Constructors

	// BW1W120 006ca7f0 BW1M119 inlined
	GoldenShower();

	// Static methods

	// BW1W120 006ca7a0 BW1M119 01480b60
	static GoldenShower* Create();

	// Non-virtual methods

	// BW1W120 006ca7d0 BW1M119 01480ae0
	void Release();
	// BW1W120 006ca870 BW1M119 inlined
	void InitSparkles();
	// BW1W120 006ca910 BW1M119 0101cac0
	void SetPosition(const LHPoint& position);
	// BW1W120 006ca930 BW1M119 01022bc0
	void AddDrawing();
	// BW1W120 006ca990 BW1M119 0105ae50
	void Draw();
};
static_assert(offsetof(GoldenShower, Alpha) == 0x9, "Data member is at wrong offset");
static_assert(offsetof(GoldenShower, Position) == 0xc, "Data member is at wrong offset");
static_assert(sizeof(GoldenShower) == 0x1c, "Data type is of wrong size");

#endif /* BW1_DECOMP_GOLDEN_SHOWER_INCLUDED_H */
