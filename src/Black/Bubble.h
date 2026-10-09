#ifndef BW1_DECOMP_BUBBLE_INCLUDED_H
#define BW1_DECOMP_BUBBLE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <wchar.h>  /* For wchar_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

// Forward Declares

class GPlayer;
struct GatheringText;
struct LH3DColor;

struct Bubble
{
	uint8_t        field_0x0[0x1c];
	uint32_t       field_0x1c;
	float          field_0x20[0xc];
	uint8_t        field_0x50[0x2c];
	uint32_t       field_0x7c;
	uint32_t       field_0x80;
	uint8_t        field_0x84[0x10];
	uint8_t        field_0x94;
	uint8_t        field_0x95;
	float          DisplayTime;
	uint32_t       field_0x9c;
	uint32_t       field_0xa0;
	uint32_t       field_0xa4;
	uint32_t       field_0xa8;
	GatheringText* Font;

	// Non-virtual methods

	// BW1W120 00576f20 BW1M119 01331430
	void UpdateAndDraw(int(__stdcall* callback)(int, unsigned long, LH3DColor*, wchar_t**, float*, GatheringText**),
	                   unsigned long user, LHPoint pos, GPlayer* player, unsigned long param_5);
};
static_assert(sizeof(Bubble) == 0xb0, "Data type is of wrong size");

#endif /* BW1_DECOMP_BUBBLE_INCLUDED_H */
