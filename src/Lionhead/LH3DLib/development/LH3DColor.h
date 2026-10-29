#ifndef BW1_DECOMP_LH3D_COLOR_INCLUDED_H
#define BW1_DECOMP_LH3D_COLOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

// The alpha of an opaque colour.
#define LH3D_COLOR_OPAQUE 0xff
#define LH3D_COLOR_WHITE  0xffffffff

struct LH3DColor
{
	uint8_t b; /* 0x0 */
	uint8_t g;
	uint8_t r;
	uint8_t a;

	// Constructors

	// BW1W120 0053ce50 BW1M119 011c3178 (LHCombined Release)
	LH3DColor() {}
	// White's per-TU startup initialisers store the packed color as one DWORD.
	// BW1W120 007ad050 BW1M119 01038240 (LHCombined Release)
	LH3DColor(unsigned long color) { *(uint32_t*)this = color; }
	// BW1W120 inlined BW1M119 0101d380
	LH3DColor(uint8_t red, uint8_t green, uint8_t blue, uint8_t alpha)
	{
		b = blue;
		g = green;
		r = red;
		a = alpha;
	}
	// BW1W120 inlined BW1M119 01568690
	LH3DColor(uint8_t _r, uint8_t _g, uint8_t _b) : b(_b), g(_g), r(_r), a(0xff) {}

	// Non-virtual methods

	// BW1W120 00414b90 BW1M119 010a67e0
	void __fastcall Set(uint8_t alpha, uint8_t red, uint8_t green, uint8_t blue)
	{
		a = alpha;
		r = red;
		g = green;
		b = blue;
	}

	// BW1W120 inlined BW1M119 01352630
	// fabricated
	void operator=(const LH3DColor& other) { *(uint32_t*)this = *(uint32_t*)&other; }
	// BW1W120 inlined BW1M119 0101f500 (LHCombined Release)
	uint32_t GetColor() { return *(uint32_t*)this; }
	// BW1W120 inlined BW1M119 012bb8c0
	uint8_t GetR() { return r; }
	// BW1W120 inlined BW1M119 012bb8f0
	uint8_t GetG() { return g; }
	// BW1W120 inlined BW1M119 012bb920
	uint8_t GetB() { return b; }
	// BW1W120 inlined BW1M119 010116d0 (LHCombined Release)
	uint8_t GetA() { return a; }
	// BW1W120 null BW1M119 010c2560 (LHCombined Release)
	void Blend(LH3DColor& to, long amount);
};

// Moves each channel of from amount/256 of the way towards to; alpha is taken from to.
#define LH3D_BLEND_COLOR(from, to, amount)                                                                             \
	((((((to) & 0xff0000) - ((from) & 0xff0000)) * (amount) >> 8) + ((from) & 0xff0000)) & 0xff0000 |                  \
	 (((((to) & 0xff00) - ((from) & 0xff00)) * (amount) >> 8) + ((from) & 0xff00)) & 0xff00 |                          \
	 (((((to) & 0xff) - ((from) & 0xff)) * (amount) >> 8) + ((from) & 0xff)) & 0xff | ((to) & 0xff000000))

// Moves each channel of from, alpha included, amount/256 of the way towards to.
#define LH3D_BLEND_COLOR_AND_ALPHA(from, to, amount)                                                                   \
	((((((to) & 0xff0000) - ((from) & 0xff0000)) * (amount) >> 8) + ((from) & 0xff0000)) & 0xff0000 |                  \
	 (((((to) & 0xff00) - ((from) & 0xff00)) * (amount) >> 8) + ((from) & 0xff00)) & 0xff00 |                          \
	 (((((to) & 0xff) - ((from) & 0xff)) * (amount) >> 8) + ((from) & 0xff)) & 0xff |                                  \
	 ((((((to) >> 24) - ((from) >> 24)) * (amount) >> 8) + ((from) >> 24)) << 24))

// Scales each colour channel by scale/256 and keeps the alpha.
#define LH3D_SCALE_COLOR(color, scale)                                                                                 \
	(((((color) & 0xff0000) * (scale) & 0xff0000ff) | (((color) & 0xff00) * (scale) & 0xff0000) |                      \
	  (((color) & 0xff) * (scale) & 0xff00)) >>                                                                        \
	     8 |                                                                                                           \
	 ((color) & 0xff000000))

#endif /* BW1_DECOMP_LH3D_COLOR_INCLUDED_H */
