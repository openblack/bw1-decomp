#ifndef BW1_DECOMP_BUBBLE_INCLUDED_H
#define BW1_DECOMP_BUBBLE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <wchar.h>  /* For wchar_t */

#include <re_common.h> /* For bool32_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LHCoord.h>   /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHCoordF.h>  /* For struct LHCoordF */
#include <Lionhead/LH3DLib/development/LHPoint.h>   /* For struct LHPoint */
#include <Lionhead/LH3DLib/development/LHRegionF.h> /* For struct LHRegionF */

// Forward Declares

class GPlayer;
struct GatheringText;

typedef bool32_t(__stdcall* BubbleTextCallback)(int index, unsigned long user, LH3DColor* colour, wchar_t** text,
                                                float* scale, GatheringText** font);

struct BubbleSize
{
	float Width;        /* 0x0 */
	float Height;       /* 0x4 */
	float Distance;     /* 0x8 */
	float FadeDistance; /* 0xc */
	float CornerSize;   /* 0x10 */
	float TextSize;     /* 0x14 */

	// BW1W120 inlined BW1M119 inlined
	void Set(float width, float height, float distance, float fade_distance, float corner_size, float text_size)
	{
		Width = width;
		Height = height;
		Distance = distance;
		FadeDistance = fade_distance;
		CornerSize = corner_size;
		TextSize = text_size;
	}
	// BW1W120 inlined BW1M119 inlined
	void Blend(const BubbleSize& from, const BubbleSize& to, float frac)
	{
		Width = (to.Width - from.Width) * frac + from.Width;
		Height = (to.Height - from.Height) * frac + from.Height;
		Distance = (to.Distance - from.Distance) * frac + from.Distance;
		CornerSize = (to.CornerSize - from.CornerSize) * frac + from.CornerSize;
		TextSize = (to.TextSize - from.TextSize) * frac + from.TextSize;
	}
};
static_assert(sizeof(BubbleSize) == 0x18, "Data type is of wrong size");

struct Bubble
{
	LHPoint            Pos;           /* 0x0 */
	unsigned long      User;          /* 0xc */
	float              TextScroll;    /* 0x10 */
	float              Alpha;         /* 0x14 */
	LH3DColor          Colour;        /* 0x18 */
	BubbleTextCallback Callback;      /* 0x1c */
	BubbleSize         Near;          /* 0x20 */
	BubbleSize         Far;           /* 0x38 */
	BubbleSize         Current;       /* 0x50 */
	LHCoordF           ScreenPos;     /* 0x68 */
	float              DistanceAlpha; /* 0x70 */
	float              TailPosition;  /* 0x74 */
	bool32_t           TailOnRight;   /* 0x78 */
	float              TextHeight;    /* 0x7c */
	float              TextScale;     /* 0x80 */
	LHRegionF          Region;        /* 0x84 */
	bool               CanScrollUp;   /* 0x94 */
	bool               CanScrollDown; /* 0x95 */
	float              DisplayTime;   /* 0x98 */
	bool32_t           Gripped;       /* 0x9c */
	LHCoord            GripPos;       /* 0xa0 */
	float              ScrollPos;     /* 0xa8 */
	GatheringText*     Font;          /* 0xac */

	// BW1W120 inlined BW1M119 inlined
	Bubble()
	{
		Callback = NULL;
		TextHeight = 0.0f;
		TextScale = 0.0f;
		DisplayTime = 0.0f;
		Gripped = false;
		ScrollPos = 0.0f;
		Font = NULL;
		CanScrollUp = false;
		CanScrollDown = false;
	}

	// Non-virtual methods

	// BW1W120 00575e20 BW1M119 01332d70
	void SetDefaultSizes(float width, float height, float text_size);
	// BW1W120 00575ea0 BW1M119 01332ab0
	bool32_t CalcPos(LHPoint& pos, float x_offset, float tail_position);
	// BW1W120 005767d0 BW1M119 01331b40
	void Draw();
	// BW1W120 00576e90 BW1M119 01331a10
	void AddDrawing(LH3DColor& colour, BubbleTextCallback callback, unsigned long user, float text_scroll, float alpha);
	// BW1W120 00576f20 BW1M119 01331430
	void UpdateAndDraw(BubbleTextCallback callback, unsigned long user, LHPoint pos, GPlayer* player,
	                   unsigned long colour);
};
static_assert(sizeof(Bubble) == 0xb0, "Data type is of wrong size");

// BW1W120 005766e0 BW1M119 01332270
float AdjustBubbleZForPitch(float z);

#endif /* BW1_DECOMP_BUBBLE_INCLUDED_H */
