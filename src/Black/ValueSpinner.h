#ifndef BW1_DECOMP_VALUE_SPINNER_INCLUDED_H
#define BW1_DECOMP_VALUE_SPINNER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LHPoint.h>   /* For struct LHPoint */

#include "DrawingObject.h" /* For struct DrawingObject */
#include "LH3DZSorter.h"
#include <Lionhead/LH3DLib/development/LH3DRender.h>
#include <Lionhead/LH3DLib/development/LH3DTech.h>

class ValueSpinner : public DrawingObject
{
public:
	// BW1W120 00ed92e8. Original imported Mac name.
	static ValueSpinner* first;
	// BW1W120 004382d0. First virtual slot, not Update(float).
	virtual void UpdatePosition(float time);
	// BW1W120 scalar deleting destructor 004382f0. Second virtual slot.
	virtual ~ValueSpinner();
	// BW1W120 00833cb0. May delete this; callers must cache the successor.
	ValueSpinner* Update(float time);
	// BW1W120 00833b90. Nonvirtual callback.
	void Draw();
	void AddDrawing()
	{
		if (LH3DRender::g_started_frame)
		{
			LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&ValueSpinner::Draw,
			                                  LH3DTech::GetValueForZSorter(point), 0);
		}
	}
	ValueSpinner* next; /* 0x4 */
	LHPoint       point;
	uint32_t      field_0x14;
	float         field_0x18;
	LH3DColor     color;
	char16_t      text[0x40]; /* 0x20 */
};

#endif /* BW1_DECOMP_VALUE_SPINNER_INCLUDED_H */
