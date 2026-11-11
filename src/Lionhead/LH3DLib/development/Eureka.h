#ifndef BW1_DECOMP_EUREKA_INCLUDED_H
#define BW1_DECOMP_EUREKA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For wchar_t */

#include <re_common.h> /* For bool32_t */

#include "LH3DColor.h" /* For struct LH3DColor */

#define EUREKA_FRAME       32
#define EUREKA_LIFE        6000.0f
#define EUREKA_FADE_START  2500.0f
#define EUREKA_FADE_TIME   3500.0f
#define EUREKA_RISE_SPEED  0.003f
#define EUREKA_TEXT_HEIGHT 1.5f
#define EUREKA_TEXT_OFFSET 7.5f
#define EUREKA_TEXT_SIZE   15.0f
#define EUREKA_TEXT_DEPTH  4096.0f
#define EUREKA_BULB_HEIGHT 2.6f
#define EUREKA_BULB_SCALE  3.0f
#define EUREKA_BLINKS      6.0f

#define EUREKA_TEXT_LENGTH 0x40

// Forward Declares

struct LH3DSprite;
struct LHPoint;

class Eureka
{
public:
	// Static members

	// BW1W120 00eb9a74 BW1M119 011f1dc8 (LHCombined Release)
	static Eureka* g_first;

	Eureka*     Next;
	LH3DSprite* Sprite;
	long        Age;
	float       Size;
	float       Opacity;
	LH3DColor   Colour;
	wchar_t     Text[EUREKA_TEXT_LENGTH];

	// Constructors

	// BW1W120 00827a50 BW1M119 01139250 (LHCombined Release)
	Eureka(LHPoint* pos, wchar_t* text, float size, float opacity, LH3DColor* colour);

	// Destructor

	// BW1W120 00827b50 BW1M119 01139130 (LHCombined Release)
	~Eureka();

	// Static methods

	// BW1W120 00827b90 BW1M119 0100af00 (LHCombined Release)
	static void DrawAll();

	// Non-virtual methods

	// BW1W120 00827bd0 BW1M119 010d66c0 (LHCombined Release)
	bool32_t Draw();
};
static_assert(sizeof(Eureka) == 0x98, "Data type is of wrong size");

#endif /* BW1_DECOMP_EUREKA_INCLUDED_H */
