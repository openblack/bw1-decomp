#ifndef BW1_DECOMP_GWATER_INCLUDED_H
#define BW1_DECOMP_GWATER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <re_common.h> /* For bool32_t */

#include "LHPoint.h" /* For struct LHPoint */

// Forward Declares

struct LH3DSprite;

#define GWATER_MAX_CIRCLES 0x400
#define GWATER_MAX_PLOUFS  30

// A plouf grows for GROW_TIME, then widens up to MAX_SIZE until it dies at LIFE.
#define GWATER_PLOUF_LIFE        700
#define GWATER_PLOUF_GROW_TIME   230
#define GWATER_PLOUF_GROW_SIZE   5.0f
#define GWATER_PLOUF_MAX_SIZE    10.0f
#define GWATER_PLOUF_MIN_SIZE    0.0001f
#define GWATER_PLOUF_MAX_ALPHA   255.0f
#define GWATER_PLOUF_FRAME       48
#define GWATER_PLOUF_TRAIL_WIDTH 0.7f
#define GWATER_PLOUF_WIDEN_SPEED                                                                                       \
	((GWATER_PLOUF_MAX_SIZE - GWATER_PLOUF_GROW_TIME * GWATER_PLOUF_GROW_SIZE / GWATER_PLOUF_LIFE) /                   \
	 (GWATER_PLOUF_LIFE - GWATER_PLOUF_GROW_TIME))
#define GWATER_PLOUF_WIDEN_OFFSET                                                                                      \
	(GWATER_PLOUF_GROW_TIME * GWATER_PLOUF_WIDEN_SPEED -                                                               \
	 GWATER_PLOUF_GROW_TIME * GWATER_PLOUF_GROW_SIZE / GWATER_PLOUF_LIFE)
// The hand touches the water below this height.
#define GWATER_TOUCH_HEIGHT 1.8f
#define GWATER_TOUCH_PERIOD 16

enum GWATER_PLOUF_TYPE
{
	GWATER_PLOUF_TYPE_SPLASH,
	GWATER_PLOUF_TYPE_TRAIL,
	GWATER_PLOUF_TYPE_TRAIL_START,
	GWATER_PLOUF_TYPE_TRAIL_END,
	GWATER_PLOUF_TYPE_TRAIL_ALONE,
};

enum GWATER_STATE
{
	GWATER_STATE_NONE,
	GWATER_STATE_SPLASH,
	GWATER_STATE_TRAIL_STARTED,
	GWATER_STATE_TRAIL,
};

// The ripples spreading on the sea.
class GWater
{
public:
	enum CircleFlag
	{
		CIRCLE_FLAG_VALID = 0x1,
	};

	struct Circle
	{
		LHPoint       Pos;
		uint32_t      Flags;
		unsigned long Age;
		uint32_t      field_0x14;
		float         Growth;
		bool32_t      Drift;
		float         Angle;
		float         Size;
		float         Aspect;
		float         AgeSpeed;
		long          Frame;
		unsigned long Colour;

		// Constructors

		// BW1W120 inlined BW1M119 0112b820 (LHCombined Release)
		Circle() {}

		// BW1W120 inlined BW1M119 0102fd40 (LHCombined Release)
		bool32_t IsValid() { return Flags & CIRCLE_FLAG_VALID; }
		// BW1W120 inlined BW1M119 01033db0 (LHCombined Release)
		void SetValid(bool32_t valid)
		{
			if (valid)
			{
				Flags |= CIRCLE_FLAG_VALID;
			}
			else
			{
				Flags &= ~CIRCLE_FLAG_VALID;
			}
		}
	};

	// A segment of the trail the hand leaves as it moves through the water.
	struct Trail
	{
		LHPoint Start;
		LHPoint End;
	};

	// BW1W120 00eab7c8 BW1M119 011e3d94 (LHCombined Release)
	static Circle g_circle[GWATER_MAX_CIRCLES];
	// BW1W120 00eb9ab0 BW1M119 011f1d94 (LHCombined Release)
	static float g_speed;
	// BW1W120 00eb9ab4 BW1M119 011e3d90 (LHCombined Release)
	static LH3DSprite* g_sprite_circle;
	// BW1W120 00eb9ab8 BW1M119 011e3d8c (LHCombined Release)
	static long g_count_activated_circle;

	LHPoint           LastPos;
	bool32_t          Touching;
	LH3DSprite*       Sprites;
	unsigned long     Ages[GWATER_MAX_PLOUFS];
	bool32_t          Actives[GWATER_MAX_PLOUFS];
	GWATER_PLOUF_TYPE Types[GWATER_MAX_PLOUFS];
	Trail             Trails[GWATER_MAX_PLOUFS];
	float             Lengths[GWATER_MAX_PLOUFS];
	GWATER_STATE      State;
	long              Last;
	unsigned long     Time;
	bool32_t          Wind;

	// Static methods

	// BW1W120 inlined BW1M119 0104e0f0 (LHCombined Release)
	static float GetSize(unsigned long age)
	{
		unsigned long time = age % GWATER_PLOUF_LIFE;
		float         size;
		if (time < GWATER_PLOUF_GROW_TIME)
		{
			size = time * GWATER_PLOUF_GROW_SIZE / GWATER_PLOUF_LIFE;
		}
		else
		{
			size = time * GWATER_PLOUF_WIDEN_SPEED - GWATER_PLOUF_WIDEN_OFFSET;
		}
		if (size < GWATER_PLOUF_MIN_SIZE)
		{
			size = GWATER_PLOUF_MIN_SIZE;
		}
		return size;
	}
	// BW1W120 inlined BW1M119 01145e10 (LHCombined Release)
	static unsigned long GetColor(unsigned long age)
	{
		unsigned long time = age % GWATER_PLOUF_LIFE;
		return (unsigned long)(GWATER_PLOUF_MAX_ALPHA - time * GWATER_PLOUF_MAX_ALPHA / GWATER_PLOUF_LIFE) << 24 |
		       0xffffff;
	}
	// Mac inlines the initialisation of g_circle, g_sprite_circle and g_count_activated_circle into GGame's
	// constructor.
	// BW1W120 0054ba40
	static void InitialiseCircles();

	// Non-virtual methods

#ifndef VERSION_BW1W100
	// BW1W120 00829d80 BW1M119 01139400 (LHCombined Release)
	void Process(LHPoint* pos);
	// BW1W120 00829e30 BW1M119 inlined
	void AddPlouf(LHPoint* pos);
	// BW1W120 0082a2d0 BW1M119 010b9af0 (LHCombined Release)
	void Draw();
	// BW1W120 0082a4f0 BW1M119 010b3f70 (LHCombined Release)
	void __fastcall SetPlouf(LHPoint* pos);
#endif
};
static_assert(sizeof(GWater::Circle) == 0x38, "Data type is of wrong size");

#endif /* BW1_DECOMP_GWATER_INCLUDED_H */
