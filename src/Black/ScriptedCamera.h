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
};
static_assert(sizeof(ScriptedCamera) == 0xc, "Data type is of wrong size");

#endif /* BW1_DECOMP_SCRIPTED_CAMERA_INCLUDED_H */
