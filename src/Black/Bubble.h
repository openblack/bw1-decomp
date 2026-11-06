#ifndef BW1_DECOMP_BUBBLE_INCLUDED_H
#define BW1_DECOMP_BUBBLE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <wchar.h>  /* For wchar_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LHCoord.h>   /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHPoint.h>   /* For struct LHPoint */

// Forward Declares

class GPlayer;
struct GatheringText;

struct Bubble
{
	LHPoint        field_0x0;
	uint8_t        field_0xc[0xc];
	LH3DColor      field_0x18;
	uint32_t       field_0x1c;
	float          field_0x20[0xc];
	uint8_t        field_0x50[0x2c];
	float          field_0x7c;
	float          field_0x80;
	uint8_t        field_0x84[0x10];
	uint8_t        field_0x94;
	uint8_t        field_0x95;
	float          DisplayTime;
	uint32_t       field_0x9c;
	LHCoord        field_0xa0;
	float          field_0xa8;
	GatheringText* Font;

	// BW1W120 inlined BW1M119 inlined
	Bubble()
	{
		field_0x1c = 0;
		field_0x7c = 0.0f;
		field_0x80 = 0.0f;
		DisplayTime = 0.0f;
		field_0x9c = 0;
		field_0xa8 = 0.0f;
		Font = NULL;
		field_0x94 = 0;
		field_0x95 = 0;
	}

	// Non-virtual methods

	// BW1W120 00575e20 BW1M119 01332d70
	void SetDefaultSizes(float width, float height, float size);

	// BW1W120 00576f20 BW1M119 01331430
	void UpdateAndDraw(int(__stdcall* callback)(int, unsigned long, LH3DColor*, wchar_t**, float*, GatheringText**),
	                   unsigned long user, LHPoint pos, GPlayer* player, unsigned long param_5);
};
static_assert(sizeof(Bubble) == 0xb0, "Data type is of wrong size");

#endif /* BW1_DECOMP_BUBBLE_INCLUDED_H */
