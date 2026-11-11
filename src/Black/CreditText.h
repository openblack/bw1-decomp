#ifndef BW1_DECOMP_CREDIT_TEXT_INCLUDED_H
#define BW1_DECOMP_CREDIT_TEXT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */

#define CREDIT_TEXT_ITEM_MAX_LENGTH 0x400

class CreditTextItem
{
public:
	// BW1W120 00cadb5c
	static LH3DColor NextColor;
	// BW1W120 00cadb68
	static CreditTextItem* FirstItem;

	float           X;
	float           Y;
	float           Width;
	float           Height;
	float           Size;
	wchar_t         Text[CREDIT_TEXT_ITEM_MAX_LENGTH];
	float           Alpha;
	float           TargetAlpha;
	float           FadeRate;
	LH3DColor       Color;
	CreditTextItem* Next;

	// BW1W120 inlined BW1M119 inlined
	CreditTextItem()
	{
		Next = FirstItem;
		FirstItem = this;
		FadeRate = 0.0f;
		TargetAlpha = 0.0f;
		Alpha = 0.0f;
	}
	// BW1W120 0050b2b0 BW1M119 0101abb0
	static void DrawAll();
	// BW1W120 0050afa0 BW1M119 012aac10
	static void SetClip(float x, float y, float width, float height, float fade_time);
	// BW1W120 0050b040 BW1M119 012aaba0
	static void ResetClip(float fade_time);
	// BW1W120 0050aca0 BW1M119 012aaff0
	void Set(wchar_t* text, float x, float y, float width, float height, float size, float fade_time);
	// BW1W120 0050ac50 BW1M119 012ab140
	void Reset(float fade_time);
};
static_assert(sizeof(CreditTextItem) == 0x828, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREDIT_TEXT_INCLUDED_H */
