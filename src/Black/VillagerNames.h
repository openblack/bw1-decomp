#ifndef BW1_DECOMP_VILLAGER_NAMES_INCLUDED_H
#define BW1_DECOMP_VILLAGER_NAMES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */
#include <wchar.h>  /* For wchar_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LH3DRender.h>  /* For LH3DRender::g_zsorter */
#include <Lionhead/LH3DLib/development/LH3DTech.h>    /* For LH3DTech::GetValueForZSorter */
#include <Lionhead/LH3DLib/development/LH3DZSorter.h> /* For LH3DZSorter */
#include <Lionhead/LH3DLib/development/LHPoint.h>   /* For struct LHPoint */

#include "DrawingObject.h" /* For struct DrawingObject */

#define VILLAGER_NAME_BLOCK_SIZE 64

struct VillagerName;

struct VillagerNameBlock
{
	VillagerName*      Names;        /* 0x0 */
	int                Size;         /* 0x4 */
	int                NumInUse;     /* 0x8 */
	int                NumAllocated; /* 0xc */
	VillagerNameBlock* Next;         /* 0x10 */

	// BW1W120 00db9e24 BW1M119 null
	static VillagerNameBlock* First;

	// Static methods

	// BW1W120 00762720 BW1M119 01593260
	static VillagerName* Alloc();
	// BW1W120 00762780 BW1M119 01593130
	static void Delete(VillagerName* name);
	// BW1W120 007627e0 BW1M119 010157c0
	static void DeleteAll();

	// Constructors

	// BW1W120 00762820 BW1M119 inlined
	VillagerNameBlock();

	// Destructor

	// BW1W120 inlined BW1M119 inlined
	~VillagerNameBlock() { FreeAll(); }

	// Non-virtual methods

	// BW1W120 00762970 BW1M119 inlined
	void FreeAll();
};
static_assert(sizeof(VillagerNameBlock) == 0x14, "Data type is of wrong size");

struct VillagerName : public DrawingObject
{
public:
	// BW1W120 00db9e28 BW1M119 null
	static VillagerName* First;

	float         Left;   /* 0x4 */
	float         Top;    /* 0x8 */
	float         Right;  /* 0xc */
	float         Bottom; /* 0x10 */
	float         ArrowX; /* 0x14 */
	float         ArrowY; /* 0x18 */
	float         Depth;  /* 0x1c */
	float         TextSize;    /* 0x20 */
	float         Scale;       /* 0x24 */
	int           NumLines;    /* 0x28 */
	float         TextPadding; /* 0x2c */
	wchar_t       Text[0x100]; /* 0x30 */
	uint8_t       field_0x230[0x200];
	wchar_t*      Lines[8]; /* 0x430 */
	LH3DColor     Color;    /* 0x450 */
	LHPoint       Point;    /* 0x454 */
	VillagerName* Next;     /* 0x460 */

	// Constructors

	// BW1W120 inlined BW1M119 01593040
	VillagerName() {}

	// Destructor

	// BW1W120 inlined BW1M119 01592fc0
	~VillagerName() {}

	// Override methods

	// BW1W120 007628a0 BW1M119 010e74a0
	virtual void AddDrawing()
	{
		if (LH3DRender::g_started_frame)
		{
			LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&VillagerName::Draw,
			                                  LH3DTech::GetValueForZSorter(Point), 0);
		}
	}

	// Static methods

	// BW1W120 007629e0 BW1M119 015929c0
	static VillagerName* Add(float scale, LHPoint point, wchar_t* text, LH3DColor& color);

	// Non-virtual methods

	// BW1W120 00762dc0 BW1M119 015925f0
	void Draw();
	// BW1W120 inlined BW1M119 010e7400
	void Remove()
	{
		if (this == First)
		{
			First = Next;
		}
		else
		{
			for (VillagerName* name = First; name && name->Next; name = name->Next)
			{
				if (name->Next == this)
				{
					name->Next = Next;
					break;
				}
			}
		}
		VillagerNameBlock::Delete(this);
	}
};
static_assert(sizeof(VillagerName) == 0x464, "Data type is of wrong size");

#endif /* BW1_DECOMP_VILLAGER_NAMES_INCLUDED_H */
