#ifndef BW1_DECOMP_GOLDEN_SHOWER_INCLUDED_H
#define BW1_DECOMP_GOLDEN_SHOWER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

class GoldenShower
{
public:
	uint32_t field_0x0;
	uint32_t field_0x4;
	uint8_t  field_0x8;
	uint8_t  Alpha;
	LHPoint  Position;
	bool     field_0x18;

	// Static methods

	// BW1W120 006ca7a0 BW1M119 01480b60
	static GoldenShower* Create();

	// Non-virtual methods

	// BW1W120 006ca7d0 BW1M119 01480ae0
	void Release();
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
