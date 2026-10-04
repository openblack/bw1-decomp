#ifndef BW1_DECOMP_SCRIPTED_CAMERA_INCLUDED_H
#define BW1_DECOMP_SCRIPTED_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <Lionhead/LH3DLib/development/LH3DWay.h> /* For struct LH3DWay::Running */

struct ScriptedCamera
{
	// BW1W120 00447060 BW1M119 011a3dd0
	static ScriptedCamera* Create(int path);

	uint8_t*          data; /* 0x0 */
	LH3DWay::Running* field_0x4;
	LH3DWay::Running* field_0x8;

	// BW1W120 inlined BW1M119 013c45e0
	int GetDuration() { return field_0x4->way->NumFrames; }
	// BW1W120 00446ac0 BW1M119 011a4140
	void Release();
	// BW1W120 inlined BW1M119 inlined
	void GetPositionAndFocus(long time, LHPoint* position, LHPoint* focus)
	{
		if (time < 0)
		{
			time = 0;
		}
		else if (time >= GetDuration())
		{
			time = GetDuration();
		}
		field_0x4->GetPosAtTime(time, position);
		if (focus)
		{
			field_0x8->way->GetPosAtSegment(field_0x4->field_0x0, field_0x4->field_0x204, focus);
		}
	}
};
static_assert(sizeof(ScriptedCamera) == 0xc, "Data type is of wrong size");

#endif /* BW1_DECOMP_SCRIPTED_CAMERA_INCLUDED_H */
