#ifndef BW1_DECOMP_VALUE_SPINNER_INCLUDED_H
#define BW1_DECOMP_VALUE_SPINNER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LHPoint.h>   /* For struct LHPoint */

#include "DrawingObject.h" /* For struct DrawingObject */

class ValueSpinner : public DrawingObject
{
public:
	enum TEXTTYPE_ENUM
	{
	};

	ValueSpinner()
	{
		field_0x14 = 0;
		field_0x18 = 0;
		next = first;
		first = this;
	}

	// Original imported Mac name.
	// BW1W120 00ed92e8 BW1M119 013241e8 (LHCombined Release)
	static ValueSpinner* first;

	// BW1W120 004382d0
	virtual void UpdatePosition(float time);
	// BW1W120 004382f0
	virtual ~ValueSpinner();
	// BW1W120 00833cb0 BW1M119 01001120 (LHCombined Release)
	ValueSpinner* Update(float time);
	// BW1W120 00833ae0 BW1M119 010c1ca0 (LHCombined Release)
	void Init(const LHPoint& point, float value, TEXTTYPE_ENUM type);
	// BW1W120 00833b90 BW1M119 0103e9e0 (LHCombined Release)
	void Draw();
	// BW1W120 inlined BW1M119 0100b320
	void AddDrawing();

	ValueSpinner* next; /* 0x4 */
	LHPoint       point;
	uint32_t      field_0x14;
	float         field_0x18;
	LH3DColor     color;
	char16_t      text[0x40]; /* 0x20 */
};

#endif /* BW1_DECOMP_VALUE_SPINNER_INCLUDED_H */
