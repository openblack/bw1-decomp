#ifndef BW1_DECOMP_CREDIT_TEXT_INCLUDED_H
#define BW1_DECOMP_CREDIT_TEXT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */

#define CREDIT_TEXT_ITEM_MAX_LENGTH 0x400

class CreditTextItem
{
public:
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

	// BW1W120 0050b040 BW1M119 012aaba0
	static void ResetClip(float fade_time);
	// BW1W120 0050ac50 BW1M119 012ab140
	void Reset(float fade_time);
};
static_assert(sizeof(CreditTextItem) == 0x828, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREDIT_TEXT_INCLUDED_H */
