#ifndef BW1_DECOMP_LH_SAMPLE_INFO_INCLUDED_H
#define BW1_DECOMP_LH_SAMPLE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <windows.h> /* For WAVEFORMATEX */
#include <mmsystem.h>

// Forward Declares

class Base;

struct LH_SampleInfo
{
	uint8_t       field_0x0[0x18];
	Base*         AttachedObject;
	uint32_t      Handle;
	uint8_t       field_0x20[0x30];
	float         X;
	float         Y;
	float         Z;
	float         OffsetX;
	float         OffsetY;
	float         OffsetZ;
	uint8_t       field_0x68[0xc];
	WAVEFORMATEX* Format;
	void*         TagData;
	int           TagDataSize;
	void*         Data;
	int           DataSize;
};

#endif /* BW1_DECOMP_LH_SAMPLE_INFO_INCLUDED_H */
