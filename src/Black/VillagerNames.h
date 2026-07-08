#ifndef BW1_DECOMP_VILLAGER_NAMES_INCLUDED_H
#define BW1_DECOMP_VILLAGER_NAMES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LHPoint.h>   /* For struct LHPoint */
#include <re_common.h>                              /* For bool32_t */

#include "DrawingObject.h" /* For struct DrawingObject */

struct VillagerNameBlock
{
	uint8_t field_0x0[0x14];

	// Static methods

	// BW1W120 00762720 BW1M100 1058ba90 VillagerNameBlock::Alloc(void)
	static VillagerName* Alloc();
	// BW1W120 00762780 BW1M100 1058b960 VillagerNameBlock::Delete(VillagerName *)
	static void Delete(VillagerName* name);

	// Constructors

	// BW1W120 00762820 BW1M100 inlined VillagerNameBlock::VillagerNameBlock(void)
	VillagerNameBlock();

	// Non-virtual methods

	// BW1W120 007627e0 BW1M100 10012bf0 VillagerNameBlock::DeleteAll(void)
	bool32_t DeleteAll();
	// BW1W120 00762900 BW1M100 inlined VillagerNameBlock::~VillagerNameBlock()
	~VillagerNameBlock();
	// BW1W120 00762970 BW1M100 inlined VillagerNameBlock::FreeAll(void)
	void FreeAll();
};

class VillagerName : public DrawingObject
{
public:
	float         left; /* 0x4 */
	float         top;
	float         right;
	float         bottom; /* 0x10 */
	float         ArrowX;
	float         ArrowY;
	float         depth;
	float         text_size; /* 0x20 */
	float         field_0x24;
	int           NumLines;
	float         TextPadding;
	char16_t      field_0x30[0x100];
	uint8_t       field_0x230[0x200];
	char16_t*     lines[0x8]; /* 0x430 */
	LH3DColor     color;      /* 0x450 */
	LHPoint       point;
	VillagerName* next; /* 0x460 */

	// Override methods

	// BW1W120 007628a0 BW1M100 100b5250 VillagerName::AddDrawing(void)
	virtual void AddDrawing();

	// Static methods

	// BW1W120 007629e0 BW1M100 1058b1a0 VillagerName::Add(float, LHPoint, wchar_t *, LH3DColor &)
	static VillagerName* Add(float text_size, LHPoint point, const char16_t* text, const LH3DColor* p_color);

	// Non-virtual methods

	// BW1W120 00762dc0 BW1M100 1058add0 VillagerName::Draw(void)
	void Draw();
};

#endif /* BW1_DECOMP_VILLAGER_NAMES_INCLUDED_H */
